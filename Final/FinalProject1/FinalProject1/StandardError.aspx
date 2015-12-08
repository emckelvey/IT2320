<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StandardError.aspx.cs" Inherits="FinalProject1.StandardError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        body{
            background-color: aqua;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <table>
            <tr>
                <td>

                </td>
            </tr>

            <tr>
                <td>
                    <p>New users, please create a</p>
                    <p> new account by providing</p>
                    <p>us with some basic information</p>
                    </td>
                <td class="auto-style2">
                Username:<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" />
        
                &nbsp;<p style="color:red">
                    The username you enterned is already taken.
                </p>
                </td>
               
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>

                 <td class="auto-style2">
               Password:
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1" />
        
                     <br />
                <p style="color: red">
                    Password must contain at least six characters.
                </p>
                        
                </td>
                <td>
                    &nbsp;</td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
