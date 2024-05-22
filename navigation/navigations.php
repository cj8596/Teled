<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

    <title>TelEd : The E-Learning Platform for Students</title>

<!-- Bootstrap core CSS -->
<link href="<?php echo web_root; ?>css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo web_root; ?>css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link href="<?php echo web_root; ?>css/dataTables.bootstrap.css" rel="stylesheet" media="screen">  
<!-- <link href="<?php echo web_root; ?>css/kcctc.css" rel="stylesheet" media="screen">  -->
<link href="<?php echo web_root; ?>fonts/font-awesome.min.css" rel="stylesheet" media="screen">  
<link rel="stylesheet" type="text/css" href="<?php echo web_root; ?>loginregister.css">  
<link rel="stylesheet" href="<?php echo web_root; ?>assets/iCheck/flat/blue.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="<?php echo web_root; ?>assets/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet" href="<?php echo web_root; ?>css/jquery-ui.css">  
<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,600,700,700i&amp;subset=latin-ext" rel="stylesheet">
<link href="css/bootstrap1.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles1.css" rel="stylesheet">
	 <link rel="icon" href="logo1.jpg">
 <style type="text/css"> 
 
#content {
  min-height: 550px;
  margin: 0;
  width: 100%;
}
#footer > div {
  background-color: #fff;
  min-height: 200px;
  padding: 10px 50px;
  margin-top: 30px;
  border-top: 1px solid #ddd;

}
.footer-links { 
  /*margin-left: 5px;*/
}
#footer > footer { 
    background-color: rgb(0, 67, 200);
  min-height: 50px;
  padding: 10px; 
  border-top: 1px solid #ddd;
  color:#fff;

}
.navbar-nav {
  float: right;
}
@media only screen and (max-width: 768px){
 .navbar-nav {
  float: none;
 }

}
#content { 
  margin-right: 0px;
  margin-left: 90px;
  width:90%;
}

#content:before,
#content:after {
  display: table;
  content: "";
}

#content:after {
  clear: both;
}

#content:before,
#content:after {
  display: table;
  content: "";
}

#content:after {
clear: both;
}

#mySidenav a {
    position: absolute;
    left: -130px;
    transition: 0.3s;
    padding: 20px;
    width: 190px;
    text-decoration: none;
    font-size: 25px;
    color: white;
    border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
    left: 0;
}

#lesson {
    top: 180px;
    background-color: rgb(0, 67, 200)
}

#exercise {
    top:260px;
    background-color: rgb(0, 81, 242);
}

#download {
    top: 340px;
    background-color: rgb(33, 107, 255);
}

#about {
    top: 420px;
    background-color: rgb(79, 138, 255);
}
#login {
    top: 500px;
    background-color: rgb(137, 176, 255);
}

#title-header {
  background-color: rgb(0, 67, 200); 
  border-bottom: 1px solid #ddd; 
  height: 130px;  
  padding: 10px 0px;
  text-align: center;
  color: #fff;
  font-size: 18px;
}
 

 </style>
 

<body >
   <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <!-- Text Logo - Use this if you don't have a graphic logo -->
        <!-- <a class="navbar-brand logo-text page-scroll" href="indexs.html">Evolo</a> -->

        <!-- Image Logo -->
        <a class="navbar-brand logo-image" href="home.php"><img src="images/logos.jpg" alt="alternative"></a>
        
        <!-- Mobile Menu Toggle Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-awesome fas fa-bars"></span>
            <span class="navbar-toggler-awesome fas fa-times"></span>
        </button>
        <!-- end of mobile menu toggle button -->

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav ml-auto">
			 <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="indexs.php"><i class="icon-home"></i> Profile </span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="<?php echo web_root; ?>indexs.php?q=lesson"><i class="icon-list-alt"></i> Lesson</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="<?php echo web_root; ?>indexs.php?q=exercises"><i class="icon-list-alt"></i> Exercises</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="<?php echo web_root; ?>indexs.php?q=download"><i class="icon-download"></i> Downloads</a>
                </li>
				<li class="nav-item">
                    <a class="nav-link page-scroll" href="logout.php"><i class="icon-logout"></i> Logout</a>
                </li>
				</ul>
				<span class="nav-item social-icons">
                <span class="fa-stack">
                    <?php 
										 echo  $_SESSION['user_email'];
										?>
										</span>
                                    
                                    </span>
        </div>
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
	
    <!-- Contact -->
    <div id="contact" class="form-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p><?php check_message(); ?>  
						<?php require_once $content; ?></p>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
           
        </div> <!-- end of container -->
    </div> <!-- end of form-2 -->
    <!-- end of contact -->
<footer>	
 <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © 2020 <a href="home.php">TelEd</a> - All rights reserved</p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->
 </footer>   
    	
    <!-- Scripts -->
    <script src="js/jquery.min - Copy.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/popper.min - Copy.js"></script> <!-- Popper tooltip library for Bootstrap -->
    <script src="js/bootstrap - Copy.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min - Copy.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min - Copy.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup - Copy.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/validator.min - Copy.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
    <script src="js/scripts - Copy.js"></script> <!-- Custom scripts -->
  <script type="text/javascript" language="javascript" src="<?php echo web_root; ?>jquery/jquery.min.js"></script>
  <script src="<?php echo web_root; ?>js/bootstrap.min.js"></script> 
  <script type="text/javascript" src="<?php echo web_root; ?>js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
  <script type="text/javascript" src="<?php echo web_root; ?>js/locales/bootstrap-datetimepicker.uk.js" charset="UTF-8"></script>
  <script type="text/javascript" language="javascript" src="<?php echo web_root; ?>js/jquery.dataTables.js"></script> 
  <script src="<?php echo web_root;?>assets/iCheck/icheck.min.js"></script>
  <!-- Bootstrap WYSIHTML5 -->
  <script type="text/javascript" src="<?php echo web_root; ?>js/jquery-ui.js"></script> 
  <script type="text/javascript" src="<?php echo web_root; ?>js/autofunc.js"></script> 
  <script src="<?php echo web_root;?>assets/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
        var url = window.location;
        $('ul.nav a[href="'+ url +'"]').parent().addClass('active');
        $('ul.nav a').filter(function() {
             return this.href == url;
        }).parent().addClass('active');
    });
  </script>

<!-- Page Script -->
<script>
 
  $(function () {
    //Add text editor
    $("#compose-textarea").wysihtml5();
  });
</script>
<script type="text/javascript" charset="utf-8">

$(document).ready(function() {
    var t = $('#example').DataTable( {
      "bSort": false,
        "columnDefs": [ {
            "searchable": false,
            "orderable": false,
            "targets": 0
        } ],

          //vertical scroll
         // "scrollY":        "300px",
        "scrollCollapse": true,

        //ordering start at column 1
        "order": [[ 1, 'desc' ]]
    } );
 
    t.on( 'order.dt search.dt', function () {
        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
    } ).draw();
} );
$(document).ready(function() {
    var t = $('#example2').DataTable( {
      "bSort": false,
        "columnDefs": [ {
            "searchable": false,
            "orderable": false,
            "targets": 0
        } ],

          //vertical scroll
         // "scrollY":        "300px",
        "scrollCollapse": true,

        //ordering start at column 1
        "order": [[ 1, 'desc' ]]
    } );
 
    t.on( 'order.dt search.dt', function () {
        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
    } ).draw();
} );

</script>  

<script type="text/javascript"> 

$('#date_picker').datetimepicker({
  format: 'mm/dd/yyyy',
    language:  'en',
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0
});

  
</script>
<script>
  function checkall(selector)
  {
    if(document.getElementById('chkall').checked==true)
    {
      var chkelement=document.getElementsByName(selector);
      for(var i=0;i<chkelement.length;i++)
      {
        chkelement.item(i).checked=true;
      }
    }
    else
    {
      var chkelement=document.getElementsByName(selector);
      for(var i=0;i<chkelement.length;i++)
      {
        chkelement.item(i).checked=false;
      }
    }
  }
   function checkNumber(textBox){
        while (textBox.value.length > 0 && isNaN(textBox.value)) {
          textBox.value = textBox.value.substring(0, textBox.value.length - 1)
        }
        textBox.value = trim(textBox.value);
      }
      //
      function checkText(textBox)
      {
        var alphaExp = /^[a-zA-Z]+$/;
        while (textBox.value.length > 0 && !textBox.value.match(alphaExp)) {
          textBox.value = textBox.value.substring(0, textBox.value.length - 1)
        }
        textBox.value = trim(textBox.value);
      }
 

  $(document).on("change",".radios",function(){

    var exerciseid = $(this).data('id');
    var value = $(this).val();

       // alert(value);
       if ($(this).is(':checked'))
        {
            $.ajax({
            type : "POST",
            url : "validation.php",
            dataType: "text",
            data: {ExerciseID:exerciseid,Value:value},
            success : function(data){
              // alert(data)
            }
           });
        }
  

  });

//    $(function(){
//   $('input[type="radio"]').change(function(){
//     if ($(this).is(':checked'))
//     {
//       alert($(this).val());
//       $(this).disabled=true;
//     }
//   });
// });
  </script>     

</body>
</html>