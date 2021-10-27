<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
    
    <!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.28.7, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-aefd"><div class="u-clearfix u-sheet u-sheet-1">
  
  
	<%
		MemberVO vo = (MemberVO) session.getAttribute("member");
	%>
  
  
  
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="image (1).png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
            
            
           
            <%
					if (vo == null) {
				%>

</li><li class="u-nav-item"><a href="Login.html" class="u-button-style u-nav-link" style="padding: 10px 66px;">Login</a></li>
<li class="u-nav-item"><a href="join.html" class="u-button-style u-nav-link" style="padding: 10px 66px;">Join</a></li>
<%}else{ %>


<li class="u-nav-item"><%=vo.getId()%>�� ȯ���մϴ�.</li>
<li class="u-nav-item"><a href="Home.html" class="u-button-style u-nav-link" style="padding: 10px 66px;">Mypage</a></li>
<li class="u-nav-item"><a href="Logout" class="u-button-style u-nav-link" style="padding: 10px 66px;">�α׾ƿ�</a></li>
<li class="u-nav-item"><a href="Change.jsp" class="u-button-style u-nav-link" style="padding: 10px 66px;">��������</a></li>
<%
if (vo.getId().equals("admin")) {
						
%><li class="u-nav-item"><a href="SelectAll.jsp" class="u-button-style u-nav-link" style="padding: 10px 66px;">��üȸ�������ϱ�</a></li><%
								
				}%>


<% 
}%>
            
            
            
</ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 66px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="About.html" style="padding: 10px 66px;">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Contact.html" style="padding: 10px 66px;">Contact</a>

<%
					if (vo == null) {
				%>

</li><li class="u-nav-item"><a href="Login.html" class="u-button-style u-nav-link" style="padding: 10px 66px;">Login</a></li>
<li class="u-nav-item"><a href="join.html" class="u-button-style u-nav-link" style="padding: 10px 66px;">Join</a></li>
<%}else{ %>

<%
					if (vo.getId().equals("admin")) {
						
						%><li class="u-nav-item"><a href="SelectAll.jsp" class="u-button-style u-nav-link" style="padding: 10px 66px;">��üȸ�������ϱ�</a></li><%
						
						
					}%>

<li class="u-nav-item"><a href="Logout" class="u-button-style u-nav-link" style="padding: 10px 66px;">�α׾ƿ�</a></li>
<li class="u-nav-item"><a href="Change.jsp" class="u-button-style u-nav-link" style="padding: 10px 66px;">��������</a></li>


<% 
}%>


</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-align-right u-clearfix u-image u-section-1" id="carousel_0b7b">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-list-item u-palette-1-base u-repeater-item u-list-item-1">
              <div class="u-container-layout u-similar-container u-container-layout-1"><p align = "center">�</p>
                <span class="u-icon u-icon-circle u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 368 368" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0740"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 368 368" x="0px" y="0px" id="svg-0740" style="enable-background:new 0 0 368 368;"><g><g><path d="M344,112h-16c-2.816,0-5.488,0.576-8,1.472V88c0-13.232-10.768-24-24-24h-16c-13.232,0-24,10.768-24,24v56H112V88    c0-13.232-10.768-24-24-24H72c-13.232,0-24,10.768-24,24v25.472c-2.512-0.896-5.184-1.472-8-1.472H24c-13.232,0-24,10.768-24,24    v96c0,13.232,10.768,24,24,24h16c2.816,0,5.488-0.576,8-1.472V280c0,13.232,10.768,24,24,24h16c13.232,0,24-10.768,24-24v-56h144    v56c0,13.232,10.768,24,24,24h16c13.232,0,24-10.768,24-24v-25.472c2.512,0.896,5.184,1.472,8,1.472h16c13.232,0,24-10.768,24-24    v-96C368,122.768,357.232,112,344,112z M48,232c0,4.408-3.592,8-8,8H24c-4.408,0-8-3.592-8-8v-96c0-4.408,3.592-8,8-8h16    c4.408,0,8,3.592,8,8V232z M96,280c0,4.408-3.592,8-8,8H72c-4.408,0-8-3.592-8-8v-48v-96V88c0-4.408,3.592-8,8-8h16    c4.408,0,8,3.592,8,8V280z M256,208H112v-48h144V208z M304,136v96v48c0,4.408-3.592,8-8,8h-16c-4.408,0-8-3.592-8-8V88    c0-4.408,3.592-8,8-8h16c4.408,0,8,3.592,8,8V136z M352,232c0,4.408-3.592,8-8,8h-16c-4.408,0-8-3.592-8-8v-96    c0-4.408,3.592-8,8-8h16c4.408,0,8,3.592,8,8V232z"></path>
</g>
</g></svg></span>
              </div>
            </div>
            <div class="u-container-style u-list-item u-palette-1-base u-repeater-item u-video-cover u-list-item-2">
             
              <div class="u-container-layout u-similar-container u-container-layout-2"><p align= "center">�ڼ�</p>
                <span class="u-icon u-icon-circle u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-2ea6"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" id="svg-2ea6"><path d="M465.37305,125.37207a30.44851,30.44851,0,0,0-15.04688,3.9458,30.62451,30.62451,0,0,0-49.23828-8.34717L378.05957,144H349.37305a8.00065,8.00065,0,0,0-5.65723,13.65723l4.1582,4.158L236.34277,179.42578A42.93691,42.93691,0,0,0,209.8103,194.512L45.57812,304H24a8.00039,8.00039,0,0,0-8,8v80a8.00039,8.00039,0,0,0,8,8H40a7.99943,7.99943,0,0,0,6.65625-3.5625l30.77637-46.16309L240.14526,272.7915l9.04224,6.4585-44.96387,25.69434-15.80175,7.90039A7.99912,7.99912,0,0,0,184,320v72a8.00039,8.00039,0,0,0,8,8h16a8,8,0,0,0,6.94629-4.03125l30.41406-53.22461,41.44043-12.43164A57.79208,57.79208,0,0,0,321.32959,248h33.88428a33.62854,33.62854,0,0,0,25.61133,15.83691l11.20507,128.85645A7.99985,7.99985,0,0,0,400,400h48a8.00039,8.00039,0,0,0,8-8V376a8.00235,8.00235,0,0,0-2.34277-5.65723L440,356.68652V207.73022a30.51251,30.51251,0,0,0,25.65723-8.7l17.373-17.373,4-4.001a30.62842,30.62842,0,0,0-21.65722-52.28418Zm-84,34.62793a8.00231,8.00231,0,0,0,5.65722-2.34277l25.37207-25.37305a14.61856,14.61856,0,0,1,24.84571,8.52637l-5.53223,5.53222-9.37305,9.37305-.01757.01856-14.125,14.124a20.96877,20.96877,0,0,1-29.65528-.001L368.68652,160ZM59.47412,313.96533l97.55371-65.03613,27.27686,32.73193L74.47192,333.9624ZM35.71875,384H32V320H43.99976l18.2041,24.27246ZM199.21411,274.56152l-28.79785-34.55761,29.62183-19.748C200.01636,220.821,200,221.3877,200,221.958a43.14441,43.14441,0,0,0,18.03125,35.03808l7.228,5.1626Zm28.11694-30.585a27.05867,27.05867,0,0,1,11.50782-48.74609l14.416-2.27637,33.16553,37.311-32.6189,32.61865ZM203.35742,384H200V324.94434l7.15527-3.57764,22.39478,16.7959Zm78.8457-69.01367-40.634,12.19043-19.02856-14.27149,45.42822-25.959a7.99982,7.99982,0,0,0,.68164-13.45606L267.002,272.3125l30.06739-30.06738,4.37011,4.916a41.8113,41.8113,0,0,1-19.23633,67.8252Zm144.13965,50.6709L440,379.31348V384H407.335L394.13867,232.25488A14.95923,14.95923,0,0,1,409.042,216,14.97473,14.97473,0,0,1,424,230.958V360A8.00235,8.00235,0,0,0,426.34277,365.65723ZM424,203.86523a30.95049,30.95049,0,0,0-45.80078,29.77442v.001l1.19629,13.75709A17.77364,17.77364,0,0,1,368,238.11133l-.84473-1.68945A7.99912,7.99912,0,0,0,360,232H309.36963l-37.34229-42.01074,89.22071-14.08692-.13379-.84741,6.11621,6.116a36.96859,36.96859,0,0,0,47.21826,4.23266A30.67233,30.67233,0,0,0,424,200.53857Zm30.34277-16.14941a14.62689,14.62689,0,1,1-20.68554-20.68555l3.71582-3.71679,2.34277,2.34375A8.00235,8.00235,0,0,0,445.37305,168h12.68652l8,8ZM461.37305,152H448.687l6.34326-6.34375A14.61813,14.61813,0,0,1,477.22754,164.54l-10.19727-10.19727A8.00231,8.00231,0,0,0,461.37305,152Z"></path></svg></span>
              </div>
            </div>
            <div class="u-container-style u-list-item u-palette-1-base u-repeater-item u-video-cover u-list-item-3">
              <div class="u-container-layout u-similar-container u-container-layout-3"><p align= "center">��ŷ</p><span class="u-icon u-icon-circle u-icon-3">
                <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 60 60" style="" ><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-158f"></use></svg><svg class="u-svg-content" viewBox="0 0 60 60" x="0px" y="0px" id="svg-158f" style="enable-background:new 0 0 60 60;"><g><path d="M31.634,37.989c1.041-0.081,1.99-0.612,2.606-1.459l9.363-12.944c0.287-0.397,0.244-0.945-0.104-1.293
		c-0.348-0.347-0.896-0.39-1.293-0.104L29.26,31.555c-0.844,0.614-1.375,1.563-1.456,2.604s0.296,2.06,1.033,2.797
		C29.508,37.628,30.413,38,31.354,38C31.447,38,31.54,37.996,31.634,37.989z M29.798,34.315c0.035-0.457,0.269-0.874,0.637-1.142
		l7.897-5.713l-5.711,7.895c-0.27,0.371-0.687,0.604-1.144,0.64c-0.455,0.03-0.902-0.128-1.227-0.453
		C29.928,35.219,29.762,34.771,29.798,34.315z"></path><path d="M54.034,19.564c-0.01-0.021-0.01-0.043-0.021-0.064c-0.012-0.02-0.031-0.031-0.044-0.05
		c-1.011-1.734-2.207-3.347-3.565-4.809l2.148-2.147l1.414,1.414l4.242-4.243l-4.242-4.242l-4.243,4.242l1.415,1.415l-2.148,2.147
		c-1.462-1.358-3.074-2.555-4.809-3.566c-0.019-0.013-0.03-0.032-0.05-0.044c-0.021-0.012-0.043-0.011-0.064-0.022
		c-3.093-1.782-6.568-2.969-10.273-3.404V5h1.5c1.379,0,2.5-1.121,2.5-2.5S36.672,0,35.293,0h-9c-1.379,0-2.5,1.121-2.5,2.5
		s1.121,2.5,2.5,2.5h1.5v1.156c-1.08,0.115-2.158,0.291-3.224,0.535c-0.538,0.123-0.875,0.66-0.751,1.198
		c0.123,0.538,0.66,0.876,1.198,0.751c0.92-0.211,1.849-0.37,2.78-0.477l1.073-0.083c0.328-0.025,0.63-0.043,0.924-0.057V10
		c0,0.553,0.447,1,1,1s1-0.447,1-1V8.03c3.761,0.173,7.305,1.183,10.456,2.845l-0.986,1.707c-0.276,0.479-0.112,1.09,0.366,1.366
		c0.157,0.091,0.329,0.134,0.499,0.134c0.346,0,0.682-0.179,0.867-0.5l0.983-1.703c3.129,1.985,5.787,4.643,7.772,7.772
		l-1.703,0.983C49.57,20.91,49.406,21.521,49.683,22c0.186,0.321,0.521,0.5,0.867,0.5c0.17,0,0.342-0.043,0.499-0.134l1.707-0.986
		c1.685,3.196,2.698,6.798,2.849,10.619H53.63c-0.553,0-1,0.447-1,1s0.447,1,1,1h1.975c-0.151,3.821-1.164,7.423-2.849,10.619
		l-1.707-0.986c-0.478-0.276-1.09-0.114-1.366,0.366c-0.276,0.479-0.112,1.09,0.366,1.366l1.703,0.983
		c-1.985,3.129-4.643,5.787-7.772,7.772l-0.983-1.703c-0.277-0.48-0.89-0.643-1.366-0.366c-0.479,0.276-0.643,0.888-0.366,1.366
		l0.986,1.707c-3.151,1.662-6.695,2.672-10.456,2.845V56c0-0.553-0.447-1-1-1s-1,0.447-1,1v1.976
		c-1.597-0.055-3.199-0.255-4.776-0.617c-0.538-0.129-1.075,0.213-1.198,0.751c-0.124,0.538,0.213,1.075,0.751,1.198
		C26.568,59.768,28.607,60,30.63,60c0.049,0,0.096-0.003,0.145-0.004c0.007,0,0.012,0.004,0.018,0.004
		c0.008,0,0.015-0.005,0.023-0.005c4.807-0.033,9.317-1.331,13.219-3.573c0.031-0.014,0.064-0.021,0.094-0.039
		c0.02-0.012,0.031-0.031,0.05-0.044c4.039-2.354,7.414-5.725,9.773-9.761c0.019-0.027,0.043-0.048,0.06-0.078
		c0.012-0.021,0.011-0.043,0.021-0.064C56.317,42.476,57.63,37.89,57.63,33S56.317,23.524,54.034,19.564z M53.965,8.251l1.414,1.414
		l-1.414,1.415L52.55,9.665L53.965,8.251z M29.793,6.021V3h-3.5c-0.275,0-0.5-0.225-0.5-0.5s0.225-0.5,0.5-0.5h9
		c0.275,0,0.5,0.225,0.5,0.5S35.568,3,35.293,3h-3.5v3.021C31.445,6.007,31.113,6,30.793,6c-0.028,0-0.06,0.002-0.088,0.002
		C30.68,6.002,30.655,6,30.63,6c-0.164,0-0.328,0.011-0.492,0.014C30.022,6.017,29.913,6.016,29.793,6.021z"></path><path d="M21.793,14h-5c-0.553,0-1,0.447-1,1s0.447,1,1,1h5c0.553,0,1-0.447,1-1S22.346,14,21.793,14z"></path><path d="M21.793,21h-10c-0.553,0-1,0.447-1,1s0.447,1,1,1h10c0.553,0,1-0.447,1-1S22.346,21,21.793,21z"></path><path d="M21.793,28h-15c-0.553,0-1,0.447-1,1s0.447,1,1,1h15c0.553,0,1-0.447,1-1S22.346,28,21.793,28z"></path><path d="M21.793,35h-19c-0.553,0-1,0.447-1,1s0.447,1,1,1h19c0.553,0,1-0.447,1-1S22.346,35,21.793,35z"></path><path d="M21.793,42h-13c-0.553,0-1,0.447-1,1s0.447,1,1,1h13c0.553,0,1-0.447,1-1S22.346,42,21.793,42z"></path><path d="M21.793,49h-7c-0.553,0-1,0.447-1,1s0.447,1,1,1h7c0.553,0,1-0.447,1-1S22.346,49,21.793,49z"></path>
</g></svg></span>
              </div>
            </div>
            <div class="u-container-style u-list-item u-palette-1-base u-repeater-item u-video-cover u-list-item-4">
              <div class="u-container-layout u-similar-container u-container-layout-4"><p align = "center">�޷�</p>
                <span class="u-icon u-icon-circle u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 55.867 55.867" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f32a"></use></svg><svg class="u-svg-content" viewBox="0 0 55.867 55.867" x="0px" y="0px" id="svg-f32a" style="enable-background:new 0 0 55.867 55.867;"><path d="M11.287,54.548c-0.207,0-0.414-0.064-0.588-0.191c-0.308-0.224-0.462-0.603-0.397-0.978l3.091-18.018L0.302,22.602
	c-0.272-0.266-0.37-0.663-0.253-1.024c0.118-0.362,0.431-0.626,0.808-0.681l18.09-2.629l8.091-16.393
	c0.168-0.342,0.516-0.558,0.896-0.558l0,0c0.381,0,0.729,0.216,0.896,0.558l8.09,16.393l18.091,2.629
	c0.377,0.055,0.689,0.318,0.808,0.681c0.117,0.361,0.02,0.759-0.253,1.024L42.475,35.363l3.09,18.017
	c0.064,0.375-0.09,0.754-0.397,0.978c-0.308,0.226-0.717,0.255-1.054,0.076l-16.18-8.506l-16.182,8.506
	C11.606,54.51,11.446,54.548,11.287,54.548z M3.149,22.584l12.016,11.713c0.235,0.229,0.343,0.561,0.287,0.885L12.615,51.72
	l14.854-7.808c0.291-0.154,0.638-0.154,0.931,0l14.852,7.808l-2.836-16.538c-0.056-0.324,0.052-0.655,0.287-0.885l12.016-11.713
	l-16.605-2.413c-0.326-0.047-0.607-0.252-0.753-0.547L27.934,4.578l-7.427,15.047c-0.146,0.295-0.427,0.5-0.753,0.547L3.149,22.584z
	"></path></svg></span>
              </div>
            </div>
           
    </section>
  
    </section> 
   
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-05c5"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  </body>
</html>