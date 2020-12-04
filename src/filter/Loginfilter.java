package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Loginfilter extends HttpServlet implements Filter {
	private static final long serialVersionUID = 1L;
	private String allowURL = "";
	private String redirectPath = "";

	@Override
	 public void destroy() {		 
	 }
	
	@Override
	public void doFilter(ServletRequest sRequest, ServletResponse sResponse, FilterChain filterChain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) sRequest;
		HttpServletResponse response = (HttpServletResponse) sResponse;
		HttpSession session = request.getSession();
		String url = request.getServletPath();
		String contextPath = request.getContextPath();
		if (!allowURL.contains(url) && session.getAttribute("userid") == null) {
			response.sendRedirect(contextPath + redirectPath);
			return;
		}
//		 System.out.println(url+" "+contextPath + redirectPath);
		filterChain.doFilter(sRequest, sResponse);
	}

	@Override
	public void init(FilterConfig filcon) throws ServletException {
		redirectPath = filcon.getInitParameter("redirectPath");
		allowURL = filcon.getInitParameter("allowURL");
	}
}