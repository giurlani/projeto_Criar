using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Descrição resumida de PilotoDLL
/// </summary>
public class CorridaBLL
{
    public String Hora_corr {get; set;}
    public int Volta_corr {get; set;}
    public String Tempo_corr {get; set;}
    public float Velocidade_corr {get; set;}
    public int Piloto_id_piloto{get; set;}

    DAL objDAL = new DAL();

    public DataTable RetPilotoCorrida()
    {
        return objDAL.RetDataTable("select * from piloto");
    }

    public void InserirCorrida()
    {
        string sql = "INSERT INTO corrida(hora_corr,volta_corr,tempo_corr,velocidade_corr,piloto_id_piloto)" +
                     "VALUES('{0}','{1}','{2}','{3}','{4}')";

        sql = string.Format(sql, Hora_corr, Volta_corr, Tempo_corr, Velocidade_corr, Piloto_id_piloto);
        objDAL.ExecutarComandoSQL(sql);
    }       


}
