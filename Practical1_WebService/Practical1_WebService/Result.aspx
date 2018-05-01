<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Practical1_WebService.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" href ="StyleSheet1.css" type ="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblGreet" runat="server"></asp:Label>
    
    </div>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblRate" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblFinal" runat="server"></asp:Label>
    </form>
</body>
</html>
