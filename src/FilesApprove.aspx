<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="FilesApprove.aspx.cs" Inherits="FilesApprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  
    AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
    DataKeyNames="sno" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" 
                ReadOnly="True" SortExpression="sno" />
            <asp:BoundField DataField="upby" HeaderText="upby" SortExpression="upby" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="fext" HeaderText="fext" SortExpression="fext" />
            <asp:BoundField DataField="fsize" HeaderText="fsize" SortExpression="fsize" />
            <asp:BoundField DataField="Dt" HeaderText="Dt" SortExpression="Dt" />
            <asp:BoundField DataField="enkey" HeaderText="enkey" SortExpression="enkey" />
            <asp:BoundField DataField="entxt" HeaderText="entxt" SortExpression="entxt" />
            <asp:BoundField DataField="Download" HeaderText="Download" 
                SortExpression="Download" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:key %>" 
    DeleteCommand="DELETE FROM [up] WHERE [sno] = @original_sno AND (([upby] = @original_upby) OR ([upby] IS NULL AND @original_upby IS NULL)) AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND (([fext] = @original_fext) OR ([fext] IS NULL AND @original_fext IS NULL)) AND (([fsize] = @original_fsize) OR ([fsize] IS NULL AND @original_fsize IS NULL)) AND (([Dt] = @original_Dt) OR ([Dt] IS NULL AND @original_Dt IS NULL)) AND (([enkey] = @original_enkey) OR ([enkey] IS NULL AND @original_enkey IS NULL)) AND (([entxt] = @original_entxt) OR ([entxt] IS NULL AND @original_entxt IS NULL)) AND [Download] = @original_Download" 
    InsertCommand="INSERT INTO [up] ([upby], [fname], [fext], [fsize], [Dt], [enkey], [entxt], [Download]) VALUES (@upby, @fname, @fext, @fsize, @Dt, @enkey, @entxt, @Download)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT [sno], [upby], [fname], [fext], [fsize], [Dt], [enkey], [entxt], [Download] FROM [up]" 
    
        UpdateCommand="UPDATE [up] SET [upby] = @upby, [fname] = @fname, [fext] = @fext, [fsize] = @fsize, [Dt] = @Dt, [enkey] = @enkey, [entxt] = @entxt, [Download] = @Download WHERE [sno] = @original_sno AND (([upby] = @original_upby) OR ([upby] IS NULL AND @original_upby IS NULL)) AND (([fname] = @original_fname) OR ([fname] IS NULL AND @original_fname IS NULL)) AND (([fext] = @original_fext) OR ([fext] IS NULL AND @original_fext IS NULL)) AND (([fsize] = @original_fsize) OR ([fsize] IS NULL AND @original_fsize IS NULL)) AND (([Dt] = @original_Dt) OR ([Dt] IS NULL AND @original_Dt IS NULL)) AND (([enkey] = @original_enkey) OR ([enkey] IS NULL AND @original_enkey IS NULL)) AND (([entxt] = @original_entxt) OR ([entxt] IS NULL AND @original_entxt IS NULL)) AND [Download] = @original_Download">
    <DeleteParameters>
        <asp:Parameter Name="original_sno" Type="Int32" />
        <asp:Parameter Name="original_upby" Type="String" />
        <asp:Parameter Name="original_fname" Type="String" />
        <asp:Parameter Name="original_fext" Type="String" />
        <asp:Parameter Name="original_fsize" Type="String" />
        <asp:Parameter Name="original_Dt" Type="String" />
        <asp:Parameter Name="original_enkey" Type="String" />
        <asp:Parameter Name="original_entxt" Type="String" />
        <asp:Parameter Name="original_Download" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="upby" Type="String" />
        <asp:Parameter Name="fname" Type="String" />
        <asp:Parameter Name="fext" Type="String" />
        <asp:Parameter Name="fsize" Type="String" />
        <asp:Parameter Name="Dt" Type="String" />
        <asp:Parameter Name="enkey" Type="String" />
        <asp:Parameter Name="entxt" Type="String" />
        <asp:Parameter Name="Download" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="upby" Type="String" />
        <asp:Parameter Name="fname" Type="String" />
        <asp:Parameter Name="fext" Type="String" />
        <asp:Parameter Name="fsize" Type="String" />
        <asp:Parameter Name="Dt" Type="String" />
        <asp:Parameter Name="enkey" Type="String" />
        <asp:Parameter Name="entxt" Type="String" />
        <asp:Parameter Name="Download" Type="Int32" />
        <asp:Parameter Name="original_sno" Type="Int32" />
        <asp:Parameter Name="original_upby" Type="String" />
        <asp:Parameter Name="original_fname" Type="String" />
        <asp:Parameter Name="original_fext" Type="String" />
        <asp:Parameter Name="original_fsize" Type="String" />
        <asp:Parameter Name="original_Dt" Type="String" />
        <asp:Parameter Name="original_enkey" Type="String" />
        <asp:Parameter Name="original_entxt" Type="String" />
        <asp:Parameter Name="original_Download" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

