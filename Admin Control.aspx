<%@ Page Title="Admin Control Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin Control.aspx.cs" Inherits="myblog.Admin_Control" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <section class="blog-post-area relative">
            <div class="container-fluid">
                <hr />
                <h1 class="text-sm-center">Admin Control Management</h1>
                <hr />
                <div class="row">
                    <div class="single-amenities" style="margin: auto;">
                        <div class="amenities-thumb">
                            <a href="Admin Manage Post.aspx"><img
                                class="img-fluid"
                                src="img/Manage.png"
                                height="150" width="150"
                                alt="Manage Post" /></a>
                            <h5 class="text-sm-center">
                                <a>Manage Post</a>
                            </h5>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="single-amenities" style="margin: auto;">
                        <div class="amenities-thumb">
                            <img
                                class="img-fluid"
                                src="img/Feedbacks.png"
                                height="150" width="150"
                                alt="Manage Comment" />
                            <h5 class="text-sm-center">
                                <a>Manage Comment</a>
                            </h5>
                        </div>
                    </div>
                </div>
                <br />
            </div>
        </section>
    </form>
</asp:Content>
