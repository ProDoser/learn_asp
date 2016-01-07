using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRSolutionLite
{
    public partial class StaffList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            String sql = "SELECT Staff.ID, Staff.Name, Staff.DepId, Staff.Gender, Staff.Phone, Staff.Email, Staff.Salary, FORMAT(Staff.BirthDate, 'DD.MM.YYYY') AS BirthDate, Staff.[Position] " +
                         "FROM (Staff INNER JOIN Department ON Staff.DepId = Department.ID)  " +
                         "WHERE (Department.DepName = '" + DropDownListDep.SelectedItem.Value + "'" + ") ";

            /* "SELECT Staff.ID, Staff.Name, Department.DepName, Staff.[Position],FORMAT(Staff.BirthDate, 'DD.MM.YYYY') AS BirthDay, Staff.Salary, Staff.Gender, Staff.Phone, Staff.Email " +
             "FROM (Staff INNER JOIN Department ON Staff.DepId = Department.ID)  " +
             "WHERE (Department.DepName = '" + DropDownListDep.SelectedItem.Value + "'" + ") " */

            SqlDataSource1.SelectCommand = sql;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql = "SELECT Staff.ID, Staff.Name, Staff.DepId, Staff.Gender, Staff.Phone, Staff.Email, Staff.Salary, FORMAT(Staff.BirthDate, 'DD.MM.YYYY') AS BirthDate, Staff.[Position] " +
                         "FROM (Staff INNER JOIN Department ON Staff.DepId = Department.ID)  " +
                         "WHERE (Staff.[Position] = '" + DropDownListPosition.SelectedItem.Value + "'" + ") ";



            SqlDataSource1.SelectCommand = sql;
        }
    }
}