using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Site_prointer4
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {        
            String strConnString = "@Provider = Microsoft.ACE.OLEDB.12.0; Data Source =| DataDirectory |\DB\BrincadeiraDeCrianca; Persist Security Info = false;";

            OleDbConnection conn = new OleDbConnection(strConnString);

            String query = "INSERT INTO Brinquedos(id_brinquedo, tipo) VALUES(@id_brinquedo, @tipo)";
            OleDbCommand cmd = new OleDbCommand(query, conn);

            cmd.Parameters.Add(new OleDbParameter("@id_brinquedo", OleDbType.Integer)).Value = txbID_Brinquedo;
            cmd.Parameters.Add(new OleDbParameter("@tipo", OleDbType.Integer)).Value = txbTipo;
           
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();            
        }
    }
}