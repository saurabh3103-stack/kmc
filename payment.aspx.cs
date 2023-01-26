using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Net;
using System.Reflection;
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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["property_id"];
        Uri baseUrl = new Uri("https://knndigitalpayment.com/AppBillinfo.php");
        var client = new RestClient(baseUrl);
        client.Timeout = -1;
        var request = new RestRequest(Method.POST);
        request.AddHeader("X-TP-ApiKey", "c77f5eb4d7d525855522d7ac65c5487d");
        request.AlwaysMultipartFormData = true;
        request.AddParameter("GisId", id);
        IRestResponse response = client.Execute(request);
        JObject jObj = JObject.Parse(response.Content);
        //Response.Write(jObj);
        TextBox1.Text = jObj["billno"].ToString();
        TextBox2.Text = jObj["billno"].ToString();
        TextBox3.Text = jObj["chargeslipInfo"]["CustomerName"].ToString();
        TextBox4.Text = jObj["chargeslipInfo"]["CustomerName"].ToString();
        TextBox5.Text = jObj["chargeslipInfo"]["chuck"].ToString() + jObj["chargeslipInfo"]["houseNo"].ToString() + jObj["chargeslipInfo"]["area"].ToString();
        TextBox6.Text = jObj["chargeslipInfo"]["chuck"].ToString() + jObj["chargeslipInfo"]["houseNo"].ToString() + jObj["chargeslipInfo"]["area"].ToString();
        cta.Text = jObj["chargeslipInfo"]["currentTax"].ToString();
        areabal.Text= jObj["chargeslipInfo"]["arrearBalance"].ToString();
        intbal.Text = jObj["chargeslipInfo"]["interestBalance"].ToString();
        disper.Text = jObj["chargeslipInfo"]["discountPercentage"].ToString() + "% Discount in Rs.";
        TextBox7.Text = jObj["chargeslipInfo"]["discountedBalance"].ToString();
        TextBox8.Text = jObj["chargeslipInfo"]["discountedBalance"].ToString();
        hid.Text = id;
        Label1.Text = id;
    }

    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    string id = this.hid.Text;
    //    Response.Redirect("Detailsbyproperty.aspx?property_id=" + id);
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        string billno = this.TextBox2.Text;
        string name = this.TextBox4.Text;
        string email = this.email.Text;
        string mobile = this.mobile.Text;
        string amount = this.TextBox8.Text;
        DateTime Today = DateTime.Today;
        string date = (DateTime.Now.ToString("dd/MM/yyyy h:mm:ss tt")).ToString();
        string id = this.hid.Text;
        Session["id"] = id;
        Session["billno"] = billno;
        Session["name"] = name;
        Session["email"] = email;
        Session["mobile"] = mobile;
        Session["amount"] = amount;
        Session["date"] = date;
        Response.Redirect("Razorpaycheckout.aspx?property_id=" + id+"&billno="+billno+"&name="+name+"&email="+email+"&mobile="+mobile+ "&amount=" + amount);
    }
}