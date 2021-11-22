<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Userdetail.aspx.cs" Inherits="Userdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
   .inlineBlock { display: inline-block; }
</style>
<style type="text/css">
.floatLeft { float: left; }
</style>
<style type="text/css">
.floatRight { float:right;
        margin-left: 3px;
    }
    .style1
    {
        width: 218px;
    }
    .style2
    {
        width: 219px;
    }
    .style4
    {
        width: 218px;
        height: 26px;
    }
    .style6
    {
        width: 219px;
        height: 26px;
        font-weight: bold;
        color: #000000;
        text-align: right;
        font-size: medium;
    }
    .style8
    {
        width: 218px;
        height: 16px;
    }
    .style10
    {
        width: 218px;
        height: 20px;
    }
    .style11
    {
        color: #FFFFFF;
    }
    .style12
    {
        width: 219px;
        height: 26px;
        font-weight: bold;
        color: #FFFFFF;
        text-align: right;
        font-size: medium;
    }
    .style13
    {
        width: 219px;
        height: 20px;
        font-weight: bold;
        color: #FFFFFF;
        text-align: right;
        font-size: medium;
    }
    .style14
    {
        width: 219px;
        text-align: right;
        font-size: medium;
        font-weight: bold;
        color: #FFFFFF;
    }
    .style15
    {
        width: 219px;
        height: 16px;
        font-weight: bold;
        color: #FFFFFF;
        text-align: right;
    }
</style>


<center> <asp:Label ID="Label5" runat="server" Text="WelCome to:"  
        Font-Bold="true" CssClass="style11" ></asp:Label>
  <asp:Label ID="Label6" runat="server" Text="WelCome to:"  
        CssClass="style11" ></asp:Label>
  </center>

<asp:Panel ID="Panel1" Width="48%" Height="148px" runat="server"  
        HorizontalAlign="Center"  CssClass="floatLeft" BorderStyle="Groove">
        
<table Height="148px">
<tr>
<td class="style15">

    Name</td>
<td class="style8">
<asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" 
        Font-Size="Medium"  CssClass="style11"></asp:Label>
    <span class="style11">&nbsp;</span></td>
</tr>
<tr>
<td class="style14">

    Email</td>
<td class="style1">

    

    <asp:Label ID="Label2" runat="server" Font-Bold="true" Font-Size="Medium" 
         Text="Label" CssClass="style11"></asp:Label>
    </td>
</tr>
<tr>
<td class="style13">

    User Name</td>
<td class="style10">

    <asp:Label ID="Label3" runat="server" Font-Bold="true" Font-Size="Medium" 
         Text="Label" CssClass="style11"></asp:Label>
    </td>
</tr>
<tr>
<td class="style12">

    Password</td>
<td class="style4">

    <asp:Label ID="Label4" runat="server" Font-Bold="true" Font-Size="Medium" 
         Text="Label" CssClass="style11"></asp:Label>

</td>
</tr>
<tr>
<td class="style6">

    &nbsp;</td>
<td class="style4">

    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="true" 
        onclick="LinkButton1_Click" >Edit Your Profile</asp:LinkButton>
    </td>
</tr>
<tr>
<td class="style2">

</td>
<td class="style1">

</td>
</tr>
<tr>
<td></td>
<td>

    &nbsp;</td>
</tr>

</table>
   

 </asp:Panel>

 <asp:Panel ID="Panel2" Width="50%" Height="150px" runat="server"  
        HorizontalAlign="Center"  CssClass="floatRight" BorderStyle="Groove">
        
<table Height="148px">
<tr>
<td class="style15">

    Name</td>
<td class="style8">

    <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="186px"></asp:TextBox>

</td>
</tr>
<tr>
<td class="style14">

    Email</td>
<td class="style1">

    

    <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="186px"></asp:TextBox>

    

</td>
</tr>
<tr>
<td class="style13">

    User Name</td>
<td class="style10">

    <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="186px"></asp:TextBox>

</td>
</tr>
<tr>
<td class="style12">

    Password</td>
<td class="style4">

    <asp:TextBox ID="TextBox4" runat="server" Height="17px" Width="186px"></asp:TextBox>

</td>
</tr>
<tr>
<td class="style6">

    &nbsp;</td>
<td class="style4">

    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    </td>
</tr>
<tr>
<td class="style2">

</td>
<td class="style1">

</td>
</tr>
<tr>
<td></td>
<td>

    &nbsp;</td>
</tr>

</table>


 </asp:Panel>



</asp:Content>

