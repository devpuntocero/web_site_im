using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ctrl_panel_alumno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lkb_salir_Click(object sender, EventArgs e)
    {
        Response.Redirect("ctrl_acceso.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        pnl_resumen.Visible = false;
        pnl_materiales.Visible = true;
    }
}