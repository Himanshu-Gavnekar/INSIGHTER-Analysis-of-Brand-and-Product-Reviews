<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Res1.aspx.cs" Inherits="WebSenti.Res1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>Result</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                Positive Sentiment Review
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="331px" Palette="Bright">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="FileName" YValueMembers="Pos" IsValueShownAsLabel="True">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1" AlignmentOrientation="All" BorderColor="Transparent" IsSameFontSizeForAllAxes="True">
                            
                            <AxisY>
                                <MajorGrid LineWidth="0" />
                            </AxisY>
                            <AxisX>
                                <MajorGrid LineWidth="0" />
                            </AxisX>
                            
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sentidbConnectionString %>" SelectCommand="SELECT * FROM [SentiTable]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Negetive Sentiment Review
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Width="331px" Palette="SemiTransparent">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="FileName" YValueMembers="Neg" IsValueShownAsLabel="True">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                             
                            <AxisY>
                                <MajorGrid LineWidth="0" />
                                <MinorGrid LineWidth="0" />
                            </AxisY>
                            <AxisX>
                                <MajorGrid LineWidth="0" />
                                <MinorGrid LineWidth="0" />
                            </AxisX>
                             
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Neutral Sentiment Review <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" Width="331px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="FileName" YValueMembers="Nutr" IsValueShownAsLabel="True">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                           
                            <AxisY>
                                <MajorGrid LineWidth="0" />
                            </AxisY>
                            <AxisX>
                                <MajorGrid LineWidth="0" />
                            </AxisX>
                           
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource1">
                    <Series>
                        <asp:Series ChartType="Pie" Name="Series1" XValueMember="FileName" YValueMembers="Pos" IsValueShownAsLabel="True">
                        </asp:Series>
                    </Series>

                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                             
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource1" Width="424px">
                    <Series>
                        <asp:Series ChartType="Line" Name="Positive" XValueMember="FileName" YValueMembers="Pos">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" ChartType="Line" Name="Negetive" XValueMember="FileName" YValueMembers="Neg">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" ChartType="Line" Name="Neutral" XValueMember="FileName" YValueMembers="Nutr">
                        </asp:Series>
                    </Series>
                    <legends>
                                     <asp:Legend Alignment="Center" Docking="Bottom"
                                             IsTextAutoFit="False" Name="Default"
                                              LegendStyle="Row" />
                                </legends>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisY>
                                <MajorGrid LineWidth="0" />
                            </AxisY>
                            <AxisX>
                                <MajorGrid LineWidth="0" />
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
