<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center> <asp:Label ID="Label5" runat="server" Text="WelCome to:" ForeColor="Black" 
            Font-Bold="true" style="color: #FFFFFF" ></asp:Label>
  <asp:Label ID="Label6" runat="server" Text="WelCome to:" ForeColor="Black" 
            style="color: #FFFFFF" ></asp:Label>
  </center>
<asp:GridView ID="grid1" style="margin-left:180px" runat="server" AutoGenerateColumns="False"
    BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
    CellPadding="4" GridLines="Horizontal" DataKeyNames="sno" OnRowCommand="Grid_click">
   
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
    <Columns>
       
    <asp:BoundField SortExpression="sno" HeaderText="ID" DataField="sno" 
            InsertVisible="False" ReadOnly="True" />
     <asp:BoundField SortExpression="name" HeaderText="Name" DataField="name" />
      
      
       <asp:BoundField SortExpression="Email" HeaderText="Email" DataField="Email" />
        <asp:BoundField SortExpression="usname" HeaderText="User Name" DataField="usname" />
       <asp:BoundField SortExpression="pwd" HeaderText="Password" DataField="pwd" />
       <asp:BoundField SortExpression="City" HeaderText="City" DataField="City" />
        <asp:ButtonField ButtonType="Button" CommandName="select" HeaderText="Request" Text="send" />
         
    </Columns>
</asp:GridView>

</asp:Content>

