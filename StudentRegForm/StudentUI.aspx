<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentUI.aspx.cs" Inherits="StudentRegForm.StudentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form2" runat="server" method="Get">
<div>
<fieldset>
<legend>Student Registration Form </legend>
<table>
<tr>
<td>
<asp:Label ID="Label1" runat="server" Text="Name : ">
</asp:Label>
<asp:Label ID="Label2" runat="server" Text=" *"
ForeColor="red"></asp:Label>
</td>
<td>
<asp:TextBox ID="nameTextBox" autofocus
required placeholder="Your Name" runat="server"
ToolTip="Please enter your name" ></asp:TextBox>
</td>
</tr>
<tr>
<td>
<asp:Label ID="Label3" runat="server"
Text="Registration Number: "></asp:Label>
<asp:Label ID="Label4" runat="server" Text=" *"
ForeColor="red"></asp:Label>
</td>
   
<td>
<asp:TextBox ID="regTextBox" required
runat="server" placeholder="Registration Number"
ToolTip="Please enter your registration number"
></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td>
<asp:Button ID="saveButton" runat="server" Text="Save" ToolTip="Save" ForeColor="Blue" OnClick="saveButton_Click" />
</td>
</tr>
<tr>
<td>
<asp:Label ID="messageLabel" runat="server"
ForeColor="Gray"></asp:Label>

</td>
</tr>
</table>
</fieldset>
</div>
</form>
</body>
</html>
