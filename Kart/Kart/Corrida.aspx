 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Corrida.aspx.cs" Inherits="Corrida" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 416px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Kart Racer"></asp:Label>
        &nbsp;&nbsp;&nbsp;<p>
            <asp:Label ID="Label2" runat="server" Text="ID:  "></asp:Label>
            <asp:TextBox ID="TbId" runat="server" Width="47px"></asp:TextBox>
        </p>
        <p>
            Hora:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbHora" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            &nbsp;Piloto:&nbsp;&nbsp;&nbsp;
        &nbsp;
            <asp:TextBox ID="TbPiloto" runat="server" Width="231px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nº da Volta:&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TbVolta" runat="server" Width="52px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; 
        </p>
        <p>
            Tempo:&nbsp; <asp:TextBox ID="TbTempo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Velocidade Média:&nbsp;
            <asp:TextBox ID="TbVelocidade" runat="server" Width="69px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="BtCarregar" runat="server" OnClick="BtCarregar_Click" Text="Carregar" />
&nbsp;&nbsp; <asp:Button ID="BtGravar" runat="server" OnClick="BtGravar_Click" Text="Gravar" />
        &nbsp;&nbsp;
        <asp:Button ID="BtExcluir" runat="server" Text="Excluir" OnClick="BtExcluir_Click" />
&nbsp;&nbsp; <asp:Button ID="BtLimpar" runat="server" Text="Limpar" OnClick="BtLimpar_Click" Height="26px" />
        </p>
        &nbsp;&nbsp; Filtrar Resultado&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="272px">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtBusca" runat="server" Text="Busca" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="gridCorrida" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
