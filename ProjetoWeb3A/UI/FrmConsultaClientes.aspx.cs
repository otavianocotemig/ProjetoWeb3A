using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetoWeb3A.BLL;
using ProjetoWeb3A.DTO;

namespace ProjetoWeb3A.UI
{
    public partial class FrmConsultaClientes : System.Web.UI.Page
    {
        tblClienteBLL bllCliente = new tblClienteBLL();
        tblClienteDTO dtoCliente = new tblClienteDTO();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            exibirGrid();

        }

        public void exibirGrid()
        {
            string condicao = "nome_cliente like '%" + txtPesquisa.Text + "%' or  email_cliente like '%" + txtPesquisa.Text + "%'";
            gridClientes.DataSource = bllCliente.PesquisarClientes(condicao);
            gridClientes.DataBind();
        }

        // Metodo que controla a Paginação do Grid
        protected void gridClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            gridClientes.PageIndex = e.NewPageIndex;
            exibirGrid();
        }

        protected void gridClientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dtoCliente.Id_cliente = Convert.ToInt32(e.Values[0]);
            bllCliente.ExcluirCliente(dtoCliente);
            exibirGrid();
        }

        protected void gridClientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridClientes.EditIndex = e.NewEditIndex;
            exibirGrid();
        }

        protected void gridClientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Atributo que mudar o indice de edição para -1, ou seja define que não há itens para ser editado.
            gridClientes.EditIndex = -1;
            exibirGrid();
        }

        protected void gridClientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Passo os dados para o DTO
            
            dtoCliente.Nome_cliente = e.NewValues[1].ToString();
            dtoCliente.Sobrenome_cliente = e.NewValues[2].ToString();
            dtoCliente.Email_cliente = e.NewValues[3].ToString();
            dtoCliente.Senha_cliente = e.NewValues[4].ToString();
            dtoCliente.Cpf_cliente = e.NewValues[5].ToString();
           
            bllCliente.AlterarCliente(dtoCliente);
            // Atributo que mudar o indice de edição para -1, ou seja define que não há itens para ser editado.
            gridClientes.EditIndex = -1;
            exibirGrid();
            
        }
    }
}