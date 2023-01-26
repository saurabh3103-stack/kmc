<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Property Tax Management System</title>
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
	<style>
.grid_12{margin-left:0px;}
.pay-now{background: green;
    color: #fff;
    border-radius: 5px;
    padding: 7px;
    border: none;
    cursor: pointer;
    width: max-content;}
.gridpadding a:hover{color:#fff;}
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
    widtd:100%;
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
    width: : 60%;
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
    width: : 30px;
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
.border{
 border: 2px solid #a10000 !important;   
}
.text-color{
    color: #a10000;
}
.table tr td {
  border: 1px solid #a10000;
}
.gridpadding{padding:14px;}
    .auto-style1 {
        height: 24px;
    }
</style>
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
function disableclick(event)
{
  if(event.button==2)
   {
     alert(status);
     return false;    
   }
}
</script>
    
</head>
<body  id="page1" oncontextmenu="return false" style="background: #fff8c6;">
      <form id="form1" runat="server">
<header id="header">
                    <div class="main" style="text-align:center;">
<img src="images/Header.JPG" class="img-fluid"/>
                        <div class="clear"></div>
                    </div>
                  <div class="tail-1 row">
                        <div class="col-lg-1 col-sm-1" style="background: #343a40;">
                            <p style="color: #fff;background: #343a40;font-size: 21px; margin: 0px;" class="pl-3">Notice</p>
                        </div>
                        <div class="main col-lg-11 col-sm-11">
                            <div class="">
                                <article class="">
                                    <nav>
                                        <ul class="menu" style="margin: -3px;">
                                            <marquee style="color: #fff;font-size: 21px;padding: 5px;">Pay Your Property Tax Before 31-March-2023</marquee>
                                        </ul>
                                    </nav>
                                </article>
                            </div>
                        </div>
                    </div>
                </header>

			<!--	<marquee behavior="scroll" direction="left" class="scroll-left"><div style="margin-top:10px;color: #FF0000;font-size:22px;">&#x090F;&#x0915; &#x092E;&#x0941;&#x0936;&#x094D;&#x0924; &#x0938;&#x092E;&#x093E;&#x0927;&#x093E;&#x0928; &#x092F;&#x094B;&#x091C;&#x0928;&#x093E; (OTS) &#x0915;&#x0947; &#x0905;&#x0928;&#x094D;&#x0924;&#x0930;&#x094D;&#x0917;&#x0924; 100% &#x092C;&#x094D;&#x092F;&#x093E;&#x091C; &#x092E;&#x093E;&#x092B; &#x0915;&#x0947; &#x0938;&#x093E;&#x0925; &#x0915;&#x0930;&#x0947; &#x0905;&#x092A;&#x0928;&#x0947; &#x0939;&#x093E;&#x0909;&#x0938; &#x091F;&#x0948;&#x0915;&#x094D;&#x0938; &#x0915;&#x093E; &#x092D;&#x0941;&#x0917;&#x0924;&#x093E;&#x0928;</div></marquee>
             --><br />

<!--=========================================content=============================================-->
			
			  <section id="content">
                    	<div class="main container">
                            <div class='container'>
                                <div class='table-responsive'>
              <asp:Label ID="error" runat="server" Text="*Please Choose Correct Details." Visible="False" CssClass="text-center" ForeColor="#A72125" style="font-size: 18px;font-weight: 600;"></asp:Label>                        
        <asp:GridView ID="r" runat="server" AutoGenerateColumns="False"   CellPadding="4" CellSpacing="4" ForeColor="#333333" GridLines="None" Height="160px" Visible="False">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:BoundField HeaderText="Name" DataField="Name" ItemStyle-Width="80" ItemStyle-CssClass="gridpadding" />
                  <asp:BoundField HeaderText="PropertyId" DataField="PropertyId" ItemStyle-CssClass="gridpadding" />
                   <asp:BoundField HeaderText="Zone" DataField="zone" ItemStyle-CssClass="gridpadding" />
                  <asp:BoundField HeaderText="Ward" DataField="ward" ItemStyle-CssClass="gridpadding" />
                      <asp:BoundField HeaderText="Chak Number" DataField="chk"  ItemStyle-Width="100" ItemStyle-CssClass="gridpadding" />
                  <asp:BoundField HeaderText="Area" DataField="area" ItemStyle-CssClass="gridpadding" />
                   <asp:BoundField HeaderText="House Number" DataField="houseNo" ItemStyle-CssClass="gridpadding" />
                  <asp:BoundField HeaderText="Arv Numbe" DataField="ARV" ItemStyle-CssClass="gridpadding" />
                  <asp:TemplateField HeaderText="View" ItemStyle-Width="100" ItemStyle-CssClass="gridpadding">
                      <ItemTemplate>
                          <asp:LinkButton ID="view" runat="server" Text="View" PostBackUrl='<%#"~/Detailsbyproperty.aspx?property_id="+Eval("PropertyId") %>' CssClass="pay-now"></asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>

            
                 </Columns>
              
              <FooterStyle BackColor="#990000" Font-Bold="True" HorizontalAlign="Center" ForeColor="White" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"  />
              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center"/>
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
              <SortedAscendingCellStyle BackColor="#FDF5AC" />
              <SortedAscendingHeaderStyle BackColor="#4D0000" />
              <SortedDescendingCellStyle BackColor="#FCF6C0" />
              <SortedDescendingHeaderStyle BackColor="#820000" />
              
          </asp:GridView>
        </div>
        </div>
                            </br></br>
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
"><strong>Disclaimer -</strong> Content on this website is published and managed by Kanpur Nagar Nigam.
Contents Provided by Nagar Nigam, Kanpur<br />
For any query regarding this application Please Contact Kanpur Nagar Nigam, email-kanpur_nagar.nigam@yahoo.co.in</span></center>
                        <!--{%FOOTER_LINK} -->
                    </article>
                </div>
            </div>
        </div>
    </div>
    <footer style="background: #a10000;color: #fff;padding: 12px;" class="text-center"">
        Copyright© Kanpur Nagar Nigam Kanpur All rights reserved.
    </footer>

<script>

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
            <%-- Design and Developed By Deific Digital(https://deificdigital.com/) --%>
    </form>
</body>
</html>
