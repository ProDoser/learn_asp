using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBooks
{
    public partial class DeleteBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String thisID = TextBox1.Text;

                String sql = "DELETE FROM Books WHERE ID = ";
                sql = sql + "'";
                sql = sql + thisID;
                sql = sql + "'";

                Label1.Text = sql;
                SqlDataSource1.DeleteCommand = sql;

                SqlDataSource1.Delete();
                Label1.Text = SqlDataSource1.DeleteCommand.ToString();
                Label1.CssClass = "label";
            }
            catch(Exception)
            {
                Label1.Text = "ERROR! something went wrong.";
                Label1.CssClass = "error";
            }
            
        }
    }
}