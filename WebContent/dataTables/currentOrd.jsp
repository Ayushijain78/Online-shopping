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
         <h5 class="modal-title text-capitalize text-left">order details</h5>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
        <h6 class="text-danger">customer details</h6>
          <div class="row">
          	<div class="col-sm-6 ">customer id:<span class="col-sm-3 mt-3 font-weight-bold" id="c_id"></span> </div>
          	<div class="col-sm-6 ">name:<span class="ml-3 mt-3 font-weight-bold"id="c_name"></span> </div>
          	<div class="col-sm-6 ">email:<span class="ml-3 mt-3 font-weight-bold"id="c_email"></span> </div>
          	<div class="col-sm-6 ">mobile:<span class="ml-3 mt-3 font-weight-bold "id="c_mobile"></span> </div>
          	<div class="col-sm-6 ">address1:<span class="mt-3  ml-3 font-weight-bold" id="c_add1"></span> </div>
          	<div class="col-sm-6 ">address2:<span class="ml-3 mt-3 font-weight-bold" id="c_add2"></span> </div>
          
          	
          	
          	
          </div>
          	<h6 class="text-danger mt-3">order details</h6>
          	
          	<div class="row">
	          	<div class="col-sm-3 ">order id:<span class="ml-3 mt-3 font-weight-bold " id="o_id"></span> </div>
	         	<div class="col-sm-5 ">date of order:<span class="ml-3 mt-3 font-weight-bold" id="o_date"></span> </div>
	         	<div class="col-sm-3 ">Payemet recieved:<span class="ml-3 mt-3 font-weight-bold" id="o_pay_rec"></span> </div>
         	
          	</div>
          	<h6 class="text-danger">product details</h6>
          	
          	<div class=" container-fluid">
          		<table class="table table-bordered table-responsive " id="reciept" width="100%" cellspacing="0">
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
        
        
        
      <div class="modal-footer bg-secondary">
        
        <div class="form-check-inline">
			  <label class="form-check-label disabled text-white">
			    <input type="radio" class="form-check-input text-white r1" name="optradio" >processed
			  </label>
				</div>
				<div class="form-check-inline disabled">
				  <label class="form-check-label text-white">
				    <input type="radio" class="form-check-input text-white r1" name="optradio">dispacthed
				  </label>
				</div>
				<div class="form-check-inline disabled">
				  <label class="form-check-label text-white">
				    <input type="radio" class="form-check-input  r1" name="optradio" disabled>delivered
				  </label>
				</div>
      </div> 
        
      </div>
      
    </div>
  </div>
      <div id="layoutSidenav_content">
          <main>
              <div class="container-fluid">
                  <h1 class="mt-4">current orders</h1>
                
                 
                  <div class="card mb-4">
                      <div class="card-header"><i class="fas fa-table mr-1"></i>ordermaster DataTable </div>
                      
                      <div class="card-body">
                          <div class="table-responsive">
                              <table class="table table-bordered table-hover table-striped" id="example1" width="100%" cellpadding="5">
                                  <thead>
                                      <tr>
                                      	<th> <input type="checkbox" id="s11" class="ck" onchange="checkAll(this)" name="someCheck"></th>
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
                                  <tbody>
                                  
                                   </tbody>
                                  <tfoot>
                                 
                                  </tfoot>
                              </table>
                               <button  id="wbutton" value="dispatched" class="btn btn-md btn-primary pl-6 ">process</button>
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
       						"sAjaxSource":"../servlet/DataTable?name=currentOrd",
       						"aoColumns":
       						[
       							{
       								
       								
       								aTargets: [0],    // Column number which needs to be modified
       							    "mData": function (o, v) {   // o, v contains the object and value for the column
       							        return '<input type="checkbox" class="case" name="case[]"  />';
       							    },
       							},
       							
       							{
       							    "mData": "sid",
       							    render: function (mData, type, row, meta) {
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
       					 'select': 'multi',
          			      'order': [[1, 'asc']]
       					
       					
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
   			    	
	       			$.get("../servlet/OrderCustDetailModel",{'oid':oid},function(data)
	       			{
	       				
	       				
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
	       				var str="";
	       				data.forEach(function(v,i)
   	          			{
   	          				console.log(v);
   	          				str+="<tr><td>"+v.p_id+"</td><td>"+v.p_title+"</td><td>"+v.p_qty+"</td><td>"+v.p_discount+"</td><td>"+v.p_price+"</td><td>"+v.p_netamt+"</td></tr>";
   		       				
   	          			});
   	       				$("#tb").html(str);
	       				
	       			})
	       			
       			});
       					 
       			
       			$("#example1 tbody").on('click','input[type="checkbox"]',function(e)
       		   		   	{
       		   	   		   	e.stopPropagation();
       		   	   		})
       		
       				   
       				 $("#wbutton").click(function()
       				{	
       						 var pro=$("#wbutton").val();
       					 
         					 var values = [];
         					 var arr=[];
           			       $.each($("input[name='case[]']:checked"), function()
           			       {
           			           var data = $(this).parents('tr:eq(0)');
           			           values.push( $(data).find('td:eq(2)').text());             
           			       		
           			         //  arr=values;
									           			       
           			   
         					$.get("../servlet/UpdateOrder",{'arr':values,'status':pro},function(data)
     		           			{
     		           				console.log(data);
     		           				if(data=='sucess')
     		           					location.reload(true);
     		           				else
     		           					location.reload(false);
     		           			});	
           			   
           			       });
       		        
       				});
       			
       			       			
   		})
   function checkAll(ele) {
     var checkboxes = document.getElementsByTagName('input');
     if (ele.checked) {
         for (var i = 0; i < checkboxes.length; i++) 
         {
             if (checkboxes[i].type == 'checkbox')
             {
                 checkboxes[i].checked = true;
             }
         }
     } 
     else 
     {
         for (var i = 0; i < checkboxes.length; i++) {
             console.log(i)
             if (checkboxes[i].type == 'checkbox') {
                 checkboxes[i].checked = false;
             }
         }
     }
 }
   	
        </script>
    </body>
</html>
