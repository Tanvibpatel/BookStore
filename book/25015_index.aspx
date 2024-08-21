<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25015_index.aspx.cs" Inherits="_25015_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Store</title>
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
    <style>
        .container1 {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* Three equal-width columns */
            gap: 20px; /* Gap between columns and rows */
        }

        .col1 {
            padding: 10px;
            border: 1px solid #ddd;
        }
        /* Basic button styles */
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

        .auto-style2 {
            color: #FFFFFF;
            background-color: #FF6666;
        }
        /* Optional: Add more styles to further customize the button, e.g., font size, margin, etc. */

        .auto-style3 {
            width: 100%;
            height: 361px;
        }
    </style>
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
                                <%--<li><a href="25015_about.aspx">About Us</a></li>--%>
                                <li><a href="25015_book.aspx">Upload</a></li>
                                <%--<li><a href="contact.aspx">Contact Us</a></li>--%>

                                <li class="ml-xl-5 ml-lg-2 mt-lg-0 mt-sm-4 mt-3">
                                    <asp:Label ID="Label1" runat="server" Text="Welcome" Visible="False"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text="" Visible="False"></asp:Label>
                                    <asp:Button ID="Button1" runat="server" class="reqe-button text-uppercase" Text="Logout" Visible="False" Height="29px" Width="87px" CssClass="auto-style2" OnClick="Button1_Click1" />
                                    <asp:ImageButton ID="ImageButton2" runat="server" Visible="False" ImageUrl="~/cart.jpg" Height="25px" OnClick="ImageButton2_Click" Width="39px" />
                                    <asp:HyperLink ID="HyperLink1" runat="server" class="reqe-button text-uppercase" NavigateUrl="~/25015_login.aspx">Login</asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/25015_register.aspx" class="reqe-button text-uppercase" Visible="True">Register</asp:HyperLink>
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
                    <%--<a href="25015_index.html"></a>--%>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/25015_index.aspx">Home</asp:HyperLink>
                </li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->
        <br />
        <br />

        <div class="container1">
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1">
                <ItemTemplate>
                    <div class="col1">
                        <center>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%#Eval("book_img") %>' Height="200px"  /></center>
                        <br />
                        <h6 class="main-title-w3pvt text-center"><%#Eval("book_name") %></h6>
                        <h6 class="main-title-w3pvt text-center">Price : <%#Eval("book_price") %></h6>
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" BackColor="Red" CommandName="addtocart" CommandArgument='<%#Eval("b_id") %>' Width="100%" Height="50px" Font-Size="22"><center>Add to Cart</center></asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br />
        <br />
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
            <p class="text-wh">
                © 2019 Freight. All rights reserved | Design by
           
                <a href="http://w3layouts.com">W3layouts.</a>
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
