<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="twitter.view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
         <style type="text/css">
        #TextArea1
        {
            height: 106px;
            width: 212px;
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
</style>
    </style>
</head>
<body background="NewFolder1/3d-hd-wallpaper-1080p.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="center" colspan="2">
                    <asp:Image ID="Image2" runat="server" Height="205px" 
                        ImageUrl="~/NewFolder1/DZSOmnzW4AAahIQ.jpg" Width="100%" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/NewFolder1/download.jpg" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label2" runat="server"  ForeColor="White" Font-Italic="True" 
                    Font-Size="Large" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label3" runat="server"  ForeColor="White" Font-Italic="True" 
                    Font-Size="Large" Font-Bold="True"></asp:Label>&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                     <asp:Label ID="Label5" runat="server" Text="USERNAME :-  "  ForeColor="White" 
                    Font-Italic="True" Font-Size="Large" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label4" runat="server"  ForeColor="White" Font-Italic="True" 
                    Font-Size="Large" Font-Bold="True"></asp:Label>&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                                    <asp:Label ID="Label6" runat="server" Text="E-MAIL :-  "  ForeColor="White" 
                    Font-Italic="True" Font-Size="Large" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label7" runat="server"  ForeColor="White" Font-Italic="True" 
                    Font-Size="Large" Font-Bold="True"></asp:Label>&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                                    <asp:Button ID="Button2" runat="server" Text="SEARCH TRENDS" CssClass="button" onclick="Button2_Click" 
                    />&nbsp;</td>
                <td align="center">
                                   <asp:Button ID="Button3" runat="server" Text="LOGOUT" CssClass="button" onclick="Button3_Click" 
                   />  &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
