<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DemojQuery.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery.min.js"></script>
    <script>
        jQuery(document).ready(function () {
            $("#btn_show").click(function ()
            {

                var isChecked1 = $('#rdm').is(':checked');
                if (isChecked1)
                    res = "Male";
                var isChecked2 = $('#rdf').is(':checked');
                if (isChecked2)
                    res = "Female";

                alert("User Name: " + $("#txt_userName").val() +
                    "\n Father's Name: " + $("#txt_fatherName").val() +
                    "\n Mother's Name: " + $("#txt_motherName").val() +
                    "\n Address: " + $("#txt_address").val() +
                    "\n Pincode: " + $("#txt_pincode").val() +
                    "\n Mobile No.: " + $("#txt_mobileNo").val() +
                    "\n Gender: " + res
                    );
                   
                
            });
           
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <asp:Label ID="lbl_userName" runat="server" Text="User Name: "></asp:Label>
            <asp:TextBox ID="txt_userName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req_userName" runat="server" ControlToValidate="txt_userName" ErrorMessage="User Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbl_fatherName" runat="server" Text="Father's Name: "></asp:Label>
            <asp:TextBox ID="txt_fatherName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req_fatherName" runat="server" ControlToValidate="txt_fatherName" ErrorMessage="Father's Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbl_motherName" runat="server" Text="Mother's Name: "></asp:Label>
            <asp:TextBox ID="txt_motherName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req_motherName" runat="server" ControlToValidate="txt_motherName" ErrorMessage="Mother's Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbl_address" runat="server" Text="Address: "></asp:Label>
            <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req_address" runat="server" ControlToValidate="txt_address" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbl_pincode" runat="server" Text="Pincode: "></asp:Label>
            <asp:TextBox ID="txt_pincode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req_pincode" runat="server" ControlToValidate="txt_pincode" ErrorMessage="Pincode Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbl_mobileNo" runat="server" Text="Mobile Number: "></asp:Label>
            <asp:TextBox ID="txt_mobileNo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req_mobileNo" runat="server" ControlToValidate="txt_motherName" ErrorMessage="Mobile Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbl_gender" runat="server" Text="Gender: "></asp:Label>
            <asp:RadioButton ID="rdm" runat="server" GroupName="gender" Text="Male" />
            <asp:RadioButton ID="rdf" runat="server" GroupName="gender" Text="Female" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_show" runat="server" BackColor="#999999" ForeColor="Black" Text="SHOW DETAILS" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
        </div>
    </form>

</body>
</html>
