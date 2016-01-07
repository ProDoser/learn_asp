using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBooks
{
    public partial class SearchBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void idSearch_Click(object sender, EventArgs e)
        {
            lbError.Text = "";
            try
            {
                String sql = "SELECT * FROM Books WHERE ID = '" + tbId.Text + "'";
                SqlDataSource1.SelectCommand = sql;
            }

            catch (Exception)
            {
                lbError.Text = "ERROR! Check that you entered right values!";
            }
            
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void priceSearch_Click(object sender, EventArgs e)
        {
            lbError.Text = "";
            try
            {
                String sql = "SELECT * FROM Books WHERE (PRICE BETWEEN '" + tbMinPrice.Text +
                         "' AND '" + tbHiPrice.Text + "')";

                SqlDataSource1.SelectCommand = sql;
            }

            catch (Exception)
            {
                lbError.Text = "ERROR! Check that you entered right values!";
            }
        }

        protected void qtySearch_Click(object sender, EventArgs e)
        {
            lbError.Text = "";
            try
            {
                String sql = "SELECT * FROM Books WHERE (QTY BETWEEN " + Convert.ToInt32(tbMinQty.Text) +
                         " AND " + Convert.ToInt32(tbHiQty.Text) + ")";
                SqlDataSource1.SelectCommand = sql;
            }
            
            catch (Exception)
                {
                    lbError.Text = "ERROR! Check that you entered right values!";
                }
        }
    }
}