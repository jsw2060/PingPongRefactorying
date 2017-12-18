package com.pingPong.test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class OracleConnectionTest {

	private static final String DRIVER = 
			"net.sf.log4jdbc.sql.jdbcapi.DriverSpy";
	private static final String URL = 
			"jdbc:log4jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
	private static final String USER = 
			"scott";
	private static final String PW = 
			"tiger";
			
	
	@Test
	public void testConnection() throws Exception{
		
		Class.forName(DRIVER);
		
		try(Connection con = DriverManager.getConnection(URL, USER, PW)){
			
			System.out.println(con);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}