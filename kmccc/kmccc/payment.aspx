<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Property Tax Management System : Kanpur Nagar Nigam   </title>
    <meta charset="utf-8"/>
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
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
    document.onkeydown = function (e) {
        if (e.ctrlKey &&
            (e.keyCode === 85)) {
            return false;
        }
    };
</script>
<script language="javascript">
    document.onmousedown = disableclick;
    status = "Right Click Disabled";
    function disableclick(event)
    {
        if (event.button == 2) {
            alert(status);
            return false;
        }
    }
</script>

<style>
.grid_12{margin-left:0px;}
.pay-now{background: green;
    color: #fff;
    border-radius: 5px;
    padding: 7px;
    border: none;
    cursor: pointer;
    width: max-content;}
    h3, h4, h6, h5 {
    font-weight: normal;
    font-family: Arial, Helvetica, sans-serif;
    color: #000;
    display: block !important;
}
</style>
<style>
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
h6 {
    font-size: 16px;
    }
.trigger_popup_fricc {
    cursor: pointer;
    font-size: 20px;
    margin: 20px;
    display: inline-block;
    font-weight: bold;
}
/* Popup box BEGIN */
.border{
 border: 2px solid #a10000 !important;   
}
.text-color{
    color: #a10000;
}
.table tr td {
  border: 1px solid #a10000;
}
</style>

</head>
<body  id="page1" oncontextmenu="return false" style="
    background: #fff8c6;
">
<!--=========================================header=============================================-->
                <div class="hover_bkgr_fricc">
    <span class="helper"></span>
</div>
<header id="header">
                    <div class="main" style="text-align:center;">
<img src="images/Header.JPG" class="img-fluid"/>
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


			<!--	<marquee behavior="scroll" direction="left" class="scroll-left"><div style="margin-top:10px;color: #FF0000;font-size:22px;">&#x090F;&#x0915; &#x092E;&#x0941;&#x0936;&#x094D;&#x0924; &#x0938;&#x092E;&#x093E;&#x0927;&#x093E;&#x0928; &#x092F;&#x094B;&#x091C;&#x0928;&#x093E; (OTS) &#x0915;&#x0947; &#x0905;&#x0928;&#x094D;&#x0924;&#x0930;&#x094D;&#x0917;&#x0924; 100% &#x092C;&#x094D;&#x092F;&#x093E;&#x091C; &#x092E;&#x093E;&#x092B; &#x0915;&#x0947; &#x0938;&#x093E;&#x0925; &#x0915;&#x0930;&#x0947; &#x0905;&#x092A;&#x0928;&#x0947; &#x0939;&#x093E;&#x0909;&#x0938; &#x091F;&#x0948;&#x0915;&#x094D;&#x0938; &#x0915;&#x093E; &#x092D;&#x0941;&#x0917;&#x0924;&#x093E;&#x0928;</div></marquee>
             --><br />

<!--=========================================content=============================================-->
			  <section id="content">
                	<div class="main">
                    <div class='container'>
                                  <div class="container">
                            <h3 style="
    background: #a10000;
    color: #fff;
    border-radius: 6px;
    padding: 4px 30px 4px 30px;
" class="text-center">
                                Confirmation of Payment
                            </h3>
                            <p style="
    margin: 8px;
    font-size: 20px;
" class="text-center">GIS Property ID/Property No.: -  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                                      <form id="form1" runat="server">
                                <h6>Personal Information</h6>
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                       <label> Bill No.*</label>
                                    </div>
                                    <div class="col">
                                        <asp:TextBox disabled="disabled" ID="TextBox1" runat="server"  style="width: 300px;font-family: Verdana;font-size: 11px;padding:4px;"></asp:TextBox>
                                        <asp:TextBox type="hidden" ID="TextBox2" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                       <label> Name*</label>
                                    </div>
                                    <div class="col">
                                        <asp:TextBox disabled="disabled" ID="TextBox3" runat="server" style="width: 300px;font-family: Verdana;font-size: 11px;padding:4px;"></asp:TextBox>
                                        <asp:TextBox type="hidden" ID="TextBox4" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                        <label>Email*</label>
                                    </div>
                                    <div class="col">
                                        <asp:TextBox ID="email" type="email" runat="server" style="width: 300px;font-family: Verdana;font-size: 11px;padding:4px;"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/information.png" ToolTip="Email Use For Your Bill Updates" Width="16px" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                        <label>Mobile*</label>
                                    </div>
                                    <div class="col">
                                        <asp:TextBox ID="mobile" runat="server" style="width: 300px;font-family: Verdana;font-size: 11px;padding:4px;"></asp:TextBox>
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/information.png" ToolTip="Number Use For Your Bill Updates" Width="16px" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Please Enter Your Mobile No." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                        <label>Address*</label>
                                    </div>
                                    <div class="col">
                                        <asp:TextBox ID="TextBox5" type="hidden" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="TextBox6"  disabled="disabled" runat="server" style="width: 300px;font-family: Verdana;font-size: 11px;padding:4px;"></asp:TextBox>
                                   
                                    </div>
                                </div>
                                     <h6>Payment</h6>
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                        
                                        <label>Current Tax</label>
                                    </div>
                                    <div class="col">
                                        <asp:Label ID="cta" runat="server" Text="Label"></asp:Label>
                                    
                                    </div>
                                </div>
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                        <label>Arrear</label>
                                    </div>
                                    <div class="col">
                                        <asp:Label ID="areabal" runat="server" Text="Label"></asp:Label>
                                    
                                    </div>
                                </div>  
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                        <label>Interest    </label>
                                    </div>
                                    <div class="col">
                                        <asp:Label ID="intbal" runat="server" Text="Label"></asp:Label>
                                   
                                    </div>
                                </div>
                                <div class="row mt-1">
                                    <div class="col-md-3">
                                        <asp:Label ID="disper" runat="server" Text="Label"></asp:Label>
                                    </div>
                                    <div class="col">
                                        
                                    </div>
                                </div>
                                <div class="row mt-1" style="color:red;">
                                    <div class="col-md-3">
                                        <label>Amount to be paid</label>   
                                    </div>
                                    <div class="col">
                                        <asp:TextBox ID="TextBox7"  disabled="disabled" runat="server" style="width: 300px;font-family: Verdana;font-size: 11px;padding:4px; color:red;"></asp:TextBox>
                                        <asp:TextBox type="hidden" ID="TextBox8" runat="server"></asp:TextBox>
                                        <asp:TextBox type="hidden" ID="hid" runat="server"></asp:TextBox>
                                       
                                    </div>
                                </div>
                                <p style="margin: 0px;font-size: 20px; color:#000">Time Left : <span id="timer" style="color:red;"></span></p>
                                 <asp:Button ID="Button1" runat="server" Text="Pay Now" class='pay-now' OnClick="Button1_Click"/>
                                <asp:Button ID="Button2" runat="server" Text="Cancel"  class='pay-now' style="background: red;" OnClick="Button2_Click"/>
                                 <%--<input type="submit"  name="submit"   value="Pay Now" class='pay-now'/>
                                <input type="reset"  value="Cancel" class='pay-now' style="background: red;"/>--%>
                            </form>
                            <div class="mt-3 text-danger">
                                <label>Note: In case your payment is not updated immediately, please wait for 48 - 72 hours before making any other payment. Issuer bank will authorize the transaction in the given period and your payment will be updated automatically.</label>
                                <label>* denotes required field</label>
                            </div>
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
            url, 'popUpWindow', 'height=700,widtd=1450,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
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
        document.cookie = name + "=" + (value || "") + expires + "; patd=/";
    }
    function getCookied(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.lengtd; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.lengtd);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.lengtd, c.lengtd);
        }
        return null;
    }
    function eraseCookie(name) {
        document.cookie = name + '=; Max-Age=-99999999;';
    }
</script>
<script>
    document.getElementById('timer').innerHTML =
        05 + ":" + 01;
    startTimer();


    function startTimer() {
        var presentTime = document.getElementById('timer').innerHTML;
        var timeArray = presentTime.split(/[:]+/);
        var m = timeArray[0];
        var s = checkSecond((timeArray[1] - 1));
        if (s == 59) { m = m - 1 }
        if (m < 0) {
            return
        }

        document.getElementById('timer').innerHTML =
            m + ":" + s;
        console.log(m)
        setTimeout(startTimer, 1000);

    }

    function checkSecond(sec) {
        if (sec < 10 && sec >= 0) { sec = "0" + sec }; // add zero in front of numbers < 10
        if (sec < 0) { sec = "59" };
        return sec;
    }
</script>
</body>
</html>
