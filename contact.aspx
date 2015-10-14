<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Contact Us</title>
    <link href="css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    #contactform 
    {
        height: 500px;
        width: 500px;
        margin: 0 auto;
    }
    #centerButton 
    {
        height: 20px;
        width: 70px;
        margin-top: -190px;
        margin-right: auto;
        margin-left: auto;
    }
    </style>
</head>
<body>
    <div id="wrapper">
        <div id="header"><img src="header_photo.png" alt="master shake" /></div>
     <!--NAVIGATION STARTS HERE -->
        <nav>
            <ul>
                <li><a href="default.aspx">Home</a></li>
                <li><a href="Buy.aspx">Buy</a></li>
                <li><a href="game.aspx">Where's Shake?</a></li>
                <li><a href="">Contact</a></li>
                <li><a href="aboutus.aspx">About Us</a></li>
            </ul>
        </nav>
    <!-- NAVIGATION ENDS HERE -->
    <div class="maincontent">
    
   <form id="mailForm" runat="server">
    <div id="contactform">
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
           
                            <td align="left" valign="top">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="text">
                                    <tr>
                                        <td width="5" rowspan="4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                                   
                                    <tr>
                                        <td align="left" valign="top">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:Panel ID="emailForm" runat="server">
                                                <table width="500" border="0" cellpadding="2" cellspacing="0" class="text">
                                                    <tr>
                                                        <td width="64" align="right">
                                                            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="**" ControlToValidate="senderName">**</asp:RequiredFieldValidator>From:
                                                        </td>
                                                        <td width="294">
                                                            <asp:TextBox ID="senderName" runat="server" Width="255px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="64" align="right">
                                                            <asp:RequiredFieldValidator ID="fromValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                                                                ControlToValidate="senderEmail">**</asp:RequiredFieldValidator>E-mail:</td>
                                                        <td width="294">
                                                            <asp:TextBox ID="senderEmail" runat="server" Width="255px" />
                                                        </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:RequiredFieldValidator ID="toValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                                                                ControlToValidate="to">**</asp:RequiredFieldValidator>To:</td>
                                                        <td>
                                                            <asp:TextBox ID="to" runat="server" Width="255px" Height="30px" TextMode="MultiLine" />
                                                        </td>
                                                    </tr>
                                                 
                                               
                                                    <tr>
                                                        <td align="right">
                                                            <asp:RequiredFieldValidator ID="subjectValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                                                                ControlToValidate="subject">**</asp:RequiredFieldValidator>Subject:</td>
                                                        <td>
                                                            <asp:TextBox ID="subject" runat="server" Width="255px" />
                                                        </td>
                                                    </tr>
                                                    <td align="right" valign="top">
                                                        <asp:RequiredFieldValidator ID="messageValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                                                            ControlToValidate="message">**</asp:RequiredFieldValidator>Message:</td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="message" runat="server" Width="255px" TextMode="MultiLine" Height="80px" />
                                                    </td>
                                                   
                                                </table>
                                            </asp:Panel>
                                            <asp:Literal ID="sentEmail" runat="server" Visible="False">
                                            </asp:Literal>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    
                                </table>
                            </td>
                            </table>
                            <div id="centerButton">        
                                        <asp:button ID="Button1" text="Submit" runat="server" />
                                    </div>
                                    </div>
    </div>
    </form>
      <footer>
        <p>&copy; Datt Man Products, LLC</p>
        <p>Datt Man Products, LLC is not responsible for whatever opinions and remarks come from this website.</p>
    
    </footer>
    </div>
</body>
</html>
