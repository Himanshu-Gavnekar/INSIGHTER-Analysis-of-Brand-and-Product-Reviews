using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
namespace WebSenti
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int neg = 0, pos = 0, neu = 0;
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/debug/myres.xml"));
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            DataTable dt = new DataTable();
            dt.Columns.Add ("Name");
            dt.Columns.Add("Value");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if(dr[2].ToString ().Contains ("-1"))
                {
                    neg++;
                }
                else if (dr[2].ToString().Contains("1"))
                {
                    pos++;
                }
                else if (dr[2].ToString().Contains("0"))
                {
                    neu++;
                }
            }
            DataRow ndr = dt.NewRow();
            ndr[0] = "Positive";
            ndr[1] = pos;
            dt.Rows.Add(ndr);
            ndr = dt.NewRow();
            ndr[0] = "Negative";
            ndr[1] = neg;
            dt.Rows.Add(ndr);
            ndr = dt.NewRow();
            ndr[0] = "Neutral";
            ndr[1] = neu;
            dt.Rows.Add(ndr);
            SentiTable tt = new WebSenti.SentiTable();
            DataTable xdt = tt.GetTable("SentiTable");
            tt.Insert("-1", "f" + (xdt.Rows.Count + 1), pos.ToString(), neg.ToString(), neu.ToString());
            Chart1.DataSource = dt;
            Chart1.Series.Clear();
            Chart1.Series.Add("All Sentiment");
            Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.LineWidth = 0;
            Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.LineWidth = 0;
            Chart1.Series["All Sentiment"].IsValueShownAsLabel = true;
            Chart1.Series["All Sentiment"].XValueMember = "Name";
            Chart1.Series["All Sentiment"].YValueMembers = "Value";
            Chart1.DataBind();
            Chart2.DataSource = dt;
            Chart2.Series.Clear();
            Chart2.Series.Add("All Sentiment");
            Chart2.ChartAreas["ChartArea1"].AxisX.MajorGrid.LineWidth = 0;
            Chart2.ChartAreas["ChartArea1"].AxisY.MajorGrid.LineWidth = 0;
            Chart2.Series["All Sentiment"].IsValueShownAsLabel = true;
            Chart1.Series["All Sentiment"].ChartType = SeriesChartType.Pie;
            Chart2.Series["All Sentiment"].XValueMember = "Name";
            Chart2.Series["All Sentiment"].YValueMembers = "Value";
            Chart2.DataBind();
            Image1.ImageUrl = "~/debug/11.jpg";
            Image2.ImageUrl = "~/debug/12.jpg";
            Image3.ImageUrl = "~/debug/13.jpg";
        }
    }
}