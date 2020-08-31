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
       
 
 
 
 
 
 
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header ">
         <h4 class="modal-title text-capitalize text-left">order details</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
        <h5 class="text-danger">customer details</h5>
          <div class="row">
          	<div class="col-sm-6 ">customer id:<span class="col-sm-3 mt-3 font-weight-bold" id="c_id"></span> </div>
          	<div class="col-sm-6 ">name:<span class="ml-3 mt-3 font-weight-bold"id="c_name"></span> </div>
          	<div class="col-sm-6 ">email:<span class="ml-3 mt-3 font-weight-bold"id="c_email"></span> </div>
          	<div class="col-sm-6 ">mobile:<span class="ml-3 mt-3 font-weight-bold "id="c_mobile"></span> </div>
          	<div class="col-sm-6 text-justify ">address1:<span class="mt-3  ml-3 font-weight-bold" id="c_add1"></span> </div>
          	<div class="col-sm-6 text-justify">address2:<span class="ml-3 mt-3 font-weight-bold" id="c_add2"></span> </div>
          
          	
          	
          	
          </div>
          	<h5 class="text-danger mt-3">order details</h5>
          	
          	<div class="row">
	          	<div class="col-sm-3 ">order id:<span class="ml-3 mt-3 font-weight-bold " id="o_id"></span> </div>
	         	<div class="col-sm-5 ">date of order:<span class="ml-3 mt-3 font-weight-bold" id="o_date"></span> </div>
	         	<div class="col-sm-3 ">Payemet recieved:<span class="ml-3 mt-3 font-weight-bold" id="o_pay_rec"></span> </div>
         	
          	</div>
          	<h4 class="text-danger">product details</h4>
          	
          	<div class="">
          		<table class="table table-bordered table-responsive" id="reciept" width="100%" cellspacing="0">
          		<thead>
          		<tr>
          			<th>product id</th>
          			<th>description</th>
          			<th>quantity</th>
          			<th>discount</th>
          			<th>rate</th>
          			<th>amount</th>
          		</tr>
          		<thead>
          		<tbody id="tb"></tbody>
          		</table>
          	</div>
          	
          
      
          
        </div>
      </div>
      
    </div>
  </div>
 
 
 
 
 
 
 
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">all orders</h1>
                      
                       
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>ordermaster DataTable </div>
                            
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped" id="example1" width="100%" cellpadding="5">
                                        <thead>
                                            <tr>
                                            	 <th>s.no</th>
	                                             <th>id</th>
	                                             <th>date</th>
                                                 <th>customer name</th>
                                                 <th>total product</th>
                                                 <th>total amount</th>
                                                 <th>status</th>
                                                 <th>payment recieved</th>
                                                 <th>mode of payment</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                        <tfoot>
                                       
                                        </tfoot>
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
       						"sAjaxSource":"../servlet/DataTable?name=ordmast",
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
       							
       						],
       					
       					})	
       					
       			var table = $('#example1').DataTable();
       		 
       			$('#example1 tbody').on( 'click', 'tr', function () 
       			{
       				
       			    var oid= table.row( this ).data().id;
       			 	var odate= table.row( this ).data().date;
	       			var cust_id = table.row( this ).data().cust_id;
	       			var total_product= table.row( this ).data().total_product;
	       			var total_amount= table.row( this ).data().total_amount;
	       			var status= table.row( this ).data().status;
	       			var pay_rec= table.row( this ).data().payment_rec;
	       			var mode_of_pay= table.row( this ).data().mode_of_payment;
	       			console.log(oid+" "+odate+" "+cust_id+" "+total_amount+" "+total_product+" "+status);
   			    	
	       			$.get("../servlet/OrderCustDetailModel",{'oid':oid,'odate':odate,'cust_name':cust_id,'total_product':total_product,'total_amount':total_amount,'status':status,'pay_rec':pay_rec,'mode_of_pay':mode_of_pay},function(data)
	       			{
	       				var str="";
	       				console.log(data);
	       				$("#myModal").modal();
	       				$("#o_id").html(data[0].o_id);
	       				$("#o_date").html(data[0].o_date);
	       				$("#o_pay_rec").html(data[0].o_pay_rec);
	       				$("#c_id").html(data[0].o_cust_id);
	       				$("#c_name").html(data[0].c_name);
	       				$("#c_email").html(data[0].c_email);
	       				$("#c_mobile").html(data[0].c_mobile);
	       				$("#c_add1").html(data[0].c_add1+"<br> "+data[0].c_city+" ,"+data[0].c_state+"<br>"+data[0].c_pincode+"");
	       				$("#c_add2").html(data[0].c_add2+"<br> "+data[0].c_city+" ,"+data[0].c_state+"<br>"+data[0].c_pincode+"");
	       				
	          			
	          			console.log(data[0].p_title);
	          			data.forEach(function(v,i)
	          			{
	          				str+="<tr><td>"+v.p_id+"</td><td>"+v.p_title+"</td><td>"+v.p_qty+"</td><td>"+v.p_discount+"</td><td>"+v.p_price+"</td><td>"+v.p_netamt+"</td></tr>";
		       				
	          			});
	       				$("#tb").html(str);
	          			
	       				
	       			})
	       			
       			});
       					 
   		});
        </script>
    </body>
</html>
