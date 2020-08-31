package datatables;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.*;
import org.json.JSONArray;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



/**
 * Servlet implementation class OrderCustDetailModel
 */
@WebServlet("/servlet/OrderCustDetailModel")
public class OrderCustDetailModel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("application/json");
		PrintWriter p=response.getWriter();
		
		String oid=request.getParameter("oid");
		
		System.out.println(oid);
		
		OrderModelData db1;
		
		try
		{
			db1=new OrderModelData();
			
			ResultSet rs=db1.getCustomerOrderData(oid);
			JSONArray list=new JSONArray();
			while(rs.next())
			{
				JSONObject obj=new JSONObject();
				obj.put("c_name",rs.getString("name"));
				obj.put("c_email",rs.getString("email"));
				obj.put("c_pincode",rs.getString("pincode"));
				obj.put("c_mobile",rs.getString("mobile"));
				obj.put("c_add1",rs.getString("add1"));
				obj.put("c_add2",rs.getString("add2"));
				obj.put("c_city",rs.getString("city"));
				obj.put("c_state",rs.getString("state"));
				obj.put("o_id",rs.getString("id"));
				obj.put("o_date",rs.getString("date"));
				obj.put("o_cust_id",rs.getString("cust_id"));
				obj.put("o_total_amt",rs.getString("total_amount"));
				obj.put("o_pay_rec",rs.getString("payment_rec"));
				obj.put("p_id",rs.getString("prod_id"));
				obj.put("p_qty",rs.getString("qty"));
				obj.put("p_price",rs.getString("price"));
				obj.put("p_netamt",rs.getString("netamount"));
				obj.put("p_discount",rs.getString("discount"));
				obj.put("p_desc", rs.getString("description"));
				obj.put("p_title", rs.getString("title"));
				
				
				
				
				list.put(obj);
				System.out.println(obj);
			}
			p.print(list);
			
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		
		
		
	/*	Gson gson=new GsonBuilder().setPrettyPrinting().create();
		String json2=gson.toJson(l);
		p.print(json2);*/
		
		
	}


}
