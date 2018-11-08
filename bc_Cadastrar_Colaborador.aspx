<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bc_Cadastrar_Colaborador.aspx.cs" Inherits="Site_prointer4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="imgLogo" runat="server" Height="121px" Width="1000px" ImageUrl="C:\Users\devso\Documents\Anhanguera\4_semestre\ProInter 4\project\Site_prointer4\img\logo_colorido.png" ValidateRequestMode="Enabled" ImageAlign="Middle" />
        </div>
        <div>
            <div class="col-md-4 order-md-1">
            <h4 class="mb-3">Cadastro de Colaborador</h4>
            <form class="needs-validation" novalidate>
                <div class="mb-4">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                    <div class="inputTxbNome">
                        <asp:TextBox ID="txbNome" runat="server"></asp:TextBox>
                    </div>                   
                </div>

                <div class="mb-4">
                     <asp:Label ID="Label2" runat="server" Text="CPF:"></asp:Label>
                     <div class="inputTxbCpf">
                         <asp:TextBox ID="txbCpf" runat="server"></asp:TextBox>
                     </div>
                </div>

                 <div class="mb-4">
                     <asp:Label ID="Label5" runat="server" Text="Cargo:"></asp:Label>
                     <div class="inputTxbCpf">
                         <asp:TextBox ID="txbCargo" runat="server"></asp:TextBox>
                     </div>
                </div>

                <div class="mb-3">
                     <asp:Label ID="Label3" runat="server" Text="E-mail:"></asp:Label>
                     <div class="InputTxbEmail">
                         <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox>
                     </div>
                </div>

                <div class="mb-3">
                     <asp:Label ID="Label4" runat="server" Text="Telefone:"></asp:Label>
                     <div class="InputTxtTelefone">
                         <asp:TextBox ID="txbTelefone" runat="server"></asp:TextBox>
                     </div>
                </div>

                 <div class="mb-4">
                     <asp:Label ID="Label6" runat="server" Text="Endereço:"></asp:Label>
                     <div class="inputTxbCpf">
                         <asp:TextBox ID="txbEndereco" runat="server"></asp:TextBox>
                     </div>
                </div>
            </form>

            </div>
        </div>
        <asp:Button ID="btnCadastro" runat="server" OnClick="btnCadastro_Click" Text="Salvar Cadastro" />
    </form>
</body>
</html>
