<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="givefeed.aspx.cs" Inherits="twitter.givefeed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
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
                <td align="center">
                    <asp:Image ID="Image1" runat="server" Height="258px" 
                        ImageUrl="~/NewFolder1/twitter-organizational-structure-and-behavior-culture-7-638.jpg" 
                        Width="100%" />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Button ID="Button4" runat="server" Text="BACK" CssClass="button" 
                        onclick="Button4_Click"/>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label1" runat="server" ForeColor="White" 
                        Text="PLEASE PROVIDE YOUR FEEDBACK " Font-Bold="true" Font-Italic="true" Font-Underline="true" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label8" runat="server" ForeColor="White" Text="USERNAME :-" Font-Bold="true" Font-Size="Larger"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label2" runat="server" ForeColor="White" 
                        Text="1. Overall, how well does our website meet your needs?" Font-Bold="true" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" class="style2">
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Extremely well" GroupName="a" />
                    <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Very well" GroupName="a"/>
                    <asp:RadioButton ID="RadioButton3" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Somewhat well"  GroupName="a"/>
                    <asp:RadioButton ID="RadioButton4" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Not so well"  GroupName="a" />
                    <asp:RadioButton ID="RadioButton5" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Not at all well"  GroupName="a" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style2">
                    </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                     <asp:Label ID="Label3" runat="server" ForeColor="White" 
                        Text="2. How easy it was to find what you were looking for on our website?" Font-Bold="true" Font-Size="Large"></asp:Label> &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;   <asp:RadioButton ID="RadioButton6" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Extremely easy" GroupName="b" />
                    <asp:RadioButton ID="RadioButton7" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Very easy" GroupName="b"/>
                    <asp:RadioButton ID="RadioButton8" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Somewhat easy"  GroupName="b"/>
                    <asp:RadioButton ID="RadioButton9" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Not so easy"  GroupName="b" />
                    <asp:RadioButton ID="RadioButton10" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Not at all easy" GroupName="b" /></td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    <asp:Label ID="Label4" runat="server" ForeColor="White" 
                        Text="3. Did it take you more or less time than expected to find what you were looking for on our website?" Font-Bold="true" Font-Size="Large"></asp:Label> &nbsp;&nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;&nbsp;   <asp:RadioButton ID="RadioButton11" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="A lot less time" GroupName="c" />
                    <asp:RadioButton ID="RadioButton12" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="A little less time" GroupName="c"/>
                    <asp:RadioButton ID="RadioButton13" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="About what I expected"  GroupName="c"/>
                    <asp:RadioButton ID="RadioButton14" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="A little more time"  GroupName="c" />
                    <asp:RadioButton ID="RadioButton15" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="A lot more time" GroupName="c" /></td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    <asp:Label ID="Label5" runat="server" ForeColor="White" 
                        Text="4. How visually appealing is our website?" Font-Bold="true" Font-Size="Large"></asp:Label> &nbsp;&nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;&nbsp;   <asp:RadioButton ID="RadioButton16" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Extremely appealing" GroupName="d" />
                    <asp:RadioButton ID="RadioButton17" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Very appealing" GroupName="d"/>
                    <asp:RadioButton ID="RadioButton18" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Somewhat appealing"  GroupName="d"/>
                    <asp:RadioButton ID="RadioButton19" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Not so appealing"  GroupName="d" />
                    <asp:RadioButton ID="RadioButton20" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Not at all appealing" GroupName="d"/></td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    <asp:Label ID="Label6" runat="server" ForeColor="White" 
                        Text="5. How easy it is to understand  the information on  our website?" Font-Bold="true" Font-Size="Large"></asp:Label>&nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;&nbsp;   <asp:RadioButton ID="RadioButton21" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Extremely easy" GroupName="e" />
                    <asp:RadioButton ID="RadioButton22" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Very easy" GroupName="e"/>
                    <asp:RadioButton ID="RadioButton23" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Somewhat easy"  GroupName="e"/>
                    <asp:RadioButton ID="RadioButton24" runat="server" ForeColor="White"  Font-Size="Large"
                        Text="Not so easy"  GroupName="e" />
                    <asp:RadioButton ID="RadioButton25" runat="server" ForeColor="White"   Font-Size="Large"
                        Text="Not at all easy" GroupName="e" /></td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                     <asp:Label ID="Label7" runat="server" ForeColor="White" 
                        Text="6. Do you have any other comments about we can improve our website ?" Font-Bold="true" Font-Size="Large"></asp:Label>&nbsp;</td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp; &nbsp; 
                    <asp:TextBox ID="TextBox1" runat="server" Height="70px" TextMode="MultiLine" 
                        Width="534px"></asp:TextBox></td>
            </tr>
           
            <tr>
                <td align="left">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT"  CssClass="button" 
                        onclick="Button1_Click"/>
                </td>
            </tr>
           
            <tr>
                <td align="center">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td align="center">
                    <asp:Button ID="Button2" runat="server" Text="LOGOUT"  CssClass="button" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
