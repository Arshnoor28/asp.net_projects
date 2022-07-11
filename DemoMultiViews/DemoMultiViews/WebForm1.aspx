<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DemoMultiViews.WebForm1" %>

&nbsp;

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 140px;
        }
        .auto-style4 {
            width: 140px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            width: 398px;
        }
        .auto-style7 {
            width: 407px;
        }
        .auto-style8 {
            width: 398px;
            height: 26px;
        }
        .auto-style9 {
            width: 407px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            width: 264px;
        }
        .auto-style12 {
            width: 264px;
            height: 26px;
        }
        .auto-style13 {
            width: 177px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Choices</asp:ListItem>
                <asp:ListItem>Personal Information</asp:ListItem>
                <asp:ListItem>Examination</asp:ListItem>
                <asp:ListItem>Result</asp:ListItem>
                <asp:ListItem>Summary</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:View ID="View1" runat="server">
                                <asp:Label ID="Label1" runat="server" Text="Personal Information" ForeColor="#00CC00"></asp:Label>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblStudentName" runat="server" Text="Student's Name: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_studentName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="req_name" runat="server" ControlToValidate="txt_studentName" ErrorMessage="Student Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblFatherName" runat="server" Text="Father's Name:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_fatherName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="req_fatherName" runat="server" ControlToValidate="txt_fatherName" ErrorMessage="Father's Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:Label ID="lblMotherName" runat="server" Text="Mother's Name:"></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="txtmotherName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="req_motherName" runat="server" ControlToValidate="txtmotherName" ErrorMessage="Mother's Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblGender" runat="server" Text="Gender: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="list_gender" runat="server">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="req_gender" runat="server" ControlToValidate="list_gender" ErrorMessage="Gender Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Label ID="lblContact" runat="server" Text="Contact No.:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_contact" runat="server" TextMode="Phone"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="req_contact" runat="server" ControlToValidate="txt_contact" ErrorMessage="Contact number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:View>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:View ID="View2" runat="server">
                                <asp:Label ID="Label2" runat="server" Text="Examination" ForeColor="#00CC00"></asp:Label>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Label ID="lblSubject" runat="server" ForeColor="#000099" Text="Subject"></asp:Label>
                                        </td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lbl_Internal" runat="server" ForeColor="#000099" Text="Internal Assessment Marks"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_external" runat="server" ForeColor="#000099" Text="External Assessment Marks"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Physics</td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="txt_intPhy" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_intPhy" runat="server" ControlToValidate="txt_intPhy" ErrorMessage="Internal Physics Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_intPhy" runat="server" ControlToValidate="txt_intPhy" ErrorMessage="0-25" ForeColor="Red" MaximumValue="25" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_extPhy" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_extPhy" runat="server" ControlToValidate="txt_extPhy" ErrorMessage="External Physics Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_extPhy" runat="server" ControlToValidate="txt_extPhy" ErrorMessage="0-75" ForeColor="Red" MaximumValue="75" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">Chemistry</td>
                                        <td class="auto-style9">
                                            <asp:TextBox ID="txt_intChem" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_intChem" runat="server" ControlToValidate="txt_intChem" ErrorMessage="Internal Chemistry Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_intChem" runat="server" ControlToValidate="txt_intChem" ErrorMessage="0-25" ForeColor="Red" MaximumValue="25" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                        <td class="auto-style10">
                                            <asp:TextBox ID="txt_extChem" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_extChem" runat="server" ControlToValidate="txt_extChem" ErrorMessage="External Chemistry Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_extChem" runat="server" ControlToValidate="txt_extChem" ErrorMessage="0-75" ForeColor="Red" MaximumValue="75" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Mathematics</td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="txt_intMath" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_intMath" runat="server" ControlToValidate="txt_intMath" ErrorMessage="Internal Mathematics Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_intMath" runat="server" ControlToValidate="txt_intMath" ErrorMessage="0-25" ForeColor="Red" MaximumValue="25" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_extMath" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_extMath" runat="server" ControlToValidate="txt_extMath" ErrorMessage="External Mathematics Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_extMath" runat="server" ControlToValidate="txt_extMath" ErrorMessage="0-75" ForeColor="Red" MaximumValue="75" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">English</td>
                                        <td class="auto-style9">
                                            <asp:TextBox ID="txt_intEng" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_intEng" runat="server" ControlToValidate="txt_intEng" ErrorMessage="Internal English Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_intEng" runat="server" ControlToValidate="txt_intEng" ErrorMessage="0-25" ForeColor="Red" MaximumValue="25" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                        <td class="auto-style10">
                                            <asp:TextBox ID="txt_extEng" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_extEng" runat="server" ControlToValidate="txt_extEng" ErrorMessage="External English Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_extEng" runat="server" ControlToValidate="txt_extEng" ErrorMessage="0-75" ForeColor="Red" MaximumValue="75" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Optional</td>
                                        <td class="auto-style7">
                                            <asp:TextBox ID="txt_intOpt" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_intOpt" runat="server" ControlToValidate="txt_intOpt" ErrorMessage="Internal Optional Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_intOpt" runat="server" ControlToValidate="txt_intOpt" ErrorMessage="0-25" ForeColor="Red" MaximumValue="25" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_extOpt" runat="server" TextMode="Number"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="req_extOpt" runat="server" ControlToValidate="txt_extOpt" ErrorMessage="External Optional Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RangeValidator ID="range_extOpt" runat="server" ControlToValidate="txt_extOpt" ErrorMessage="0-75" ForeColor="Red" MaximumValue="75" MinimumValue="0"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" />
                            </asp:View>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:View ID="View3" runat="server">
                                <asp:Label ID="Label3" runat="server" Text="Result" ForeColor="#00CC00"></asp:Label>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label5" runat="server" Text="Student's Name:"></asp:Label>
                                        </td>
                                        <td class="auto-style10">
                                            <asp:Label ID="lbl_resultName" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                            <asp:Label ID="Label6" runat="server" Text="Total Marks(Max. Marks=500):"></asp:Label>
                                        </td>
                                        <td class="auto-style10">
                                            <asp:TextBox ID="txt_totalMarks" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label7" runat="server" Text="Percentage: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txt_percentage" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:View ID="View4" runat="server">
                                <asp:Label ID="Label4" runat="server" Text="Summary" ForeColor="#00CC00"></asp:Label>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style13">Student Name:</td>
                                        <td>
                                            <asp:Label ID="lbl_StuName" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Father&#39;s Name: </td>
                                        <td>
                                            <asp:Label ID="lbl_fName" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Mother&#39;s Name:</td>
                                        <td>
                                            <asp:Label ID="lbl_mName" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Gender: </td>
                                        <td>
                                            <asp:Label ID="lbl_Gender" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Contact:</td>
                                        <td>
                                            <asp:Label ID="lbl_contact" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Percentage: </td>
                                        <td>
                                            <asp:Label ID="lbl_percentage" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                        </td>
                    </tr>
                </table>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
