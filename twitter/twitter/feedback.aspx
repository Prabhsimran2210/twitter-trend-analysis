<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="twitter.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="style1">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="FEEDBACKS" ForeColor="White" Font-Bold="true" Font-Italic="true" Font-Size="XX-Large" Font-Underline="true" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" ForeColor="White" 
                        Text="POSITIVE SCORE FOR WEBSITE" Font-Bold="true" Font-Italic="true" Font-Underline="true"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
                    Width="536px">
                    <Series>
                        <asp:Series ChartType="Line" Name="Series1" XValueMember="Username" 
                            YValueMembers="Positive_Score">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Username], [Positive_Score] FROM [feed]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label4" runat="server" ForeColor="White" 
                        Text="NEUTRAL SCORE FOR WEBSITE" Font-Bold="true" Font-Italic="true" Font-Underline="true"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" 
                    Width="536px">
                    <Series>
                        <asp:Series ChartType="Line" Name="Series1" XValueMember="Username" 
                            YValueMembers="Neutral_Score">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Username], [Neutral_Score] FROM [feed]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
