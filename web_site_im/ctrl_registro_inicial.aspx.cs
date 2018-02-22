using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ctrl_registro_inicial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!IsPostBack)
            {

                load_ddl();

            }
            else
            {

            }
        }
        catch
        {
            Response.Redirect("ctrl_acceso.aspx");
        }
    }

    private void load_ddl()
    {

        using (db_imEntities m_tiporfc = new db_imEntities())
        {
            var i_tiporfc = (from f_tr in m_tiporfc.fact_genero
                             select f_tr).ToList();

            ddl_genero.DataSource = i_tiporfc;
            ddl_genero.DataTextField = "desc_genero";
            ddl_genero.DataValueField = "id_genero";
            ddl_genero.DataBind();
        }


        ddl_colonia.Items.Insert(0, new ListItem("*Colonia", "0"));
        ddl_genero.Items.Insert(0, new ListItem("*Género", "0"));
    }

    protected void btn_guardar_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_empresa.Text))
        {

            txt_empresa.BackColor = Color.Orange;
        }
        else
        {
            txt_empresa.BackColor = Color.Transparent;
            if (string.IsNullOrEmpty(txt_corporativo.Text))
            {

                txt_corporativo.BackColor = Color.Orange;
            }
            else
            {
                txt_corporativo.BackColor = Color.Transparent;
                if (string.IsNullOrEmpty(txt_telefono.Text))
                {

                    txt_telefono.BackColor = Color.Orange;
                }
                else
                {
                    txt_telefono.BackColor = Color.Transparent;
                    if (string.IsNullOrEmpty(txt_email.Text))
                    {

                        txt_email.BackColor = Color.Orange;
                    }
                    else
                    {
                        txt_email.BackColor = Color.Transparent;
                        if (string.IsNullOrEmpty(txt_callenum.Text))
                        {

                            txt_callenum.BackColor = Color.Orange;
                        }
                        else
                        {
                            txt_callenum.BackColor = Color.Transparent;
                            if (string.IsNullOrEmpty(txt_cp.Text))
                            {

                                txt_cp.BackColor = Color.Orange;
                            }
                            else
                            {
                                txt_cp.BackColor = Color.Transparent;
                                if (ddl_colonia.SelectedValue == "0")
                                {

                                    ddl_colonia.BackColor = Color.Orange;
                                }
                                else
                                {
                                    ddl_colonia.BackColor = Color.Transparent;
                                    if (ddl_genero.SelectedValue == "0")
                                    {

                                        ddl_genero.BackColor = Color.Orange;
                                    }
                                    else
                                    {
                                        ddl_genero.BackColor = Color.Transparent;
                                        if (string.IsNullOrEmpty(txt_nombres.Text))
                                        {

                                            txt_nombres.BackColor = Color.Orange;
                                        }
                                        else
                                        {
                                            txt_nombres.BackColor = Color.Transparent;
                                            if (string.IsNullOrEmpty(txt_apaterno.Text))
                                            {

                                                txt_apaterno.BackColor = Color.Orange;
                                            }
                                            else
                                            {
                                                txt_apaterno.BackColor = Color.Transparent;
                                                if (string.IsNullOrEmpty(txt_amaterno.Text))
                                                {

                                                    txt_amaterno.BackColor = Color.Orange;
                                                }
                                                else
                                                {
                                                    txt_amaterno.BackColor = Color.Transparent;
                                                    if (string.IsNullOrEmpty(txt_cumple.Text))
                                                    {

                                                        txt_cumple.BackColor = Color.Orange;
                                                    }
                                                    else
                                                    {
                                                        txt_cumple.BackColor = Color.Transparent;
                                                        if (string.IsNullOrEmpty(txt_usuario.Text))
                                                        {

                                                            txt_usuario.BackColor = Color.Orange;
                                                        }
                                                        else
                                                        {
                                                            txt_usuario.BackColor = Color.Transparent;
                                                            if (string.IsNullOrEmpty(txt_clave.Text))
                                                            {

                                                                txt_clave.BackColor = Color.Orange;
                                                            }
                                                            else
                                                            {
                                                                txt_clave.BackColor = Color.Transparent;

                                                                guarda_registro();
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

    }

    private void guarda_registro()
    {
        Guid guid_nempresa = Guid.NewGuid();
        Guid guid_ncorporativo = Guid.NewGuid();
        string str_empresa = txt_empresa.Text.ToUpper();
        string str_corporativo = txt_corporativo.Text.ToUpper();
        string str_telefono = txt_telefono.Text;
        string str_email = txt_email.Text;
        string str_callenum = txt_callenum.Text.ToUpper();
        string str_cp = txt_cp.Text;
        int int_colony = Convert.ToInt32(ddl_colonia.SelectedValue);

        Guid guid_nusuario = Guid.NewGuid();
        int int_genero = int.Parse(ddl_genero.SelectedValue);
        string str_nombres = txt_nombres.Text.ToUpper();
        string str_apaterno = txt_apaterno.Text.ToUpper();
        string str_amaterno = txt_amaterno.Text.ToUpper();
        DateTime date_cumple = DateTime.Parse(txt_cumple.Text);
        string str_usuairo = txt_usuario.Text;
        string str_password = mdl_encrypta.Encrypt(txt_clave.Text);


        using (var m_empresa = new db_imEntities())
        {
            var i_empresa = new inf_empresa
            {
                id_empresa = guid_nempresa,
                id_estatus = 1,
                razon_social = str_empresa,
                fecha_registro = DateTime.Now,
            };

            m_empresa.inf_empresa.Add(i_empresa);
            m_empresa.SaveChanges();
        }

        using (var m_empresa = new db_imEntities())
        {
            var i_empresa = new inf_centro

            {
                id_centro = guid_ncorporativo,
                id_licencia = 4,
                id_tipo_centro = 1,
                id_codigo_centro = DateTime.Now.Ticks.ToString(),
                id_estatus = 1,
                nombre = str_corporativo,
                telefono = str_telefono,
                email = str_email,
                calle = str_callenum,
                cp = str_cp,
                id_asenta_cpcons = int_colony,
                fecha_registro = DateTime.Now,
            };

            m_empresa.inf_centro.Add(i_empresa);
            m_empresa.SaveChanges();
        }

        using (var m_usuario = new db_imEntities())
        {
            var i_usuario = new inf_usuarios
            {
                id_usuario = guid_nusuario,
                id_estatus = 1,
                id_genero = int_genero,
                id_tipo_usuario = 2,
                nombres = str_nombres,
                a_paterno = str_apaterno,
                a_materno = str_amaterno,
                codigo_usuario = str_usuairo,
                clave = str_password,
                fecha_nacimiento = date_cumple,
                fecha_registro = DateTime.Now,
                id_centro = guid_nempresa
            };
            m_usuario.inf_usuarios.Add(i_usuario);
            m_usuario.SaveChanges();
        }

        using (var m_usuario = new db_imEntities())
        {
            var i_usuario = new inf_centro_dep
            {
                id_usuario = guid_nusuario,
                id_centro = guid_ncorporativo,
            };
            m_usuario.inf_centro_dep.Add(i_usuario);
            m_usuario.SaveChanges();
        }

        limpiar_textbox();

        lblModalTitle.Text = "Intelimundo";
        lblModalBody.Text = "Datos de Corporativo y Director agregados con éxito";
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        upModal.Update();
    }

    protected void btn_cp_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txt_cp.Text))
        {

            txt_cp.BackColor = Color.IndianRed;
        }
        else
        {
            txt_cp.BackColor = Color.Transparent;
            string str_codigo = txt_cp.Text;

            datos_sepomex(str_codigo);
        }
    }
    private void datos_sepomex(string str_codigo)
    {
        using (db_imEntities db_sepomex = new db_imEntities())
        {
            var tbl_sepomex = (from c in db_sepomex.inf_sepomex
                               where c.d_codigo == str_codigo
                               select c).ToList();

            ddl_colonia.DataSource = tbl_sepomex;
            ddl_colonia.DataTextField = "d_asenta";
            ddl_colonia.DataValueField = "id_asenta_cpcons";
            ddl_colonia.DataBind();

            if (tbl_sepomex.Count == 1)
            {

                txt_cp.BackColor = Color.Transparent;
                txt_municipio.Text = tbl_sepomex[0].D_mnpio;
                txt_estado.Text = tbl_sepomex[0].d_estado;
            }
            if (tbl_sepomex.Count > 1)
            {
                txt_cp.BackColor = Color.Transparent;
                ddl_colonia.Items.Insert(0, new ListItem("*Colonia", "0"));

                txt_municipio.Text = tbl_sepomex[0].D_mnpio;
                txt_estado.Text = tbl_sepomex[0].d_estado;
            }
            else if (tbl_sepomex.Count == 0)
            {
                txt_cp.BackColor = Color.IndianRed;
                ddl_colonia.Items.Clear();
                ddl_colonia.Items.Insert(0, new ListItem("*Colonia", "0"));
                txt_municipio.Text = "";
                txt_estado.Text = "";

            }
        }
    }

    private void limpiar_textbox()
    {

        txt_empresa.Text = "";
        txt_telefono.Text = "";
        txt_email.Text = "";
        txt_callenum.Text = "";
        txt_cp.Text = "";
        ddl_colonia.SelectedValue = "0";
        txt_municipio.Text = "";
        txt_estado.Text = "";

        ddl_genero.SelectedValue = "0";
        txt_nombres.Text = "";
        txt_apaterno.Text = "";
        txt_apaterno.Text = "";
        txt_cumple.Text = "";
        txt_usuario.Text = "";
        txt_clave.Text = "";
    }
}