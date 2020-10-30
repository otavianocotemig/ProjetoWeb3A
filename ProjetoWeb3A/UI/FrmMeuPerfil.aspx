<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMeuPerfil.aspx.cs" Inherits="ProjetoWeb3A.UI.FrmMeuPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Meu Perfil</title>
     <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/signin.css" rel="stylesheet" />



</head>
<body >
    <form id="form1" runat="server">
        <div>
             <h3>Meu Perfil</h3>
            
            <asp:Label ID="Label1" runat="server" Text="Código"></asp:Label>
            <asp:TextBox ID="txtCodigo" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
            
            <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="txtNome" class="form-control" runat="server" ></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Sobrenome"></asp:Label>
            <asp:TextBox ID="txtSobrenome" class="form-control" runat="server" ></asp:TextBox>
            
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" class="form-control" runat="server" ReadOnly="True" ></asp:TextBox>
            
            <asp:Label ID="Label8" runat="server" Text="CPF"></asp:Label>
            <asp:TextBox ID="txtCpf" class="form-control" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label5" runat="server" Text="Senha Atual"></asp:Label>
            <asp:TextBox ID="txtSenha" class="form-control" runat="server" ></asp:TextBox>

            <asp:Label ID="Label6" runat="server" Text="Nova Senha"></asp:Label>
            <asp:TextBox ID="txtNovaSenha" class="form-control" runat="server" ></asp:TextBox>

            <asp:Label ID="Label7" runat="server" Text="Repita Nova Senha"></asp:Label>
            <asp:TextBox ID="txtRnovaSenha" class="form-control" runat="server" ></asp:TextBox>
            <br />
             <asp:Button ID="btnGravar" class="btn btn-lg btn-primary" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
             <asp:Button ID="btnRetornar" class="btn btn-lg btn-primary" runat="server" Text="Retornar" OnClick="btnRetornar_Click" />

             <asp:Label ID="msgerro" runat="server" ForeColor="#FF3300" Text="."></asp:Label>
        </div>
    </form>
</body>
</html>
