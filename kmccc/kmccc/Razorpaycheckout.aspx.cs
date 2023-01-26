using System;
using Razorpay.Api;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

public partial class Razorpaycheckout : System.Web.UI.Page
{
    public string orderId;
    public string amount;
    public string contact;
    public string name;
    public string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["property_id"];
        string billno = Request.QueryString["billno"];
        string name = Request.QueryString["name"];
        string email = Request.QueryString["email"];
        string mobile = Request.QueryString["mobile"];
        string amountt = Request.QueryString["amount"];
        //Response.Write(id);
        //Response.Write(billno);
        //Response.Write(name);
        //Response.Write(email);
        //Response.Write(mobile);
        //Response.Write(amountt);
        string amounttt = amountt.Substring(3);
        int amt = Int32.Parse(amounttt);
        int amount = amt*100;
        //Response.Write(amount);
        Dictionary<string, object> input = new Dictionary<string, object>();
        input.Add("amount", amount);
        input.Add("currency", "INR");
        input.Add("receipt", billno);

        string key = "rzp_live_u7J5hHcgW1VvLa";
        string secret = "ZBUlzct8HxyF5yf2NBUVa2yv";
        RazorpayClient client = new RazorpayClient(key, secret);

        Razorpay.Api.Order order = client.Order.Create(input);
        orderId = order["id"].ToString();
    }
}