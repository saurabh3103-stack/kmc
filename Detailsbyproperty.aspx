<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detailsbyproperty.aspx.cs" Inherits="Detailsbyproperty" %>

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
         .bodyy-content {
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
.pay-now{background: green;
    color: #fff;
    border-radius: 5px;
    padding: 7px;
    border: none;
    font-size:17px;
    cursor: pointer;
    width: max-content;}
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
.border{
 border: 2px solid #a10000 !important;   
}
.text-color{
    color: #a10000;
}
.table tr td {
  border: 1px solid #a10000;
padding: 0px 0px 0px 9px;
}
.payment_history{
    font-size: 15px;
    font-weight: 600;
}
.payment_historyy {padding: 5px !important;}
.text-right a:hover{color:#fff;}
.payment_historyyy td{padding:.75rem !important;}
.gridpadding {
    padding: 14px;
}
#grd tr{border-bottom:1px solid #a10000}
#grd a:hover{color:#fff;}
</style>

</head>
<body id="page1" class="bodyy-content" oncontextmenu="return false" style="
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
                     <div class="tail-1 row">
                        <div class="col-lg-1 col-sm-2" style="background: #343a40;">
                            <p style="color: #fff;background: #343a40;font-size: 21px; margin: 0px;" class="pl-3">Notice</p>
                        </div>
                        <div class="main col-lg-11 col-sm-10">
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
<!--=========================================content=============================================-->
			  <br/>
    <section class="cssInp">
                	<div class="main container">
                        <div class="container">
                
    <div>
        <asp:Label ID="error" runat="server" Text="Label" Visible="false" style="
    color: #a10000;
    font-weight: 600;
    font-size: 19px;
">*Enter Vailed Property ID</asp:Label>
                                <table class="table border">
                                    <tr class="text-center">
                                       <td colspan="2" class="text-color" style="
    font-size: 26px;
    font-weight: 600;
">
                                             <%-- Design and Developed By Deific Digital(https://deificdigital.com/) --%>
<div class="d-flex col-md-12 justify-content-center"><img src="images/iku-OXG6_400x400-removebg-preview.png" height="100" width="100"/><h3 style="
    font-weight: 600;
" class="text-color bill-heading" >Kanpur Samanya Kar(House Tax) Bill Year : <asp:Label ID="lbl2" runat="server"></asp:Label></h3>
<img src="images/ksc.png" height="100" width="100"/></div>
</td>

                                    </tr>
                                    <tr>
                                        <td style="width:550px">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    Form No:
                                                </div>
                                                <div class="col">
                                                   2 Rule B
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    Zone No:
                                                </div>
                                                <div class="col">
                                                       <asp:Label ID="zone" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    Financial Year:
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    Bill No.:
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="billn" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    Name :
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="cnm" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    Bill Date:
                                                </div>
                                                <div class="col">
                                              <asp:Label ID="currentdate" runat="server" Text="Label"></asp:Label>
                                              
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    House No.:
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="hnn" runat="server" Text="Label"></asp:Label>

                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">
                                                    Due Date:
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="duedate" runat="server" Text="Label"></asp:Label>
                                                
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">Address:</div>
                                                <div class="col">
                                                    <asp:Label ID="chak" runat="server" Text="Label"></asp:Label>/<asp:Label ID="hnno" runat="server" Text="Label"></asp:Label>,<asp:Label ID="areaa" runat="server" Text="Label"></asp:Label>
                             
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">PropertyID</div>
                                                <div class="col">
                                                    <asp:Label ID="proid" runat="server" Text="Label"></asp:Label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">Ward No:</div>
                                                <div class="col">
                                                 <asp:Label ID="ward" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-3 text-color">Ward Name:</div>
                                                <div class="col">
                                                    <asp:Label ID="wardn" runat="server" Text="Label"></asp:Label>
                                                    
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <table class="table border">
                                    <tr>
                                        <td></td>
                                        <td class="text-color">ARV</td>
                                        <td class="text-color">Percent Rate</td>
                                        <td class="text-color">Current Demand</td>
                                        <td class="text-color">Arrear</td>
                                        <td class="text-color">Interest</td>
                                        <td class="text-color">Tower</td>
                                        <td class="text-color">Other</td>
                                        <td class="text-color">Total</td>
                                    </tr>
                                    <tr>
                                        <td class="text-color">Resedential</td>
                                        <td>
                                            <asp:Label ID="rar" runat="server" Text="Label"></asp:Label>
                                  

                                        </td>
                                        <td>15%</td>
                                        <td>
                                            <asp:Label ID="rta" runat="server" Text="Label"></asp:Label>
                                         

                                        </td>
                                        <td>
                                            <asp:Label ID="areab" runat="server" Text="Label"></asp:Label>
                                           

                                        </td>
                                        <td>
                                            <asp:Label ID="intbal" runat="server" Text="Label"></asp:Label>
                                          
                                        </td>
                                        <td>
                                            <asp:Label ID="ttax" runat="server" Text="Label"></asp:Label>
                                          

                                        </td>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="cubal" runat="server" Text="Label"></asp:Label>
                                          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-color">Commercial</td>
                                        <td>
                                            <asp:Label ID="carv" runat="server" Text="Label"></asp:Label>
                                        
                                        </td>
                                        <td>15%</td>
                                        <td>
                                            <asp:Label ID="cta" runat="server" Text="Label"></asp:Label>
                                          
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td class="text-color">Total</td>
                                        <td>
                                            <asp:Label ID="proarv" runat="server" Text="Label"></asp:Label>
                                           
                                        </td>
                                        <td>15%</td>
                                        <td>
                                            <asp:Label ID="hta" runat="server" Text="Label"></asp:Label>
                                         >

                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="cuball" runat="server" Text="Label"></asp:Label>
                               
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td colspan="4"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td class="text-color">Discount Date</td>
                                        <td>
                                            <asp:Label ID="disdate" runat="server" Text="Label"></asp:Label>
                                       
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td class="text-color" colspan="4">Ammount Paid After Discount Date</td>
                                        <td>
                                            <asp:Label ID="disbal" runat="server" Text="Label"></asp:Label>
                                    
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td colspan="3" class="text-color">
                                            <asp:Label ID="dispar" runat="server" Text="Label"></asp:Label>
                                  
                                        </td>
                                        <td></td>
                                    </tr><tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td colspan="4" class="text-color">Amount Paid Till Discount Date</td>
                                        <td>
                                            <asp:Label ID="disball" runat="server" Text="Label"></asp:Label>
                                     
                                        </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td colspan="4"></td>
                                        <td></td>
                                        </tr>
                                </table>
        
            <div class="text-right mb-4">
                <button class='pay-now' style='padding: 7px 18px 7px 18px;' onclick='window.print()'>Print</button>                         
                <%-- <asp:HyperLink ID="HyperLink1" runat="server" DataNavigate>HyperLink</asp:HyperLink>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>--%>
                  <asp:TextBox type="hidden" ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:Button ID="Button3" class="pay-now" runat="server" CssClass="pay-now" Text="Pay Now" OnClick="Button3_Click" />
                  <%--<a href="payment.php?propert_id=" class="pay-now" name="search">Pay Now</a>--%>
            </div>
            
                              
                                </div>
      

                </div>   <div class="text-center mb-3 bodyy-content">
              <h5><asp:Label ID="errorr" Visible="false" runat="server" Text="Label" style="
    color: #a10000;
"></asp:Label>     </h5> 
                                <h3><asp:Label ID="propno" Visible="false" runat="server" Text="Label" style="
    color: #a10000;
"></asp:Label></h3>
                    
                                </div>
                        <div class='container'>
                            <div class='table-responsive'>
       <asp:GridView ID="grd" Visible="false" runat="server" AutoGenerateColumns="False"   CellPadding="5" CellSpacing="5" ForeColor="#333333" GridLines="None" Height="160px" Width="100%" style="border:2px solid #a10000">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                 <asp:BoundField HeaderText="PropertyId" DataField="PropertyId" ItemStyle-CssClass="gridpadding" />
                   <asp:BoundField HeaderText="Zone" DataField="zone" ItemStyle-CssClass="gridpadding" />
                  <asp:BoundField HeaderText="Transcation ID" DataField="Txnid" ItemStyle-CssClass="gridpadding" />
                      <asp:BoundField HeaderText="Transcation Date" DataField="Txndate"  ItemStyle-Width="100" ItemStyle-CssClass="gridpadding" />
                  <asp:BoundField HeaderText="Transcation Time" DataField="Txntime" ItemStyle-CssClass="gridpadding" />
                   <asp:BoundField HeaderText="Year" DataField="year_knn" ItemStyle-CssClass="gridpadding" />
                  <asp:BoundField HeaderText="Ammount" DataField="CollectionAmt" ItemStyle-CssClass="gridpadding" />
                  <asp:TemplateField HeaderText="View" ItemStyle-Width="100" ItemStyle-CssClass="gridpadding">
                      <ItemTemplate>
                          <asp:LinkButton ID="view" runat="server" Text="View" PostBackUrl='#' CssClass="pay-now"></asp:LinkButton>
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
                </section>
	  <!--==============================footer================================-->
    <div class="mt-5">
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
</form>
      <%-- Design and Developed By Deific Digital(https://deificdigital.com/) --%>
</body>
</html>
