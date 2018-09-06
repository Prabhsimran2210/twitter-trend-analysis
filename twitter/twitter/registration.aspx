<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="twitter.registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
    padding:8px 28px;
    text-align:center;
    text-decoration:none;
    display:inline-block;
    font-size:large;
    
}  
   .BarIndicatorweak
{
    color:Red;
    background-color:Red;
}
.BarIndicatoraverage
{
    color:Blue;
    background-color:Blue;
}
.BarIndicatorgood
{
    color:Green;
    background-color:Green;
}

.BarBorder
{
    border-style:solid;
    border-width:1px;
    padding:2px 2px 2px 2px;
    width:200px;
    vertical-align:middle;
}
        .style2
        {
            width: 468px;
        }
    </style>
    <script type="text/javascript">

        function contact(source, args) {
            if (document.getElementById().value.length < 10) {
                args.isvalid = false;

            }
            else {
                args.isvalid = true;
            }
        }
    </script>
</head>
<body background="NewFolder1/3d-hd-wallpaper-1080p.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="center" colspan="2">
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="White"   Text="REGISTRATION" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="FIRST NAME"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="LAST NAME"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label11" runat="server" ForeColor="White" Text="PROFILE PICTURE"></asp:Label>
                </td>
                <td align="center">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    &nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="White" 
                        ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="GENDER"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="White" 
                        Text="  MALE" GroupName="a" 
                        />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="White" 
                        Text="  FEMALE" GroupName="a"/>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="E-MAIL"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="INVALID E-MAIL" ForeColor="White" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" ForeColor="White" Text="CONTACT NUMBER"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" ForeColor="White" Text="USERNAME"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" ForeColor="White" Text="PASSWORD"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                     <asp:PasswordStrength ID="TextBox7_PasswordStrength" runat="server" 
                    Enabled="True" TargetControlID="TextBox7"
                    RequiresUpperAndLowerCaseCharacters="true"
        MinimumNumericCharacters="1" 
        MinimumSymbolCharacters="1" 
        MinimumUpperCaseCharacters="1" 
        PreferredPasswordLength="8"
        DisplayPosition="RightSide" 
        StrengthIndicatorType="BarIndicator" 
        BarBorderCssClass="BarBorder" 
StrengthStyles="BarIndicatorweak;BarIndicatoraverage;BarIndicatorgood;">

                </asp:PasswordStrength>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <br />
                    <asp:Label ID="Label9" runat="server" ForeColor="White" Text="CONFIRM PASSWORD"></asp:Label>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                        ErrorMessage="PASSWORD DID NOT MATCH" ForeColor="White"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="button" 
                        Text="REGISTER" onclick="Button1_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label10" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
