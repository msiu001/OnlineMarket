<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlineMarket.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Home</title>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/Custom_Cs.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Index.aspx"><span>
                            <img alt="Logo" src="Images/logo.png" height="34" /></span>Online Market</a>
                    </div>
                     <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Index.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All Products</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Pants</a></li>
                                    <li><a href="#">Sport</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Leggings</a></li>
                                    <li><a href="#">Shoes</a></li>
                                </ul>
                            </li>
                          <li> <a href="SignUp.aspx">Sign Up</a></li>
                          <li> <a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
           </div>

            <!-- Carrusel (Carousel) -->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Images/clothes_women.jpg" alt="..."/>
                        <div class="carousel-caption">
                            <h1>Ladies</h1>
                            <p>The widest and finest selection of accessories for her</p>
                            <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us Today</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/clothes_men.jpg" alt="..."/>
                        <div class="carousel-caption">
                            <h1>Gentlemen</h1>
                            <p>The widest selection of accessories for him</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/sport_items.jpg" alt="..." />
                        <div class="carousel-caption">
                            <h1>Sport</h1>
                            <p>It's all about sport</p>
                        </div>
                    </div>
                    ...
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Carrusel (Carousel) -->

        </div>
        <!--- Middle Contents -->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/sport.jpg" alt="sport" width="140" height="140" />
                    <h2>Sport</h2>
                    <p>Sport (British English) or sports (American English) includes all forms of competitive physical activity or games which,[1] through casual or organised participation, aim to use, maintain or improve physical ability and skills while providing enjoyment to participants, and in some cases, entertainment for spectators.[2] Usually the contest or game is between two sides, each attempting to exceed the other. Some sports allow a tie game; others provide tie-breaking methods, to ensure one winner and one loser. A number of such two-sided contests may be arranged in a tournament producing a champion.</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/clothing.jpg" alt="clothing" width="140" height="140" />
                    <h2>Clothing</h2>
                    <p>Clothing (also known as clothes and attire) is fibre and textile material worn on the body. The wearing of clothing is mostly restricted to human beings and is a feature of nearly all human societies. The amount and type of clothing worn depend on body type, social, and geographic considerations. Some clothing can be gender-specific.</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/shoes.jpg" alt="shoes" width="140" height="140" />
                    <h2>Footwear</h2>
                    <p>Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature. Footwear in the manner of shoes therefore primarily serves the purpose to ease the locomotion and prevent injuries. Secondly footwear can also be used for fashion and adornment as well as to indicate the status or rank of the person within a social structure. Socks and other hosiery are typically worn additionally between the feet and other footwear for further comfort and relief.</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>
            </div>
        </div>
        <!--- Middle Contents -->
    </form>
       <!--- Footer  -->

        <hr />

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2017 Mario Siu &middot; <a href="Index.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

        <!--- Footer -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
