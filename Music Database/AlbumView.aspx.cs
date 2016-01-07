using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Music_Database
{
    public partial class AlbumView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSelectAlbum_Click(object sender, EventArgs e)
        {
            String sql = "SELECT Song.ID, Song.name, Song.length, Song.trackNo, Song.albumId ";
                  sql += "FROM (Song INNER JOIN Album ON Song.albumId = Album.ID) ";
                  sql += "WHERE (Album.ID = " + DropDownList1.SelectedValue.ToString() + ") ";
                  sql += "ORDER BY Song.trackNo";

                  SqlDataSource1.SelectCommand = sql;
                  ListView1.DataSource = SqlDataSource1;
                  ListView1.DataBind();

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}