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
using System.Data;

public partial class billreceipt : System.Web.UI.Page
{
    public static string NumberToWords(int number)
    {
        if (number == 0)
            return "zero";

        if (number < 0)
            return "minus " + NumberToWords(Math.Abs(number));

        string words = "";

        if ((number / 1000000) > 0)
        {
            words += NumberToWords(number / 1000000) + " million ";
            number %= 1000000;
        }

        if ((number / 1000) > 0)
        {
            words += NumberToWords(number / 1000) + " thousand ";
            number %= 1000;
        }

        if ((number / 100) > 0)
        {
            words += NumberToWords(number / 100) + " hundred ";
            number %= 100;
        }

        if (number > 0)
        {
            if (words != "")
                words += "and ";

            var unitsMap = new[] { "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };
            var tensMap = new[] { "Zero", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };

            if (number < 20)
                words += unitsMap[number];
            else
            {
                words += tensMap[number / 10];
                if ((number % 10) > 0)
                    words += "-" + unitsMap[number % 10];
            }
        }

        return words;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["property_id"];
        string transcation_id = Request.QueryString["transation_id"];
        transcation.Text = transcation_id;
        string cst = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
      
        SqlConnection con = new SqlConnection(cst);
        string querry = "SELECT ammount,status,order_id,date FROM [dbo].[transcation] WHERE payment_id='"+transcation_id+"'";
        //Response.Write(querry);
        SqlCommand cmd = new SqlCommand(querry, con);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        string amt = reader["ammount"].ToString();
        string amountt = amt.Substring(3);
        int amtt= Int32.Parse(amountt);
        var rs=NumberToWords(amtt);
        ammountrs.Text = rs+ " Only/-";
        ammount.Text = reader["ammount"].ToString();
        status.Text= reader["status"].ToString();
        order.Text = reader["order_id"].ToString();
        date.Text= reader["date"].ToString();
        reader.Close();
        con.Close();
        Uri baseUrl = new Uri("https://knndigitalpayment.com/AppBillinfo.php");
        var client = new RestClient(baseUrl);
        client.Timeout = -1;
        var request = new RestRequest(Method.POST);
        request.AddHeader("X-TP-ApiKey", "c77f5eb4d7d525855522d7ac65c5487d");
        request.AlwaysMultipartFormData = true;
        request.AddParameter("GisId", id);
        IRestResponse response = client.Execute(request);
        string v = response.Content;
        //Response.Write(v.Length + "<br>");
        if (v == null || v.Length == 41)
        {
            error.Visible = true;
            //Response.Write("no data ");
        }
        else
        {
            JObject jObj = JObject.Parse(response.Content);
            DateTime Today = DateTime.Today;
            //currentdate.Text = (DateTime.Now.ToString("dd/MM/yyyy")).ToString();
            //Response.Write(jObj);
            lbl2.Text = "20" + jObj["fyear"].ToString();
            lbl.Text = "20" + jObj["fyear"].ToString();
            billn.Text = jObj["billno"].ToString();
            //duedate.Text = "31/03/20" + jObj["fyear"].ToString();
            //hnn.Text = jObj["chargeslipInfo"]["houseNo"].ToString();
            cnm.Text = jObj["chargeslipInfo"]["CustomerName"].ToString();
            zone.Text = jObj["chargeslipInfo"]["zone"].ToString();
            ward.Text = jObj["chargeslipInfo"]["ward"].ToString();
            chak.Text = jObj["chargeslipInfo"]["chuck"].ToString();
            chakk.Text = jObj["chargeslipInfo"]["chuck"].ToString();
            hnno.Text = jObj["chargeslipInfo"]["houseNo"].ToString();
            areaa.Text = jObj["chargeslipInfo"]["area"].ToString();
            proid.Text = jObj["chargeslipInfo"]["gisId"].ToString();
            //wardn.Text = jObj["chargeslipInfo"]["area"].ToString();
            //rar.Text = jObj["rarv"].ToString();
            //rta.Text = jObj["rtax"].ToString();
            areab.Text = jObj["chargeslipInfo"]["arrearBalance"].ToString();
            intbal.Text = jObj["chargeslipInfo"]["interestBalance"].ToString();
            ttax.Text = jObj["towertax"].ToString();
            cubal.Text = jObj["chargeslipInfo"]["currentBalance"].ToString();
            //carv.Text = jObj["carv"].ToString();
            advacePayment.Text = jObj["chargeslipInfo"]["advacePayment"].ToString();
            //cta.Text = jObj["ctax"].ToString();
            //proarv.Text = jObj["proposedarv"].ToString();
            //hta.Text = jObj["Htax"].ToString();
            //cuball.Text = jObj["chargeslipInfo"]["currentBalance"].ToString();
            //disdate.Text = jObj["chargeslipInfo"]["discountdate"].ToString();
            disbal.Text = jObj["chargeslipInfo"]["discountedBalance"].ToString();
            dispar.Text = jObj["chargeslipInfo"]["discountPercentage"].ToString() + "% Discount in Rs.";
            //disball.Text = jObj["chargeslipInfo"]["discountedBalance"].ToString();
            //propno.Text = jObj["chargeslipInfo"]["gisId"].ToString();
            //TextBox1.Text = jObj["chargeslipInfo"]["gisId"].ToString();
        }
    }
}