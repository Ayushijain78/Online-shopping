package datatables;

import java.io.File;

import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.Part;

import dao.Dbcon;
import dao.TableData;

/**
 * Servlet implementation class ProductInsert
 */
@WebServlet("/servlet/ProductInsert")


@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
					maxFileSize=1024*1024*10,      // 10MB
					maxRequestSize=1024*1024*50)
public class ProductInsert extends HttpServlet {
	//String fileName;
	private static final String SAVE_DIR="img";
	String filepath;
	String filename;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,FileNotFoundException
	{
		response.setContentType("text/html;charset=UTF-8");	
		
		String cat_id=request.getParameter("cat_id");
		String subcat_id=request.getParameter("sub_cat_id");
		String brand=request.getParameter("brand");
		String model=request.getParameter("model");
		String title=request.getParameter("title");
		String desc=request.getParameter("desc");
		String price=request.getParameter("price");
		String stock=request.getParameter("stock");
		String rol=request.getParameter("rol");
		String discflag=request.getParameter("disc_flag");
		String discount=request.getParameter("discount");
		String colors=request.getParameter("colors");
		String sizes=request.getParameter("sizes");
		String features=request.getParameter("features");
		String splfeature=request.getParameter("splfeatures");
		
		  PrintWriter out = response.getWriter();
	   
	       // System.out.println("savepath----"+savePath);
		  Part part=request.getPart("file");
		//System.out.println(part);
		filename=extractFileName(part);
  		filepath="E:\\dir3\\" + File.separator + filename;
  		File fileSaveDir=new File(filepath);
  		part.write(filepath + File.separator);
	       
	     
	        //Part part=request.getPart("file");
	      //  String fileName=extractFileName(part);
	        //part.write(savePath + File.separator + fileName);
	       
	        //You need this loop if you submitted more than one file 
	        /*for (Part part : request.getParts())
	        {
	        	
	        }*/
	       try
	       	{
	
	    	   TableData db=new TableData();
	    	 //  String filePath= savePath + File.separator + fileName ;
	    	   //System.out.println(filePath);
	    	   int x=db.insertProduct(cat_id, subcat_id, model, title, brand, desc, price, stock, rol, discflag, discount, colors, sizes, features, splfeature, filename);
	    	   System.out.println("hellor"+filename);
	    	   if(x==1)
	    	   {
	    		   out.print("sucess");
	    	   }
	    	   else
	    	   {
	    		   out.print("nnnnnnnnnnnnnnnnnn");
	    	   }
	    	   
	    	   
	}
	catch(Exception e)
	  {
		e.printStackTrace();
	  }
	}
	
	    // file name of the upload file is included in content-disposition     header like this:
	//form-data; name="dataFile"; filename="PHOTO.JPG"
	private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	        if (s.trim().startsWith("filename")) {
	            return s.substring(s.indexOf("=") + 2, s.length()-1);
	        }
	    }
	    return "";
	}
		
		
	
		
		
		
	

	

}
