<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebFormContenu.aspx.cs" Inherits="WebApplication1.WebFormContenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="2"><h3>Nom du Jardin :</h3></td>
                <td colspan="2"><asp:DropDownList CssClass="list" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="4"><asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="412px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td><h3>Plante :</h3></td>
                <td><asp:DropDownList CssClass="list" ID="DropDownList2" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td><h3>Quantiter :</h3></td>
                <td><asp:TextBox CssClass="Txtstyle4" ID="TextBoxQT" runat="server"></asp:TextBox></td>
                <td><asp:Button CssClass="button" ID="Button1" runat="server" Text="Ajoute" OnClick="Button1_Click" /></td>
                <td><asp:Button CssClass="button" ID="Button2" runat="server" Text="Supprimer" OnClick="Button2_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>
