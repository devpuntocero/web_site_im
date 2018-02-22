using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ctrl_acceso_alumno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
        else
        {

        }
    }
    protected void btn_acceso_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_usuario.Text))
        {

            txt_usuario.BackColor = Color.Yellow;
        }
        else
        {
            txt_usuario.BackColor = Color.Transparent;

            if (string.IsNullOrEmpty(txt_clave.Text))
            {

                txt_clave.BackColor = Color.Yellow;
            }
            else
            {
                txt_clave.BackColor = Color.Transparent;

                string str_usuario = txt_usuario.Text;
                string str_clave = mdl_encrypta.Encrypt(txt_clave.Text);
                string str_vclave;
                try
                {
                    using (db_imEntities edm_usuario = new db_imEntities())
                    {
                        var i_usuario = (from c in edm_usuario.inf_alumnos
                                         where c.email == str_usuario
                                         select c).ToList();

                        if (i_usuario.Count == 0)
                        {
                            lblModalTitle.Text = "transcript";
                            lblModalBody.Text = "Usuario incorrecto, favor de contactar al Administrador.";
                            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                            upModal.Update();
                        }
                        else
                        {
                            if (i_usuario[0].id_tipo_usuario == 9)
                            {
                                str_vclave = i_usuario[0].clave;

                                if (str_clave == str_vclave && i_usuario[0].id_estatus == 1)
                                {

                                    Session["ss_idusuario"] = i_usuario[0].id_alumno;
                                    Response.Redirect("ctrl_panel_alumnos.aspx");
                                }
                                else
                                {
                                    lblModalTitle.Text = "transcript";
                                    lblModalBody.Text = "Contraseña incorrecta, favor de contactar al Administrador.";
                                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                                    upModal.Update();
                                }

                            }
                            else if (i_usuario[0].id_tipo_usuario == 2)
                            {

                            }
                            else
                            {

                            }
                        }
                    }
                }
                catch
                {

                }
            }
        }
    }
}