<%@ Page Title="" Language="C#" MasterPageFile="~/im.master" AutoEventWireup="true" CodeFile="ctrl_panel_alumno.aspx.cs" Inherits="ctrl_panel_alumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <div class="container">
                <div class="form-group">
                    <div class="panel panel-default" id="div_pnl" runat="server">
                        <div class="panel-heading">
                            <p class="text-right">
                                <asp:Label ID="lbl_bienvenida" runat="server" Text="Bienvenid@: "></asp:Label>
                                <asp:LinkButton ID="lkb_edita_usuario" runat="server">
                                    <asp:Label CssClass="buttonClass" ID="lbl_fuser" runat="server" Text=""></asp:Label>
                                    <i class="material-icons">fingerprint</i>
                                </asp:LinkButton>
                                <br />
                                <asp:Label ID="lbl_tipousuario" runat="server" Text="Perfil: "></asp:Label>
                                <asp:Label ID="lbl_ftipousuario" runat="server" Text=""></asp:Label>
                                <i class="material-icons">person_outline</i>
                                <br />
                                <asp:Label ID="lbl_centro" runat="server" Text="Centro: "></asp:Label>
                                <asp:LinkButton CssClass="buttonClass" ID="lkb_edita_centro" runat="server">
                                    <asp:Label CssClass="buttonClass" ID="lbl_fcentro" runat="server" Text=""></asp:Label>
                                    <i class="material-icons">business</i>
                                </asp:LinkButton>
                            </p>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="sidebar-nav">
                                        <div class="navbar navbar-default" role="navigation">
                                            <div class="navbar-header">
                                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                                                <span class="visible-xs navbar-brand">Sidebar menu</span>
                                            </div>
                                            <div class="navbar-collapse collapse sidebar-navbar-collapse">
                                                <ul class="nav navbar-nav text-left">
                                                    <li>
                                                        <div id="div_resumen" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="lkb_resumen" runat="server">
                                                                <i class="material-icons">dashboard</i>
                                                                <asp:Label CssClass="buttonClass" ID="lbl_resumen" runat="server" Text="Resumen"> </asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div id="div_ventas" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="lkb_contacto" runat="server">
                                                                <i class="material-icons">event_note</i>
                                                                <asp:Label CssClass="buttonClass" ID="lbl_contacto" runat="server" Text="Datos Contacto"> </asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div id="div_gastos" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="lkb_tutor" runat="server">
                                                                <i class="material-icons">people_outline</i>

                                                                <asp:Label CssClass="buttonClass" ID="lbl_tutor" runat="server" Text="Datos Tutor"> </asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div id="div_recepcion" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="lkb_escolares" runat="server">

                                                                <i class="material-icons">account_balance</i>
                                                                <asp:Label CssClass="buttonClass" ID="lbl_escolares" runat="server" Text="Datos Escolares"> </asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div id="div_ordencompra" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="lkb_medicos" runat="server">
                                                                <i class="material-icons">featured_play_list</i>
                                                                <asp:Label CssClass="buttonClass" ID="lbl_medicos" runat="server" Text="Datos Medicos"> </asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div id="div_inventario" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="lkb_fiscales" runat="server">
                                                                <i class="material-icons">archive</i>
                                                                <asp:Label CssClass="buttonClass" ID="lbl_fiscales" runat="server" Text="Datos Fiscales"> </asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div id="div2" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                                                                <i class="material-icons">account_balance_wallet</i>
                                                                <asp:Label CssClass="buttonClass" ID="Label2" runat="server" Text="Materiales"> </asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div id="div_salir" runat="server">
                                                            <asp:LinkButton CssClass="buttonClass" ID="lkb_salir" runat="server" OnClick="lkb_salir_Click">
                                                                <i class="material-icons">exit_to_app</i>
                                                                <asp:Label CssClass="buttonClass" ID="lbl_salir" runat="server" Text="Salir"></asp:Label>
                                                            </asp:LinkButton>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!--/.nav-collapse -->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="panel panel-default" id="pnl_resumen" runat="server">
                                        <div class="panel-heading">
                                            <h3>Resumen</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div id="div1" class="text-center" runat="server">
                                                <h2>En Construcción</h2>
                                            </div>
                                        </div>
                                        <div class="panel-footer"></div>
                                    </div>
                                    <div class="panel panel-default" id="pnl_contacto" runat="server" visible="false">
                                        <div class="panel-heading">
                                            <h3>Resumen</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div id="div3" class="text-center" runat="server">
                                                <h2>En Construcción</h2>
                                            </div>
                                        </div>
                                        <div class="panel-footer"></div>
                                    </div>
                                    <div class="panel panel-default" id="pnl_tutor" runat="server" visible="false">
                                        <div class="panel-heading">
                                            <h3>Resumen</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div id="div5" class="text-center" runat="server">
                                                <h2>En Construcción</h2>
                                            </div>
                                        </div>
                                        <div class="panel-footer"></div>
                                    </div>
                                    <div class="panel panel-default" id="pnl_escolares" runat="server" visible="false">
                                        <div class="panel-heading">
                                            <h3>Resumen</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div id="div7" class="text-center" runat="server">
                                                <h2>En Construcción</h2>
                                            </div>
                                        </div>
                                        <div class="panel-footer"></div>
                                    </div>
                                    <div class="panel panel-default" id="pnl_medicos" runat="server" visible="false">
                                        <div class="panel-heading">
                                            <h3>Resumen</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div id="div9" class="text-center" runat="server">
                                                <h2>En Construcción</h2>
                                            </div>
                                        </div>
                                        <div class="panel-footer"></div>
                                    </div>
                                    <div class="panel panel-default" id="pnl_fiscales" runat="server" visible="false">
                                        <div class="panel-heading">
                                            <h3>Resumen</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div id="div11" class="text-center" runat="server">
                                                <h2>En Construcción</h2>
                                            </div>
                                        </div>
                                        <div class="panel-footer"></div>
                                    </div>
                                    <div class="panel panel-default" id="pnl_materiales" runat="server" visible="false">
                                        <div class="panel-heading">
                                            <h3>Nivel Académico</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="col-md-3 text-center">
                                                <asp:ImageButton CssClass="center-block img-responsive" ID="ImageButton1" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="32" Height="32" />
                                                <h4>Preescolar</h4>
                                            </div>
                                            <div class="col-md-3 text-center">
                                                <asp:ImageButton CssClass="center-block img-responsive" ID="ImageButton2" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="32" Height="32" />
                                                <h4>Primaria</h4>
                                            </div>
                                            <div class="col-md-3 text-center">
                                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_mediasuperior" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="32" Height="32" />
                                                <h4>Secundaria</h4>
                                            </div>
                                            <div class="col-md-3 text-center">
                                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_superior" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="32" Height="32" />
                                                <h4>Media Superior</h4>
                                            </div>
                                        </div>
                                        <div class="panel-footer"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">
                                <asp:Label ID="lblModalTitle" runat="server" Text=""></asp:Label>
                            </h4>
                        </div>
                        <div class="modal-body">
                            <asp:Label ID="lblModalBody" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Ok</button>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

