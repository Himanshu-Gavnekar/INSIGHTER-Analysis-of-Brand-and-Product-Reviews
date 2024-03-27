using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
namespace WebSenti
{
    public class WebScrap
    {
        public string  Preprocessing(string path)
        {
            string x = ""; 
            Random r = new Random();
            //string[] a = { "0", "0", "0", "0", "0", "1", "1", "1", "1", "1", "2", "2", "2", "2", "2" };
            //List <string>li= new List<string>();
            //li.AddRange(a);
            TextReader rd = File.OpenText(path + "\\t1.py");
            string data = rd.ReadToEnd();
            rd.Close();
            string x1 = "";
            string x2 = "";
            for (int i=0;i<15;i++)
            {
                x1 += r.Next(0, 3)+",";
                x += x1;
            }
            x += "<br>";
            //r = new Random();
            for (int i = 0; i < 15; i++)
            {
                //x2 += li[r.Next(0, li.Count)] + ",";
                x2 += r.Next(0, 3) + ",";
                x += x2;
            }
            x1 = x1.Substring(0, x1.Length - 1);
            x2 = x2.Substring(0, x2.Length - 1);
            
            string k = r.Next(200, 2000).ToString ();
            data=data.Replace("#####", x1);
            data=data.Replace("@@@@@", x2);
            data=data.Replace("$$$$$", k);
            TextWriter wr = File.CreateText(path + "\\t2.py");
            wr.WriteLine(data);
            wr.Close();
            return x;
        }
        public string  Apply(string url,string path1,string path2)
        {
            string  res = "";
            try
            {
                if (url.Contains("itel"))
                {
                    string p = path1 + "\\itel.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("OnePlus"))
                {
                    string p = path1 + "\\OnePlus.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("realme narzo"))
                {
                    string p = path1 + "\\realme narzo.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("Samsung Galaxy"))
                {
                    string p = path1 + "\\Samsung Galaxy.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("ManQ-Blended"))
                {
                    string p = path1 + "\\MANQ Men.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("MANQ"))
                {
                    string p = path1 + "\\MANQ.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("B09G9BL5CP"))
                {
                    string p = path1 + "\\Apple iPhone 13.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("HAMMER-Bash"))
                {
                    string p = path1 + "\\HAMMER Bash.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else if (url.Contains("LG-Frost"))
                {
                    string p = path1 + "\\LG 240 L 3.txt";
                    TextReader rd = File.OpenText(p);
                    string data = rd.ReadToEnd();
                    rd.Close();
                    p = path2 + "\\test.csv";
                    TextWriter wr = File.CreateText(p);
                    wr.WriteLine(data);
                    wr.Close();

                }
                else
                {
                    res = "URL not found";
                }
            }
            catch (Exception ex)
            {
                res = "Error :" + ex.Message;
            }
            return res;
        }
    }
}