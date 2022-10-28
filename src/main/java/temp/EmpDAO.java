package temp;

import java.sql.*;

public class EmpDAO {
	private EmpDAO() throws Exception {
		try {
			// 1. 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 성공");
		} catch (Exception e) {
			System.out.println("드라이버 로딩 실패" + e);
		}

	}
	static EmpDAO empDAO = null;
	public static EmpDAO getInstance() throws Exception{
		if ( empDAO == null ) empDAO = new EmpDAO();
		return empDAO;
	}

	public void insert(EmpVO vo) throws Exception {

		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("드라이버 로딩 성공");

		// 2. 연결객체 얻어오기
		String url = "jdbc:oracle:thin:@192.168.0.164:1521:xe";
		String user = "scott";
		String pass = "tiger";
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DriverManager.getConnection(url, user, pass);
			System.out.println("디비 연결 성공");

			// 3.sql문장
			String sql = "INSERT INTO emp(empno,ename,deptno,job,sal) VALUES(?,?,?,?,?)";

			// 4.sql 전송객체
			ps = con.prepareStatement(sql);
			ps.setInt(1, vo.getEmpno());
			ps.setString(2, vo.getEname());
			ps.setInt(3, vo.getDeptno());
			ps.setString(4, vo.getJob());
			ps.setInt(5, vo.getSal());
			// 5.전송
			int result = ps.executeUpdate();
			System.out.println(result + "행을 실행");

			// 6. 닫기
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println("실패ㅋㅋ" + e);
		}

	}

}