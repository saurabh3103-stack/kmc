<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Razorpaycheckout.aspx.cs" Inherits="Razorpaycheckout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form action="payment_slip.aspx" method="post">
        <script
            src="https://checkout.razorpay.com/v1/checkout.js"
            data-key="rzp_live_u7J5hHcgW1VvLa"
            data-amount="<%=amount%>"
            data-name="Kanpur Nagar Nigam"
            data-description="House Tax"
            data-order_id="<%=orderId%>"
            data-image="https://deificdigital.com/kmcc/images/iku-OXG6_400x400-removebg-preview.png"
            data-buttontext="Pay with Razorpay"
            data-prefill.name="<%=name%>"
            data-prefill.email="<%=email%>"
            data-prefill.contact="<%=contact%>"
            data-theme.color="#F37254">
        </script>
    </form>
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

    <style>.razorpay-payment-button {display:none;}</style>
<script>
  $(window).on('load', function() {
    $('.razorpay-payment-button').click();
  });
</script>

</body>
</html>
