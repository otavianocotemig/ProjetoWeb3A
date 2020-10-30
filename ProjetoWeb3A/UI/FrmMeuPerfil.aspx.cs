using ProjetoWeb3A.BLL;
using ProjetoWeb3A.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3A.UI
{
    public partial class FrmMeuPerfil : System.Web.UI.Page
    {
        tblClienteBLL bllCliente = new tblClienteBLL();
        tblClienteDTO dtoCliente = new tblClienteDTO();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {

                txtEmail.Text = Session["usuario"].ToString();
                // selecionar os dados do cliente logado
                DataTable DtResult = bllCliente.ListarClientes(Session["usuario"].ToString());
                txtCodigo.Text = DtResult.Rows[0]["id_cliente"].ToString();
                txtNome.Text = DtResult.Rows[0]["nome_cliente"].ToString();
                txtSobrenome.Text = DtResult.Rows[0]["sobrenome_cliente"].ToString();
                txtCpf.Text = DtResult.Rows[0]["cpf_cliente"].ToString();

            }
        }

        protected void btnRetornar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            string Erro = "OK";
            // Consistencias de alteração

            if (txtSenha.Text.ToString() != bllCliente.RecuperarSenha(txtEmail.Text))
            {
                msgerro.Text = "Senha Atual não confere. ";

                Erro = "NOTOK";
            }
            // Verificar se as nova senha e repita nova são igual
            if (txtNovaSenha.Text.ToString() != txtRnovaSenha.Text.ToString())
            {
                msgerro.Text = "Nova senha não confere com a senha redigitada. ";
                Erro = "NOTOK";
            }
            // Alteração da senha
            if (Erro == "OK")
            {
                try
                {
                    dtoCliente.Email_cliente = txtEmail.Text.ToString();
                    dtoCliente.Nome_cliente = txtNome.Text.ToString();
                    dtoCliente.Sobrenome_cliente = txtSobrenome.Text.ToString();
                    dtoCliente.Senha_cliente = txtNovaSenha.Text.ToString();
                    dtoCliente.Cpf_cliente = txtCpf.Text.ToString();
                    bllCliente.AlterarCliente(dtoCliente);
                    msgerro.Text = "Alteração |Realizada com Sucesso. ";
                }
                catch (Exception ex)
                {
                    msgerro.Text = ex.Message;
                }



            }

        }
    }
}