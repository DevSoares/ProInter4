<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bc_Cadastrar_tipo_Brinquedo.aspx.cs" Inherits="Site_prointer4.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div>
        <asp:Image ID="imgLogo" runat="server" Height="121px" Width="1000px" ImageUrl="C:\Users\devso\Documents\Anhanguera\4_semestre\ProInter 4\project\Site_prointer4\img\logo_colorido.png" ValidateRequestMode="Enabled" ImageAlign="Middle" />
    </div>
    <form id="form1" runat="server">
        <div class="col-md-4 order-md-1">
            <h4 class="mb-3">Cadastro de Tipo de Brinquedo</h4>
            <form class="needs-validation" novalidate>
                <div class="mb-4">
                    <asp:Label ID="Label1" runat="server" Text="ID_Tipo:"></asp:Label>
                    <div class="inputTxbID_Tipo">
                        <asp:TextBox ID="txbID_Tipo" runat="server"></asp:TextBox>
                    </div>                   
                </div>

                <div class="mb-4">
                     <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label>
                     <div class="inputTxbNome">
                         <asp:TextBox ID="txbNome" runat="server"></asp:TextBox>
                     </div>
                </div>

                <div class="mb-3">
                     <asp:Label ID="Label3" runat="server" Text="Valor da hora:"></asp:Label>
                     <div class="InputTxbValor">
                         <asp:TextBox ID="txbValor" runat="server"></asp:TextBox>
                     </div>
                </div>                               
            </form>
        </div>

        <asp:Button ID="btnCadastro" runat="server" OnClick="btnCadastro_Click" Text="Salvar Cadastro" />
    </form>
</body>
</html>
