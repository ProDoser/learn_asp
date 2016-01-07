using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRSolutionLite
{
    public partial class AddStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btAdd_Click(object sender, EventArgs e)
        {
            try
            {
                String sql = "INSERT INTO Staff  (ID, Name, DepId, Gender, Phone, Email, Salary, BirthDate, [Position]) ";
                sql = sql + "VALUES ( '";
                sql += tbId.Text + "', '";
                sql += tbName.Text + "', '";
                sql += DropDownList1.SelectedValue.ToString() + "', '";
                sql += DropDownList2.SelectedValue.ToString() + "', '";
                sql += tbPhone.Text + "', '";
                sql += tbEmail.Text + "', '";
                sql += tbSalary.Text + "', '";
                sql += DateTime.Parse(tbBirthDate.Text) + "', '"; ;
                sql += tbPosition.Text + "')";

                SqlDataSource1.InsertCommand = sql;
                SqlDataSource1.Insert();

                lbMessage.CssClass = "label";
                lbMessage.Text = "Staff member added!";

                tbId.Text = "";
                tbName.Text = "";
                tbPhone.Text = "";
                tbPosition.Text = "";
                tbSalary.Text = "";
                tbBirthDate.Text = "";
                tbEmail.Text = "";

            }

            catch(Exception)
            {
                lbMessage.Text = "ERROR! Staff not updated check fields!";
                lbMessage.CssClass = "error";
            }
            
                   
        }
    }
}