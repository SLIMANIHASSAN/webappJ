<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormLogin.aspx.cs" Inherits="WebApplication1.WebFormLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url("Backimage/garden.jpg");
            background-size:cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center center;
            background-color: #464646;
            font-family:sans-serif;
        }
        section {
                display: grid;
                justify-content: center;
                align-content: center;
                text-align:center;
        }
        tr{
            height:1cm;
        }
        td{
            width:3cm;
        }
        .center{
            border: 1px solid #2d2d2d;
            background: rgba(16, 119, 100,0.30);
            padding: 10px;
            //z-index: 2;
        }
        #ButtonLog{
            background:none;
            height:100%;
            width:100%;
            border:0;
        }
        #ButtonLog:hover{
            background-color:lightgreen;
            cursor:pointer;
        }
        

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
        <div class="center">
            <h1>Login</h1>
            <table>
                <tr>
                    <td><asp:Label Text="User Name :" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="TextBoxUN" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label Text="PassWord :" runat="server"></asp:Label></td>
                    <td><asp:TextBox ID="TextBoxPW" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" id="btn"><asp:Button ID="ButtonLog" runat="server" Text="Log in" Font-Bold="True" OnClick="ButtonLog_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="LinkButton1_Click">Inscription</asp:LinkButton></td>
                </tr>
            </table>
        </div>
            </section>
    </form>
</body>
</html>
