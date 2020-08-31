package dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;


public class OrderModelData extends TableData
{
	public OrderModelData() throws ClassNotFoundException, SQLException
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ResultSet getCustomerOrderData(String oid) throws SQLException 
	{
		String query="SELECT product.title,product.description,customer.name,customer.email,customer.pincode,customer.mobile,customer.add1,"
				+ "customer.add2,customer.city, customer.state,ordermast.id,ordermast.date,ordermast.cust_id,ordermast.total_amount"
				+ ",ordermast.payment_rec,order_details.prod_id,order_details.qty,order_details.price,order_details.netamount,"
				+ "order_details.discount from product,customer,ordermast,order_details WHERE(ordermast.id="+oid+") "
						+ "AND ordermast.cust_id=customer.id AND order_details.prod_id=product.id and "
						+ "ordermast.id=order_details.ordmast_id";
		st=cn.createStatement();
		ResultSet rs=st.executeQuery(query);
	
		return rs;
	}
	public int updateOrderStatus(String id,String status) throws SQLException
	{
		st=cn.createStatement();
		int x=st.executeUpdate("update ordermast set  status='"+status+"' where id="+id);
		return x;
	}
}
