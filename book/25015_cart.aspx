<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25015_cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <style>
        .timetable_sub {
            width: 100%;
            border-collapse: collapse;
        }

            .timetable_sub th, .timetable_sub td {
                border: 1px solid #ccc;
                padding: 8px;
                text-align: center;
            }

            .timetable_sub th {
                background-color: #f2f2f2;
            }

            .timetable_sub img {
                max-width: 50px;
                max-height: 50px;
            }


        .btn-remove {
            background-color: #ff0000;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            text-decoration: none;
        }

            .btn-remove:hover {
                background-color: #cc0000;
            }


        .quantity-controls {
            display: flex;
            align-items: center;
        }

        .quantity-button {
            width: 30px;
            background-color: #4169E1;
            border: none;
            border-radius: 5px;
            color: white;
            text-align: center;
            cursor: pointer;
            margin: 0 5px;
            text-decoration: none;
        }

            .quantity-button:hover {
                background-color: #30408D;
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
                                <%--                                <li><a href="contact.aspx">Contact Us</a></li>--%>
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
                                    <asp:Button ID="Button1" runat="server" class="reqe-button text-uppercase" Text="Logout" Visible="False" Height="29px" Width="87px" CssClass="auto-style2" OnClick="Button1_Click" />
                                    <asp:ImageButton ID="ImageButton2" runat="server" Visible="False" ImageUrl="~/cart.jpg" Height="25px" Width="39px" OnClick="ImageButton2_Click" />
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
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/25015_index.aspx">Home</asp:HyperLink>
                </li>
                <li class="breadcrumb-item">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/25015_cart.aspx">Cart</asp:HyperLink>
                </li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->
        <br />
        <br />
        <table class="timetable_sub">
            <thead>
                <tr>
                    <th>SL No.</th>
                    <th>Book</th>
                    <th>Quantity</th>
                    <th>Book Name</th>
                    <th>Unit Price</th>
                    <th>Sub Price</th>
                    <th>Remove</th>
                </tr>
            </thead>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="rem1">
                        <td class="invert"><%#Eval("cart_id") %></td>
                        <td class="invert-image">
                            <a href="#">
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("book_img") %>' />
                            </a>
                        </td>
                        <td>
                            <div class="quantity-controls">
                                <asp:LinkButton ID="LinkButton2" runat="server" class="quantity-button" CommandName="sub" CommandArgument='<%#Eval("cart_id") %>'>-</asp:LinkButton>
                                <asp:TextBox ID="TextBox1" runat="server" class="quantity-button" ReadOnly="True" Text='<%#Eval("qty") %>'></asp:TextBox>
                                <asp:LinkButton ID="LinkButton3" runat="server" class="quantity-button" CommandName="add" CommandArgument='<%#Eval("cart_id") %>'>+</asp:LinkButton>
                            </div>
                        </td>
                        <td class="invert"><%#Eval("book_name") %></td>
                        <td class="invert"><%#Eval("book_price") %></td>
                        <td class="invert"><%#Convert.ToDecimal(Eval("book_price")) * Convert.ToDecimal(Eval("qty")) %></td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn-remove" CommandName="delete" CommandArgument='<%#Eval("cart_id") %>' OnClientClick="return confirm('Do you want to delete this product?');">Delete</asp:LinkButton>

                            <%--<asp:LinkButton ID="LinkButton1" runat="server" class="btn-remove" CommandName="delete" CommandArgument='<%#Eval("cart_id") %>' OnClientClick="return confirm('Do you want to delete this product?');"><center>Delete</center></asp:LinkButton>--%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
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
