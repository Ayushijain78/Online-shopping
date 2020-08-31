package datatables;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import beans.ClassBrand;
import beans.ClassCategory;
import beans.ClassCustomer;
import beans.ClassOrdermaster;
import beans.ClassPayment_recieved;
import beans.ClassProduct;
import beans.ClassSubcategory;
import beans.ClassSubsubcategory;
import dao.TableData;
import fetchData.GetRecords;
import jsonObjectsfiles.BrandJson;
import jsonObjectsfiles.CategoryJson;
import jsonObjectsfiles.CustomerJson;
import jsonObjectsfiles.Ord_masterJson;
import jsonObjectsfiles.Paymet_recJson;
import jsonObjectsfiles.ProductJson;
import jsonObjectsfiles.SubSubcatJson;
import jsonObjectsfiles.SubcatJson;

@WebServlet("/servlet/DataTable")
public class DataTable extends HttpServlet 
{
	TableData db;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("application/json");
		PrintWriter out=response.getWriter();
		List<ClassBrand> l=new ArrayList<ClassBrand>();
		List<ClassCategory> l1=new ArrayList<ClassCategory>();
		String brand=request.getParameter("name");
		String cat=request.getParameter("name");
		String subcat=request.getParameter("name");
		String subsubcat=request.getParameter("name");
		String customer=request.getParameter("name");
		String product=request.getParameter("name");
		String ordmast=request.getParameter("name");
		String payment=request.getParameter("name");
		
		if(payment.equalsIgnoreCase("payment"))
		{
			
			
			List<ClassPayment_recieved> t6=new ArrayList<ClassPayment_recieved>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getPaymentrec();
				while(rs.next())
				{
					ClassPayment_recieved brand1=new ClassPayment_recieved();
					brand1.setAmount(rs.getString("amount"));
					brand1.setCardDetails(rs.getString("card_details"));
					brand1.setOrdmast(rs.getString("ordmast_id"));
					brand1.setRecieptDate(rs.getString("receipt_date"));
					brand1.setMode(rs.getString("mode"));
					
					t6.add(brand1);
					System.out.println(t6);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			Paymet_recJson jo=new Paymet_recJson();
			jo.setiTotalDisplayRecords(t6.size());
			jo.setiTotalRecords(t6.size());
			jo.setAaData(t6);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		
		if(ordmast.equalsIgnoreCase("ordmast"))
		{
			List<ClassOrdermaster> t5=new ArrayList<ClassOrdermaster>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getOrdermaster();
				while(rs.next())
				{
					ClassOrdermaster brand1=new ClassOrdermaster();
					brand1.setId(rs.getString("id"));
					brand1.setCustId(rs.getString("name"));
					brand1.setDate(rs.getString("date"));
					brand1.setTotalProd(rs.getString("total_product"));
					brand1.setTotalAmount(rs.getString("total_amount"));
					brand1.setStatus(rs.getString("status"));
					brand1.setPaymentRec(rs.getString("payment_rec"));
					brand1.setModeOfPayement(rs.getString("mode_of_payment"));
					t5.add(brand1);
					System.out.println(t5);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			Ord_masterJson jo=new Ord_masterJson();
			jo.setiTotalDisplayRecords(t5.size());
			jo.setiTotalRecords(t5.size());
			jo.setAaData(t5);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		if(ordmast.equalsIgnoreCase("currentOrd"))
		{
			List<ClassOrdermaster> t5=new ArrayList<ClassOrdermaster>();
		
			try
			{
				db=new TableData();
				ResultSet rs=db.getneworderRecords();
				while(rs.next())
				{
					ClassOrdermaster brand1=new ClassOrdermaster();
					brand1.setId(rs.getString("id"));
					brand1.setCustId(rs.getString("name"));
					brand1.setDate(rs.getString("date"));
					brand1.setTotalProd(rs.getString("total_product"));
					brand1.setTotalAmount(rs.getString("total_amount"));
					brand1.setStatus(rs.getString("status"));
					brand1.setPaymentRec(rs.getString("payment_rec"));
					brand1.setModeOfPayement(rs.getString("mode_of_payment"));
					
					t5.add(brand1);
				
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			Ord_masterJson jo=new Ord_masterJson();
			jo.setiTotalDisplayRecords(t5.size());
			jo.setiTotalRecords(t5.size());
			jo.setAaData(t5);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		if(ordmast.equalsIgnoreCase("delOrd"))
		{
			List<ClassOrdermaster> t5=new ArrayList<ClassOrdermaster>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getdelieverorderRecords();
				while(rs.next())
				{
					ClassOrdermaster brand1=new ClassOrdermaster();
					brand1.setId(rs.getString("id"));
					brand1.setCustId(rs.getString("name"));
					brand1.setDate(rs.getString("date"));
					brand1.setTotalProd(rs.getString("total_product"));
					brand1.setTotalAmount(rs.getString("total_amount"));
					brand1.setStatus(rs.getString("status"));
					brand1.setPaymentRec(rs.getString("payment_rec"));
					brand1.setModeOfPayement(rs.getString("mode_of_payment"));
					t5.add(brand1);
					System.out.println(t5);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			Ord_masterJson jo=new Ord_masterJson();
			jo.setiTotalDisplayRecords(t5.size());
			jo.setiTotalRecords(t5.size());
			jo.setAaData(t5);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		if(ordmast.equalsIgnoreCase("dispatchOrd"))
		{
			List<ClassOrdermaster> t5=new ArrayList<ClassOrdermaster>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getdispatchedorderRecords();
				while(rs.next())
				{
					ClassOrdermaster brand1=new ClassOrdermaster();
					brand1.setId(rs.getString("id"));
					brand1.setCustId(rs.getString("name"));
					brand1.setDate(rs.getString("date"));
					brand1.setTotalProd(rs.getString("total_product"));
					brand1.setTotalAmount(rs.getString("total_amount"));
					brand1.setStatus(rs.getString("status"));
					brand1.setPaymentRec(rs.getString("payment_rec"));
					brand1.setModeOfPayement(rs.getString("mode_of_payment"));
					t5.add(brand1);
					System.out.println(t5);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			Ord_masterJson jo=new Ord_masterJson();
			jo.setiTotalDisplayRecords(t5.size());
			jo.setiTotalRecords(t5.size());
			jo.setAaData(t5);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		/*-------------------------customer servlet------------------------------*/
		if(customer.equalsIgnoreCase("activeCustomer"))
		{
			
			List<ClassCustomer> t4=new ArrayList<ClassCustomer>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getactivecustomerRecords();
				while(rs.next())
				{
					ClassCustomer brand1=new ClassCustomer();
					
					brand1.setId(rs.getString("id"));
					brand1.setUid(rs.getString("uid"));
					brand1.setName(rs.getString("name"));
					brand1.setEmail(rs.getString("email"));
					brand1.setMobile(rs.getString("mobile"));
					brand1.setAdd1(rs.getString("add1"));
					brand1.setAdd1(rs.getString("add2"));
					brand1.setCity(rs.getString("city"));
					brand1.setState(rs.getString("state"));
					brand1.setPincode(rs.getString("pincode"));
					t4.add(brand1);
					System.out.println(t4);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			CustomerJson jo=new CustomerJson();
			jo.setiTotalDisplayRecords(t4.size());
			jo.setiTotalRecords(t4.size());
			jo.setAaData(t4);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		
		
		if(customer.equalsIgnoreCase("inactiveCustomer"))
		{
			
			List<ClassCustomer> t4=new ArrayList<ClassCustomer>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getinactivecustomerRecords();
				while(rs.next())
				{
					ClassCustomer brand1=new ClassCustomer();
					
					brand1.setId(rs.getString("id"));
					brand1.setUid(rs.getString("uid"));
					brand1.setName(rs.getString("name"));
					brand1.setEmail(rs.getString("email"));
					brand1.setMobile(rs.getString("mobile"));
					brand1.setAdd1(rs.getString("add1"));
					brand1.setAdd1(rs.getString("add2"));
					brand1.setCity(rs.getString("city"));
					brand1.setState(rs.getString("state"));
					brand1.setPincode(rs.getString("pincode"));
					t4.add(brand1);
					System.out.println(t4);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			CustomerJson jo=new CustomerJson();
			jo.setiTotalDisplayRecords(t4.size());
			jo.setiTotalRecords(t4.size());
			jo.setAaData(t4);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		if(customer.equalsIgnoreCase("customer"))
		{
			
			List<ClassCustomer> t4=new ArrayList<ClassCustomer>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getCustomer();
				while(rs.next())
				{
					ClassCustomer brand1=new ClassCustomer();
					
					brand1.setId(rs.getString("id"));
					brand1.setUid(rs.getString("uid"));
					brand1.setName(rs.getString("name"));
					brand1.setEmail(rs.getString("email"));
					brand1.setMobile(rs.getString("mobile"));
					brand1.setAdd1(rs.getString("add1"));
					brand1.setAdd1(rs.getString("add2"));
					brand1.setCity(rs.getString("city"));
					brand1.setState(rs.getString("state"));
					brand1.setPincode(rs.getString("pincode"));
					t4.add(brand1);
					System.out.println(t4);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			CustomerJson jo=new CustomerJson();
			jo.setiTotalDisplayRecords(t4.size());
			jo.setiTotalRecords(t4.size());
			jo.setAaData(t4);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*-------------------------sub sub category-------------------------*/
		if(subsubcat.equalsIgnoreCase("subsubcat"))
		{
			List<ClassSubsubcategory> t2=new ArrayList<ClassSubsubcategory>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getSubsubcategory();
				while(rs.next())
				{
					ClassSubsubcategory brand1=new ClassSubsubcategory();
					brand1.setId(rs.getString("id"));
					brand1.setActive(rs.getString("active"));
					brand1.setCatid(rs.getString("cat_id"));
					brand1.setSubCategory_id(rs.getString("subcategory_id"));
					brand1.setSubsubcategoryname(rs.getString("subsubcatname"));
					t2.add(brand1);
					System.out.println(t2);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			SubSubcatJson jo=new SubSubcatJson();
			jo.setiTotalDisplayRecords(t2.size());
			jo.setiTotalRecords(t2.size());
			jo.setAaData(t2);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*------------------product servlet-------------------------*/
		
		if(product.equalsIgnoreCase("product"))
		{
			List<ClassProduct> t1=new ArrayList<ClassProduct>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getProducts();
				while(rs.next())
				{
					
					ClassProduct p=new ClassProduct();
					p.setId(rs.getString("id"));
					p.setCatId(rs.getString("category"));
					p.setSubCatId(rs.getString("subcategory"));
					p.setModel(rs.getString("model"));
					p.setDescription(rs.getString("description"));
					p.setPrice(rs.getString("price"));
					p.setStock(rs.getString("stock"));
					p.setRol(rs.getString("rol"));
					p.setDiscountFlag(rs.getString("disc_flag"));
					p.setDiscount(rs.getString("discount"));
					p.setFeatures(rs.getString("features"));
					p.setColor(rs.getString("colors"));
					p.setSize(rs.getString("sizes"));
					p.setSplfeatures(rs.getString("splfeatures"));
					p.setRating(rs.getString("ratings"));
					p.setReview(rs.getString("reviews"));
					p.setActive(rs.getString("active"));
					p.setBrand(rs.getString("brand"));
					p.setImages(rs.getString("images"));
					p.setTitle(rs.getString("title"));
					
					t1.add(p);
					System.out.println(t1);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			ProductJson jo=new ProductJson();
			jo.setiTotalDisplayRecords(t1.size());
			jo.setiTotalRecords(t1.size());
			jo.setAaData(t1);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		if(product.equalsIgnoreCase("inactivePro"))
		{
			List<ClassProduct> t1=new ArrayList<ClassProduct>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getinactiveProducts();
				while(rs.next())
				{
					
					ClassProduct p=new ClassProduct();
					p.setId(rs.getString("id"));
					p.setCatId(rs.getString("category"));
					p.setSubCatId(rs.getString("subcategory"));
					p.setModel(rs.getString("model"));
					p.setDescription(rs.getString("description"));
					p.setPrice(rs.getString("price"));
					p.setStock(rs.getString("stock"));
					p.setRol(rs.getString("rol"));
					p.setDiscountFlag(rs.getString("disc_flag"));
					p.setDiscount(rs.getString("discount"));
					p.setFeatures(rs.getString("features"));
					p.setColor(rs.getString("colors"));
					p.setSize(rs.getString("sizes"));
					p.setSplfeatures(rs.getString("splfeatures"));
					p.setRating(rs.getString("ratings"));
					p.setReview(rs.getString("reviews"));
					p.setActive(rs.getString("active"));
					p.setBrand(rs.getString("brand"));
					p.setImages(rs.getString("images"));
					p.setTitle(rs.getString("title"));
					
					t1.add(p);
					System.out.println(t1);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			ProductJson jo=new ProductJson();
			jo.setiTotalDisplayRecords(t1.size());
			jo.setiTotalRecords(t1.size());
			jo.setAaData(t1);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		if(product.equalsIgnoreCase("activePro"))
		{
			List<ClassProduct> t1=new ArrayList<ClassProduct>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getactiveProducts();
				while(rs.next())
				{
					
					ClassProduct p=new ClassProduct();
					p.setId(rs.getString("id"));
					p.setCatId(rs.getString("category"));
					p.setSubCatId(rs.getString("subcategory"));
					p.setModel(rs.getString("model"));
					p.setDescription(rs.getString("description"));
					p.setPrice(rs.getString("price"));
					p.setStock(rs.getString("stock"));
					p.setRol(rs.getString("rol"));
					p.setDiscountFlag(rs.getString("disc_flag"));
					p.setDiscount(rs.getString("discount"));
					p.setFeatures(rs.getString("features"));
					p.setColor(rs.getString("colors"));
					p.setSize(rs.getString("sizes"));
					p.setSplfeatures(rs.getString("splfeatures"));
					p.setRating(rs.getString("ratings"));
					p.setReview(rs.getString("reviews"));
					p.setActive(rs.getString("active"));
					p.setBrand(rs.getString("brand"));
					p.setImages(rs.getString("images"));
					p.setTitle(rs.getString("title"));
					
					t1.add(p);
					System.out.println(t1);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			ProductJson jo=new ProductJson();
			jo.setiTotalDisplayRecords(t1.size());
			jo.setiTotalRecords(t1.size());
			jo.setAaData(t1);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*--------------------------------sub category servlet--------------------------------*/
		
		if(subcat.equalsIgnoreCase("subcat"))
		{
			List<ClassSubcategory> l11=new ArrayList<ClassSubcategory>();
			
			try
			{
				db=new TableData();
				ResultSet rs=db.getSubcategory();
				while(rs.next())
				{
					ClassSubcategory s=new ClassSubcategory();
					s.setActive(rs.getString("active"));
					s.setId(rs.getString("id"));
					s.setCatid(rs.getString("cat_id"));
					s.setSubCategory(rs.getString("subcategory"));
					
					l11.add(s);
					System.out.println(l11);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			SubcatJson jo=new SubcatJson();
			jo.setiTotalDisplayRecords(l11.size());
			jo.setiTotalRecords(l11.size());
			jo.setAaData(l11);
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);

		}
		
		
		
		
		
		
		
		
		
		/*---------------------------brand servlet-----------------------------*/
		
		if(brand.equalsIgnoreCase("brand"))
		{
			try
			{
				db=new TableData();
				ResultSet rs=db.getBrand();
				while(rs.next())
				{
					ClassBrand brand1=new ClassBrand();
					brand1.setBrandname(rs.getString("brandname"));
					brand1.setId(rs.getString("id"));
					l.add(brand1);
					System.out.println(l);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
			
		BrandJson jo=new BrandJson();
		jo.setiTotalDisplayRecords(l.size());
		jo.setiTotalRecords(l.size());
		jo.setAaData(l);
		Gson gson=new GsonBuilder().setPrettyPrinting().create();
		String json2=gson.toJson(jo);
		out.print(json2);
		
	}
		
		/* -------------------------category servlet------------------------*/
		if(cat.equalsIgnoreCase("cat"))
		{
			try
			{
				db=new TableData();
				ResultSet rs=db.getCategory();
				while(rs.next())
				{
					ClassCategory brand1=new ClassCategory();
					brand1.setCategory(rs.getString("category"));
					brand1.setId(rs.getString("id"));
					brand1.setActive(rs.getString("active"));
					l1.add(brand1);
					
				}
				System.out.println(l1);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			CategoryJson jo=new CategoryJson();
			jo.setiTotalDisplayRecords(l1.size());
			jo.setiTotalRecords(l1.size());
			jo.setAaData(l1);
			//out.println(jo.getAaData());
			Gson gson=new GsonBuilder().setPrettyPrinting().create();
			String json2=gson.toJson(jo);
			out.print(json2);
		}

	}	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
