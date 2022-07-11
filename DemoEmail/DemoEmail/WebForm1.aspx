<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DemoEmail.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 181px;
        }
        .auto-style3 {
            margin-left: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_gUserName" runat="server" Text="Gamil Username: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_gUserName" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_gPassword" runat="server" Text="Gmail Password: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_gPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_to" runat="server" Text="To:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_to" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
             
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_subject" runat="server" Text="Subject: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_subject" runat="server"></asp:TextBox>
                    </td>
                </tr>
               
            </table>
        </div>
        <div class="auto-style3">
            <asp:Button ID="btn_sendEmail" runat="server" OnClick="btn_sendEmail_Click" Text="Send Email" />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
