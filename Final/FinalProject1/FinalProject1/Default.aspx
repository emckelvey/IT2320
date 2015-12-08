<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Styles/Home.css" rel="stylesheet" />
        <title>Final Project</title>
   
        <script src="~/Scripts/jquery-2.1.1.min.js"></script>
        <script src="~/Scripts/jquery-ui.min.js"></script>
        <script src="~/Scripts/Home.js"></script>
    <style type="text/css">
        body{
            background-color: aqua;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 172px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        
        
        <div class="auto-style2">

            <h1 class="auto-style1"><strong>Welcome to Cuyahoga Community College Students Services Online</strong></h1>

        <br />

        <p class="auto-style1">Cuyahoga Community College recognize students' rights to access personal and academic records</p>
        <p class="auto-style1">in accordance with the Family Educational Rights and Privacy Act of 1974 (FERPA) as amended by Public Law 93-568.</p>
        <br />
        <br />
        <br />

        </div>
       <table>

        <form class="bs-docs-example form-horizontal">
            <div class="control-group">
              <label class="control-label" for="inputEmail">Email</label>
              <div class="controls">
                <input type="text" id="inputEmail" placeholder="Email">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">Password</label>
              <div class="controls">
                <div class="input-append">
                  <input type="password" id="inputPassword" placeholder="Password">
                  </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <label class="checkbox">
                  <input type="checkbox"> Remember me
                </label>
                <button type="submit" class="btn">Sign in</button>
              </div>
            </div>
          </form>
            <tr>
             <td>Already have an account with us?
        <p>Returning users may log in by entering their site username and password.</p>
    </td>		
    
  </tr>

</table>
         

        <br />
        <br />
        <hr />
        <br />
           <table style="width:100%">
  <tr>
    <form class="bs-docs-example form-horizontal">
            <div class="control-group">
              <label class="control-label" for="inputEmail">Username</label>
              <div class="controls">
                <input type="text" id="inputEmail" placeholder="Email">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">Password</label>
              <div class="controls">
                <div class="input-append">
                  <input type="password" id="inputPassword" placeholder="Password">
                  <span class="add-on">PWD</span>
                </div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">E-mail Address</label>
              <div class="controls">
                <div class="input-append">
                  <input type="password" id="inputPassword" placeholder="Password">
                  <span class="add-on">PWD</span>
                </div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputPassword">Repeat E-mail Address</label>
              <div class="controls">
                <div class="input-append">
                  <input type="password" id="inputPassword" placeholder="Password">
                  <span class="add-on">PWD</span>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <label class="checkbox">
                  <input type="checkbox"> Remember me
                </label>
                <button type="submit" class="btn">Creat Account</button>
              </div>
            </div>
          </form>
    <td>New users, please create a new account by providing us
        <p>with some basic information</p>
    </td>		
    
  </tr>

</table>
        


            </div>

    <footer>
        <address><strong>Cuyahoga Community College</strong></address>
        <address><strong>700 Carneige Avenue Cleveland Ohio</strong></address>
    </footer>
    </form>
</body>
</html>
