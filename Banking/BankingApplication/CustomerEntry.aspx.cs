﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection connectDB = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\shemsher\\Documents\\BankDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        connectDB.Open();
        SqlDataAdapter insertInBank = new SqlDataAdapter("INSERT INTO Account VALUES (" + accno.Text + ", " + bid.SelectedValue + ", " + brid.SelectedValue + ", '" + name.Text + "', '" + add.Text + "', "+cno.Text+", "+balance.Text+")", connectDB);
        insertInBank.SelectCommand.ExecuteNonQuery();
        connectDB.Close();        
        Response.Write("<script>alert('The details have been stored in the database');</script>");     
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        accno.Text = "";
        name.Text = "";
        add.Text = "";
        cno.Text = "";
        balance.Text = "";
    }
    
}