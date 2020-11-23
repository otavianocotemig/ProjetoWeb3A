using ProjetoWeb3A.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3A.UI
{
    public partial class FrmProdutosDetalhe : System.Web.UI.Page
    {
        tblProdutoBLL bllProduto = new tblProdutoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            int idProduto = int.Parse(Request.QueryString["idproduto"]);
            txtId.Text = Request.QueryString["idproduto"];
            DataTable cursor = bllProduto.consultarProdutos(idProduto);
            if (cursor.Rows.Count > 0)
            {
                txtNomeProduto.Text = cursor.Rows[0][1].ToString();
                txtDescricao.Text = cursor.Rows[0][2].ToString();
                txtPreco.Text = cursor.Rows[0][3].ToString();
                ImgProduto.ImageUrl = "~//imgProdutos//" + cursor.Rows[0][8].ToString();
            }

        }

        protected void btnRetornar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}