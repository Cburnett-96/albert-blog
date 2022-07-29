<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Post_Android Phone.aspx.cs" Inherits="myblog.Category.Post_Android_Phone" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
                <center>
                 <h6>You are Browsing To</h6>
                   <h1>Android Phone</h1>
            </center>
        <!--================ Start Blog Post Area =================-->
        <section class="blog-post-area section-gap relative">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="single-amenities">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-6 amenities-details">
                                            <asp:ImageButton ID="ImageButtonReadMore" runat="server" class="img-fluid w-100" ImageUrl='<%#Eval("PImg")%>' OnClick="ImageButtonReadMore_Click" />
                                        </div>
                                        <div class="col-sm-6 col-sm-6">
                                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%#Eval("PID")%>'></asp:Label>
                                            <div class="amenities-details">
                                                <h5>
                                                    <a><%#Eval("PTitle")%></a>
                                                </h5>
                                                <div class="amenities-meta mb-10">
                                                    <a class="">
                                                        <span class="ti-calendar"></span><%#Eval("PDate")%>&emsp;&emsp;</a>
                                                    <a><span class="fa fa-eye"></span><%#Eval("PView")%>&emsp;</a>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnlike_Click"><img src="../img/like.png" height="15" width="15" /> <%#Eval("PLike")%>&emsp;&emsp;</asp:LinkButton>
                                                    <img src="../img/chat.png" height="15" width="15" /><asp:Label ID="Label2" runat="server" Text='<%#Eval("PNumComment")%>'></asp:Label>
                                                </div>
                                                <p>
                                                    <%#Eval("PDescription")%>
                                                </p>
                                                <a class="float-right">
                                                    <asp:Button ID="Button1" class="blog-post-btn" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                                    <span class="ti-arrow-right"></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <hr />
                                </ItemTemplate>
                            </asp:Repeater>
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
                <!-- End Blog Post Siddebar -->
            </div>
        </section>
    </form>
</asp:Content>
