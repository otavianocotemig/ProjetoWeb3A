using ProjetoWeb3A.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3A
{
    public partial class Default : System.Web.UI.Page
    {
        tblProdutoBLL bllProduto = new tblProdutoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string condicao = "nomeProduto like '%" + txtPesquisar.Text + "%' or descricao like '%" + txtPesquisar.Text + "%'";
            GridProdutos.DataSource = bllProduto.PesquisarProdutos(condicao);
            GridProdutos.DataBind();
        }

        protected void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            string condicao = "nomeProduto like '%" + txtPesquisar.Text + "%' or descricao like '%" + txtPesquisar.Text + "%'";
            GridProdutos.DataSource = bllProduto.PesquisarProdutos(condicao);
            GridProdutos.DataBind();
        }
    }
}