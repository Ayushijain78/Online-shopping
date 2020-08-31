package datatables;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.OrderModelData;

/**
 * Servlet implementation class UpdateOrder
 */
@WebServlet("/servlet/UpdateOrder")
public class UpdateOrder extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter p=response.getWriter();
		String[] id=request.getParameterValues("arr[]");
		String status=request.getParameter("status");
		
		System.out.println(id);
		System.out.println(status);
		if((status.equalsIgnoreCase("dispatched"))||(status.equalsIgnoreCase("delivered")))
		{
			try
		{
			
			OrderModelData db=new OrderModelData();
			for(int i=0;i<id.length;i++)
			{
				int x=db.updateOrderStatus(id[i],status);
				if(x==1)
				{
					p.print("success");
					
				}
				else
				{
					p.print("unsuccess");
					
				}
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			
		}
	}
		

		
		

		
	
	}

}
