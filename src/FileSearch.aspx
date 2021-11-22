<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="FileSearch.aspx.cs" Inherits="FileSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="Datalist1" runat="server" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" RepeatColumns="4" Width="1000px">
        <HeaderTemplate>
        <h1>File Details</h1>
        </HeaderTemplate>
        <ItemTemplate>
        <table style="border-style:groove">
        <tr>
        <td>
        File Id :
        </td>
        <td>
        <asp:Label ID="label1" runat="server" Text='<% # Eval("sno") %>' ></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        File Name:
        </td>
        <td>
        <asp:Label ID="label2" runat="server" Text='<% # Eval("fname") %>'></asp:Label>
        </td>
        </tr>
          <tr>
        <td>
        File Ext:
        </td>
        <td>
        <asp:Label ID="label3" runat="server" Text='<% # Eval("fext") %>'></asp:Label>
        </td>
        </tr>
          <tr>
        <td>
        File Size:
        </td>
        <td>
        <asp:Label ID="label4" runat="server" Text='<% # Eval("fsize") %>'></asp:Label>
        </td>
        </tr>
          <tr>
        <td>
        Upload Date:
        </td>
        <td>
        <asp:Label ID="label5" runat="server" Text='<% # Eval("Dt") %>'></asp:Label>
        </td>
        </tr>
         <tr>
        <td>
        Image:
        </td>
        <td>
       <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Solid" ImageUrl='<%# Bind("image", "~/upload/{0}") %>'
                      Width="120" Height="105px"  />
        </td>
        </tr>
        </table>
        </ItemTemplate>
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#CCCC99" />
    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#F7F7DE" />
    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

</asp:Content>

