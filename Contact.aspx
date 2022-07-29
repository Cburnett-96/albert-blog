<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="myblog.Contact" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="container1">
            <img src="https://add.pics/images/2021/04/02/letters.jpg" alt="Email Me" style="width: 100%;">
            <div class="content1">
                <a>
                    <h1>Contact Me <span class="fa fa-send"></span></h1>
                </a>
            </div>
        </div>
        <div class="content">
            <article>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-12 mx-auto testing">
                            <div class="sidebar-widgets">
                                <div class="widget-wrap">
                                    
                                    <p>For inquiries and more information, you may Call/Text at <a class="text-info" href="tel:+639360276388"><b><span class="fa fa-phone"></span>+639360276388</b></a> or email me at below.<span class="fa fa-arrow-down"></span></p>
                                    <br />
                                    <h6>You may also use the link below for fast direct email your inquiries.</h6>
                                    <address>
                                        <strong>Personal Email:</strong>   <a href="mailto:albertquerido@gmail.com">albertquerido@gmail.com<span class="fa fa-send"></span></a><br />
                                    </address>
                                    <br />
                                    <hr />
                                    <br />
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
                        <div class="col-lg-4 sidebar-widgets" id="SearchHere">
                            <div class="widget-wrap">
                                <div class="single-sidebar-widget search-widget">
                                    <center>
                                <asp:TextBox ID="txtSearch" runat="server" type="text" name="search" placeholder="Search Posts" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Posts'"
								 class="single-input"></asp:TextBox>
                                <asp:Button ID="btnSearch" runat="server" Text="Search" class="genric-btn primary circle" OnClick="btnSearch_Click" />
                                    </center>
                                </div>
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
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </form>
</asp:Content>
