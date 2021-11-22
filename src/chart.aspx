<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="chart.aspx.cs" Inherits="chart" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="panel1" runat="server" style="margin-left:150px; margin-top:100px" >
    <asp:Chart ID="Chart1" runat="server"  
        Width="722px">
        <Series>
            <asp:Series Name="Series1" XValueMember="fname" YValueMembers="Download" 
                 ChartType="StackedColumn">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            <AxisX IsStartedFromZero="true" Title="File Name" ></AxisX>
            <AxisY IsStartedFromZero="true" Title="No.of Downloads"></AxisY>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

    </asp:Panel>
</asp:Content>

