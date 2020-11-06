<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmConsultaClientes.aspx.cs" Inherits="ProjetoWeb3A.UI.FrmConsultaClientes" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="../Content/bootstrap.css" rel="stylesheet" />
 <link href="../Content/signin.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 66px">

            <asp:TextBox ID="TextBox1" runat="server" Width="156px"></asp:TextBox>
            
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            
        </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="342px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <sortedascendingcellstyle backcolor="#F1F1F1" />
            <sortedascendingheaderstyle backcolor="#007DBB" />
            <sorteddescendingcellstyle backcolor="#CAC9C9" />
            <sorteddescendingheaderstyle backcolor="#00547E" />
        </asp:GridView>
    </form>
</body>
</html>

