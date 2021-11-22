<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:center; color: #FFFFFF;">Admin Login</h1>
<asp:Panel ID="panel1" runat="server" >
<table style="width: 893px; margin-top:80px">
<tr>
<td style="width: 364px">
</td>
<td style="width: 29px">
</td>
<td>
</td>
</tr>
<tr>
<td style="width: 364px">
</td>
<td style="width: 29px">
</td>
<td>
</td>
</tr>
<tr>
<td style="width: 364px">
</td>
<td style="width: 29px">
</td>
<td>
</td>
</tr>
<tr>
<td style="width: 364px; text-align: right; color: #FFFFFF;">
    <strong>User Name</strong></td>
<td style="width: 29px; text-align: center; font-weight: bold; color: #FFFFFF;">
    <strong>:</strong></td>
<td>
<asp:TextBox ID="text1" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td style="width: 364px">
</td>
<td style="width: 29px">
</td>
<td>
</td>
</tr>
<tr>
<td style="width: 364px; text-align: right; color: #FFFFFF;">
    <strong>Password</strong></td>
<td style="width: 29px; text-align: center; font-weight: bold; color: #FFFFFF;">
    <strong>:</strong></td>
<td>
    <asp:TextBox ID="text2" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td style="width: 364px">
</td>
<td style="width: 29px">
</td>
<td>
</td>
</tr>
<tr>
<td style="width: 364px">
<asp:Button ID="Button1"  runat="server" Text="Login" style="margin-left:330px" 
        Width="69px" onclick="Button1_Click" />
</td>
<td style="width: 29px">
</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td style="width: 364px">
</td>
<td style="width: 29px">
</td>
<td>
</td>
</tr>
<tr>
<td style="width: 364px">
</td>
<td style="width: 29px">
</td>
<td>
</td>
</tr>
</table>
</asp:Panel> 
</asp:Content>

