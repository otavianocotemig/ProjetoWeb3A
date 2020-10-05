<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoWeb3A.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Projeto Web 3A</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Loja Virtual 3A</h1>
            <asp:TextBox ID="txtPesquisar" runat="server" Width="293px"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" Width="136px" OnClick="btnPesquisar_Click" />
            <br />
            <br />
            <asp:GridView ID="GridProdutos" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
