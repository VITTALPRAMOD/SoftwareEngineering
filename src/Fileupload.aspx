<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Fileupload.aspx.cs" Inherits="Fileupload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><asp:Label ID="label3"  Text="Welcome to:"  Font-Bold="true"  
            Font-Size="XX-Large"  runat="server" style="color: #FFFFFF"></asp:Label>
<asp:Label ID="label4"  Font-Bold="true" Font-Size="XX-Large" runat="server" 
            style="color: #FFFFFF"></asp:Label></center>
    <h1 style="color:White; text-align:center">File Upload</h1>
    <asp:Panel ID="panel1" runat="server" style="float:left">
<table style="width: 559px">
<tr>

<td style="width: 208px">
</td><td style="width: 232px">
</td>

</tr>
<tr>

<td style="width: 208px; text-align: right; color: #FFFFFF;">
    <strong>File ID :</strong></td>
    
    <td style="width: 232px">
    <asp:Label id="label1" runat="server" style="font-weight: 700; color: #FFFFFF;"></asp:Label>
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
<asp:TextBox ID="text1" runat="server" ></asp:TextBox>
</td>

</tr>
<tr>

<td style="width: 208px">
</td><td style="width: 232px">
</td>

</tr>
<tr>

<td style="width: 208px; text-align: right; height: 23px; color: #FFFFFF;">
    <strong>File :</strong></td>
    <td style="height: 23px; width: 232px;">
    <asp:FileUpload ID="fileupload1" runat="server" />
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
    <asp:Label ID="lbl_encrypt" runat="server"></asp:Label></td>
    <td style="width: 232px">
</td>

</tr>
<tr>

<td style="width: 208px; height: 23px;">
</td><td style="height: 23px; width: 232px;">
        <asp:Button ID="Button1" runat="server" Text="Upload!" 
            onclick="Button1_Click" />
</td>

</tr>


</table>
</asp:Panel>
<asp:Panel ID="panel2" runat="server" style="float:right">
    <asp:Image ID="Image1" runat="server" Height="146px" Width="192px" />
        <asp:TextBox ID="Encrypt1" TextMode="MultiLine" runat="server" Height="146px" Width="192px"  />
        <br />
        <br /><asp:Button  ID="Enclick" text="Encrypt" runat="server" 
        style="margin-left:150px" onclick="Enclick_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="entxt" runat="server" Text="file Encrypted" 
        style="color: #FFFFFF"></asp:Label>
</asp:Panel>
</asp:Content>

