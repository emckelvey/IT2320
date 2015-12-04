<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Week13Assignment.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Styles/Styles.css" rel="stylesheet" />

    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
     
        <title>Introduction to AngularJS</title>
</head>
<body>
    <form id="form1" runat="server">
  
         <script src="~/Scripts/Angular.js"></script>
        <script src="~/Scripts/Home.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        
        <div class="home">
            <h2>Home/GetBattingOrder</h2>

           <div ng-app="" ng-init="names=[
{name:'FirstPitch',batter:'Strike 1'},
{name:'SecondPitch',batter:'Strike 2'},
{name:'ThirdPitch',batter:'Strike 3'}]">


<ul>
  <li ng-repeat="x in names">
  {{ x.name + ', ' + x.batter }}</li>
</ul>

</div>
            <p>Your out!</p>

        </div> 
     
    </form>
</body>
</html>
