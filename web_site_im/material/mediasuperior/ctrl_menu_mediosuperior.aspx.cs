using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class material_mediasuperior_ctrl_menu_mediosuperior : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void img_biologia_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("/material/mediasuperior/biologia/ctrl_biologia.aspx");
    }
}