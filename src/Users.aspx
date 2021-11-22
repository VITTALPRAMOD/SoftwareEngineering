<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<asp:panel ID="panel1" runat="server" style=" margin-top:100px">
    <asp:ListView ID="list1" runat="server" DataSourceID="SqlDataSource1" style=" color:White">
     <LayoutTemplate> 
                <table id="Table1" runat="server" class="TableCSS"> 
                    <tr id="Tr1" runat="server" class="TableHeader"> 
                        <td id="Td1" runat="server" style=" color:White; font-size:x-large">Sno</td> 
                        <td id="Td2" runat="server" style=" color:White; font-size:x-large">Name</td> 
                        <td id="Td3" runat="server" style=" color:White; font-size:x-large">Email</td> 
                        <td id="Td4" runat="server" style=" color:White; font-size:x-large">User Name</td> 
                        <td id="Td5" runat="server" style=" color:White; font-size:x-large">Password</td> 
                        <td id="Td8" runat="server" style=" color:White; font-size:x-large">Date of Birth</td> 
                        <td id="Td7" runat="server" style=" color:White; font-size:x-large">City</td> 
                    </tr> 
                    <tr id="ItemPlaceholder" runat="server"> 
                    </tr> 
                    <tr id="Tr2" runat="server"> 
                        <td id="Td6" runat="server" colspan="2"> 
                            <asp:DataPager ID="DataPager1" runat="server"> 
                                <Fields> 
                                    <asp:NextPreviousPagerField ButtonType="Link" /> 
                                    <asp:NumericPagerField /> 
                                    <asp:NextPreviousPagerField ButtonType="Link" /> 
                                </Fields> 
                            </asp:DataPager> 
                        </td> 
                    </tr> 
                </table> 
            </LayoutTemplate> 
            <ItemTemplate> 
                <tr class="TableData"> 
                    <td> 
                        <asp:Label  
                            ID="Label1" 
                            runat="server" style=" color:White"
                            Text='<%# Eval("sno")%>' 
                            > 
                        </asp:Label> 
                    </td> 
                    <td> 
                        <asp:Label  
                            ID="Label2" 
                            runat="server" style=" color:White" 
                            Text='<%# Eval("name")%>'> 
                        </asp:Label> 
                    </td>
                    <td> 
                        <asp:Label  
                            ID="Label3" 
                            runat="server"  style=" color:White"
                            Text='<%# Eval("Email")%>'> 
                        </asp:Label> 
                    </td>
                    <td> 
                        <asp:Label  
                            ID="Label4" 
                            runat="server"  style=" color:White"
                            Text='<%# Eval("usname")%>'> 
                        </asp:Label> 
                    </td>
                    <td> 
                        <asp:Label  
                            ID="Label5" 
                            runat="server"  style=" color:White"
                            Text='<%# Eval("pwd")%>'> 
                        </asp:Label>
                    </td> 
                    <td> 
                        <asp:Label  
                            ID="Label6" 
                            runat="server" style=" color:White"
                            Text='<%# Eval("Dob")%>'> 
                        </asp:Label>
                    </td> 
                    <td> 
                        <asp:Label  
                            ID="Label7" 
                            runat="server" style=" color:White"
                            Text='<%# Eval("city")%>'> 
                        </asp:Label>
                    </td> 
                </tr>                 
            </ItemTemplate> 
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:key %>" 
        SelectCommand="SELECT * FROM [regis]"></asp:SqlDataSource>
        </asp:panel>
        </center>
    </asp:Content>

