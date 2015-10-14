<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your home for stuff</title>
    <link rel="Stylesheet" type="text/css" href="css.css" />
    <style type="text/css">
    #mainpara 
    {
        padding: 5px 100px;
        font-style: italic;
        font-size: 1.3em;
    }
     #leftcolumn 
    {
        height: 300px;
        width: 450px;
      
        float: left;
        margin-left: 120px;
    }
    #rightcolumn 
    {
        height: 300px;
        width: 450px;
        padding-left: 60px;
        float: left;   
        margin-left: 60px;
    }
    #guym
    {
        color: Red;
        font-weight: bold;
        font-family: Sans-serif;
        font-size: 1.9em;
    }
    #P1
    {
        font-size: 1.4em;
    }
    #h1text
    {
        font-family: Sans-Serif; 
        margin: 10px; 
        padding-top: 20px;
        font-size: 3em;
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
                <li><a href="">Home</a></li>
                <li><a href="Buy.aspx">Buy</a></li>
                <li><a href="game.aspx">Where's Shake?</a></li>
                <li><a href="contact.aspx">Contact</a></li>
                <li><a href="aboutus.aspx">About Us</a></li>
            </ul>
        </nav>
    <!-- NAVIGATION ENDS HERE -->
    <div class="maincontent">
            <h1 id="h1text">"Number one in the hood, G" - <i>Yo momma</i></h1>
         <!-- LEFT COLUMN -->
        <div id="leftcolumn">
                    <div class="aboutimage">     
                        <p id="P1"> We are in the business of giving you the business, and business is good. 
                                    We have only three products and they are in no way infringing on the 
                                    copyrights you think they are.          
                        </p>
                        <h1 id="guym">GIVE US YOUR MONEY, NOW!</h1>
                    </div>
                </div>
                <!-- LEFT COLUMN -->
                
                <!-- RIGHT COLUMN -->
                <div id="rightcolumn">
                    <div class="aboutimage">
                        <img src="logo.jpg" alt="ATHF logo" width="300" height="268" />
                    </div>
                </div>
                <p id="mainpara">Datt Man Products, LLC is not responsible for any damage done to the consumer, and or
                   persons around the consumer. All of our products are guaranteed to function as they 
                   were seen in the TV show <b>Aqua Teen Hunger Force</b>. We guarantee all of our
                   products for 1 day after it has arrived at your abode.</p>
                   <h2 style="text-align:center; font-weight: bold;">Thank you for your patronage!</h2>
             </div> 
               <footer>
                    <p>&copy; Datt Man Products, LLC</p>
                    <p>Datt Man Products, LLC is not responsible for whatever opinions and remarks come from this website.</p>
                </footer>  
    </div>
    
   
    </form>
</body>
</html>
