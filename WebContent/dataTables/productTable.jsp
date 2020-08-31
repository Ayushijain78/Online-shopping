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
                        <h1 class="mt-4">all products</h1>
                        <ol class="breadcrumb mb-4">
                            
                           <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Large modal</button>

                        </ol>
                       
                       
                    
                
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
       <div class="col-lg-12">
           <div class="card shadow-lg border-0 rounded-lg ">
               <div class="card-header"><h3 class="text-center font-weight-bold ">Add Product</h3></div>
               <div class="card-body">
                   <form method="post" enctype="multipart/form-data" action="../servlet/ProductInsert">
                       <div class="form-row">
                           <div class="col-md-4">
                               <div class="form-group">
                               <label class="small mb-1" for="cat">category id</label>
                               <input class="form-control py-2" id="cat" list="cat_id" placeholder="Enter category id" name="cat_id" />
                               
                               <datalist id="cat_id">
                               
                               
					           <sql:setDataSource var="cn" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/online_shopping?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
					           <sql:query var="rs" dataSource="${cn}">
					           select  * from category;
					           </sql:query>
					           <c:forEach var="r" items="${rs.rows}">
					           <option value="${r.id }">${r.category }</option>
					           </c:forEach>
					          
                               </datalist>
                               
                               </div>
                           </div>
                           <div class="col-md-4">
                               <div class="form-group"><label class="small mb-1" for="sub_cat_id">subcategory id</label>
                               <input class="form-control py-2" id="sub_cat_id" list="subcat" name="sub_cat_id" placeholder="Enter subcategory" /></div>
                           
                           		
                               <datalist id="subcat">
					           <sql:query var="rs" dataSource="${cn}">
					           select  * from subcategory;
					           </sql:query>
					           <c:forEach var="r" items="${rs.rows}">
					           <option value="${r.id }">${r.subcategory }</option>
					           </c:forEach>
					          
                               </datalist>
                           </div>
                           
                           
                           <div class="col-md-4">
                               <div class="form-group"><label class="small mb-1" for="brand">brand</label>
                               <input class="form-control py-2" id="brand" list="brands" name="brand" placeholder="Enter brand" /></div>
                           
                           		
                               <datalist id="brands">
					           <sql:query var="rs" dataSource="${cn}">
					           select  * from brand;
					           </sql:query>
					           <c:forEach var="rt" items="${rs.rows}">
					           <option value="${rt.brandname }">
					           </c:forEach>
					          
                               </datalist>
                           </div>
                       </div>
                       
                       
                       <div class="form-row">
                           <div class="col-md-3">
                              <div class="form-group"><label class="small mb-1" for="model">model</label><input class="form-control py-2" id="model" name="model" type="text"  placeholder="Enter model" /></div>
                           </div>
                            <div class="col-md-4">
                              <div class="form-group"><label class="small mb-1" for="title">title</label><input class="form-control py-2" id="title" name="title" type="text"  placeholder="Enter title" /></div>
                           </div>
                           <div class="col-md-5">
                               <div class="form-group"><label class="small mb-1" for="description">description</label>
                               <input class="form-control py-2" id="description" type="text" name="desc" placeholder="description" /></div>
                           </div>
                       </div>
						<div class="form-row">
                           <div class="col-md-3">
                              <div class="form-group"><label class="small mb-1" for="price">price</label>
                              <input class="form-control py-2" id="price" name="price" type="text"  placeholder="Enter price" /></div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                              <label class="small mb-1" for="stock">stock</label>
                              <input class="form-control py-2" id="stock" name="stock" type="text"  placeholder="Enter stock" /></div>
                           </div>
                           <div class="col-md-3">
                               <div class="form-group">
                               <label class="small mb-1" for="rol">rol</label>
                               <input class="form-control py-2" id="rol" type="text" placeholder="rol" name="rol" /></div>
                           </div>
                           <div class="col-md-3">
                               <div class="form-group">
                               <label class="small mb-1" for="disc_flag">discount flag</label>
                               <select class="form-control py-2" id="disc_flag" name="disc_flag" >
                               	<option>yes</option>
                               	<option>no</option>
                               
                               </select>
                           </div>
                           
                          
                          
                        </div>
                           
                     </div>
			
					 <div class="form-row">
					 
					 
					  	  <div class="col-md-2">
                               <div class="form-group">
                               <label class="small mb-1" for="discount">discount</label>
                               <input class="form-control py-2" id="discount" type="text" placeholder="discount" name="discount" /></div>
                           </div>
                          
                           <div class="col-md-6">
                              <div class="form-group">
                              <label class="small mb-1" for="colors">colors</label>
                              <input class="form-control py-2" id="colors" name="colors" type="text"  placeholder="Enter colors" />
                              </div>
                           </div>
                           
                           
                        
                           <div class="col-md-4">
                               <div class="form-group"><label class="small mb-1" for="sizes">sizes</label>
                               <input class="form-control py-2" id="sizes" type="text" name="sizes" placeholder="sizes" /></div>
                           </div>
                           
                       </div>
                       
						<div class="form-row">
						    <div class="col-md-6">
                              <div class="form-group"><label class="small mb-1" for="features">features</label>
                              <input class="form-control py-2" id="features" name="features" type="text"  placeholder="Enter features" /></div>
                           </div>
                           
                           	
                           <div class="col-md-3">
                              <div class="form-group"><label class="small mb-1" for="splfeatures">other features if any</label>
                              <input class="form-control py-2" id="splfeatures" name="splfeatures" type="text"  placeholder=" splfeatures " /></div>
                           </div>
                           <div class="col-md-3">
                            <input type='file' class="form-control py-2" onchange="readURL(this);" value="" name="file" multiple />
                            
                            
    						<img id="blah" src="#" alt="your image" />
                           </div>
                           
                           
                  
                           
  <script>
    
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    
</script>
                           
                           
           			</div>

                       <div class="form-group mt-4 mb-0"><input type="submit" class="btn btn-primary btn-block" value ="add product"></div>
                   </form>
               </div>
               
           </div>
       </div>
    </div>
  </div>
</div>   
                       
                       
   
<c:if test="${pageContext.request.method=='POST'}">
<c:catch var="exception">
<sql:setDataSource var="cn" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/online_shopping?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC" user="root" password="" />
		<sql:update var="rs" dataSource="${cn}">
		insert into product(cat_id,subcategory_id,model,title,description,price,stock,rol,disc_flag,discount,features,colors,sizes,splfeatures,brand,images) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
		<sql:param value="${param.catname}"></sql:param>
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
       						"sAjaxSource":"../servlet/DataTable?name=product",
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


   