<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginDesktop.aspx.cs" Inherits="FinalProject1.LoginDesktop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            width: 520px;
            font-family: Calibri;
            font-size: 12px;
            background-color: aqua;
        }

        header{
            font-family: Cambria;
            font-size: 16px;
            text-align: left;
        }
        paragraph{
            font-size: 12px;
            font-family: 'Calibri';
            font: italic;

        }
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width:-10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="border:solid;">
        <h1>Welcome to Cuyahoga Community College Students Services Online</h1>

        <p>Cuyahoga Community College recognize students' rights to access personal and academic records</p>
        <p>in accordance with the Family Educational Rights and Privacy Act of 1974 (FERPA) as amended by Public Law 93-568.</p>
        <table>
            <tr>
                <td>
                <p>Already have an account with us? </p>
                    </td>
                <td class="auto-style2">
                Username:
                </td>
                <td>
                  <asp:TextBox ID="tbl" runat="server" CssClass="auto-style1" />
        
                </td>
            </tr>
            <tr>
                <td>New users, please create a new account by providing us with some basic information.</td>

                 <td class="auto-style2">
               Password:
                </td>
                <td>
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" />
                            <button type="button" onclick="alert('Hello world!')">SignIn</button>
        
        
                </td>
            </tr>
            </table>
        <br />
        <br />
            <hr />
            <br />
            <br />

            <table>
             <tr>
                <td>
                <p>Already have an account with us? </p>
                    </td>
                <td class="auto-style2">
                Username:
                </td>
                <td>
                  <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" />
        
                </td>
            </tr>
            <tr>
                <td>New users, please create a new account by providing us with some basic information.</td>

                 <td class="auto-style2">
               Password:
                </td>
                <td>
                  <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" />
        
                </td>
            </tr>
                 <tr>
                <td>
                <p>Already have an account with us? </p>
                    </td>
                <td class="auto-style2">
                E-Mail Address:
                </td>
                <td>
                  <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" />
        
                </td>
            </tr>
            <tr>
                <td>New users, please create a new account by providing us with some basic information.</td>

                 <td class="auto-style2">
                Repeat E-Mail Address:
                </td>
                <td>
                  <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1" />
                            <button type="button" onclick="alert('Hello world!')">CreateAccount</button>
        
        
                </td>
            </tr>

            
        </table>
    
            </table>
    </div>
    </form>
</body>
</html>
