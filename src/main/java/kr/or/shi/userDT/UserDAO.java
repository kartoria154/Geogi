package kr.or.shi.userDT;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import kr.or.shi.userDT.UserDTO;

public class UserDAO {
	
	private DataSource dataSource;
	private Connection connection;
	private PreparedStatement psmt;
	private ResultSet rs;
	private Context context;
	private ArrayList<UserDTO> dtos = new ArrayList<>();
	
	public UserDAO() {
		
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/" + "jdbc/dbconn"); 
			connection = dataSource.getConnection();
			System.out.println("DAO 생성자 호출");
			System.out.println("스레드 명" + Thread.currentThread().getName());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//DBCP에서 Connection을 반환하는 메서드
	public Connection getConnection() {
		
//		try {
//			context = new InitialContext();
//			dataSource = (DataSource)context.lookup("java:comp/env" + "jdbc/dbconn"); 
//			connection = dataSource.getConnection();
//			System.out.println("DBCP에 있는 컨넥션 객체 얻어오기 성공");
//			System.out.println("스레드 명" + Thread.currentThread().getName());
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
		return connection;	
	}
	
	public ArrayList<UserDTO> userList(){
		
		
		
		try {
			//Connection conn = this.getConnection();
			String sql = "select * from t_user";
			psmt = connection.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("username");
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String address_zc = rs.getString("address_zc");
				String address_rn = rs.getString("address_rn");
				String address_dt = rs.getString("address_dt");
				String gender = rs.getString("gender");
				String email = rs.getString("email");
				String email2 = rs.getString("email2");
				Date joinDate = rs.getDate("joinDate");
				String phoneNum1 = rs.getString("phoneNum1");
				String phoneNum2 = rs.getString("phoneNum2");
				String phoneNum3 = rs.getString("phoneNum3");
				
				UserDTO dto = new UserDTO(id, pwd, name, email, email2, address_zc, address_rn, address_dt, gender, phoneNum1, phoneNum2, phoneNum3);
				dtos.add(dto);			//arrayList에 해당 dto가 있는만큼 add함
			}
			System.out.println("DB에 있는 데이터 가져오기 성공");
			System.out.println("스레드 명" + Thread.currentThread().getName());
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return dtos;
	}
	
	public void addMember(UserDTO dto) {
		//dtos.add(dto);
		
		int n=0;
		try {
			String sql = "insert into t_user values (?,?,?,?,?,?,?,?,?,?,?,?)";
			psmt = connection.prepareStatement(sql);
			psmt.setString(2, dto.getId());
			psmt.setString(3, dto.getPwd());
			psmt.setString(1, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getAddress_zc());
			psmt.setString(6, dto.getAddress_rn());
			psmt.setString(7, dto.getAddress_dt());
			psmt.setDate(8, dto.getJoinDate());
			psmt.setString(9, dto.getGender());
			psmt.setString(10, dto.getPhoneNum1());
			psmt.setString(11, dto.getPhoneNum2());
			psmt.setString(12, dto.getPhoneNum3());
			
			
			n = psmt.executeUpdate();
			System.out.println("입력 갯수 : " + n);
			

		} catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("addMemberDTO 오케이");
	}
}
