<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmConsultaClientes.aspx.cs" Inherits="ProjetoWeb3A.UI.FrmConsultaClientes" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Manutenção de Cliemtes</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
 <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div >
            <h3>Clientes</h3>

            <asp:TextBox ID="txtPesquisa" CssClass="form-control"  runat="server" Width="156px"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" CssClass="btn btn-lg btn-primary" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            
       
        <asp:GridView ID="gridClientes" CssClass="table table-striped" runat="server" AllowPaging="True" OnPageIndexChanging="gridClientes_PageIndexChanging" PageSize="5" OnRowDeleting="gridClientes_RowDeleting" OnRowCancelingEdit="gridClientes_RowCancelingEdit" OnRowEditing="gridClientes_RowEditing" OnRowUpdating="gridClientes_RowUpdating"  >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:CommandField ShowEditButton="True"></asp:CommandField>
            </Columns>
            <PagerSettings Position="TopAndBottom" />
         
        </asp:GridView>
             </div>
            </div>
    </form>
</body>
</html>

