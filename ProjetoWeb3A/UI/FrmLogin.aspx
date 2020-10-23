<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="ProjetoWeb3A.UI.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
     <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body class="text-center">
    <form id="form1" class="form-signin" runat="server">
        <div>
            <h3>Acesso ao Sistema</h3>
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" class="form-control" type="email" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator runat="server" ID="reqemail" ControlToValidate="txtEmail" ErrorMessage="Informe o campo email." />

            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="txtPassword" class="form-control" type="password" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" class="btn btn-lg btn-primary btn-block" runat="server" Text="Entrar" OnClick="btnLogin_Click" />

        </div>
        <asp:Label ID="msgerro" runat="server" ForeColor="#FF3300" Text="."></asp:Label>
    </form>
</body>
</html>
