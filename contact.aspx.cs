using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            string toAddress = to.Text.Replace("\r\n", ", ");
            string[] toArray = toAddress.Split(',');

            if (validateAddress(senderEmail.Text) == false)
            {
                emailForm.Visible = false;
                sentEmail.Visible = true;
                sentEmail.Text = "<p>Sender's email was derped.</p>";
            }
            else if (to.Text.Length == 0 || !checkAddresses(toArray))
            {
                emailForm.Visible = false;
                sentEmail.Visible = true;
                sentEmail.Text = "One or more of the 'To' email address does not appear to be valid. Click your browser's back button to return to the message";
            }

            else
            {
                MailAddress messageFrom = new MailAddress(senderEmail.Text, senderName.Text);
                MailAddress messageTo = new MailAddress(to.Text);
                MailMessage emailMessage = new MailMessage(messageFrom, messageTo);
                string messageSubject = subject.Text;
                string messageBody = message.Text;
                emailMessage.Subject = messageSubject;
                emailMessage.Body = messageBody;

                SmtpClient mailClient = new SmtpClient();
                mailClient.UseDefaultCredentials = true;
                mailClient.Send(emailMessage);

                emailForm.Visible = false;
                sentEmail.Visible = true;

                sentEmail.Text = "<p>The following message was sent successfully </p> <br />";
                sentEmail.Text += "<p><strong>From</strong>: "
                                    + messageFrom.DisplayName + ", "
                                    + messageFrom.Address + ", "
                                    + "</p>"
                                    + "<p><strong>To</strong>: "
                                    + messageTo.Address +
                                    "</p>"
                                    + "<p><strong>Subject</strong>: "
                                    + emailMessage.Subject +
                                    "</p>"
                                    + "<p><strong>Body</strong>: "
                                    + emailMessage.Body +
                                    "</p>";
            }
        }
    }


    protected Boolean validateAddress(string address)
    {

        Regex atSymbolPattern = new Regex("@");
        Match atSymbolMatch = atSymbolPattern.Match(address);
        Regex identifierPattern = new Regex(@"\..{2,24}");
        Match identifierMatch = identifierPattern.Match(address);

        if (atSymbolMatch.Success
            && address.IndexOf(".") > 0
            && identifierMatch.Success)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    protected Boolean checkAddresses(string[] address)
    {
        for (int i = 0; i < address.Length; i++)
        {
            address[i].TrimEnd(' ');
            if (!validateAddress(address[i]))
                return false;
        }
        return true;
    }
}

