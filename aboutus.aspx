<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="aboutus.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <link rel="Stylesheet" type="text/css" href="css.css" />
    <style type="text/css">
        #leftcolumn 
        {
            height: 500px;
            width: 400px;
          
            float: left;
            margin-left: 170px;
        }
        #rightcolumn 
        {
            height: 500px;
            width: 400px;

            float: left;   
            margin-left: 60px;
        }
        .aboutimage
        {
            height: 300px;
            width: 300px;
            margin: 10px auto;
        }
        .headertext 
        {
            font-family: Sans-Serif;
            font-weight: bold;
            text-align: center;   
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <div id="header"><img src="header_photo.png" alt="master shake" /></div>
     <!--NAVIGATION STARTS HERE -->
        <nav>
            <ul>
                <li><a href="default.aspx">Home</a></li>
                <li><a href="Buy.aspx">Buy</a></li>
                <li><a href="game.aspx">Where's Shake?</a></li>
                <li><a href="contact.aspx">Contact</a></li>
                <li><a href="">About Us</a></li>
            </ul>
        </nav>
    <!-- NAVIGATION ENDS HERE -->
    <div class="maincontent">
                <!-- LEFT COLUMN -->
                <div id="leftcolumn">
                    <div class="aboutimage">
                        
                        <img src="danimage.jpg" alt="Dan image" height="300" width="300" />
                        <h3 class="headertext">Dan Arboleda</h3>    
                        <p id="P1">Dan Arboleda is a man of few words, but the words he speaks
                        are full of meaning and sometimes insults. You can find Dan typically
                        wearing black and giving Mikey a hard time, but it's all in good fun.
                        Dan likes to keep it metal \m/</p>
                    </div>
                </div>
                <!-- LEFT COLUMN -->
                
                <!-- RIGHT COLUMN -->
                <div id="rightcolumn">
                    <div class="aboutimage">
                        <img src="mattimage.jpg" alt="Dan image" height="300" width="300" />
                        <h3 class="headertext">Matt Kinne</h3>
                        <p id="mainpara">Matthew knows phones, the way the NSA knows about your browsing history. A generally unflappable human being, 
                        he has never panicked is his life. <i>Not. Once.</i>, it is also possible that he is mostly incapable of rage except as it pertains 
                        to the game of ping pong.</p>
                    </div>
                </div>
                <!-- RIGHT COLUMN -->
    
    </div>
    
    </div>
    <footer>
        <p>&copy; Datt Man Products, LLC</p>
        <p>Datt Man Products, LLC is not responsible for whatever opinions and remarks come from this website.</p>
    
    </footer>
    </form>
</body>
</html>
