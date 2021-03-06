<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <h1 class="mt-4">delivered orders</h1>
                       
                       
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>ordermaster DataTable </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="example1" width="100%" >
                                        <thead>
                                            <tr>
                                           		 <th>S.no</th>
	                                             <th>id</th>
	                                             <th>date</th>
                                                 <th>customer id</th>
                                                 <th>total product</th>
                                                 <th>total amount</th>
                                                 <th>status</th>
                                                 <th>payment recieved</th>
                                                 <th>mode of payment</th>
                                                 
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
       			
       			$("#example1").dataTable(
       					{
       						"bProcessing":true,
       						"bServerSide":false,
       						"sort":false,
       						"sAjaxSource":"../servlet/DataTable?name=delOrd",
       						"aoColumns":
       						[
       							{
       							    "mData": "sid",
       							    render: function (mData, type, row, meta)
       							    {
       							        return meta.row + meta.settings._iDisplayStart + 1;
       							    }
       							},
       							{"mData":"id"},
       							{"mData":"date"},
       							{"mData":"cust_id"},
       							{"mData":"total_product"},
       							{"mData":"total_amount"},
       							{"mData":"status"},
       							{"mData":"payment_rec"},
       							{"mData":"mode_of_payment"},
       							
       						]
       					
       					
       					})	
       		
   		})
        </script>
    </body>
</html>
