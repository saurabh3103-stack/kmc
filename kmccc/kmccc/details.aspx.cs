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
public partial class details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string zone = Request.QueryString["zone"];
        string ward_number = Request.QueryString["ward_number"];
        string chak_number = Request.QueryString["chak_number"];
        string name = Request.QueryString["name"];
        string address = Request.QueryString["address"];
           // Response.Write("zone=" + zone + "ward_number=" + ward_number + "chak_number=" + chak_number + "name=" + name + "address=" + address);
            
        var client = new RestClient("https://knndigitalpayment.com/AppSearchpid.php");
            client.Timeout = -1;
            var request = new RestRequest(Method.POST);
            request.AddHeader("X-TP-ApiKey", "c77f5eb4d7d525855522d7ac65c5487d");
            request.AlwaysMultipartFormData = true;
            request.AddParameter("hno", address);
            request.AddParameter("zone", zone);
            request.AddParameter("ward", ward_number);
            request.AddParameter("name", name);
            request.AddParameter("chk", chak_number);
            IRestResponse response = client.Execute(request);
        //Console.WriteLine(response.Content);
        //Response.Write(response.Content);
        string v =response.Content;
        //Response.Write(v.Length+"<br>");
        if(v == null || v.Length == 4)
        {
            error.Visible = true;
            //Response.Write("no data ");
        }
        else
        {
            r.Visible = true;
            DataTable dt = (DataTable)JsonConvert.DeserializeObject(v, (typeof(DataTable)));
            r.DataSource = dt;
            r.DataBind();
        }
        //JArray jArray = JArray.Parse(jsonResponse);
      
        //Label label = new Label();
        //this.Controls.Add(label);
        //foreach (JObject jObject in jArray)
        //{
        //    label.Text = $"{(string)jObject["PropertyId"]}";
        //    //proid.Text = (string)jObject["PropertyId"];
        //    //nam.Text= (string)jObject["Name"];
        //    //zon.Text = (string)jObject["zone"];
        //    //war.Text = (string)jObject["ward"];
        //    //chk.Text = (string)jObject["chk"];
        //    //are.Text = (string)jObject["area"];
        //    //hnno.Text = (string)jObject["houseNo"];
        //    //arv.Text = (string)jObject["ARV"];
        //    ////var  userdata= jObject["PropertyId"]; 

        //    //var s=($"{(string)jObject["PropertyId"]}");
        //    //Response.Write(s);

        //}
        //JObject jObj = JObject.Parse(response.Content);
        //Response.Write(jObj);
    }
}