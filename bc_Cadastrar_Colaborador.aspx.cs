﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Site_prointer4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {            
            String strConnString = "@Provider = Microsoft.ACE.OLEDB.12.0; Data Source =| DataDirectory |\DB\BrincadeiraDeCrianca; Persist Security Info = false;";

            OleDbConnection conn = new OleDbConnection(strConnString);

            String query = "INSERT INTO Colaboradores(nome, cpf, cargo, email, telefone, endereco) VALUES(@nome, @cpf, @cargo, @email, @telefone, @endereco)";
            OleDbCommand cmd = new OleDbCommand(query, conn);

            cmd.Parameters.Add(new OleDbParameter("@nome", OleDbType.VarChar)).Value = txbNome;
            cmd.Parameters.Add(new OleDbParameter("@cpf", OleDbType.Integer)).Value = txbCpf;
            cmd.Parameters.Add(new OleDbParameter("@cargo", OleDbType.VarChar)).Value = txbCargo;
            cmd.Parameters.Add(new OleDbParameter("@email", OleDbType.VarChar)).Value = txbEmail;
            cmd.Parameters.Add(new OleDbParameter("@telefone", OleDbType.VarChar)).Value = txbTelefone;
            cmd.Parameters.Add(new OleDbParameter("@endereco", OleDbType.VarChar)).Value = txbEndereco;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();            
        }
    }
}