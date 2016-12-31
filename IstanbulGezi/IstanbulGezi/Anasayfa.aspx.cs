using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Design;
using System.Drawing;
using System.IO;

namespace IstanbulGezi
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        
        static int secilen=0;
        public List<string> listYer;
        public List<string> listAciklama;
        public List<string> listGorsel;
        protected void Page_Load(object sender, EventArgs e)
        {
                   
            DBDataContext db = new DBDataContext();
            var i = from a in db.GetTable<Gezi_Tablom>() select a;
            listYer = new List<string>();
            listAciklama = new List<string>();
            listGorsel = new List<string>();

            foreach (var x in i)
            {
                listYer.Add(x.gezi_yer);
                listAciklama.Add(x.gezi_aciklama);
                listGorsel.Add(x.gezi_gorsel);
            }
            foreach (var y in listYer) // list içerisinde yer alan verileri listboxa eklemek icin
            {
                ListItem li = new ListItem(y);
                if (listYerler.Items.Contains(li) == false)
                {
                    listYerler.Items.Add(li);
                }
            }
            if (listYerler.SelectedIndex == -1)
            {
                listYerler.SelectedIndex = 0;
            }

            listYerler.SelectedIndex = secilen;
            ResimGoster();
        }


        void ResimGoster()
        {

            if (secilen >= listYerler.Items.Count) // ListBox içerisinde sona gelindiğinde timer'ın en başa dönmesi için 
            {
                secilen=0;
            }
                yerLbl.Text = listYer[secilen];
                aciklamaLbl.Text = listAciklama[secilen];
                imgResim.ImageUrl = listGorsel[secilen];
              
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            ++secilen;
            listYerler.SelectedIndex = secilen;
            ResimGoster();
        }

        protected void geriBtn_Click(object sender, ImageClickEventArgs e)
        {
            secilen--;
            listYerler.SelectedIndex = secilen;
            ResimGoster();
        }

        protected void ileriBtn_Click(object sender, ImageClickEventArgs e)
        {
            secilen++;
            listYerler.SelectedIndex = secilen;
            ResimGoster();
        }

      


    
    }
}