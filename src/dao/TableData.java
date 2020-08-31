package dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;



public class TableData extends Dbcon
{
	
	public TableData() throws ClassNotFoundException, SQLException
	{
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
	public ResultSet getBrand() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from brand");
		
				return rs;
	}
	public ResultSet getCategory() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from category");
		
				return rs;
	}
	public ResultSet getProducts() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("SELECT product.id,category.category,subcategory.subcategory,product.model,"
				+ "product.title,product.description,product.price,product.stock,product.rol,product.disc_flag,"
				+ "product.discount,product.features,product.colors,product.sizes,product.splfeatures,"
				+ "product.ratings,product.reviews,product.active,product.brand,product.images FROM product,category,subcategory\r\n" + 
				"	WHERE(product.cat_id=category.id)\r\n" + 
				"	AND(product.subcategory_id=subcategory.id)");
		
				return rs;
	}
	public ResultSet getCustRating() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from cust_rating");
		
				return rs;
	}
	public ResultSet getCustReviews() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from cust_reviews");
		
				return rs;
	}
	public ResultSet getCustomer() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from customer ORDER BY id desc  ");
		
				return rs;
	}
	public ResultSet getOrderdetails() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from order_details");
		
				return rs;
	}
	
	public ResultSet getOrdermaster() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("SELECT ordermast.id,customer.name,ordermast.date,ordermast.total_product,ordermast.total_amount,ordermast.status,ordermast.payment_rec,ordermast.mode_of_payment FROM ordermast,customer WHERE(ordermast.cust_id=customer.id)  order by id desc ");
		return rs;
	}
	public ResultSet getOrderprocess() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from ord_processing_register");
		
				return rs;
	}
	public ResultSet getPaymentrec() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from payement_recieved");
		
				return rs;
	}

	public ResultSet getSubcategory() throws SQLException
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("select * from subcategory");
		
				return rs;
	}

	public ResultSet getSubsubcategory() throws SQLException
	{
		st=cn.createStatement();
		rs=st.executeQuery("select * from subsubcategory");
		return rs;
	}
	public ResultSet getactivecustomerRecords() throws SQLException
	{
		ResultSet rs=st.executeQuery("select * from customer where active='yes'");
		return rs;
	}
	public ResultSet getinactivecustomerRecords() throws SQLException
	{
		ResultSet rs=st.executeQuery("select * from customer where active='no'");
		return rs; 
	}
	public ResultSet getinactiveProducts() throws SQLException 
	{
		
		st=cn.createStatement();
		
		rs=st.executeQuery("SELECT product.id,category.category,subcategory.subcategory,product.model,"
				+ "product.title,product.description,product.price,product.stock,product.rol,product.disc_flag,"
				+ "product.discount,product.features,product.colors,product.sizes,product.splfeatures,"
				+ "product.ratings,product.reviews,product.active,product.brand,product.images FROM product,category,subcategory\r\n" + 
				"	WHERE(product.cat_id=category.id)\r\n" + 
				"	AND(product.subcategory_id=subcategory.id) AND(product.active='no')");
		
				return rs;
		
		
		
	}
	public ResultSet getactiveProducts() throws SQLException 
	{
		st=cn.createStatement();
		
		rs=st.executeQuery("SELECT product.id,category.category,subcategory.subcategory,product.model,"
				+ "product.title,product.description,product.price,product.stock,product.rol,product.disc_flag,"
				+ "product.discount,product.features,product.colors,product.sizes,product.splfeatures,"
				+ "product.ratings,product.reviews,product.active,product.brand,product.images FROM product,category,subcategory\r\n" + 
				"	WHERE(product.cat_id=category.id)\r\n" + 
				"	AND(product.subcategory_id=subcategory.id)AND(product.active='yes')");
		
				return rs;
	}
	
	public ResultSet getdispatchedorderRecords() throws SQLException
	{
		ResultSet rs=st.executeQuery("SELECT ordermast.id,customer.name,ordermast.date,ordermast.total_product,ordermast.total_amount,ordermast.status,ordermast.payment_rec,ordermast.mode_of_payment FROM ordermast,customer WHERE(ordermast.cust_id=customer.id)and status='dispatched'  order by id desc");
		return rs;
	}
	public ResultSet getneworderRecords() throws SQLException
	{
		ResultSet rs=st.executeQuery("SELECT ordermast.id,customer.name,ordermast.date,ordermast.total_product,ordermast.total_amount,ordermast.status,ordermast.payment_rec,ordermast.mode_of_payment FROM ordermast,customer WHERE(ordermast.cust_id=customer.id)and status='new'  order by id desc");
		return rs;
	}
	public ResultSet getprocessorderRecords() throws SQLException
	{
		ResultSet rs=st.executeQuery("SELECT ordermast.id,customer.name,ordermast.date,ordermast.total_product,ordermast.total_amount,ordermast.status,ordermast.payment_rec,ordermast.mode_of_payment FROM ordermast,customer WHERE(ordermast.cust_id=customer.id)and status='processed'  order by id desc");
		return rs;
	}
	public ResultSet getdelieverorderRecords() throws SQLException
	{
		ResultSet rs=st.executeQuery("SELECT ordermast.id,customer.name,ordermast.date,ordermast.total_product,ordermast.total_amount,ordermast.status,ordermast.payment_rec,ordermast.mode_of_payment FROM ordermast,customer WHERE(ordermast.cust_id=customer.id)and status='delivered'  order by id desc");
		return rs;
	}
	
	public int insertProduct(String cat_id,String subcat_id,String model,String title,String brand,String description,String price,String stock,String rol,String disc_flag,String discount,String colors,String sizes,String features,String splfeature,String file) throws SQLException
	{
		pt=cn.prepareStatement("insert into product(`cat_id`, `subcategory_id`, `model`, `title`, `description`, `price`, `stock`, `rol`, `disc_flag`, `discount`, `features`, `colors`, `sizes`, `splfeatures`,`brand`, `images`) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		pt.setString(1, cat_id);
		pt.setString(2, subcat_id);
		pt.setString(3, model);
		pt.setString(4, title);
		pt.setString(5, description);
		pt.setString(6, price);
		pt.setString(7, stock);
		pt.setString(8, rol);
		pt.setString(9, disc_flag);
		pt.setString(10, discount);
		pt.setString(11, features);
		pt.setString(12, colors);
		pt.setString(13, sizes);
		pt.setString(14, splfeature);
		pt.setString(15, brand);
		pt.setString(16, file);
		
		
		
		int x=pt.executeUpdate();
		return x;
	}
	
	
	
	
	
}
