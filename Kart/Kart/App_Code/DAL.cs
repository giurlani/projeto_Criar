using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// Descrição resumida de Class1
/// </summary>
public class DAL
{
    private string server = "localhost";
    private string database = "kart";
    private string user = "root";
    private string password = "";
    private string connectionString = "Server={0};Database={1};Uid={2};Pwd={3};";
    private MySqlConnection connection;

    public DAL()
    {
        connectionString = string.Format(connectionString, server, database, user, password);
        connection = new MySqlConnection(connectionString);
        connection.Open();
    }

    public DataTable RetDataTable(string sql)
    {
        DataTable dataTable = new DataTable();
        MySqlCommand command = new MySqlCommand(sql,connection);
        MySqlDataAdapter da = new MySqlDataAdapter(command);
        da.Fill(dataTable);
        return dataTable;
    }
    public void ExecutarComandoSQL(string sql)
    {
        MySqlCommand command = new MySqlCommand(sql, connection);
        command.ExecuteNonQuery();
    }

}