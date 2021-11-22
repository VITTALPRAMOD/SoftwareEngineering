<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Uchart.aspx.cs" Inherits="Uchart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><asp:Label ID="label1"  Text="Welcome to:"  Font-Bold="true"  
            Font-Size="XX-Large"  runat="server" style="color: #FFFFFF"></asp:Label>
<asp:Label ID="label2"  Font-Bold="true" Font-Size="XX-Large" runat="server" 
            style="color: #FFFFFF"></asp:Label></center>
    <asp:panel ID="panel1" runat="server" style="margin-top:60px">
  <center>  <asp:Chart ID="Chart1" runat="server"   
        Width="666px">
        <Series>
            <asp:Series Name="Series1" XValueMember="fname" YValueMembers="Download" 
                 ChartType="StackedColumn">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            <AxisX Title="FileName" ></AxisX>
            <AxisY Title="No.of Downloads"></AxisY>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    </center>
    </asp:panel>
  
</asp:Content>

