<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="twitter.WebForm1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <table class="style1">
        <tr>
            <td align="right">
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:Timer ID="Timer1" runat="server" Interval="10000" ontick="Timer1_Tick">
                </asp:Timer>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                
            </td>
        </tr>
        <tr>
            <td align="justify">
                <asp:Label ID="Label1" runat="server" ForeColor="White" Font-Italic="true" Font-Size="Large">Trending topics have attracted big interest not only among the users themselves but also among other information consumers such as journalists, real-time application developers, and social media researchers. Being able to know the top conversations being discussed at a given time helps keep updated about current affairs, and discover the main concerns of the community. Twitter defines trending topics as “topics that are immediately popular, rather than topics that have been popular for a while or on a daily basis”. However, no further evidence is known about the algorithm that extracts trending topics. It is assumed that the list is made up by terms that appear more frequently in the most recent stream of tweets than the usual expected.</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Image ID="Image1" runat="server" Height="305px" 
                    ImageUrl="~/NewFolder1/trend-analysis-7-638.jpg" Width="100%" />
            </td>
        </tr>
    </table>
 
</asp:Content>
