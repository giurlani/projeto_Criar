<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Corrida.aspx.cs" Inherits="Corrida" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Kart Racer"></asp:Label>
        <br />
        <br />
        Cadastro de Corrida&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtGravar" runat="server" OnClick="BtGravar_Click" Text="Gravar" />
        <p>
            <asp:Label ID="Label2" runat="server" Text="ID:  "></asp:Label>
            <asp:TextBox ID="TbId" runat="server" Width="47px"></asp:TextBox>
        </p>
&nbsp;&nbsp;
        <p>
            Hora:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbHora" runat="server"></asp:TextBox>
&nbsp;Nº da Volta:&nbsp;&nbsp;
            <asp:TextBox ID="TbVolta" runat="server" Width="41px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Tempo:
            <asp:TextBox ID="TbTempo" runat="server"></asp:TextBox>
&nbsp;Velocidade Média:&nbsp;
            <asp:TextBox ID="TbVelocidade" runat="server" Width="69px"></asp:TextBox>
        </p>
        <p>
            &nbsp;ID Piloto:&nbsp;
            <asp:TextBox ID="TbIdPiloto" runat="server" Width="55px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        Codigo do Piloto:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlCodPiloto" runat="server" Height="16px" Width="66px">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp; Piloto:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlNomePiloto" runat="server" Height="18px" Width="259px">
        </asp:DropDownList>
        &nbsp;
        </p>
        Listagem:</form>
</body>
</html>
