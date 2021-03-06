<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.smhrd.domain.MemberVO" %>
<%@ page import = "com.smhrd.domain.MemberDAO" %>
<%@ page import = "java.util.List" %>

<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8" />
    

    <!-- Responsive Metatag -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Page Description and Author -->
    <meta name="description" content="Construction - Responsive HTML5 Template">
    <meta name="author" content="iThemesLab">

    <!-- Bootstrap CSS  -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.css" type="text/css">
    <link rel="stylesheet" href="css/owl.transitions.css" type="text/css">
    
    <!-- Light Box CSS -->
    <link rel="stylesheet" href="css/lightbox.css" type="text/css">
    

    
    
    <!-- Default Color -->
    <link rel="stylesheet" type="text/css" href="css/colors/light-red.css">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/colors/light-red.css" title="light-red">
    <link rel="stylesheet" type="text/css" href="css/colors/green.css" title="green">
    <link rel="stylesheet" type="text/css" href="css/colors/blue.css" title="blue">
    <link rel="stylesheet" type="text/css" href="css/colors/light-blue.css" title="light-blue">
    <link rel="stylesheet" type="text/css" href="css/colors/yellow.css" title="yellow">
    <link rel="stylesheet" type="text/css" href="css/colors/black.css" title="black">
    
    <!-- Responsive CSS Style -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css">

    <!-- Css3 Transitions Styles  -->
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    
    
    
    <!-- Construction JS File -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/lightbox.min.js"></script>
    <script src="js/jquery.appear.js"></script>
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/superfish.min.js"></script>
    <script src="js/supersubs.js"></script>
    <script src="js/styleswitcher.js"></script>
    <script src="js/script.js"></script>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
 
    
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    

    <title>Flower_Project</title>
    
    
    <link rel="stylesheet" href="css/new_post.css">

    <!-- Construction CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/style.css">


 
    <style type="text/css">
        .img_wrap {
            width: 300px;
            margin-top: 50px;
        }
        .img_wrap img {
            max-width: 100%;
        }
 
    </style>
 
    <script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
    <script type="text/javascript">
        
        var sel_file;
 
        $(document).ready(function() {
            $("#input_img").on("change", handleImgFileSelect);
        }); 
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("???????????? ????????? ???????????? ???????????????.");
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }
 
    </script>


 
    <script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
    <script type="text/javascript">
        
        var sel_file;
 
        $(document).ready(function() {
            $("#input_img").on("change", handleImgFileSelect);
        }); 
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("???????????? ????????? ???????????? ???????????????.");
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }
 
    </script>



</head>
  
<body>
    

<!-- Start Loader -->   
<div id="loader">
    <div class="spinner">
        <div class="dot1"></div>
        <div class="dot2"></div>
    </div>
</div>
<!-- End Loader -->
    
    <div class="container">
    
    
    <!-- Start Header Section -->
    <div class="header-section">
        <div class="row">
            <div class="col-md-5 col-sm-5">
                <div class="logo-img">
                    <a href="main.jsp"><img id="main_pic" src="images/client/5055151.jpg" class="img-responsive" alt=""></a>
                </div>
            </div>
            <div class="col-md-7 col-sm-7">
                <div class="top-info">
                    <ul id=login class="top-social" >
                    <c:choose>
                       <c:when test="${empty loginMember }">
                           <a href = "login.jsp"><li class="font_tong">?????????</li></a>
                           <a href = "join.jsp"><li class="font_tong">????????????</li></a>
                        </c:when>
                        <c:otherwise>
                           <c:if test="${!empty loginMember }">
                              <h5 class="font_tong">${loginMember.id}??? ???????????????</h5>
                              <a href="LogoutCon" class="font_tong">????????????</a>   
                           </c:if>
                        </c:otherwise>
                    </c:choose>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Section -->
    
    <!-- Start Navigation Section -->
    <div class="navigation">
        
        <div class="navbar navbar-default navbar-top">
            <div class="navbar-header">
                <!-- Stat Toggle Nav Link For Mobiles -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                        
            </div>
            <div class="navbar-collapse collapse">
    
                <!-- ??????????????? ?????? -->
                <ul class="nav navbar-nav">
                    <li>
                        <a href="main.jsp">Home</a>
                    </li>
                    <li>
                        <a href="flower.jsp">?????????</a>
                    </li>
                    <li>
                        <a href="select.jsp">??????/????????? ??????</a>
                    </li>
                    
                    <li>
                        <a href="flower_rec.jsp">????????????</a>
                    </li>
                    <li>
                        <a class="active" href="post_view.jsp">????????????</a>
                    </li>
                <!-- ??????????????? ??? -->
            </div>
        </div>
        
    </div>
    <!-- End Navigation Section-->
    
    
    
  
    
    
    
    <body>
        <br><br><br>
        
        
    
<section id="container">


    <div id="main_container">

        <div class="post_form_container">
            <form action="AddPostCon" class="post_form" method="post" enctype="multipart/form-data">
                <input name="mid" type="text" value="${loginMember.id}" readonly></input>
                <input name="hit" type="text" value ="0" hidden>
                
                <div id="in_title">
                    <textarea style="resize: none;" name="title" id="utitle" rows="1" cols="55" placeholder="??????" maxlength="20" required></textarea>
                </div>
                <div class="preview">
                    <div class="upload">
                        <div class="post_btn">
                            <div class="plus_icon">
                                <span></span>
                                <span></span>
                            </div>
                            <p>?????? ????????? ??????</p>
                            <canvas id="imageCanvas"></canvas>
                            <!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
                        </div>
                    </div>
                </div>
                <p>
                    <input type="file" name="photo" id="id_photo" required="required">
                </p>
                <p>
                    <textarea style="resize: none;" name="content" id="text_field" cols="50" rows="5" maxlength="1000" placeholder="????????? 1000??? ?????? ???????????????"></textarea>

                </p>
                <br>

                <div>
    
                    <div class="wi_line"></div>
                    

                      <br>
                      <div>?????? ??? ????????? ????????? ?????????</div>

                      <div>
                        <table >
                         <th id="selecttag">?????? ????????????</th>
                         <tr>
                             <td></td>
                         </tr>
                        <tr>
                            <td>
                                <input type="text" name="fid" id="flower_hash"  readonly>
                                
                            </td>
                        </tr>
                        </table>
                    </div>

                      <br>
                      <div id="btn1_spring">
                          <th>???</th><br>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <br>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('??????????????????')" style="cursor: pointer;"><td>#?????????????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                        </div>
                        <br>
                        <div id="btn1_summer">
                          <th>??????</th><br>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <br>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????????????????')" style="cursor: pointer;"><td>#?????????????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <br>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                      </div>
                      <br>
                        <div id="btn1_fall">
                          <th>??????</th><br>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????????????????')" style="cursor: pointer;"><td>#?????????????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <br>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('??????????????????')" style="cursor: pointer;"><td>#?????????????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                      </div>
                      <br>
                        <div id="btn1_winter">
                          <th>??????</th><br>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('????????????')" style="cursor: pointer;"><td>#???????????? </td></a>
                          <br>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('??????????????????')" style="cursor: pointer;"><td>#?????????????????? </td></a>
                          <a onclick="inputNum('?????????')" style="cursor: pointer;"><td>#????????? </td></a>
                          <a onclick="inputNum('?????????????????????')" style="cursor: pointer;"><td>#????????????????????? </td></a>
                          <a onclick="inputNum('???????????????')" style="cursor: pointer;"><td>#??????????????? </td></a>
                          <a onclick="inputNum('??????')" style="cursor: pointer;"><td>#?????? </td></a>
                          
                      </div>
					<input class="submit_btn" type="submit" value="??????">
                  </form>

                
            </div>

        </div>

    </div>

    <br><br><br><br><br><br><br>
</section>


<script src="js/insta.js"></script>

<script>
       var fileInput  = document.querySelector( "#id_photo" ),
           button     = document.querySelector( ".input-file-trigger" ),
           the_return = document.querySelector(".file-return");

       // Show image
       fileInput.addEventListener('change', handleImage, false);
       var canvas = document.getElementById('imageCanvas');
       var ctx = canvas.getContext('2d');


        function handleImage(e){
           var reader = new FileReader();
           reader.onload = function(event){
               var img = new Image();
               // var imgWidth =
               img.onload = function(){
                   canvas.width = 300;
                   canvas.height = 300;
                   ctx.drawImage(img,0,0,300,300);
               };
               img.src = event.target.result;
               // img.width = img.width*0.5
               // canvas.height = img.height;
           };
           reader.readAsDataURL(e.target.files[0]);
       }

       function inputNum(text){
                  document.getElementById('flower_hash').value = text;
              }

</script>
    
  
    
    
    

    
        
</body>

</html>