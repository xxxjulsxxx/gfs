<?php
  //  header("Location:GFSSIS_A_Queries.php");


    $server = 'localhost';

    $user = 'root';

    $pass = '';

    $db = 'sis_gfs';

    $today = date('Y-m-d');


            $connection = mysql_connect($server, $user, $pass)

            or die ("Could not connect to server ... \n" . mysql_error ());

            mysql_select_db($db);

               //$id = $_GET['id']; 
             $result = mysql_query("SELECT START, END from R_TRANSACTION_DATE WHERE DESCRIPT = 'Online Application'")
             or die(mysql_error());


                        while($rowList = mysql_fetch_array($result))

                    {  
                        $start = $rowList['START'];
                        $end = $rowList['END'];
                      
                     }

            if ( $today > $end || $today < $start )
                {
                    echo "Application not yet open"
                    //header("Location: ApplicationNotYetOpen.php");
                 ;}
                //echo date("D M d, Y ");
            else 
            {

                
            }
            
                        


?>




<!DOCTYPE html>
<html lang="en">
<title>Administrator | School Setup</title>
<?php include 'GFSSIS_G_Head.php'; ?>

  <link href="js/iCheck/skins/minimal/green.css" rel="stylesheet">

<body>
<section id="container" >
  
 

   

    <!--main content start-->
  <section id="main-content">

    <form class="form-horizontal" action="sis_application_process.php" method="POST">
        <section class="wrapper">
            <!-- page start-->
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">Online Application</header>
                        <div class="panel-body">
                            * Fields are required
                            <div id="wizard">
                             
                                <h2>Basic Information</h2>

                                <section>
                                    
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">First Name:</label>
                                                <div class="col-md-6">
                                                   * <input type="text"  name="fname" class="form-control" required> 
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Middle Name:</label>
                                                <div class="col-md-6">
                                                    <input type="text"  name="mname" class="form-control"  >
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Last Name:</label>
                                                <div class="col-md-6">
                                                   * <input type="text"  name="lname" class="form-control" required>
                                                </div>
                                            </div>

                                             <div class="form-group">
                                                <label class="col-lg-2 control-label">Contact:</label>
                                                <div class="col-md-6">
                                                  * <input type="text"  name="contact" class="form-control"/>
                                                </div>
                                            </div>

                                             <div class="form-group">
                                                <label class="col-lg-2 control-label">Email:</label>
                                                <div class="col-md-6">
                                                   *<input type="text"  name="email" class="form-control" required/>
                                                </div>
                                             </div>


                                         


                                        
                                </section>
								   <h2>Personal Background</h2>
                                <section>
                                  
                                            


                                           <div class="form-group">
                                                <label class="col-lg-2 control-label">Birth Date:</label>
                                                <div class="col-md-6">
                                                   * <input type="text"  name="bdate" class="form-control" placeholder="YYYY-mm-dd" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
                                                </div>
                                            </div>



                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Sex:</label>
                                                <div class="col-md-6">
                                                   *<select name="sex">
                                                       <option>...</option>
                                                       <option value="Male">Male</option>
                                                       <option value="Female">Female</option>
                                                   </select>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Place of Birth:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="pbirth" class="form-control" >
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Marital:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="marital" class="form-control" >
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Nationality:</label>
                                                <div class="col-md-6">
                                                   *<input type="text"  name="nation" class="form-control" required>
                                                </div>
                                            </div>
                                       
                                      
                                        
                                </section>
                               
                            
                        <h2>Other Info</h2>
                            <section>

                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Mother Tongue:</label>
                                                <div class="col-md-6">
                                                 *  <input type="text"  name="mtongue" class="form-control" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">IP (Ethnic Group):</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="ip" class="form-control" >
                                                </div>
                                            </div>


                                               <div class="form-group">
                                                <label class="col-lg-2 control-label">Religion:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="religion" class="form-control">
                                                </div>
                                                </div>

                                           

                                 
                                </section>

                                <h2>Address Information</h2>
                                <section>
                                    <div class="form-group">
                                                <label class="col-lg-2 control-label">Street:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="street" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Barangay:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="brgy" class="form-control" >
                                                </div>
                                    </div>

                                

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Municipality:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="municipal" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">City:</label>
                                                <div class="col-md-6">
                                                   *<input type="text"  name="city" class="form-control" >
                                                </div>
                                    </div>

                                  
                                </section>

                                 <h2>Parent Information</h2>
                                <section>
                                    <div class="form-group">
                                                <label class="col-lg-2 control-label">Father's Name:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="father" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Occupation:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="f_occu" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Contact No.:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="f_contact" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Mother's Name:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="mother" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Occupation:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="m_occu" class="form-control" >
                                                </div>
                                    </div>

                                      <div class="form-group">
                                                <label class="col-lg-2 control-label">Contact No.:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="m_contact" class="form-control" >
                                                </div>
                                    </div>

                                  
                                </section>

                                <h2>Guardian</h2>
                                <section>
                                    <div class="form-group">
                                                <label class="col-lg-2 control-label">Name of Guardian:</label>
                                                <div class="col-md-6">
                                                   *<input type="text"  name="guard" class="form-control" required>
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Relationship to Guardian:</label>
                                                <div class="col-md-6">
                                                   *<input type="text"  name="rel" class="form-control" required>
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Contact No.:</label>
                                                <div class="col-md-6">
                                                   *<input type="text"  name="g_contact" class="form-control" required>
                                                </div>
                                    </div>

                                   
                                  
                                </section>

                                <h2>Educational Background</h2>


                                <section>

                                     <div class="form-group">
                                                <label ">Please fill up the fields if you have an educational background.</label>
                                               
                                    </div>

                                    <div class="form-group">
                                                <label class="col-lg-2 control-label">Learner's Reference Number:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="lrn" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">Previous School Attended:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="prevschool" class="form-control" >
                                                </div>
                                    </div>

                                    <div class="form-group">
                                                <label class="col-lg-2 control-label">Previous Grade Level:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="prevlevel" class="form-control" >
                                                </div>
                                    </div>

                                     <div class="form-group">
                                                <label class="col-lg-2 control-label">General Weigted Average:</label>
                                                <div class="col-md-6">
                                                   <input type="text"  name="gwa" class="form-control" >
                                                </div>
                                    </div>
                                  
                                </section>

                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>

        <!--save-->
        <center>
            <div class="modal" id="finish" style="margin-left: 10%">
                <div class="modal-dialog">
                    <div class="modal-content" style="width: 100%; margin-top: auto;">
                        <br>
                        <br>
                        <label><h1>Terms and Conditions ("Terms") </h1><br><p style="text-align: center;">
                    Last updated: March 25, 2018
                    Please read these Terms and Conditions ("Terms", "Terms and Conditions") carefully before using the gfssis.edu website (the "Service") operated by Grace Flous School ("us", "we", or "our").
                    Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service.
                    By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. This Terms and Conditions agreement for Grace Flous School is powered by TermsFeed.<br><br><br>Proceed?</p></label>

                    
                        <br>
                        <br>
                        <input type="button"  value="No" data-dismiss="modal" />
                        <input type="submit"   name="submit" value="Yes" />
                        <br>
                        <br>
                    </div>
                </div>
            </div>
        </center>
   </form>
    </section>
    <!--main content end-->

    <!--right sidebar start-->
    <div class="right-sidebar">
       <div class="target-sell">
        </div>
    </div>
    <!--right sidebar end-->





</section>


<!-- Placed js at the end of the document so the pages load faster -->
<?php include 'GFSSIS_G_JScript.php';?>


</body>
<!--<script src="jquery-3.3.1.min.js"></script>-->
<!--
<script> 
 $(document).ready(function () {
	  $("#all").on("click", function () {
                    $('input[name=vehicle]').prop('checked', true);
            });
           
	 }
    </script>
-->
<!--<script type="text/javascript">

  function form_submit() {

    alert("You clicked yes!");
   
   }    
  </script>-->
  <script type="text/javascript" src="js/jquery.validate.min.js"></script>
  <script type="text/javascript">



      
      function appendRow() {
    var tbl = document.getElementById('tableAacadLevel'), // table reference
        row = tbl.insertRow(tbl.rows.length),      // append table row
        i;
    // insert table cells to the new row
    for (i = 0; i < tbl.rows[0].cells.length; i++) {
        createCell(row.insertCell(i), i, 'row');
    }
}
 

  </script>
  <script type="text/javascript">
      function yes()
      {
        alert("You clicked yes.");
      }
  </script>

</html>
