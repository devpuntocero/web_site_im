using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ctrl_acceso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            i_usuario();
        }
        else
        {

        }
    }
    private void i_usuario()
    {
        try
        {
            if (i_director() == true && i_centro() == true)
            {

            }
            else
            {
                lkb_registro.Visible = true;

                lblModalTitle.Text = "transcript";
                lblModalBody.Text = "No existe Director ni Corporativo, favor de registrarlos";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
            }
        }
        catch
        {
            lblModalTitle.Text = "transcript";
            lblModalBody.Text = "Sin conexión a base de datos, contactar al administrador";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
            upModal.Update();
        }

    }
    bool i_director()
    {
        bool bool_director;

        using (db_imEntities edm_director = new db_imEntities())
        {
            var i_director = (from u in edm_director.inf_usuarios
                              where u.id_tipo_usuario == 2
                              select u).ToList();

            if (i_director.Count == 0)
            {
                bool_director = false;
            }
            else
            {
                bool_director = true;
            }
        }

        return bool_director;
    }
    bool i_centro()
    {
        bool bool_centro;

        using (db_imEntities edm_centro = new db_imEntities())
        {
            var i_centro = (from u in edm_centro.inf_centro
                              where u.id_tipo_centro == 1
                              select u).ToList();

            if (i_centro.Count == 0)
            {
                bool_centro = false;
            }
            else
            {
                bool_centro = true;
            }
        }

        return bool_centro;
    }
    protected void lkb_registro_Click(object sender, EventArgs e)
    {
        Response.Redirect("ctrl_registro_inicial.aspx");
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
                        var i_usuario = (from c in edm_usuario.inf_usuarios
                                         where c.codigo_usuario == str_usuario
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

                                    Session["ss_idusuario"] = i_usuario[0].id_usuario;
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

    