<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="typingTutor.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <title></title>
    <style>
h1 {text-align: center;}
p {text-align: center;}
div {text-align: center;}
#btn_practice:hover{
    color:crimson;
}
#btn_leaderBoard:hover{
    color:crimson;
}
#btn_exit:hover{
    color:crimson;
}
#menu { 
    background-color:palegreen;
    height:fit-content;

}
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 59px;
        }
        .auto-style4 {
            width: 1277px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="menu">
            <h1>TYPING TUTOR</h1>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                <asp:Button ID="btn_practice" runat="server" Text="PRACTICE" align="left" BackColor="#FFFF99" BorderColor="Yellow" BorderStyle="None" Width="300px" OnClick="btn_practice_Click" />
                    </td>
                    <td class="auto-style4">
                <asp:Button ID="btn_leaderBoard" runat="server" Text="LEADER BOARD" BackColor="#FFFF99" BorderStyle="None" CssClass="auto-style1" Width="300px" />
                
                    </td>
                    <td>
                        <asp:Button ID="btn_exit" runat="server" BackColor="#FFFF99" BorderStyle="None" Text="EXIT" Width="300px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
