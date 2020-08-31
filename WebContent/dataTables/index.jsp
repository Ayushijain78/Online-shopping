<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
<!DOCTYPE html>
<html lang="en">
    <head>
       <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
       
        <link href="../admin/admin/dist/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
<style>
 *
{
	text-transform: capitalize;
}
th
{
	text-transform: uppercase;
	font-size:13px;
	
}
td 
{
  
  text-align: left;
  font-size:14px;
  
}


</style> 


    <body class="sb-nav-fixed">
    
    <c:out value="${sessionScope.adminid}" /> 
    <c:out value="${sessionScope.img}" /> 
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">
            ADMIN
            </a><button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button
            >
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a><a class="dropdown-item" href="#">Activity Log</a>
                       	 <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        
        <sql:setDataSource var="cn" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/online_shopping?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
		
        <sql:query var="rs" dataSource="${cn}">
        select * from admin where email=? and pwd=?;
        
        <sql:param value="${param.id}"></sql:param>
        <sql:param value="${param.pwd}"></sql:param>
        
        </sql:query>
        
       
		
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                         	 <div align="center" class="mt-3">
                                 <c:forEach var ="r" items="${rs.rows}">
							        
							        
							        <c:set var="img" value="${r.img}" scope="session"  />
							        <c:set var="adminid" value="${r.name}" scope="session"  />
							        
						         </c:forEach>
						         
						         <img src="../images/${sessionScope.img}" class="img rounded-circle" width="100" height="100">
							        
							        <h2>${sessionScope.adminid}</h2>
						         
						       </div>  
						       
						       
     
						         
                            <div class="sb-sidenav-menu-heading">Databse Tables</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                               Orders
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
	                                <a href="currentOrd.jsp" class="nav-link collapsed " >Current orders</a>
	                                <a href="dispatchOrd.jsp" class="nav-link " >dispatched</a>
	                                <a href="deliveredOrd.jsp" class="nav-link  ">delivered</a>
	                                <a href="ordmastTable.jsp" class="nav-link " >all</a>
                                </nav>
                            </div>                            
                            
                            
                              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsepro" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                               Products
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse " id="collapsepro" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
	                                <a href="productTable.jsp" class="nav-link collapsed ">All Products</a>
	                                <a href="activePro.jsp" class="nav-link " >Active Products</a>
	                                <a href="inactivePro.jsp" class="nav-link " >Inactive Products</a>
	                                
                                </nav>
                            </div>
                            
                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts3" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                               Customer
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            
                            <div class="collapse " id="collapseLayouts3" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
	                                <a href="custTable.jsp" class="nav-link collapsed">New Customers</a>
	                                <a href="activeCust.jsp" class="nav-link">Active Customers</a>
	                                <a href="inactiveCust.jsp" class="nav-link">Inactive Customers</a>
                                </nav>
                            </div>
                            <span style="border-top:2px solid white;" class="ml-3 mr-3"> </span>
                                   
                                   
                                    
                                    <a class="nav-link" href="brandTable.jsp">
                                        <div class="sb-nav-link-icon">
                                            <i class="fas fa-table"></i>
                                        </div>
                                         Brand
                                    </a> 
                                   
                                   
                                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsecat" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                category
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            
                            
                               
                        
                            <div class="collapse " id="collapsecat" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
	                                <a href="catTable.jsp" class="nav-link collapsed " >Category</a>
	                                <a href="subcatTable.jsp" class="nav-link ">Sub Category</a>
	                                <a href="subsubcatTable.jsp" class="nav-link ">Sub Sub Category</a>
                                </nav>
                            </div>
                        </nav>
                        
            		</div>
           
      	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../admin/admin/dist/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="../admin/admin/dist/assets/demo/datatables-demo.js"></script>

    </body>
</html>
