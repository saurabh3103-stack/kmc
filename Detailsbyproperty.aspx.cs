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
//using System.Net.Security;


public partial class Detailsbyproperty : System.Web.UI.Page
{
    public class Person
    {
        public int billAmount { get; set; }
        public string CustomerName { get; set; }
    }
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
        string v = response.Content;
        //Response.Write(v.Length + "<br>");
        if (v == null || v.Length == 41)
        {
            error.Visible = true;
            //Response.Write("no data ");
        }
        else
        {
           // error.Visible = true;
            JObject jObj = JObject.Parse(response.Content);
            DateTime Today = DateTime.Today;
            currentdate.Text = (DateTime.Now.ToString("dd/MM/yyyy")).ToString();
            //Response.Write(jObj);
            lbl2.Text = "20" + jObj["fyear"].ToString();
            lbl.Text = "20" + jObj["fyear"].ToString();
            billn.Text = jObj["billno"].ToString();
            duedate.Text = "31/03/20" + jObj["fyear"].ToString();
            hnn.Text = jObj["chargeslipInfo"]["houseNo"].ToString();
            cnm.Text = jObj["chargeslipInfo"]["CustomerName"].ToString();
            zone.Text = jObj["chargeslipInfo"]["zone"].ToString();
            ward.Text = jObj["chargeslipInfo"]["ward"].ToString();
            chak.Text = jObj["chargeslipInfo"]["chuck"].ToString();
            hnno.Text = jObj["chargeslipInfo"]["houseNo"].ToString();
            areaa.Text = jObj["chargeslipInfo"]["area"].ToString();
            proid.Text = jObj["chargeslipInfo"]["gisId"].ToString();
            wardn.Text = jObj["chargeslipInfo"]["area"].ToString();
            rar.Text = jObj["rarv"].ToString();
            rta.Text = jObj["rtax"].ToString();
            areab.Text = jObj["chargeslipInfo"]["arrearBalance"].ToString();
            intbal.Text = jObj["chargeslipInfo"]["interestBalance"].ToString();
            ttax.Text = jObj["towertax"].ToString();
            cubal.Text = jObj["chargeslipInfo"]["currentBalance"].ToString();
            carv.Text = jObj["carv"].ToString();
            cta.Text = jObj["ctax"].ToString();
            proarv.Text = jObj["proposedarv"].ToString();
            hta.Text = jObj["Htax"].ToString();
            cuball.Text = jObj["chargeslipInfo"]["currentBalance"].ToString();
            disdate.Text = jObj["chargeslipInfo"]["discountdate"].ToString();
            disbal.Text = jObj["chargeslipInfo"]["discountedBalance"].ToString();
            dispar.Text = jObj["chargeslipInfo"]["discountPercentage"].ToString() + "% Discount in Rs.";
            disball.Text = jObj["chargeslipInfo"]["discountedBalance"].ToString();
            propno.Text = "Property History of:- "+jObj["chargeslipInfo"]["gisId"].ToString();
            TextBox1.Text = jObj["chargeslipInfo"]["gisId"].ToString();
            var clienthistory = new RestClient("https://knndigitalpayment.com/AppReceipts.php");
            clienthistory.Timeout = -1;
            var requesthistory = new RestRequest(Method.POST);
            requesthistory.AddHeader("X-TP-ApiKey", "c77f5eb4d7d525855522d7ac65c5487d");
            requesthistory.AlwaysMultipartFormData = true;
            requesthistory.AddParameter("GisId", id);
            IRestResponse responsehistory = clienthistory.Execute(requesthistory);
            string userhistory = (responsehistory.Content);
            int userdata = userhistory.Length;
            if (userdata == 3)
            {
                errorr.Visible = true;
                errorr.Text = "*No Property History Found";
            }
            else
            {
                propno.Visible = true;
                grd.Visible = true;
                DataTable dt = (DataTable)JsonConvert.DeserializeObject(userhistory, (typeof(DataTable)));
                grd.DataSource = dt;
                grd.DataBind();
            }
        }
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        string id = this.TextBox1.Text;
        Response.Redirect("payment.aspx?property_id=" + id);
    }
}
