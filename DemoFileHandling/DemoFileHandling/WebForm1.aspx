<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DemoFileHandling.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_enterText" runat="server" Text="Enter Text To Be Written:"></asp:Label>
            <asp:TextBox ID="txt_enterText" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl_readText" runat="server" ForeColor="Red" Text="The Contents Of File Are :"></asp:Label>
            <br />
            <asp:TextBox ID="txt_readText" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
        </div>
    </form>
</body>
</html>
