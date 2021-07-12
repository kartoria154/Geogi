package kr.or.shi.userDT;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Date;

/*
 *    articleNo     number(10)      PRIMARY KEY
    , parentNo      number(10)      default 0
    , title         varchar2(500)   not null
    , content       varchar2(4000)  
    , imageFileName varchar2(30)
    , writeDate     date            default sysdate not null
    , id            varchar2(10)  
 */
public class UserDTO {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String email2;
	private String address_zc;
	private String address_rn;
	private String address_dt;
	private Date joinDate;
	private String gender;
	private String phoneNum1;
	private String phoneNum2;
	private String phoneNum3;
	
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserDTO(String id, String pwd, String name, String email, String email2, String address_zc,
			String address_rn, String address_dt, String gender, String phoneNum1, String phoneNum2,
			String phoneNum3) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.email2 = email2;
		this.address_zc = address_zc;
		this.address_rn = address_rn;
		this.address_dt = address_dt;
		this.gender = gender;
		this.phoneNum1 = phoneNum1;
		this.phoneNum2 = phoneNum2;
		this.phoneNum3 = phoneNum3;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getAddress_zc() {
		return address_zc;
	}

	public void setAddress_zc(String address_zc) {
		this.address_zc = address_zc;
	}

	public String getAddress_rn() {
		return address_rn;
	}

	public void setAddress_rn(String address_rn) {
		this.address_rn = address_rn;
	}

	public String getAddress_dt() {
		return address_dt;
	}

	public void setAddress_dt(String address_dt) {
		this.address_dt = address_dt;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhoneNum1() {
		return phoneNum1;
	}

	public void setPhoneNum1(String phoneNum1) {
		this.phoneNum1 = phoneNum1;
	}

	public String getPhoneNum2() {
		return phoneNum2;
	}

	public void setPhoneNum2(String phoneNum2) {
		this.phoneNum2 = phoneNum2;
	}

	public String getPhoneNum3() {
		return phoneNum3;
	}

	public void setPhoneNum3(String phoneNum3) {
		this.phoneNum3 = phoneNum3;
	}
	

}