<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="fview.aspx.cs" Inherits="fview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="panel1" runat="server" style="float:left; border-style:groove; margin-top:150px;">
<table style="width: 302px; height: 256px;">





<tr>

<td style="width: 208px; height: 23px;">
</td><td style="height: 23px; width: 232px;">
        &nbsp;</td>

</tr>
<tr>

<td style="width: 208px; height: 23px;">
</td><td style="height: 23px; width: 232px;">
        &nbsp;</td>

</tr>
<tr>

<td style="width: 208px; height: 23px;">
</td><td style="height: 23px; width: 232px;">
        &nbsp;</td>


</tr>
<tr>

<td style="width: 208px; text-align: right; color: #FFFFFF;">
   </td>
    
    <td style="width: 232px">
    
</td>

</tr>
<tr>

<td style="width: 208px">
</td><td style="width: 232px">
</td>

</tr>
<tr>

<td style="text-align: right; width: 208px; color: #FFFFFF;">
    <strong>File Name
    :
</strong>
</td><td style="width: 232px">
        <asp:Label ID="label3" runat="server" style="font-weight: 700; color: #FFFFFF;"></asp:Label>
</td>

</tr>
<tr>

<td style="width: 208px">
</td><td style="width: 232px">
</td>

</tr>
<tr>

<td style="width: 208px; text-align: right; height: 23px; color: #FFFFFF;">
    <strong>File ext:</strong></td>
    <td style="height: 23px; width: 232px;">
        <asp:Label ID="label4" runat="server" style="font-weight: 700; color: #FFFFFF;"></asp:Label>
</td>

</tr>
<tr>

<td style="width: 208px">
</td><td style="width: 232px">
</td>

</tr>
<tr>

<td style="width: 208px; text-align: right; font-weight: 700; color: #FFFFFF;">
    <strong>Date :</strong></td><td style="width: 232px">
    <asp:Label id="label2" runat="server" style="font-weight: 700; color: #FFFFFF;"></asp:Label>
</td>

</tr>
<tr>

<td style="width: 208px">
    &nbsp;</td>
    <td style="width: 232px">
</td>

</tr>



</table>
</asp:Panel>
<asp:Panel ID="panel2" runat="server" 
        style="float:right; border-style:groove; margin-top:150px; margin-right:150px; Width:426px;" >
    <asp:Image ID="Image1" runat="server" Height="146px" Width="192px" style= "margin-top:60px" />
        <asp:TextBox ID="Encrypt1" TextMode="MultiLine" runat="server" Height="146px" Width="192px" style=" margin-top:60px"  />
        <br />
        <br /><asp:Button  ID="Enclick" text="Encrypt" runat="server" 
        style="margin-left:150px" onclick="Enclick_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="entxt" runat="server" Text="file Encrypted" 
        style="color: #FFFFFF"></asp:Label>
</asp:Panel>
</asp:Content>

