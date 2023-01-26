<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment_failed.aspx.cs" Inherits="payment_failed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Failed</title>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="css/jquery-ui-1.8.16.custom.css" type="text/css" media="screen"/>
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
	<script language="javascript" type="text/javascript">

function PrintContent()

{

var DocumentContainer = document.getElementById('reciept_div');

var WindowObject = window.open("PrintWindow",width=750,height=650,top=50,left=50,toolbars='no',scrollbars='yes',status='no',resizable='yes');

WindowObject.document.writeln(DocumentContainer.innerHTML);

WindowObject.document.close();

WindowObject.focus();

WindowObject.print();

WindowObject.close();

}

    </script>

<style>
.grid_12{margin-left:0px;}
</style>
<style>
      @media only print {
         body {
            visibility: hidden;
         }
         .cssInp {
            visibility: visible;
         }
      }
h3.text-color.bill-heading{margin: 19px;}

@media only screen and (max-width: 767px) {
h3.text-color.bill-heading{margin: 0 !important;}
}
   </style>

</head>
<body id="page1" oncontextmenu="return false" style="
    background: #fff8c6;
">
    <form id="form1" runat="server">
     <!--=========================================header=============================================-->
                <div class="hover_bkgr_fricc">
    <span class="helper"></span>
</div>
<header id="header">
                    <div class="main" style="text-align:center;">
<img src="images/Header.JPG" style="max-width:100%;"/>
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

        <div class="container p-5">
            <div style="border: 1px solid #a10000;padding: 60px;">
                            <div style="margin-top: 5px">

            <h1 class="name post-title entry-title" itemprop="itemReviewed" itemscope="" itemtype="http://schema.org/Thing" style="border-style: none; border-color: inherit; border-width: 0px; padding: 0px; margin: 0px 0px 10px; outline: none; list-style: none; box-sizing: border-box; font-weight: normal; font-family: BebasNeueRegular, arial, Georgia, serif; font-size: 28px; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; height: 18px;"><span itemprop="name" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Transaction Failed</span></h1>
            <hr style="height: -12px; border-color: #a10000;" />
            <p>
                <span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Your transaction failed, please try again or contact KSMC.</span></p>
                <p>
                    Visit:-<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://kmc.up.nic.in/">Kanpur Nagar Nigam</asp:HyperLink>
                </p>

        </div>


            </div>
        </div>
     <!--==============================footer================================-->
    <div style="
    position: fixed;
    bottom: 0;
    width: 100%;
    ">
        <div class="main container">
        	<div class="">
                <div class="wrapper">
                    <article class="">
					<div class="">
                   
                    </div>
                    	<center><span class="d-block" style="
    color: #a10000;
"><strong>Disclaimer -</strong> Content on this website is published and managed by Kanpur Nagar Nigam.
Contents Provided by Nagar Nigam, Kanpur<br />
For any query regarding this application Please Contact Kanpur Nagar Nigam, email-kanpur_nagar.nigam@yahoo.co.in</span></center>
                        <!--{%FOOTER_LINK} -->
                    </article>
                </div>
            </div>
        </div>
    
    <footer style="background: #a10000;color: #fff;padding: 12px;" class="text-center"">
        Copyright© Kanpur Nagar Nigam Kanpur All rights reserved.
    </footer> 
    </div>
        </form>

        </body>
</html>
