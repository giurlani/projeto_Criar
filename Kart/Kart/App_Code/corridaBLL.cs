using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class CorridaBLL
{
    public String Hora {get; set;}
    public String Piloto { get; set; }
    public int Volta {get; set;}
    public String Tempo {get; set;}
    public String Velocidade {get; set;}
    
  
    DAL objDAL = new DAL();

  
    public DataTable RetListaCorrida()
    {
        return objDAL.RetDataTable("select * from kart");
    }

    public DataTable CarregarCorridaPorId(string id)
    {
        return objDAL.RetDataTable("select * FROM kart WHERE id = " + id);
    }


    public void InserirCorrida()
    {
        string sql = "INSERT INTO corrida(Hora,Piloto,Volta,Tempo,Velocidade)" +
                     "VALUES('{0}','{1}','{2}','{3}','{4}')";

        sql = string.Format(sql,  Hora, Piloto, Volta, Tempo, Velocidade);
        objDAL.ExecutarComandoSQL(sql);
    }    
    
    public void AlterarCorrida(string id)
    {
        string sql = "UPDATE kart SET  hora = '{0}', piloto = '{1}', volta  = '{2}',tempo  = '{3}'," +
                     "velocidade = '{4}' WHERE id = '{5}'";
        sql = string.Format(sql, Hora, Piloto, Volta, Tempo, Velocidade, id);
        objDAL.ExecutarComandoSQL(sql);
    }

    public void ExcluirCorrida(string id)
    {
        string sql = string.Format("DELETE FROM kart WHERE id='{0}'", id);
    }
    

}
