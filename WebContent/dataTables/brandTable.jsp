 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %> 
 <!DOCTYPE html>
<html lang="en">
    <head>
       
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="../admin/admin/dist/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
       
    </head>
    <body class="sb-nav-fixed">
   <jsp:include page="index.jsp" flush="true"/>
       
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">brands</h1>
                         <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
							 Add Brand
							</button></li>
							                            
                        </ol>
                        
                        
                        
                        
<div class="modal fade" id="exampleModalCenter" tabindex="1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">add brand</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
       <form method="post">
           <div class="form-group">
           <label for="catname" class="text-capitailze">enter brand name</label>
           <input type="text" name="brandname" id="catname" class="form-control" placeholder="Enter Brand Name">	
           </div>
            <div class="form-group" align=center>
            <input type="submit" class="btn btn-secondary">
            </div>
            
       </form>
       
       
      </div>
      <div class="modal-footer">
      
      </div>
    </div>
  </div>
</div>


<c:if test="${pageContext.request.method=='POST'}">
<c:catch var="exception">
<sql:setDataSource var="cn" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/online_shopping?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
		<sql:update var="rs" dataSource="${cn}">
		insert into brand (brandname) values(?);
		<sql:param value="${param.brandname}"></sql:param>
		</sql:update>
<c:if test="${rs==1}">
<font size="3" color='green'> Congratulations ! Data inserted
successfully.</font>
</c:if>
</c:catch>
<c:if test="${exception!=null}">
<c:out value="Unable to insert data in database." />
</c:if>
</c:if>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                       
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Brand DataTable </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="example" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>id</th>
                                                <th>brand name</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
      	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../admin/admin/dist/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="../admin/admin/dist/assets/demo/datatables-demo.js"></script>
        
         <script>
        $(function()
   		{
       
       			$("#example").dataTable(
       					{
       						"bProcessing":true,
       						"bServerSide":false,
       						"sort":"position",
       						"sAjaxSource":"../servlet/DataTable?name=brand",
       						"aoColumns":[
       							{"mData":"id"},
       							{"mData":"brandname"},
       							
       						]
       					
       					
       					})	
       		
   		})
        </script>
    </body>
</html>
