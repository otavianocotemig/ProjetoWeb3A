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
    }
}