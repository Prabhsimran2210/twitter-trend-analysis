<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="twitter.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td align="justify">
                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White" Font-Italic="true" Font-Size="Large">One of the main features on the homepage of Twitter shows a list of top terms so-called trending topics at all times. These terms reflect the topics that are being discussed most at the very moment on the site’s fast-flowing stream of tweets. In order to avoid topics that are popular regularly (e.g., good morning or good night on certain times of the day), Twitter focuses on topics that are being discussed much more than usual, i.e., topics that recently suffered an increase of use, so that it trended for some reason.</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="justify">
                <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="White" Font-Italic="true" Font-Size="Large">Trending topics have attracted big interest not only among the users themselves but also among other information consumers such as journalists, real-time application developers, and social media researchers. Being able to know the top conversations being discussed at a given time helps keep updated about current affairs, and discover the main concerns of the community. Twitter defines trending topics as “topics that are immediately popular, rather than topics that have been popular for a while or on a daily basis”. However, no further evidence is known about the algorithm that extracts trending topics. It is assumed that the list is made up by terms that appear more frequently in the most recent stream of tweets than the usual expected.</asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
