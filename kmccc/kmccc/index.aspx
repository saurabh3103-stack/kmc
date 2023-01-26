<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Tax Management System</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/jquery-ui-1.8.16.custom.css" type="text/css" media="screen">
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
    <script src="js/superfish.js" type="text/javascript"></script>
    <script src="js/jquery.hoverIntent.js" type="text/javascript"></script>
    <script src="js/FF-cash.js" type="text/javascript"></script> 
    <script src="js/script.js" type="text/javascript"></script>
    <script src="js/tabs.js" type="text/javascript"></script>
	<script src="js/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
	<script src="js/jquery.ui.core.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.jqtransform.js"></script>
	<script language="javascript" src="js/ajaxfunc2.js"></script>
	<!-- The JavaScript -->
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
		<link rel="stylesheet" type="text/css" href="css/jquerytour.css" />
		<script type='text/javascript'>
function refreshCaptcha(){
	var img = document.images['captchaimg'];
	img.src = img.src.substring(0,img.src.lastIndexOf("?"))+"?rand="+Math.random()*1000;
}
function refreshCaptchaa(){
	var img = document.images['captchaimgg'];
	img.src = img.src.substring(0,img.src.lastIndexOf("?"))+"?rand="+Math.random()*1000;
}
</script>
		<script>
document.onkeydown = function(e) {
        if (e.ctrlKey && 
            (e.keyCode === 85 )) {
            return false;
        }
};
</script>
<script language="javascript">
document.onmousedown=disableclick;
status="Right Click Disabled";
Function disableclick(event)
{
  if(event.button==2)
   {
     alert(status);
     return false;    
   }
}
</script>
</head>
<body id="page1" oncontextmenu="return false">
    <div class="hover_bkgr_fricc">
    <span class="helper"></span>
</div>
<style>
.indent-top3{
    color:#fff;
}
/* Popup box BEGIN */
.hover_bkgr_fricc{
    background:rgba(0,0,0,.4); 
    display:none;
    height:100%;
    position:fixed;
    text-align:center;
    top:0;
    width:100%;
    z-index:10000;
}
.hover_bkgr_fricc .helper{
    display:inline-block;
    height:100%;
    vertical-align:middle;
}
.hover_bkgr_fricc > div {
    background-color: #fff;
    box-shadow: 10px 10px 60px #555;
    display: inline-block;
    height: auto;
    max-width: 551px;
    min-height: 100px;
    vertical-align: middle;
    width: 60%;
    position: relative;
    border-radius: 8px;
    padding: 15px 5%;
}
.popupCloseButton {
    background-color: #fff;
    border: 3px solid #999;
    border-radius: 50px;
    cursor: pointer;
    display: inline-block;
    font-family: arial;
    font-weight: bold;
    position: absolute;
    top: -20px;
    right: -20px;
    font-size: 25px;
    line-height: 30px;
    width: 30px;
    height: 30px;
    text-align: center;
}
.popupCloseButton:hover {
    background-color: #ccc;
}
.trigger_popup_fricc {
    cursor: pointer;
    font-size: 20px;
    margin: 20px;
    display: inline-block;
    font-weight: bold;
}
/* Popup box BEGIN */
</style>
<header id="header">
                    <div class="main" style="text-align:center;">
<img src="images/Header.JPG" class="img-fluid" />
                        <div class="clear"></div>
                    </div>
                    <div class="tail-1 border-1">
                        <div class="main">
                            <div class="">
                                <article class="">
                                    <nav>
                                        <ul class="menu">
                                            <marquee style="
    color: #fff;
    font-size: 21px;
    padding: 5px;
">Pay Your Property Tax Before 31-March-2023</marquee>
                                            <!--<li class="first"><a class="active" href="index.php">Home<span></span></a></li>-->
                                            <!--<li><a href="http://kmc.up.nic.in" target="_blank" class="" style="width: 110px;">About us<span></span></a></li>-->
<!--<li><a href="download_receipt.php" style="width: 180px;">Download Receipt<span></span></a></li>-->
<!--<li><a href="#" style="width: 160px;">Raise a Concern<span></span></a></li>-->
<!--<li><a href="contact_us.php" style="width: 100px;">Contact<span></span></a></li>-->

                                        </ul>
                                        <div class="clear"></div>
                                    </nav>
                                </article>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </header>
				<style>
.scroll-left {
 height: 50px;
 overflow: hidden;
 position: relative;
 background: white;

}
.scroll-left p {
 position: absolute;
 width: 100%;
 height: 100%;
 margin: 0;
 font-weight: bold;
 font-size: 30px;

 line-height: 50px;
 text-align: center;
 /* Starting position */
 transform:translateX(100%);
 /* Apply animation to this element */
 animation: scroll-left 15s linear infinite;
}
/* Move it (define the animation) */
@keyframes scroll-left {
 0%   {
 transform: translateX(100%);
 }
 100% {
 transform: translateX(-100%);
 }
}
#page1 #content, #content {padding: 0px;padding-bottom: 5px;}
</style>


			<!--	<marquee behavior="scroll" direction="left" class="scroll-left"><div style="margin-top:10px;color: #FF0000;font-size:22px;">&#x090F;&#x0915; &#x092E;&#x0941;&#x0936;&#x094D;&#x0924; &#x0938;&#x092E;&#x093E;&#x0927;&#x093E;&#x0928; &#x092F;&#x094B;&#x091C;&#x0928;&#x093E; (OTS) &#x0915;&#x0947; &#x0905;&#x0928;&#x094D;&#x0924;&#x0930;&#x094D;&#x0917;&#x0924; 100% &#x092C;&#x094D;&#x092F;&#x093E;&#x091C; &#x092E;&#x093E;&#x092B; &#x0915;&#x0947; &#x0938;&#x093E;&#x0925; &#x0915;&#x0930;&#x0947; &#x0905;&#x092A;&#x0928;&#x0947; &#x0939;&#x093E;&#x0909;&#x0938; &#x091F;&#x0948;&#x0915;&#x094D;&#x0938; &#x0915;&#x093E; &#x092D;&#x0941;&#x0917;&#x0924;&#x093E;&#x0928;</div></marquee>
             --><br />
				<script type="text/javascript">
                    // Popup window code
                    function newPopup(url) {
                        popupWindow = window.open(
                            url, 'popUpWindow', 'height=700,width=1450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
                    }
                </script>

<!--=========================================content=============================================-->
			  <section id="content">
                	<div class="main">
                    	<div class="container_12">
                        	<div class="margin-bot5">
                            	<script type="text/javascript" src="covered_carpet_ajax.js"></script>
	 <style>
.btn {
  background: #ec2718;

  -webkit-border-radius: 10;
  -moz-border-radius: 10;
  border-radius: 10px;
  font-family: Arial;
  color: #ffffff;
  font-size: 18px;
  padding: 6px;
  text-decoration: none;
}

.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}
</style>
<article class="grid_12">
                                
    <div class="bg-1 border_r-1 border-2">
                                    	<div class="indent">
                                            <h5 class="indent-left" style="width: 100%;">
                                            <div class="h3 text-center text-light">Pay Your Property Tax
                                            </div>
                                            </h5>
                                            <div class="wrap bg-2 border-2 border_r">
                                                <div>
                                                    <div class="tab_container">
                                                        <div id="tab4" class="tab_content">
                                                        	<div class="row">
                                                        		<div class="col-lg-5 col-md-5 col-sm-12" style="
    border-right: 2px solid #ffa300;
">
                                                        			<div>
				                                                         	<h3 class="margin-bot1" style="color: #fff;">Login By Property ID</h3>
 
<form id="form2"  runat="server">	
       <%-- Design and Developed By Deific Digital(https://deificdigital.com/) --%>
     <fieldset class="margin">
	 <strong class="d-in-block color-1 margin-bot2">Enter your property number:</strong>
					<label class="d-block margin-bot2">
					 <span class="">
         <asp:TextBox style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;" ID="TextBox1" runat="server"></asp:TextBox>
         </span>
					</label>
					</fieldset><br />
 <cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="White" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="46px" Width="200px" />

     <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>

     <br />

     <p style="color: antiquewhite; margin: 0px !important;
">
        Can&#39;t read the image?
         <asp:Button ID="Button4" runat="server" Text="Refresh" style="
    background: #a10000;
    border: none;
    color: #fff;
    border-radius: 5px;
"/>
     </p>
									<div class="">
        <strong class="d-block color-1 margin-bot2">Please Enter code :</strong>
      
	                                    <asp:TextBox style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;" ID="captcha_code" runat="server"></asp:TextBox>
	</div>
                                               							<%--<button type="submit" class="button-5 mt-3" Onclick="button_submit">Submit</button>
                                                                --%>            <%--<input name="search" type="submit" class="button-5 mt-3" value="Submit" style="cursor:pointer;">--%>
																				<!--<a href="#" class="button-5" onClick="document.getElementById('form-3').submit()">Submit</a>-->
				        <asp:Button ID="Button3" runat="server" CssClass="button-5 mt-3" Text="Submit" OnClick="Button3_Click" />
				        
				                                                     </div>
                                                        		</div>
                                                        		<div class="col-lg-6 col-md-6 col-sm-12">
                                                        			<div>
                                                         	<h3 class="margin-bot1" style="
    color: #fff;
">Login With Details</h3>
    										<%--<form id="form2" runat="server">--%>
    											 																<fieldset>
																	<div class="row">
																	    <div class="col-md-6">
																			<strong class="d-block color-1 margin-bot2">Select Zone<span>*</span>:</strong>
                 <asp:DropDownList ID="zone" runat="server" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;">
                     <asp:ListItem Text="--Zone--" Value="0"></asp:ListItem>
                     <asp:ListItem Text="1::Civil Lines" Value="1"></asp:ListItem>
                     <asp:ListItem Text="2::Krishna Nagar" Value="2"></asp:ListItem>
                     <asp:ListItem Text="3::Kidwai Nagar" Value="3"></asp:ListItem>
                     <asp:ListItem Text="4::Motijheel" Value="4"></asp:ListItem>
                     <asp:ListItem Text="5::Govind Nagar" Value="5"></asp:ListItem>
                     <asp:ListItem Text="6::Mariumpur" Value="6"></asp:ListItem>
                 </asp:DropDownList>															
                                                                            <br />
                                                                        </div>
																		<div class="col-md-6">
																			<strong class="d-block color-1 margin-bot2">Enter Ward No<span>*</span>:</strong>
                                                                            <asp:TextBox type="number" ID="ward_number" runat="server" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;"></asp:TextBox>
                                                                          <%--  <input type="number" name="ward_number" id="ward_number" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;">--%>
													
																		    <br />
													
																		</div>
																																			
																		<div class="clear"></div>
																	</div>
																	<div class="row">
																	
																		<div style="height:10px;"></div>
																		<div class="col-md-6">
																		<strong class="d-block color-1 margin-bot2">Enter Chak Number:</strong>
                                                                        <asp:TextBox ID="chak_number" runat="server" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;"></asp:TextBox>
                                                                    <%--    <input type="number" id="chak_number" name="chak_number" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;">--%>
																		</div>
																		<div class="col-md-6">
																			<strong class="d-block color-1 margin-bot2">Enter House No.:</strong>
                                                                            <asp:TextBox ID="address" runat="server" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;"></asp:TextBox>
																			<%--<input type="text" name="address" id="address" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;">--%>	
																		</div>
																																		
																		<div class="clear"></div>
																	</div>
																	<div class="row">

																		<div class="col-md-6">
																			<strong class="d-block color-1 margin-bot2">Enter Name:</strong>
                                                                            <asp:TextBox ID="name" runat="server" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;"></asp:TextBox>
                                                                            <%--<input type="text" id="name" name="name" style="width:200px; font-family: Verdana; font-size: 10pt; padding:4px;">
														--%>
																		</div>
																		
																	</div>
																</fieldset>
																</br>
	
 <cap:CaptchaControl ID="captcha2" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="White" CaptchaChars="123456789ABCDEFGHIJKLMNOPQRSTUVWX" Height="46px" Width="200px" />
<asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
<p style="color: #fff;" class="mt-3">Can&#39;t read the image?
    <asp:Button ID="Button5" runat="server" Text="Refresh" style="
    background: #a10000;
    border: none;
    color: #fff;
    border-radius: 5px;
"/>
                                                                        </p>
									<div class="">
										
        <strong class="d-block color-1 margin-bot2">Please Enter code :</strong>
        <asp:TextBox ID="captcha_code2" runat="server"></asp:TextBox>
      <%--  <input id="captcha_code" name="captcha_code" id="captcha_code" type="text"/></td>--%>
																		</div>
                                                   <asp:Button ID="Button1" runat="server" Text="Submit" class="button-5" style="margin-top: 15px;" OnClick="Button1_Click"/>
	<%--															<input type="submit" class="button-5" name="submit" value="Submit" style="
    margin-top: 15px;
">--%>
</form>
															<%--</form>--%>

                                                                        <br />
                                                                        <br />

                                                        </div>

                                                        		</div>
                                                        	</div>	
                                                   </div>
													<div class="clear"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <div class="clear"></div>
                            </div>
              
                        </div>
                    </div>
                </section>
    <section id="content">
                	<div class="main">
                    	<div class="container_12">
                            <div class="wrapper margin-bot11">
                            	<article class="grid_8">
                                	<div class="bg-6 border_r-2">
	                                    <h4 class="d-block indent-left3 indent-top3">Welcome To Kanpur Nagar Nigam</h4>
                                    </div>
                                    <figure style="font-size: 14px; line-height: 24px;">
                                    <br>
Kanpur Nagar Nigam (KNN) is a local government body committed to providing Civic Infrastructure facilities to the people of the Kanpur city. Kanpur Nagar Nigam is very well known for managing the city by using private sector participation as well as the introduction of innovative mechanism in management to serve people efficiently. Kanpur Nagar Nigam has prepared different plans for improving services and to nullify the gap between services and demands.
<br><br>
Please use Kanpur Property Tax Management System for all your property tax issues including Payment, Assessment, Payment History and others.
                                    </figure>
</article>
                            	<article class="grid_4">
                                	<div class="bg-3 border_r-2">
	                                    <h6 class="indent-left1 indent-top1">Important Links</h6>
                                    </div>
                                    <div class="bg-4 border_r-3 border-3">
                                    	<div class="indent2">
                                        	<ul class="ul-2 margin-bot6">
                                            	<li><span>1.</span><a href="index.aspx">Download Receipt (POS/BHIM)</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </section>
    <!--==============================footer================================-->
    <div>
        <div class="main container">
        	<div class="">
                <div class="wrapper">
                    <article class="">
					<div class="">
                   
                    </div>
                    	<center><span class="d-block" style="
    color: #a10000;
">Disclaimer - Content/Data on this application is published and managed by Kanpur Nagar Nigam.<br />
For any query regarding this application Please Contact Kanpur Nagar Nigam, email-itmekmc@gmail.com </span></center>
<center><strong>.</strong></center>
                        <!--{%FOOTER_LINK} -->
                    </article>
                </div>
            </div>
        </div>
    </div>
    <footer style="background: #a10000;color: #fff;padding: 12px;" class="text-center"">
        Copyright© Kanpur Nagar Nigam Kanpur All rights reserved.
    </footer>
<script type="text/javascript">
    // Popup window code
    function newPopup(url) {
        popupWindow = window.open(
            url, 'popUpWindow', 'height=700,width=1450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
    }
</script>
<script>
    $(window).load(function () {
        if (getCookied('popup') != 'seen') {
            //$('.hover_bkgr_fricc').show();
        }
        $('.hover_bkgr_fricc').click(function () {
            $('.hover_bkgr_fricc').hide();
        });
        $('.popupCloseButton').click(function () {
            setCookied('popup', 'seen', 1);
            $('.hover_bkgr_fricc').hide();
        });
    });
    function setCookied(name, value, days) {
        var expires = "";
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "") + expires + "; path=/";
    }
    function getCookied(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }
    function eraseCookie(name) {
        document.cookie = name + '=; Max-Age=-99999999;';
    }
</script>
    <%-- Design and Developed By Deific Digital(https://deificdigital.com/) --%>
</body>
</html>
