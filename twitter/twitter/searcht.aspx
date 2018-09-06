<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searcht.aspx.cs" Inherits="twitter.WebForm6" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
       
        .style1
        {
            width: 100%;
        }
         .button
{
    background-color: White;
    border-style:double;
    color:#1565C0;
    padding:6px 18px;
    text-align:center;
    text-decoration:none;
    display:inline-block;
    font-size:large;
    
}  
    </style>
</head>
<body background="NewFolder1/3d-hd-wallpaper-1080p.jpg">
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td align="center" colspan="4">
                    <asp:Label ID="Label1" runat="server" Text="SEARCH TRENDS" ForeColor="White" 
                    Font-Italic="True" Font-Size="XX-Large" Font-Bold="True" Font-Underline="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Label ID="Label6" runat="server" ForeColor="White" 
                        Text="HERE YOU CAN VIEW THE SENTIMENT ANALYSIS OF  RECENT TWEETS (80 RECENT TWEETS) OF ANY (#)HASHTAG" Font-Size="Large" Font-Bold="True" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Button ID="Button4" runat="server" Text="BACK" CssClass="button" 
                        onclick="Button4_Click" CausesValidation="False"/>
                </td>
                <td align="left">
                    <asp:Button ID="Button5" runat="server" Text="CLEAR SEARCH" CssClass="button" 
                        onclick="Button5_Click" CausesValidation="False" />
                </td>
                <td align="right">
                    <asp:Button ID="Button3" runat="server" Text="GIVE FEEDBACK" CssClass="button" 
                        onclick="Button3_Click" CausesValidation="False" />
                </td>
                <td align="right">
                    <asp:Button ID="Button2" runat="server" Text="LOGOUT"  CssClass="button" 
                        onclick="Button2_Click" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Label ID="Label2" runat="server" Text="SEARCH HASHTAG" ForeColor="White" 
                    Font-Italic="True" Font-Size="Large" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="SEARCH" CssClass="button" 
                        onclick="Button1_Click"/>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="PLEASE ENTER A (#) HASHTAG" 
                        ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Label ID="Label3" runat="server" ForeColor="White" 
                        Text="SENTIMENT ANALYSIS(POSITIVE SCORE)" Font-Bold="true" Font-Italic="true" Font-Underline="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Chart ID="Chart1" runat="server" Width="1136px" 
                        DataSourceID="SqlDataSource1">
                        <series>
                            <asp:Series Name="Series1" ChartType="Line" XValueMember="Screen_Name" 
                        YValueMembers="Positive_Score">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Screen_Name], [Positive_Score] FROM [tweet]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Label ID="Label4" runat="server" ForeColor="White" 
                        Text="SENTIMENT ANALYSIS(NEGATIVE SCORE)" Font-Bold="true" Font-Italic="true" Font-Underline="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" 
                        Width="1136px">
                        <series>
                            <asp:Series Name="Series1" ChartType="Line" XValueMember="Screen_Name" 
                        YValueMembers="Negative_Score">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Screen_Name], [Negative_Score] FROM [tweet]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Label ID="Label5" runat="server" ForeColor="White" 
                        Text="SENTIMENT ANALYSIS(NEUTRAL SCORE)" Font-Bold="true" Font-Italic="true" Font-Underline="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" 
                        Width="1136px">
                        <series>
                            <asp:Series ChartArea="ChartArea1" ChartType="Line" Name="Series1" 
                                XValueMember="Screen_Name" YValueMembers="Neutral_Score">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Screen_Name], [Neutral_Score] FROM [tweet]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
