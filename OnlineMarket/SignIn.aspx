<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="OnlineMarket.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
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
        <!-- Navigation bar starts-->
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
                            <li><a href="Index.aspx">Home</a></li>
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
                        <li class="active"> <a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
           </div>
        </div>
        <!-- Nvaigation bar ends-->

        <br />

        <!-- >Sign In Start<-->
            <div class="container">
                <div class="form-horizontal">
                    <h2>Login</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="UsernameID"  CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Username field is required!" ControlToValidate="UsernameID"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="PasswordID"  CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" runat="server" ErrorMessage="Password field is required!" ControlToValidate="PasswordID"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:CheckBox ID="checkBoxRememberUNandPASS" runat="server" />
                            <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember Me?"></asp:Label>     
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btLoginID" runat="server" Text="Login" CssClass="btn" OnClick="btLoginID_Click" />
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx" CausesValidation="False">Sign Up</asp:LinkButton>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Label ID="lblErrorSignIn" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                </div>                
            </div>
        <!-- >Sign In End<-->

    </form>
     <!--- Footer  -->

        

        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2017 Mario Siu &middot; <a href="Index.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

    <!--- Footer -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
