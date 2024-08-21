<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25015_book.aspx.cs" Inherits="_25015_book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload books</title>
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

        .auto-style1 {
            color: #FFFFFF;
            background-color: #FF6666;
        }

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
                                <li><a href="25015_book.aspx">Upload</a></li>

                                <li class="ml-xl-5 ml-lg-2 mt-lg-0 mt-sm-4 mt-3">
                                    <asp:Label ID="Label1" runat="server" Text="Welcome" Visible="False"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text="" Visible="False"></asp:Label>
                                    <asp:Button ID="Button2" runat="server" class="reqe-button text-uppercase" Text="Logout" Visible="False" OnClick="Button2_Click" Height="29px" Width="87px" CssClass="auto-style1" />
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
                <li class="breadcrumb-item">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/25015_book.aspx">Upload</asp:HyperLink>
                </li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->
        <br />
        <center><h2>Publish Book</h2></center>
        <div class="modal-body align-w3">
            <div class="form-group">
                <label class="col-form-label">Book Name</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter book name" required="" ToolTip="Enter book name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="col-form-label">Book Price</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter book price" required="" TextMode="Number" ToolTip="Enter book price"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="col-form-label">Publisher Name</label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter publisher name" required="" ToolTip="Enter publisher name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="col-form-label">Image of the book</label>
                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" required="" ToolTip="Upload the image" />
            </div>
            <div class="right-w3l">
                <asp:Button ID="Button1" runat="server" Text="Upload Book" class="form-control bg-theme" OnClick="Button1_Click" />
            </div>
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
    </form>
</body>
</html>
