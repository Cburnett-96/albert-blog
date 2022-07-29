<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostSearch.aspx.cs" Inherits="myblog.PostSearch" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <!--================ Start Blog Post Area =================-->
        <section class="blog-post-area section-gap relative">
            <div class="container">
                <div class="sidebar-widgets">
                    <div class="widget-wrap">
                        <div class="single-sidebar-widget popular-post-widget" id="SearchHere">
                            <center>
                                <asp:TextBox ID="txtSearch" runat="server" type="text" name="search" placeholder="Search Posts" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Posts'"
								 class="single-input"></asp:TextBox>
                                <asp:Button ID="btnSearch" runat="server" Text="Search" class="genric-btn primary circle" OnClick="btnSearch_Click" />
                                    </center>
                        </div>
                        <hr />
                        <br />
                        <center>
                <h3>Search Result: </h3>
                    <h5>
                <asp:Label ID="lblSearch" runat="server"></asp:Label>
                        </h5>
                </center>
                    </div>
                </div>
                <br />
                <hr />
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
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
                                                    <a class="">Posted Date:
                                                        <span class="ti-calendar"></span><%#Eval("PDate")%></a>
                                                    <br />
                                                    <a>View: <span class="fa fa-eye"></span><%#Eval("PView")%></a>
                                                    <br />
                                                    <a>Comment:
                                                        <img src="../img/chat.png" height="15" width="15" />
                                                        <%#Eval("PNumComment")%></a>
                                                    <br />
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnlike_Click"><img src="img/like.png" height="15" width="15" /> <%#Eval("PLike")%></asp:LinkButton>
                                                    <br />
                                                    <a class="btn btn-link" href="../Category/Post_<%#Eval("PCategory")%>">
                                                        <span class="ti-folder mr-1"></span><%#Eval("PCategory")%>
                                                    </a>
                                                </div>
                                                <p>
                                                    <%#Eval("PDescription")%>
                                                </p>
                                                <br />
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
                    <div class="col-lg-4 sidebar-widgets">
                        <div class="widget-wrap">
                            <div class="single-sidebar-widget popular-post-widget">
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
                                        <hr />
                                        <a><span class="ti-calendar"></span> <%#Eval("PDate")%></a>
                                        <a><span class="fa fa-eye"></span> <%#Eval("PView")%></a>
                                        <a><img src="../img/like.png" height="15" width="15" /> <%#Eval("PLike")%></a>
                                         <img src="../img/chat.png" height="15" width="15" /><asp:Label ID="Label2" runat="server" Text='<%#Eval("PNumComment")%>'></asp:Label>
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
                    </div>
                </div>
                <!-- End Blog Post Siddebar -->
            </div>
        </section>
        <!--================ End Blog Post Area =================-->
    </form>
</asp:Content>
