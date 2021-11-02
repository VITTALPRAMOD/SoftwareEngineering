<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="MultipleFileDownload.aspx.cs" Inherits="MultipleFileDownload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><asp:Label ID="label1"  Text="Welcome to:"  Font-Bold="true"  
            Font-Size="XX-Large"  runat="server" style="color: #FFFFFF"></asp:Label>
<asp:Label ID="label2"  Font-Bold="true" Font-Size="XX-Large" runat="server" 
            style="color: #FFFFFF"></asp:Label></center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style=" margin-left:300px; margin-top:100px" 
        EmptyDataText="No files available" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        Width="328px">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="chkSelect" runat="server" />
                <asp:Label ID="lblFilePath" runat="server" Text='<%# Eval("Value") %>' 
                    Visible="False"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Text" HeaderText="File Name" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
     <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
     <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
     <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
     <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#FFF1D4" />
     <SortedAscendingHeaderStyle BackColor="#B95C30" />
     <SortedDescendingCellStyle BackColor="#F1E5CE" />
     <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
<br />
<asp:Button ID="btnDownload" runat="server" Text="Download" style=" margin-left:400px"  OnClick="DownloadFiles" />
</asp:Content>

