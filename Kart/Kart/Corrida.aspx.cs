using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Corrida: System.Web.UI.Page
{
    CorridaBLL objCorrida = new CorridaBLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        CaregarPiloto();
    }
    
    public void CaregarPiloto()
    {
        ddlCodPiloto.DataSource = objCorrida.RetPilotoCorrida();
        ddlCodPiloto.DataValueField = "id_piloto";
        ddlCodPiloto.DataValueField = "codigo_piloto";
        ddlCodPiloto.DataBind();

        ddlNomePiloto.DataSource = objCorrida.RetPilotoCorrida();
        ddlNomePiloto.DataValueField = "id_piloto";
        ddlNomePiloto.DataValueField = "nome_piloto";
        ddlNomePiloto.DataBind();

    }

    protected void BtGravar_Click(object sender, EventArgs e)
    {
        objCorrida.Hora_corr = TbHora.Text;
        objCorrida.Volta_corr = int.Parse(TbVolta.Text);
        objCorrida.Tempo_corr = TbTempo.Text;
        objCorrida.Velocidade_corr = float.Parse(TbVelocidade.Text);
        objCorrida.Piloto_id_piloto = int.Parse(TbIdPiloto.Text);
        objCorrida.InserirCorrida();
    }
}