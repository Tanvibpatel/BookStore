<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25015_register.aspx.cs" Inherits="_25015_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Freight Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <!-- //Web-Fonts -->
    <style type="text/css">
        .auto-style1 {
            color: #fff;
            background-color: #33CC33;
        }

        .logoutButton {
            background-color: #E6E6FA;
            color: black;
            padding: 10px 20px;
            border-color: white;
            border-radius: 1px;
            cursor: pointer;
        }

            /* Hover effect */
            .logoutButton:hover {
                background-color: #ff3300;
                color: white;
            }

        .auto-style3 {
            width: 100%;
            height: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- header -->
        <header id="home">
            <div class="container">
                <div class="header d-lg-flex justify-content-between align-items-center py-sm-3 py-2 px-sm-2 px-1">
                    <!-- logo -->
                    <div>
                        <asp:Image ID="Image1" Width="60" Height="60" runat="server" ImageUrl="~/images/logo.jpg" />
                    </div>
                    <div id="logo">
                        <h1><a href="25015_index.aspx">Book Store</a></h1>
                    </div>
                    <!-- //logo -->
                    <!-- nav -->
                    <div class="nav_w3ls ml-lg-5">
                        <nav>
                            <label for="drop" class="toggle">Menu</label>
                            <input type="checkbox" id="drop" />
                            <ul class="menu">
                                <li><a href="25015_index.aspx">Home</a></li>
                                <%-- <li><a href="25015_about.aspx">About Us</a></li>--%>
                                <li><a href="25015_book.aspx">Upload</a></li>
                                <%--<li><a href="contact.aspx">Contact Us</a></li>--%>
                                <%--<li>
							        <!-- First Tier Drop Down -->
							        <label for="drop-2" class="toggle toogle-2">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span>
							        </label>
							        <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
							        <input type="checkbox" id="drop-2" />
							        <ul>
								        <li><a href="#blog" class="drop-text">Blog</a></li>
								        <li><a href="single.aspx" class="drop-text">Single Page</a></li>
								        <li><a href="#services" class="drop-text">Services</a></li>
								        <li><a href="#more" class="drop-text">More</a></li>
                                        
							        </ul>
						        </li>--%>

                                <li class="ml-xl-5 ml-lg-2 mt-lg-0 mt-sm-4 mt-3">
                                    <asp:Label ID="Label1" runat="server" Text="Welcome" Visible="False"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text="" Visible="False"></asp:Label>
                                    <asp:Button ID="Button2" runat="server" Text="Logout" Visible="False" class="logoutButton" OnClick="Button2_Click" />
                                    <asp:HyperLink ID="HyperLink1" runat="server" class="reqe-button text-uppercase" NavigateUrl="~/25015_login.aspx">Login</asp:HyperLink>
                                    <a href="25015_register.aspx" class="reqe-button text-uppercase">Register</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- //nav -->
                </div>
            </div>
        </header>
        <!-- //header -->
        <!-- inner banner -->
        <img src="nl.jpg" class="auto-style3" />
        <!-- //inner banner -->
        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb d-flex justify-content-center">
                <li class="breadcrumb-item">
                    <a href="index.aspx">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Register</li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->

        <!-- register  -->
        <div class="modal-body align-w3">

            <div class="form-group">
                <label for="recipient-name" class="col-form-label">Username</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter your name" required="" ToolTip="Enter username"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="recipient-email" class="col-form-label">Email</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter your email" required="" TextMode="Email" ToolTip="Enter Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password1" class="col-form-label">Password</label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter your password" required="" TextMode="Password" ToolTip="Enter password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password2" class="col-form-label">Shipping Address</label>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter shipping address" required="" TextMode="MultiLine" ToolTip="Enter shippping address"></asp:TextBox>
            </div>

            <div class="right-w3l">
                <strong>
                    <asp:Button ID="Button1" runat="server" Text="Register" class="form-control bg-theme" OnClick="Button1_Click" Width="100%" CssClass="auto-style1" Height="38px" />
                </strong>
            </div>

        </div>
        <!-- //register -->

               <!-- footer -->
        <footer class="footer py-md-5 pt-md-3 pb-sm-5">
            <div class="container">
                <div class="row p-sm-4 px-3 py-3">
                    <div class="col-lg-4 footer-top mt-md-0 mt-sm-5">
                        <h2>
                            <a class="navbar-brand" href="25015_index.aspx">Book Store
                            </a>
                        </h2>
                        <div class="fv3-contact mt-2">
                            <p>
                                <a href="mailto:example@email.com">book@store.com</a>
                            </p>
                        </div>
                        <div class="fv3-contact my-2">
                            <p>+456 123 7890</p>
                        </div>
                        <div class="fv3-contact">
                            <p>
                                +90 nsequursu dsdesdc,
						        <br>
                                xxx Street State 34789.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 mt-lg-0 mt-4">
                        <div class="footerv2-w3ls">
                            <h3 class="mb-3 w3f_title">Navigation</h3>
                            <hr>
                            <ul class="list-w3pvtits">
                                <li>
                                    <a href="25015_index.aspx">Home
                                    </a>
                                </li>
                                <li class="my-2">
                                    <a href="25015_book.aspx">Upload
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 mt-lg-0 mt-4">
                        <div class="footerv2-w3ls">
                            <h3 class="mb-3 w3f_title">Links</h3>
                            <hr>
                            <ul class="list-w3pvtits">
                                <li>
                                    <a href="25015_index.aspx">Our Mission
                                    </a>
                                </li>
                                <li class="my-2">
                                    <a href="25015_index.aspx">Latest posts
                                    </a>
                                </li>
                                <li class="my-2">
                                    <a href="25015_index.aspx">Explore
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <a href="25015_index.aspx">Find us
                                    </a>
                                </li>
                                <li>
                                    <a href="25015_index.aspx">Privacy Policy
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 mt-lg-0 mt-4">
                        <div class="footerv2-w3ls">
                            <h3 class="mb-3 w3f_title">Links</h3>
                            <hr>
                            <ul class="list-w3pvtits">
                                <li>
                                    <a href="25015_index.aspx">more
                                    </a>
                                </li>
                                <li class="my-2">
                                    <a href="25015_index.aspx">our work
                                    </a>
                                </li>
                                <li class="my-2">
                                    <a href="25015_index.aspx">Explore
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <a href="25015_index.aspx">contact us
                                    </a>
                                </li>
                                <li>
                                    <a href="25015_index.aspx">references
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 mt-lg-0 mt-4">
                        <div class="footerv2-w3ls">
                            <h3 class="mb-3 w3f_title">Links</h3>
                            <hr>
                            <ul class="list-w3pvtits">
                                <li class="my-2">
                                    <a href="25015_index.aspx">Explore
                                    </a>
                                </li>
                                <li>
                                    <a href="25015_index.aspx">Our Mission
                                    </a>
                                </li>
                                <li class="my-2">
                                    <a href="25015_index.aspx">Latest posts
                                    </a>
                                </li>

                                <li class="mb-2">
                                    <a href="25015_index.aspx">Find us
                                    </a>
                                </li>
                                <li>
                                    <a href="25015_index.aspx">Privacy Policy
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //footer bottom -->
        </footer>
        <!-- //footer -->
        <!-- copyright -->
    <div class="cpy-right text-center bg-theme">
        <p class="text-wh">© 2019 Freight. All rights reserved | Design by
            <a href="http://w3layouts.com"> W3layouts.</a>
        </p>
    </div>
    <!-- //copyright -->
        <!-- move top icon -->
        <a href="#home" class="move-top text-center">
            <span class="fa fa-level-up" aria-hidden="true"></span>
        </a>
        <!-- //move top icon -->

    </form>
</body>
</html>
