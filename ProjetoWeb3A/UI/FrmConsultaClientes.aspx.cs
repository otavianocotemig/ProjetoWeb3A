using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjetoWeb3A.BLL;

namespace ProjetoWeb3A.UI
{
    public partial class FrmConsultaClientes : System.Web.UI.Page
    {
        tblClienteBLL bllCliente = new tblClienteBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
             string condicao = "nome_cliente like '%" + TextBox1.Text + "%' or  email_cliente like '%" + TextBox1.Text + "%'";
            GridView1.DataSource = bllCliente.PesquisarClientes(condicao);
            GridView1.DataBind();

            

        }
        protected void textbox1_TextChanged(object sender, EventArgs e)
        {
            string condicao = "nome_cliente like '%" + TextBox1.Text + "%' or  email_cliente like '%" + TextBox1.Text + "%'";
            GridView1.DataSource = bllCliente.PesquisarClientes(condicao);
            GridView1.DataBind();
        }
    }
}