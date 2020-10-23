using ProjetoWeb3A.BLL;
using ProjetoWeb3A.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3A.UI
{
    public partial class FrmLogin : System.Web.UI.Page
    {
        // instanciar as Classes DTO e BLL
        tblClienteDTO cliente = new tblClienteDTO();
        tblClienteBLL bllCliente = new tblClienteBLL();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try { 
                cliente.Email_cliente = txtEmail.Text.Trim();
                cliente.Senha_cliente = txtPassword.Text.Trim();
                if (bllCliente.Autenticar(cliente.Email_cliente, cliente.Senha_cliente))
                {
                    msgerro.Text = "Cliente Localizado";

                }
                else
                {
                    msgerro.Text = "NAO Cliente Localizado";
                }

            }
            catch (Exception ex)
            {
                msgerro.Text = ex.Message;
            }


}
    }
}