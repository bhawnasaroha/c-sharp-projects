using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Telephone
{
    public partial class Phone : Form
    {
        SqlConnection connectMobile = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=Phone;Integrated Security=True");
        public Phone()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }
        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            comboBox1.SelectedIndex = -1;
            textBox1.Focus();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            connectMobile.Open();
            SqlCommand insertIntoMobile = new SqlCommand(@"INSERT INTO Mobile (First, Last, Mobile, Email, Category) VALUES ('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "','" + comboBox1.Text + "')" , connectMobile);
            insertIntoMobile.ExecuteNonQuery();
            connectMobile.Close();
            MessageBox.Show("Successfully saved...!");
            Display();
        }

        void Display()
        {
            SqlDataAdapter mobileTable = new SqlDataAdapter("SELECT * from Mobile", connectMobile);
            DataTable mobile = new DataTable();
            mobileTable.Fill(mobile);
            dataGridView1.Rows.Clear();
            foreach (DataRow mob in mobile.Rows)
            {
                int number = dataGridView1.Rows.Add();
                dataGridView1.Rows[number].Cells[0].Value = mob["First"].ToString();
                dataGridView1.Rows[number].Cells[1].Value = mob[1].ToString();
                dataGridView1.Rows[number].Cells[2].Value = mob[2].ToString();
                dataGridView1.Rows[number].Cells[3].Value = mob[3].ToString();
                dataGridView1.Rows[number].Cells[4].Value = mob[4].ToString();
            }
        }

        private void Phone_Load(object sender, EventArgs e)
        {
            Display();
        }

        private void dataGridView1_MouseClick(object sender, MouseEventArgs e)
        {
            textBox1.Text = dataGridView1.SelectedRows[0].Cells[0].Value.ToString();
            textBox2.Text = dataGridView1.SelectedRows[0].Cells[1].Value.ToString();
            textBox3.Text = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();
            textBox4.Text = dataGridView1.SelectedRows[0].Cells[3].Value.ToString();
            comboBox1.Text = dataGridView1.SelectedRows[0].Cells[4].Value.ToString();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            connectMobile.Open();
            SqlCommand insertIntoMobile = new SqlCommand("DELETE FROM Mobile WHERE (Mobile = '" + textBox3.Text + "')", connectMobile);
            insertIntoMobile.ExecuteNonQuery();
            connectMobile.Close();
            MessageBox.Show("Successfully deleted...!");
            Display();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            connectMobile.Open();
            SqlCommand insertIntoMobile = new SqlCommand("UPDATE Mobile SET First ='" + textBox1.Text + "', Last ='" + textBox2.Text + "', Mobile ='" + textBox3.Text + "', Email ='" + textBox4.Text + "', Category = '" + comboBox1.Text + "' WHERE (Mobile = '" + textBox3.Text + "')", connectMobile);
            insertIntoMobile.ExecuteNonQuery();
            connectMobile.Close();
            MessageBox.Show("Successfully updated...!");
            Display();
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
            SqlDataAdapter mobileTable = new SqlDataAdapter("SELECT * from Mobile WHERE (Mobile like '%" + textBox5.Text + "%') or (First like '%" + textBox5.Text + "%') or (Last like '%" + textBox5.Text + "%')", connectMobile);
            DataTable mobile = new DataTable();
            mobileTable.Fill(mobile);
            dataGridView1.Rows.Clear();
            foreach (DataRow mob in mobile.Rows)
            {
                int number = dataGridView1.Rows.Add();
                dataGridView1.Rows[number].Cells[0].Value = mob["First"].ToString();
                dataGridView1.Rows[number].Cells[1].Value = mob[1].ToString();
                dataGridView1.Rows[number].Cells[2].Value = mob[2].ToString();
                dataGridView1.Rows[number].Cells[3].Value = mob[3].ToString();
                dataGridView1.Rows[number].Cells[4].Value = mob[4].ToString();
            }
        }


    }
}
