<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="twitter.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
        }
        .style5
        {
            width: 345px;
        }
        .button
{
    background-color: White;
    border-style:double;
    color:#1565C0;
    padding:8px 28px;
    text-align:center;
    text-decoration:none;
    display:inline-block;
    font-size:large;
    
}  
.x
    {
       color:White;
    }
    </style>
    <script type="text/javascript">
        function preventBack() {
            window.history.forward();
        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td align="center" colspan="2">
                <br />
                <asp:Label ID="Label2" runat="server" Text="LOGIN" ForeColor="White" 
                    Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <br />
                <asp:Label ID="Label3" runat="server" Text="USERNAME" ForeColor="White" 
                    Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td align="center">
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <br />
                <asp:Label ID="Label4" runat="server" Text="PASSWORD" ForeColor="White" 
                    Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td align="center">
                <br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Text="LOGIN" CssClass="button" 
                    onclick="Button1_Click" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="x" 
                    NavigateUrl="~/registration.aspx" EnableTheming="True" ForeColor="White" >NEW USER ! REGISTER HERE</asp:HyperLink>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
