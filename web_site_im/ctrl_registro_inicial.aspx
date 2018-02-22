<%@ Page Title="" Language="C#" MasterPageFile="~/im.master" AutoEventWireup="true" CodeFile="ctrl_registro_inicial.aspx.cs" Inherits="ctrl_registro_inicial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="section">
                <div class="container">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-1">
                                <br />
                                <a href="ctrl_acceso.aspx">
                                    <i class="material-icons">exit_to_app</i> Salir</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h3 class="text-center">Registro Inicial</h3>
                            </div>
                            <div class="col-md-4">
                                <asp:Image CssClass="center-block img-responsive" ID="Image1" runat="server" ImageUrl="~/img/business-and-office/png/301-office-block.png"
                                    Width="128" Height="128" />
                                <h3 class="text-center">Empresa</h3>
                            </div>
                            <div class="col-md-4">
                                
                                <asp:TextBox CssClass="form-control" ID="txt_empresa" runat="server" placeholder="*Nombre de Empresa" Visible="True"></asp:TextBox>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_corporativo" runat="server" placeholder="*Nombre de Corporativo"></asp:TextBox>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_telefono" runat="server" placeholder="*Teléfono"></asp:TextBox>
                                <ajaxToolkit:MaskedEditExtender ID="mee_telefono" runat="server" TargetControlID="txt_telefono" Mask="(52) 99.99.99.99.99.99 ext 99999" />
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_email" runat="server" placeholder="*e-mail"></asp:TextBox>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox CssClass="form-control" ID="txt_callenum" runat="server" placeholder="*Calle y número"></asp:TextBox>
                                <br />
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_cp" runat="server" placeholder="*Código Postal" MaxLength="5"></asp:TextBox>
                                    <ajaxToolkit:MaskedEditExtender ID="mee_cp" runat="server" TargetControlID="txt_cp" Mask="99999" />
                                    <span class="input-group-btn">
                                        <asp:Button CssClass="btn" ID="btn_cp" runat="server" Text="validar" OnClick="btn_cp_Click" />
                                    </span>
                                </div>
                                <br />
                                <asp:DropDownList CssClass="form-control" ID="ddl_colonia" runat="server" ToolTip="*Colonia"></asp:DropDownList>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_municipio" runat="server" placeholder="*Municipio" Enabled="false"></asp:TextBox>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_estado" runat="server" placeholder="*Estado" Enabled="false"></asp:TextBox>
                            </div>

                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Image CssClass="center-block img-responsive" ID="Image2" runat="server" ImageUrl="~/img/business-and-office/png/301-businessman.png"
                                    Width="128" Height="128" />
                                <h3 class="text-center">Director</h3>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList CssClass="form-control" ID="ddl_genero" runat="server"></asp:DropDownList>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_nombres" runat="server" placeholder="*Nombre(s)"></asp:TextBox>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_apaterno" runat="server" placeholder="*Apellido Paterno"></asp:TextBox>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_amaterno" runat="server" placeholder="*Apellido Materno"></asp:TextBox>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox CssClass="form-control" ID="txt_cumple" runat="server" placeholder="Fecha de Nacimiento"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="ce_cumple" runat="server" BehaviorID="txt_cumple" TargetControlID="txt_cumple" Format="yyyy/MM/dd" />
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_usuario" runat="server" placeholder="*Usuario"></asp:TextBox>
                                <br />
                                <asp:TextBox CssClass="form-control" ID="txt_clave" runat="server" placeholder="*Contraseña" TextMode="Password"></asp:TextBox>
                                <br />
                            </div>
                            <div class="col-md-12 text-right">
                                <asp:Button CssClass="btn" ID="btn_guardar" runat="server" Text="Guardar" OnClick="btn_guardar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="window.location.href='/ctrl_acceso.aspx'">x</button>
                            <h4 class="modal-title">
                                <asp:Label ID="lblModalTitle" runat="server" Text=""></asp:Label>
                            </h4>
                        </div>
                        <div class="modal-body">
                            <asp:Label ID="lblModalBody" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true" onclick="window.location.href='/ctrl_acceso.aspx'">Ok </button>
                        </div>
                    </div>
                </ContentTemplate>

            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

