<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bc_Cadastrar_Brinquedo.aspx.cs" Inherits="Site_prointer4.WebForm4" %>

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
        <div>
            <h4 class="mb-3">Cadastro de Brinquedo</h4>
            <form class="needs-validation" novalidate>
                <div class="mb-4">
                    <asp:Label ID="Label1" runat="server" Text="ID_Brinquedo:"></asp:Label>
                    <div class="inputTxbNome">
                        <asp:TextBox ID="txbID_Brinquedo" runat="server"></asp:TextBox>
                    </div>                   
                </div>                            

                <div class="mb-3">
                     <asp:Label ID="Label3" runat="server" Text="Tipo"></asp:Label>
                     <div class="InputTxbEmail">
                         <asp:TextBox ID="txbTipo" runat="server"></asp:TextBox>
                     </div>
                </div>                
            </form>
        </div>

        <asp:Button ID="btnCadastro" runat="server" OnClick="btnCadastro_Click" Text="Salvar Cadastro" />

    </form>
</body>
</html>
