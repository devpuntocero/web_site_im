<%@ Page Title="" Language="C#" MasterPageFile="~/im.master" AutoEventWireup="true" CodeFile="ctrl_menu_mediosuperior.aspx.cs" Inherits="material_mediasuperior_ctrl_menu_mediosuperior" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default" id="pnl_00" runat="server">
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
                        <h4>Media Superior</h4>
                        <div class="row">
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_biologia" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64" OnClick="img_biologia_Click" />
                                <h2>Biología</h2>
                            </div>
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_espanol" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64" />
                                <h2>Español</h2>
                            </div>
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_civica_etica" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64"  />
                                <h2>Cívica y ética</h2>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_habilidad_verbal" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64"  />
                                <h2>Habilidad verbal</h2>
                            </div>
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_geografia" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64"  />
                                <h2>Geografía</h2>
                            </div>
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_historia_universal" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64"  />
                                <h2>Historia Universal</h2>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_habilidad_matematicas" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64" />
                                <h2>Habilidad Matemática</h2>
                            </div>
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_matematicas" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64"  />
                                <h2>Matemáticas</h2>
                            </div>
                            <div class="col-md-4 text-center">
                                <asp:ImageButton CssClass="center-block img-responsive" ID="img_quimica" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64"  />
                                <h2>Química</h2>

                            </div>
                            <div class="row">
                                <div class="col-md-4 text-center">
                                    <asp:ImageButton CssClass="center-block img-responsive" ID="img_historia_mexico" runat="server" ImageUrl="~/img/business-and-office/png/301-notebook.png" Width="64" Height="64" />
                                    <h2>Historia de México</h2>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer"></div>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </div>
    <br />
</asp:Content>

