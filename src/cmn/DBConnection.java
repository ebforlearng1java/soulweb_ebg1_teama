package cmn;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {


	static Connection connection = null;
	static Statement statement = null;

	// DB接続メソッド
	public static Statement getDBConnection() throws SQLException {


        try {
        	//-----------------
            // 接続
            //-----------------
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            		// "jdbc:postgresql://[場所(Domain)]:[ポート番号]/[DB名]"
                    "postgres", // ログインロール
                    "123456"); // パスワード

            statement = connection.createStatement();

        } finally {

        }

        return statement;

	}


	public static void dbConClose() throws SQLException {
        //接続を切断する
		if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
	}


}
