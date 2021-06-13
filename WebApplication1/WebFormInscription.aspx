<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormInscription.aspx.cs" Inherits="WebApplication1.WebFormInscription" %>

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
            width:4cm;
            border-radius:100%;
        }
        .center{


            border: 1px solid #2d2d2d;
            background: rgba(16, 119, 100,0.30);
            padding: 10px;
            //z-index: 2;
        }
           .Txtstyle4 {         
                         border: 1px solid #c4c4c4;         
                         padding: 2px 2px 2px 2px;         
                         border-radius: 4px;         
                         box-shadow: 0px 0px 8px #d9d9d9;         
                         background-color: #F0F0FF;         
           }         
           .Txtstyle4:focus {         
                                outline: none;        
                                border: 1px solid #7bc1f7;         
                                box-shadow: 0px 0px 8px #7bc1f7;         
                                background-color: #FFF2FF;         
           }
           #button{
               height:100%;
               width:100%;
               background:none;
               color:white;
               font-size:20px;
           }
           #button:hover{
               text-shadow:rgba(16, 119, 100,0.30);
               background-color:cornflowerblue;
               transition:1s;
           }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
        <div class="center">
            <h1>Inscription</h1>
            <table>
                <tr>
                    <td><h3>Nom :</h3></td>
                    <td><asp:TextBox ID="TextBoxNom" runat="server" CssClass="Txtstyle4"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><h3>Prenom :</h3></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" CssClass="Txtstyle4"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><h3>Date Embauche :</h3></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="Txtstyle4"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><h3>UserName :</h3></td>
                    <td><asp:TextBox ID="TextBoxUN" runat="server" CssClass="Txtstyle4"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><h3>PassWord :</h3></td>
                    <td><asp:TextBox ID="TextBoxPW" runat="server" TextMode="Password" CssClass="Txtstyle4"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><h3>Confirmer Votre Password :</h3></td>
                    <td><asp:TextBox ID="TextBoxCP" runat="server" TextMode="Password" CssClass="Txtstyle4"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="button" runat="server" Text="Enregistree" OnClick="button_Click" /></td>
                </tr>
            </table>
        </div>
            </section>
    </form>
</body>
</html>
