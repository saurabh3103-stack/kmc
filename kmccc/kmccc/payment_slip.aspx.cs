using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web.Script.Serialization;
using System.Net.Http;
using System.Data.SqlClient;
using System.Reflection;
using System.Xml.Linq;
using System.Configuration;
using System.IdentityModel.Protocols.WSTrust;
using Json.Net;

public partial class payment_slip : System.Web.UI.Page
{
    protected void Page_Load(object sender,EventArgs e)
    {
        var id = Session["id"];
        var date = Session["date"];
        var billno = Session["billno"];
        var name = Session["name"];
        var email = Session["email"];
        var mobile = Session["mobile"];
        var amount = Session["amount"];
        string paymentId = Request.Form["razorpay_payment_id"];
        string orderId = Request.Form["razorpay_order_id"];
        string signature = Request.Form["razorpay_signature"];

        string key = "rzp_live_u7J5hHcgW1VvLa";
        string secret = "ZBUlzct8HxyF5yf2NBUVa2yv";
        RazorpayClient client = new RazorpayClient(key, secret);
        Dictionary<string, string> attributes = new Dictionary<string, string>();
        attributes.Add("razorpay_payment_id", paymentId);
        attributes.Add("razorpay_order_id", orderId);
        attributes.Add("razorpay_signature", signature);
        Utils.verifyPaymentSignature(attributes);
        //API CALLING START
            var clientt = new RestSharp.RestClient("https://knndigitalpayment.com/webUpdateInfo.php");
            clientt.Timeout = -1;
            var requestt = new RestRequest(Method.POST);
            requestt.AddHeader("X-TP-ApiKey", "c77f5eb4d7d525855522d7ac65c5487d");
            requestt.AlwaysMultipartFormData = true;
            requestt.AddParameter("GisId", id);
            requestt.AddParameter("plTransactionId", paymentId);
            requestt.AddParameter("paymentMode", "3");
            requestt.AddParameter("transactionTime", date);
            requestt.AddParameter("transactionAmount", amount);
            IRestResponse response = clientt.Execute(requestt);
            //string json=(response.Content);
            JObject jObj = JObject.Parse(response.Content);
            string status=jObj["status"].ToString();
            if (status == "0")
            {
                //Response.Write(id + "</br>");
                //Response.Write(billno + "</br>");
                //Response.Write(name + "</br>");
                //Response.Write(email + "</br>");
                //Response.Write(date);
                //Response.Write(mobile + "</br>");
                //Response.Write(amount + "</br>");
                string cst = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cst);
                string querry = "INSERT INTO [dbo].[transcation] ([house_id], [order_id], [payment_id], [ammount], [status], [email], [mobile], [date], [signature]) VALUES (N'" + id + "', N'" + orderId + "', N'" + paymentId + "', N'" + amount + "', N'Paid', N'" + email + "', N'" + mobile + "', N'" + date + "', N'" + signature + "')";
                Response.Write(querry);
                SqlCommand cmd = new SqlCommand(querry, con);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Close();
                Response.Write(querry);
                if (result >= 1)
                {
                    var pid = id;
                    //var tid = paymentId;
                    Response.Redirect("billreceipt.aspx?property_id=" + id + "&transation_id="+ paymentId);
                    //Response.Write("bill Generate");
                }
                else
                {
                    Response.Write("<script><Bill failed1");

                }
            Session.Abandon();
        }

            else
            {
                Response.Write("Bill failed2");
            }
        //API CALLING END
        //try
        //{
        //    //string paymentId = Request.Form["razorpay_payment_id"];
        //    //string orderId = Request.Form["razorpay_order_id"];
        //    //string signature = Request.Form["razorpay_signature"];
        //    var id = Session["id"];
        //    var date = Session["date"];
        //    var billno = Session["billno"];
        //    var name = Session["name"];
        //    var email = Session["email"];
        //    var mobile = Session["mobile"];
        //    var amount = Session["amount"];
        //    Response.Write(id+"</br>");
        //    Response.Write(billno + "</br>");
        //    Response.Write(name + "</br>");
        //    Response.Write(email + "</br>");
        //    Response.Write(date);
        //    Response.Write(mobile + "</br>");
        //    Response.Write(amount + "</br>");
        //    //Response.Write(paymentId + "</br>");
        //    //Response.Write(orderId + "</br>");
        //    //Response.Write(signature + "</br>");
        //    //string key = "rzp_live_u7J5hHcgW1VvLa";
        //    //string secret = "ZBUlzct8HxyF5yf2NBUVa2yv";
        //    //RazorpayClient client = new RazorpayClient(key, secret);
        //    //Dictionary<string, string> attributes = new Dictionary<string, string>();
        //    //attributes.Add("razorpay_payment_id", paymentId);
        //    //attributes.Add("razorpay_order_id", orderId);
        //    //attributes.Add("razorpay_signature", signature);
        //    string cst = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(cst);
        //    string querry ="insert into transcation" + "(house_id,order_id,payment_id,ammount,status,email,mobile,date,signature)" +
        //        "values("+id+",orderId,paymentId,amount,Paid,"+email+","+mobile+","+date+",signature)";
        //    SqlCommand cmd = new SqlCommand(querry,con);
        //    con.Open();
        //    int result = cmd.ExecuteNonQuery();
        //    con.Close();
        //    Response.Write(querry);
        //    if (result >= 1)
        //    {
        //        Response.Write("bill Generate");
        //    }
        //    else
        //    {
        //        Response.Write("Bill failed");

        //    }
        //    //Utils.verifyPaymentSignature(attributes);
        //    //pTxnId.Text = paymentId;
        //    //pOrderId.Text = orderId;
        //    h1Message.Text = "Transaction Successfull";
        //    //if (signature == signature)
        //    //{

        //    //    //var client = new RestClient("https://knndigitalpayment.com/webUpdateInfo.php");
        //    //    //client.Timeout = -1;
        //    //    //var request = new RestRequest(Method.POST);
        //    //    //request.AddHeader("X-TP-ApiKey", "c77f5eb4d7d525855522d7ac65c5487d");
        //    //    //request.AlwaysMultipartFormData = true;
        //    //    //request.AddParameter("GisId", "6016SAP04991001");
        //    //    //request.AddParameter("plTransactionId", "pay_L3FwPh3c4hHAyR");
        //    //    //request.AddParameter("paymentMode", "3");
        //    //    //request.AddParameter("transactionTime", "12-01-2023 17:23:07");
        //    //    //request.AddParameter("transactionAmount", "10");
        //    //    //IRestResponse response = client.Execute(request);
        //    //    //Console.WriteLine(response.Content);
        //    //}
        //    //else
        //    //{
        //    //    h1Message.InnerText = "Transaction Successfull";
        //    //}
        //}
        //catch (Exception)
        //{
        //   // Response.Write(Exception);
        //    h1Message.Text = "Transaction Unsuccessfull";
        //}
    }
}