using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3A.UI
{
    public partial class FrmProdutosDetalhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idProduto = int.Parse(Request.QueryString["idproduto"]);
        }
    }
}