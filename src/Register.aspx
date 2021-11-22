<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style=" text-align:center; color: #FFFFFF;">Registration Form</h1>
    <asp:Panel ID="panel1" runat="server" style=" margin-top:80px">
<table id="table1" >

<tr>
<td style="width: 245px; height: 24px;">

</td>
<td style="width: 188px; color: #FFFFFF; height: 24px;">

    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Name :</b></td>
<td style="height: 24px">

    <asp:TextBox ID="TextBox1" runat="server" Width="167px" placeholder="Enter Your Name" required></asp:TextBox>

</td>
</tr>
<tr>
<td style="width: 245px">

</td>
<td style="width: 188px; color: #FFFFFF;">

    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <span style="color: #FFFFFF">Email :</span></b></td>
<td>

    <asp:TextBox ID="TextBox2" runat="server" Width="167px" placeholder="Enter Your Email Id" required></asp:TextBox>
</td>
</tr>
<tr>
<td style="width: 245px">

</td>
<td style="width: 188px; color: #FFFFFF;">

    <b>&nbsp; <span style="color: #FFFFFF">Create User Name :</span></b></td>
<td>

    <asp:TextBox ID="TextBox3" runat="server" Width="167px" placeholder="Enter Your User Name" required></asp:TextBox>

</td>
</tr>
<tr>
<td style="width: 245px">

</td>
<td style="width: 188px; color: #FFFFFF;">

    <b>&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FFFFFF">Create Password :</span></b></td>
<td>

    <asp:TextBox ID="TextBox4" runat="server" Width="167px" placeholder="Generate Your Password" TextMode="Password" required></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
    ControlToValidate="TextBox5"
    CssClass="ValidationError"
    ControlToCompare="TextBox4"
    ErrorMessage="Pwd Does not Match" 
    ToolTip="Password must be the same" style="font-weight: 700; color: #FF0000" />
</td>
</tr>
<tr>
<td style="width: 245px">

</td>
<td style="width: 188px; color: #FFFFFF;">

    <b>&nbsp;&nbsp; <span style="color: #FFFFFF">Confirm Password :</span></b></td>
<td>

    <asp:TextBox ID="TextBox5" runat="server" Width="167px" placeholder="Re-Enter Password" TextMode="Password" required></asp:TextBox>
     
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="&laquo; (Required)" 
    ControlToValidate="TextBox5"
    CssClass="ValidationError"
    ToolTip="Compare Password is a REQUIRED field" style="color: #FFFFFF">
  </asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td style="width: 245px">

</td>
<td style="width: 188px; color: #FFFFFF;">

    <b>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
        style="color: #FFFFFF">Date Of Birth :</span></b></td>
<td>

    <asp:TextBox ID="TextBox6" runat="server" Width="167px" placeholder="Choose Your Date Of Birth" required></asp:TextBox>
  
</td>
</tr>
<tr>
<td style="width: 245px; height: 30px;">

</td>
<td style="width: 188px; color: #FFFFFF; height: 30px;">

    <b>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
    <span style="color: #FFFFFF">City :</span></b></td>
<td style="height: 30px">
    <asp:TextBox ID="TextBox7" runat="server" Width="167px" placeholder="Enter Your City" required></asp:TextBox>

</td>
</tr>

<tr>
<td style="width: 245px"></td>
<td style="width: 188px">
    &nbsp;</td>
<td>
    <asp:Button ID="Signup" runat="server" 
        Text="Submit" Height="40px"
        Width="174px" onclick="Signup_Click"/>
    </td>
</tr>
</table>
</asp:Panel>
</asp:Content>

