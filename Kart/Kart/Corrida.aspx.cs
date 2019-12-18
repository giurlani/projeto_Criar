using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Corrida: System.Web.UI.Page
{
    CorridaBLL objCorrida = new CorridaBLL();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        CarregaGridView();
    }
    
    private void CarregaGridView()
    {
        gridCorrida.DataSource = objCorrida.RetListaCorrida();
        gridCorrida.DataBind();
    }

    protected void BtGravar_Click(object sender, EventArgs e)
    {
        objCorrida.Hora = TbHora.Text;
        objCorrida.Piloto = TbPiloto.Text;
        objCorrida.Volta = int.Parse(TbVolta.Text);
        objCorrida.Tempo = TbTempo.Text;
        objCorrida.Velocidade = TbVelocidade.Text;

        if (string.IsNullOrEmpty(TbId.Text))
        {
            objCorrida.InserirCorrida();
        }
        else
        {
            objCorrida.AlterarCorrida(TbId.Text);
        }
        CarregaGridView();
        LimpaTela();
    }

    protected void BtCarregar_Click(object sender, EventArgs e)
    {
        DataTable data = objCorrida.CarregarCorridaPorId(TbId.Text);
        TbHora.Text = data.Rows[0]["Hora"].ToString();
        TbPiloto.Text = data.Rows[0]["Piloto"].ToString();
        TbVolta.Text = data.Rows[0]["Volta"].ToString();
        TbTempo.Text = data.Rows[0]["Tempo"].ToString();
        TbVelocidade.Text = data.Rows[0]["Velocidade"].ToString();
      
    }
         
    protected void BtExcluir_Click(object sender, EventArgs e)
    {
        objCorrida.ExcluirCorrida(TbId.Text);
        LimpaTela();
    }

    protected void BtLimpar_Click(object sender, EventArgs e)
    {
        LimpaTela();
    }

    private void LimpaTela()
    {
        TbId.Text = string.Empty;
        TbHora.Text = string.Empty;
        TbPiloto.Text = string.Empty;
        TbTempo.Text = string.Empty;
        TbVelocidade.Text = string.Empty;
        TbVolta.Text = string.Empty;
    }
}