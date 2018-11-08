using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Site_prointer4
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {            
            String strConnString = "@Provider = Microsoft.ACE.OLEDB.12.0; Data Source =| DataDirectory |\DB\BrincadeiraDeCrianca; Persist Security Info = false;";

            OleDbConnection conn = new OleDbConnection(strConnString);

            String query = "INSERT INTO Tipo_Brinquedo(id_tipo, nome, valor) VALUES(@id_tipo, @nome, @valor)";
            OleDbCommand cmd = new OleDbCommand(query, conn);

            cmd.Parameters.Add(new OleDbParameter("@id_tipo", OleDbType.Integer)).Value = txbID_Tipo;
            cmd.Parameters.Add(new OleDbParameter("@nome", OleDbType.VarChar)).Value = txbNome;
            cmd.Parameters.Add(new OleDbParameter("@valor", OleDbType.Integer)).Value = txbValor;
            
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();            
        }
    }
}