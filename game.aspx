<%@ Page Language="C#" AutoEventWireup="true" CodeFile="game.aspx.cs" Inherits="game" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ATHF Slot Machine</title>
    <link rel="Stylesheet" type="text/css" href="css.css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <script>
        
        $(document).ready(
                function(){
                $('.xbutton').click(function() {
                        $('#game').show();
                }
                );
                }
        );
        $(document).ready(
                function(){
                $('.xbutton').click(function() {
                        $('#playbutton').hide();
                }
                );
                }
        );
        
        
        
        function clicked() {
            
            var slotNumberOne = Math.floor(Math.random() * 6);
            var slotNumberTwo = Math.floor(Math.random() * 6);
            var slotNumberThree = Math.floor(Math.random()* 6);
            

                    
            //on click the game will spin
            if (slotNumberOne == 0) {
                document.getElementById("slotNumber1").innerHTML = '<img src="mastershake.jpg" height="100" width="100px" alt="Master Shake" />';
                
            }
            else if (slotNumberOne == 1) {
                document.getElementById("slotNumber1").innerHTML = '<img src="frylock.jpg" height="100" width="100px" alt="Frylock" />';
               
            }
            else if (slotNumberOne == 2) {
                document.getElementById("slotNumber1").innerHTML = '<img src="meatwad.jpg" height="100" width="100px" alt="Meatwad" />';
               
            }
            else if (slotNumberOne == 3) {
                document.getElementById("slotNumber1").innerHTML = '<img src="err.jpg" height="100" width="100px" alt="Err" />';
                         
            }
            else if (slotNumberOne == 4) {
                document.getElementById("slotNumber1").innerHTML = '<img src="carl.jpg" height="100" width="100px" alt="Carl" />';
                         
            }
            else if (slotNumberOne == 5) {
                document.getElementById("slotNumber1").innerHTML = '<img src="doctorweird.jpg" height="100" width="100px" alt="Doctor Weird" />';
                         
            }
            if (slotNumberTwo == 0) {
                document.getElementById("slotNumber2").innerHTML = '<img src="mastershake.jpg" height="100" width="100px" alt="Master Shake" />';
                
            }
            else if (slotNumberTwo == 1) {
                document.getElementById("slotNumber2").innerHTML = '<img src="frylock.jpg" height="100" width="100px" alt="Frylock" />';
                   
            }
            else if (slotNumberTwo == 2) {
                document.getElementById("slotNumber2").innerHTML = '<img src="meatwad.jpg" height="100" width="100px" alt="Meatwad" />';
                       
            }
            else if (slotNumberTwo == 3) {
                document.getElementById("slotNumber2").innerHTML = '<img src="err.jpg" height="100" width="100px" alt="Err" />';
                         
            }
            else if (slotNumberTwo == 4) {
                document.getElementById("slotNumber2").innerHTML = '<img src="carl.jpg" height="100" width="100px" alt="Carl" />';
                         
            }
            else if (slotNumberTwo == 5) {
                document.getElementById("slotNumber2").innerHTML = '<img src="doctorweird.jpg" height="100" width="100px" alt="Doctor Weird" />';
                         
            }
            if (slotNumberThree == 0) {
                document.getElementById("slotNumber3").innerHTML = '<img src="mastershake.jpg" height="100" width="100px" alt="Master Shake" />';
                
            }
            else if (slotNumberThree == 1) {
                document.getElementById("slotNumber3").innerHTML = '<img src="frylock.jpg" height="100" width="100px" alt="Frylock" />';
                   
            }
            else if (slotNumberThree == 2) {
                document.getElementById("slotNumber3").innerHTML = '<img src="meatwad.jpg" height="100" width="100px" alt="Meatwad" />';
                       
            }
            else if (slotNumberThree == 3) {
                document.getElementById("slotNumber3").innerHTML = '<img src="err.jpg" height="100" width="100px" alt="Err" />';
                         
            }
            else if (slotNumberThree == 4) {
                document.getElementById("slotNumber3").innerHTML = '<img src="carl.jpg" height="100" width="100px" alt="Carl" />';
                         
            }
            else if (slotNumberThree == 5) {
                document.getElementById("slotNumber3").innerHTML = '<img src="doctorweird.jpg" height="100" width="100px" alt="Doctor Weird" />';
                         
            }

            if (slotNumberOne == slotNumberTwo && slotNumberOne == slotNumberThree) 
            {
                document.getElementById("win").innerHTML = "YOU WIN!!!";
                x = new Audio("YEAH, TONIGHT!!.wav")
                x.onplaying = function() {
                }
                x.play();

                
            }
            else if (slotNumberOne == slotNumberTwo || slotNumberOne == slotNumberThree || slotNumberTwo == slotNumberThree) 
                
            {
                document.getElementById("win").innerHTML = "A match of two";
                x = new Audio("magicHouse.wav")
                x.onplaying = function() {
                }
                x.play();

            }
            else if (slotNumberOne != slotNumberTwo || slotNumberOne != slotNumberThree || slotNumberTwo != slotNumberThree) 
            
            {
                document.getElementById("win").innerHTML = "NOPE."
                
                x = new Audio("tonightYou.wav")
                x.onplaying = function() {
                }
                x.play();
                
            }

        }
        
    </script>
    <style type="text/css">
        #game {
            background: black;
            width: 400px;
            height: 200px;
            display: none;
            margin: 0 auto;
        }
        .xbutton {
            width: 200px;
            height:100px;
        }
        .ybutton {
            width: 120px;
            height:30px;
            margin-left: 140px;
            margin-top: 5px;
        }
        #playbutton {
            width: 200px;
            height:100px;
            margin: 0 auto;
            padding-top: 100px;
        }
        #slot1 {
            width: 100px;
            height: 100px;
            margin: 5px;
            float: left;
            margin-left: 40px;
            overflow: hidden;
        }
        #slot2 {
            width: 100px;
            height: 100px;
            margin: 5px;
            float: left;
            overflow: hidden;
        }
        #slot3 {
            width: 100px;
            height: 100px   ;
            margin: 5px;
            float: left;
            overflow: hidden;
        }
        #winner {
            width: 700px;
            height: 50px;
            margin: -300px auto 0 auto;
            color: black;
            font-weight: bold;
            font-family: sans-serif;
            font-size: 3em;
            clear: both;
            padding-top: 50px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
    
                <div id="game">
                        <h3 class="title">GAME</h3>
                        <div id="slot1">
                            <div id="slotNumber1"></div>
                        </div>
                        <div id="slot2">
                            <div id="slotNumber2"></div>
                        </div>
                        <div id="slot3">
                            <div id="slotNumber3"></div>
                        </div>
                        <button class="ybutton" onclick="clicked()" type="button">SPIN DAT SHIZ</button>
                </div>
                        
                        <div id="playbutton">
                                <button class="xbutton" type="button">PLAY</button>
                        </div>
                        <div id="winner">
                            <p id="win"></p>
                            <div id="audio1">
                                
                            </div>
                        </div>

            </div>
                <footer>
                    <p>&copy; Datt Man Products, LLC</p>
                    <p>Datt Man Products, LLC is not responsible for whatever opinions and remarks come from this website.</p>
                    <p>Matt's over there playing hero ball and won't let me help him... Jerk.</p>
                </footer>  
            
            
     </div>                   
</div>
</form>

</body>
</html>
