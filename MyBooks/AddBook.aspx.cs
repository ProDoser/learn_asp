using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBooks
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String sql = "INSERT INTO Books (ID, TYPE, TITLE, AUTHOR, PRICE, QTY)";
                sql = sql + "VALUES (";
                sql = sql + "'" + tbId.Text + "',";
                sql = sql + "'" + tbTitle.Text + "',";
                sql = sql + "'" + tbTitle.Text + "',";
                sql = sql + "'" + tbAuthor.Text + "',";
                sql = sql + "'" + tbPrice.Text + "',";
                sql = sql + "'" + Convert.ToInt32(tbQty.Text) + "')";

                SqlDataSource1.InsertCommand = sql;
                SqlDataSource1.Insert();

                lbMessage.CssClass = "label";
                lbMessage.Text = tbQty.Text + " items of " + tbTitle.Text + " added.";

                tbId.Text = "";
                tbType.Text = "";
                tbTitle.Text = "";
                tbAuthor.Text = "";
                tbPrice.Text = "";
                tbQty.Text = "";
                
            }
            catch (Exception)
            {
                lbMessage.Text = "ERROR! something went wrong.";
                lbMessage.CssClass = "error";
            }
        }
    }
}