<%@ Page Title="AlbertzZ™ My Blog My Hello World!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="myblog._Default" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form action="#" runat="server" defaultbutton="btnproceed">
        <!--================ Start banner Area =================-->
        <section class="home-banner-area relative">
            <div class="container-fluid">
                <div class="icontopleft myfootershare">
                    </div>
                <div class="row">
                    <div class="owl-carousel home-banner-owl">
                        <div class="banner-img">
                            <asp:Repeater ID="Repeater_Random" runat="server">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid" style="max-width: 100%; max-height: 75%;" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                    <div class="text-wrapper">
                                        <a class="d-flex">
                                            <h1>
                                                <%#Eval("PTitle")%>
                                            </h1>
                                        </a>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn text-white" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="banner-img">
                            <asp:Repeater ID="Repeater_Random1" runat="server">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid" style="max-width: 100%; max-height: 75%;" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                    <div class="text-wrapper">
                                        <a class="d-flex">
                                            <h1>
                                                <%#Eval("PTitle")%>
                                            </h1>
                                        </a>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn text-white" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="banner-img">
                            <asp:Repeater ID="Repeater_Random2" runat="server">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid" style="max-width: 100%; max-height: 75%;" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                    <div class="text-wrapper">
                                        <a class="d-flex">
                                            <h1>
                                                <%#Eval("PTitle")%>
                                            </h1>
                                        </a>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn text-white" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="banner-img">
                            <asp:Repeater ID="Repeater_Random3" runat="server">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid" style="max-width: 100%; max-height: 75%;" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                    <div class="text-wrapper">
                                        <a class="d-flex">
                                            <h1>
                                                <%#Eval("PTitle")%>
                                            </h1>
                                        </a>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn text-white" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="banner-img">
                            <asp:Repeater ID="Repeater_Random4" runat="server">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid" style="max-width: 100%; max-height: 75%;" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                    <div class="text-wrapper">
                                        <a class="d-flex">
                                            <h1>
                                                <%#Eval("PTitle")%>
                                            </h1>
                                        </a>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn text-white" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="banner-img">
                            <asp:Repeater ID="Repeater_Random5" runat="server">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid" style="max-width: 100%; max-height: 75%;" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                    <div class="text-wrapper">
                                        <a class="d-flex">
                                            <h1>
                                                <%#Eval("PTitle")%>
                                            </h1>
                                        </a>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn text-white" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
            <div class="social-icons">
                <ul>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-coffee"></i></a>
                    </li>
                    <li class="diffrent">Random Posts</li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-coffee"></i></a>
                    </li>
                </ul>
            </div>
        </section>
        <!--================ End banner Area =================-->
        <hr />
        <!--================ Start Blog Post Area =================-->
        <section class="blog-post-area relative">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <center>
                            <a href="#" data-toggle="modal" data-target="#exampleModal">
                        <h4>Latest Posts</h4>
                                </a>
                            </center>
                        <hr />
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="single-amenities">
                                    <asp:Repeater ID="Repeater_latest" runat="server">
                                        <ItemTemplate>
                                            <div class="amenities-thumb">
                                                <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid w-100" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                            </div>
                                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                            <div class="amenities-details">
                                                <h5>
                                                    <a><%#Eval("PTitle")%></a>
                                                </h5>
                                                <div class="amenities-meta mb-10">
                                                    <a class="">
                                                        <span class="ti-calendar"></span><%#Eval("PDate")%>&emsp;&emsp;</a>
                                                    <a><span class="fa fa-eye"></span><%#Eval("PView")%>&emsp;&emsp;</a>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnlike_Click"><img src="img/like.png" height="15" width="15" /> <%#Eval("PLike")%>&emsp;&emsp;</asp:LinkButton>
                                                    <img src="img/chat.png" height="15" width="15" /><asp:Label ID="Label2" runat="server" Text='<%#Eval("PNumComment")%>'></asp:Label>
                                                    <div class="category">
                                                        <a href="../Category/Post_<%#Eval("PCategory")%>">
                                                            <span class="ti-folder mr-1"></span><%#Eval("PCategory")%>
                                                        </a>
                                                    </div>
                                                </div>
                                                <p>
                                                    <%#Eval("PDescription")%>
                                                </p>
                                                <a class="float-right">
                                                    <asp:Button ID="btnReadMore" class="blog-post-btn" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                                    <span class="ti-arrow-right"></span>
                                                </a>
                                            </div>
                                            <hr />
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="single-amenities">
                                    <asp:Repeater ID="Repeater_latest1" runat="server">
                                        <ItemTemplate>
                                            <div class="amenities-thumb">
                                                <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid w-100" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                            </div>
                                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                            <div class="amenities-details">
                                                <%--<h5>--%>
                                                    <a><%#Eval("PTitle")%></a>
                                                </h5>
                                                <div class="amenities-meta mb-10">
                                                    <a class="">
                                                        <span class="ti-calendar"></span><%#Eval("PDate")%>&emsp;&emsp;</a>
                                                    <a><span class="fa fa-eye"></span><%#Eval("PView")%>&emsp;&emsp;</a>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnlike_Click"><img src="img/like.png" height="15" width="15" /> <%#Eval("PLike")%>&emsp;&emsp;</asp:LinkButton>
                                                    <img src="img/chat.png" height="15" width="15" /><asp:Label ID="Label2" runat="server" Text='<%#Eval("PNumComment")%>'></asp:Label>
                                                    <div class="category">
                                                        <a href="../Category/Post_<%#Eval("PCategory")%>">
                                                            <span class="ti-folder mr-1"></span><%#Eval("PCategory")%>
                                                        </a>
                                                    </div>
                                                </div>
                                                <p>
                                                    <%#Eval("PDescription")%>
                                                </p>
                                                <a class="float-right">
                                                    <asp:Button ID="btnReadMore" class="blog-post-btn" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                                    <span class="ti-arrow-right"></span>
                                                </a>
                                            </div>
                                            <hr />
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Start Blog Post Siddebar -->
                    <div class="col-lg-4 sidebar-widgets" id="SearchHere">
                        <div class="widget-wrap">
                            <div class="single-sidebar-widget search-widget">
                                <center>
                                <asp:TextBox ID="txtSearch" runat="server" type="text" name="search" placeholder="Search Posts" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Posts'"
								 class="single-input"></asp:TextBox>
                                <asp:Button ID="btnSearch" runat="server" Text="Search" class="genric-btn primary circle" OnClick="btnSearch_Click" />
                                    </center>
                            </div>
                             <div class="single-amenities">
                            <br />
                            <center>
                                <h4 class="details mt-0">Most View Posts</h4>
                            <br />
                            <asp:Repeater ID="Repeater_MostView" runat="server">
                                <ItemTemplate>
                                    <div class="amenities-thumb">
                                        <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                    </div>
                                    <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                    <div class="amenities-details">
                                        <a>
                                            <h6><%#Eval("PTitle")%></h6>
                                        </a>
                                        <br />
                                        <a><span class="ti-calendar"></span> <%#Eval("PDate")%></a>
                                        <a><span class="fa fa-eye"></span> <%#Eval("PView")%></a>
                                        <a><img src="../img/like.png" height="15" width="15" /> <%#Eval("PLike")%></a>
                                         <img src="img/chat.png" height="15" width="15" /><asp:Label ID="Label2" runat="server" Text='<%#Eval("PNumComment")%>'></asp:Label>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                        <hr />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                                </center>
                        </div>
                            <div class="single-sidebar-widget post-category-widget">
                                <h4 class="category-title">Contents <span class="fa fa-briefcase"></span></h4>
                                <ul class="cat-list mt-0">
                                    <li>
                                        <a href="../Category/Post_My Photography.aspx" class="d-flex justify-content-between">
                                            <p>My Photography </p>
                                            <asp:Label ID="lblMyPhotography" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="../Category/Post_Anime Recommendations.aspx" class="d-flex justify-content-between">
                                            <p>Anime Recommendations </p>
                                            <asp:Label ID="lblAnimeRecom" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="../Category/Post_Simple Program.aspx" class="d-flex justify-content-between">
                                            <p>Simple Program </p>
                                            <asp:Label ID="lblSimpleProg" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="../Category/Post_Course Project Systems.aspx" class="d-flex justify-content-between">
                                            <p>My Course/School Project Systems </p>
                                            <asp:Label ID="lblCourse" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="../Category/Post_Miscellaneous.aspx" class="d-flex justify-content-between">
                                            <p>Miscellaneous</p>
                                            <asp:Label ID="lblMiscellaneous" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                </ul>
                                <hr />
                                <h6 class="category-title">Tutorials <span class="fa fa-book"></span></h6>
                                <ul class="cat-list mt-0">
                                    <li>
                                        <a href="../Category/Post_Basic Functionality Syntax.aspx" class="d-flex justify-content-between">
                                            <p>About Basic Functionality Syntax </p>
                                            <asp:Label ID="lbltutbasicpc" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="../Category/Post_Tweaks Troubleshooting PC.aspx" class="d-flex justify-content-between">
                                            <p>About Tweaks/Troubleshooting PC </p>
                                            <asp:Label ID="lbltuttweakpc" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="../Category/Post_Android Phone.aspx" class="d-flex justify-content-between">
                                            <p>About Android phone </p>
                                            <asp:Label ID="lbltutphone" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                </ul>
                                <hr />
                                <h6 class="category-title">A-Tools <span class="fa fa-lock"></span></h6>
                                <ul class="cat-list mt-0">
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>Coming Soon! </p>
                                            <asp:Label ID="Label3" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="d-flex justify-content-between">
                                            <p>...</p>
                                            <asp:Label ID="Label4" runat="server"></asp:Label>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="myfootershare">
                            <img class="img-fluid" src="https://add.pics/images/2021/04/02/kimi_right.png" />
                        </div>
                    </div>
                </div>
                <!-- End Blog Post Siddebar -->
            </div>
        </section>
        <!--================ End Blog Post Area =================-->
        <!-- Modal -->
        <div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <br />
            <br />
            <br />
            <br />
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Confirm IF IS YOU Admin. <span class="fa fa-user-secret"></span></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img class="embed-responsive" src="https://add.pics/images/2021/04/02/hello.gif" />
                        <hr />
                        <asp:TextBox class="form-control form-control-sm" ID="txtconfirm" TextMode="Password" placeholder="Login Code" runat="server"></asp:TextBox>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button class="btn btn-success" ID="btnproceed" runat="server" Text="Proceed" OnClick="btnproceed_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
