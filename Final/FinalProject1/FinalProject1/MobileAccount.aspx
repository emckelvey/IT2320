<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileAccount.aspx.cs" Inherits="FinalProject1.MobileAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
           width: 300px;
           margin: 10px;
           font-family: Calibri;
           font-size: 13px;
           background-color: aqua;
        }
        header{
            font-family: 'Cambria' bold;
            font-size: 18px;
        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<h1 class="auto-style1">Welcome to Cuyahoga Community College Students Services Online</h1>
       
        <h4>AccountName</h4> 

        <p>Ebony McKelvey</p>
        <br />

        <p>EmailAddress</p>
         <asp:TextBox ID="tbl" runat="server" />
        <button type="button" onclick="alert('Hello world!')">Update!</button>
        <br />
        <p>CurrentGPA</p>
         <asp:TextBox ID="TextBox1" runat="server" />
        <button type="button" onclick="alert('Hello world!')">Update!</button>
        <br />
        <br />
        <hr style="color: blue;" />
        <br />
         <p>ElementName</p>
         <asp:TextBox ID="TextBox2" runat="server" />
   
        <br />
        <p>ElementValue</p>
         <asp:TextBox ID="TextBox3" runat="server" />
        <br />
        <button type="button" onclick="alert('Hello world!')">Add</button>
    
    
    </div>
    </form>
</body>
</html>
