<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
    <head>
       
       <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tables - SB Admin</title>
        <link href="../admin/admin/dist/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    </head>
    <body class="sb-nav-fixed">
   <jsp:include page="index.jsp" flush="true"/>
       
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Active products</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Product Table</li>
                        </ol>
                       
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Product DataTable </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="example" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>id</th>
                                                <th>category id</th>
                                                 <th>subcategory id</th>
                                                 <th> model</th>
                                                 <th>title</th>
                                                 <th>description</th>
                                                 <th>price</th>
                                                 <th>stock</th>
                                                 <th>rol</th>
                                                 <th>discount flag</th>
                                                 <th>discount</th>
                                                 <th>features</th>
                                                 <th>colors</th>
                                                 <th>sizes</th>
                                                 <th>special features</th>
                                                 <th>rating</th>
                                                 <th>reviews</th>
                                                 <th>active</th>
                                                 <th>brand</th>
                                                 <th>image</th>
                                                 
                                                 
                                                 
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
       						"sAjaxSource":"../servlet/DataTable?name=activepro",
       						"aoColumns":
       						[
       							{"mData":"id"},
       							{"mData":"cat_id"},
       							{"mData":"subcategory_id"},
       							{"mData":"model"},
       							{"mData":"title"},
       							{"mData":"description"},
       							{"mData":"price"},
       							{"mData":"stock"},
       							{"mData":"rol"},
       							{"mData":"disc_flag"},
       							{"mData":"discount"},
       							{"mData":"features"},
       							{"mData":"colors"},
       							{"mData":"sizes"},
       							{"mData":"splfeatures"},
       							{"mData":"rating"},
       							{"mData":"reviews"},
       							{"mData":"active"},
       							{"mData":"brand"},
       							
       							{
       							   "mData": "images",
       							   "render": function (mData) {
       							       return '<img src="../images/' + mData + '" class="avatar" width="50" height="50"/>';
       							       }
       							 }
       							
       							
       							
       							
       							
       							
       							
       							
       						]
       					
       					
       					})	
       		
   		})
        </script>
    </body>
</html>
