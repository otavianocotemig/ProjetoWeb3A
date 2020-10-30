<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoWeb3A.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Projeto Web 3A</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    
   
</head>
<body class="text-center">
    <form id="form1" class="form-signin" runat="server">

          <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            
              <a class="navbar-brand" href="FrmMain.aspx">Projeto Web 3A</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                  
                   <li class="nav-item">
                    <a class="nav-link" href="FrmMeuPerfil.aspx">Meu Perfil</a>
                  </li>
                                   
                </ul>
              
                  <asp:Label ID="usuarioLogado" runat="server" Text="dasdasdasd" ForeColor="White"> </asp:Label>
                  <asp:Button ID="BtnSair" class="btn btn-outline-success my-2 my-sm-0" runat="server" Text="Sair" OnClick="BtnSair_Click"  />
              
              </div>
            </nav>
        <br />
        <div class="jumbotron">
            <asp:Label ID="Label1" runat="server" Text="Digite o Produto que deseja Pesquisar"></asp:Label>
           <p>
            <asp:TextBox ID="txtPesquisar" runat="server" class="form-control" Width="293px" OnTextChanged="txtPesquisar_TextChanged"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" Class="btn btn-lg btn-primary" Text="Pesquisar" Width="136px" OnClick="btnPesquisar_Click" />
                </p>
            
            <br />
            <asp:GridView ID="GridProdutos" CssClass="table table-dark" runat="server">
            </asp:GridView>
        </div>
    </form>


</body>
</html>
