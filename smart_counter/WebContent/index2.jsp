<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%-- �� ���� --%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR"> <%-- ���� CHARSET�κ� �����ؼ� �������ֽø� �˴ϴ�. �� �׸���! ���� 2�� �� �ֽ��ϴ�! --%>
<title>Insert title here</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Fitness - provide the easy responsive free website templates. You can easily customize and make your own website for your startup business.">
    <meta name="keywords" content="bootstrap template, Responsive Template, Website Template, free website templates, free website template download ">
    <title>Fitness-The Gym Club | Bootstrap | Free Responsive Website Templates</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- animsition css -->
    <link rel="stylesheet" type="text/css" href="css/animsition.min.css">
    <!-- Font Awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <!-- font css -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i%7cRoboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <!-- owl Carousel Css -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

			<%
				MemberVO vo = (MemberVO) session.getAttribute("member");
			%>

<body class="animsition">
    <div class="top-bar">
        <!-- top-bar -->
        <div class="container">
            <div class="row">
                <div class="col-md-3 hidden-sm hidden-xs bdr">
                    <div class="time-info">
                        <p class="time-text">Mon - Sat : 6 am-9pm - Sun : 8am-6pm</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 hidden-xs bdr">
                    <div class="call-info">
                        <!-- call-info -->
                        <p class="call-no"> (+82) 062)655-3509</p>
                    </div>
                    <!-- /.call-info -->
                </div>
                <div class="col-md-3 col-sm-4 hidden-xs bdr">
                    <div class="mail-info">
                        <p class="mail-text">bwk1525@gmail.com</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="top-search">
                        <div class="custom-search-input">
                            <div class="input-group  ">
                                <input type="text" class="  search-query form-control" placeholder="Search">
                                <span class="input-group-btn">
                        <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
                        </span> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="hero-section">
        <div class="header">
            <!-- navigation -->
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="logo">
                            <a href="index.html"><img src="logo_120.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12">

                        <div class="navigation pull-right" id="navigation">
                            <ul>
                                <li class="active"><a href="index2.html" title="Home" class="animsition-link">Home</a></li>
                                <li><a href="classes-list.html" title="Classes" class="animsition-link">��ǥ</a>
                                    <ul>
                                        <li><a href="targett.html" title="Classes List">��ǥ���� ����</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog-default.html" title="Blog" class="animsition-link">�ڼ�</a>
                                    <ul>
                                        <li><a href="blog-default.html" title="Blog" class="animsition-link">��������</a></li>
                                    </ul>
                                </li>
                                <li><a href="testimonial.html" title="Features" class="animsition-link">�׷���</a>
                                    <ul>
                                        <li><a href="Graph2.html" title="Testimonial" class="animsition-link">�Ϻ��׷���</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html" title="Contact Us" class="animsition-link">�⼮</a>
                                    <ul>
                                        <li><a href="calendar.html" title="Testimonial" class="animsition-link">�⼮����</a></li>
                                    </ul>
                                </li>
                                <li><a href="style-guide.html" title="Contact Us" class="animsition-link">�α���</a>
                                    <ul>
                                    
                                    
                          
						<%
							if (vo == null) {
						%>
						
						
                                        <li><a href="Join.jsp" title="Testimonial" class="animsition-link">ȸ������</a></li>
                                        <li><a href="signin.html" title="Testimonial" class="animsition-link">�α���</a></li>
						
						<%
							} else {
						%>
						<li><a title="Testimonial" class="animsition-link"><%=vo.getId()%>�� ȯ���մϴ�.</a></li>
                        <li><a href="Change.jsp" title="Testimonial" class="animsition-link">ȸ����������</a></li>
                        <li><a href="Logout" title="Testimonial" class="animsition-link">�α׾ƿ�</a></li>
                  
                     <%
                     if (vo.getId().equals("admin")) {
                  %>
                  
                   <li><a href="SelectAll.jsp" title="Testimonial" class="animsition-link">��üȸ�������ϱ�</a></li>

           
                  <%
                     }
                  %>
                  <%
                     }
                  %>
						
					</ul>
				</div>
                                    
                                    
                                    
                                    
                                    
                                    
                              
                                        

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12  col-xs-12">
                    <div class="hero-caption pinside50">
                        <img src = man.png >
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="space-medium">
        <div class="container">
            <div class="row">  
 <!DOCTYPE html>
                <html lang="en" >
                <head>
                  <meta charset="UTF-8">
                  <title>CodePen - A Pen by �迵��</title>
                  <link rel="stylesheet" href="./link.css">
                
                </head>
                <body>
                <div id="app">
                  <div class="search-wrapper">
                    <input type="text" v-model="search" placeholder="Search title.." />
                    <label>Search title:</label>
                  </div>
                  <div class="wrapper">
                    <div class="card" v-for="post in filteredList">
                      <a v-bind:href="post.link" target="_blank">
                        <img v-bind:src="post.img" />
                        <small>{{ post.author }}</small>
                        {{ post.title }}
                      </a>
                    </div>
                  </div>
                </div>
                <!-- partial -->
                  <script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.9/vue.min.js'></script><script  src="./script.js"></script>
                  <script src="link.js"></script>
                </body>
                </html>
            </div>
        </div>
    </div>

    <div class="space-medium">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="outline pinside80 team-block">
                        <div class="row">
                            <div class="container">

                                <form class="target" action="target.html">
                                  <h2 class="form-target-heading">������ � ������?</h2>
                                          �ȱ������<label for="push-ups" class="sr-only">�ȱ������</label>
                                  <input name="push" type="text" id="push-ups" class="form-control" required>
                                          ��������Ű��<label for="sit-up" class="sr-only">��������Ű��</label>
                                  <input name="push" type="text" id="push-ups" class="form-control" required>
                                           �ΰ���<label for="chinning" class="sr-only">�ΰ���</label>
                                  <input name="chin" type="password" id="chinning" class="form-control" required>
                                 
                                  </div>
                                  <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="Test()">����</button>
                                  <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="Test()">����</button>
                                  
                                    <!-- <input type="button" value="��ư" >
                                  <input type="reset" value="����"> 
                                 -->
                                
                                
                                
                                </form>
                          
                              </div> <!-- /container -->
                          
                          
                              <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
                              <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                              <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                              <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                              <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
                                    <!-- /input-group -->
                                </div>
                                <!-- /.col-lg-6 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <div class="footer space-medium">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
                    <div class="footer-logo mb30">
                        <img src="images/logo.png" class="" alt="Fitness Website Template">
                    </div>
                </div>
                <div class="col-lg-offset-1 col-lg-3 col-md-offset-1 col-md-3 col-sm-3 col-xs-12">
                    <div class="footer-widget mb30">
                        <h3 class="footer-title">Contact Info</h3>
                        <ul class="listnone">
                            <li>
                                <address>
                                    2687 Broadcast Drive Monroe,
                                    <br> NC 28112
                                </address>
                            </li>
                            <li>+1 (800)-123-456 </li>
                            <li>fitnessgym@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-offset-1 col-lg-2 col-md-offset-1 col-md-2 col-sm-3 col-xs-12">
                    <div class="footer-widget mb30">
                        <h3 class="footer-title">Quick Links</h3>
                        <ul class="listnone">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="classes.html">Classes</a></li>
                            <li><a href="blog-default.html">News</a></li>
                            <li><a href="pricing.html">Pricing</a></li>
                            <li><a href="testimonial.html">Testimonial</a></li>
                            <li><a href="contact.html">Contactus</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="footer-widget mb30">
                        <h3 class="footer-title">Connect With us</h3>
                        <div class="footer-social"> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#" class="active"><i class="fa fa-facebook"></i> </a>
                            <a href="#"> <i class="fa fa-google-plus"></i> </a>
                            <a href="#"> <i class="fa fa-pinterest"></i> </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tiny-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                   Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
                </div>
            </div>
        </div>
    </div>
    <!-- back to top icon -->
    <a href="#0" class="cd-top" title="Go to top">Top</a>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menumaker.js"></script>
    <!-- sticky header -->
    <script type="text/javascript" src="js/jquery.sticky.js"></script>
    <script type="text/javascript" src="js/sticky-header.js"></script>
    <!-- animsition -->
    <script type="text/javascript" src="js/animsition.js"></script>
    <script type="text/javascript" src="js/animsition-script.js"></script>
    <!-- testimonial-carousel-->
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/testimonial-carousel.js"></script>
    <!-- Back to top script -->
    <script src="js/back-to-top.js" type="text/javascript"></script>
</body>

</html>