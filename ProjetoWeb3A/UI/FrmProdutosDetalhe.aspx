<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmProdutosDetalhe.aspx.cs" Inherits="ProjetoWeb3A.UI.FrmProdutosDetalhe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="Label5" runat="server" Text="Código "></asp:Label>
              <asp:TextBox ID="txtId" type="text" runat="server" CssClass="form-control" Enabled="False" ></asp:TextBox>

             <asp:Label ID="lblNome" runat="server" Text="Nome do Produto "></asp:Label>
             <asp:TextBox ID="txtNomeProduto" type="text" runat="server" CssClass="form-control" ></asp:TextBox>

             <asp:Label ID="lblDescricao" runat="server" Text="Descrição do Produto "></asp:Label>
             <asp:TextBox ID="txtDescricao" type="text" runat="server" CssClass="form-control" ></asp:TextBox>

             <asp:Label ID="Label2" runat="server" Text="Preço "></asp:Label>
             <asp:TextBox ID="txtPreco" type="text" runat="server" CssClass="form-control" ></asp:TextBox>
            <p>

              <asp:Image ID="ImgProduto" runat="server" Height="120px" Width="183px" />
                </p>
             <asp:Button ID="btnRetornar" class="btn btn-lg btn-primary" runat="server" Text="Retornar" OnClick="btnRetornar_Click"  />


        </div>
    </form>
</body>
</html>
