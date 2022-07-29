<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Manage Post.aspx.cs" Inherits="myblog.Admin_Manage_Post" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>AlbertzZ™ My Blog My Hello World!</title>
    <!--CSS============================================= -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600|Playfair+Display:700,700i" rel="stylesheet" runat="server" />
    <link rel="stylesheet" href="~/css/linearicons.css" runat="server" />
    <link rel="stylesheet" href="~/css/font-awesome.min.css" runat="server" />
    <link rel="stylesheet" href="~/css/magnific-popup.css" runat="server" />
    <link rel="stylesheet" href="~/css/nice-select.css" runat="server" />
    <link rel="stylesheet" href="~/css/owl.carousel.css" runat="server" />
    <link rel="stylesheet" href="~/css/bootstrap.css" runat="server" />
    <link rel="stylesheet" href="~/css/bootstrap-datepicker.css" runat="server" />
    <link rel="stylesheet" href="~/css/themify-icons.css" runat="server" />
    <link rel="stylesheet" href="~/css/main.css" runat="server" />
    <link href="~/StyleSheet1.css" rel="stylesheet" runat="server" />
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <script src="ckeditor/ckeditor.js"></script>
    <form id="form1" runat="server">
        <br />
        <a class="btn btn-link" href="Admin Control.aspx"><span class="fa fa-arrow-left"></span> Back to menu</a>
        <ul class="nav nav-tabs justify-content-center">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#dashboard">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#createpost">Create Post</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#editpost">Edit Post</a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane fade active show" id="dashboard">
                <section class="whole-wrap">
                    <div class="container">
                        <div class="section-top-border">
                            <div class="row">
                                <div class="col-md-4">
                                    <center>
                                    <a href="#" data-toggle="modal" data-target="#modalmostview"><h3><span class="fa fa-eye"></span>Most View POST!</h3></a>
                                        </center>
                                    <hr />
                                    <center>
                                    <a href="#" data-toggle="modal" data-target="#modalmostcomment"><h3><img src="../img/chat.png" height="15" width="15" />Most Comment POST!</h3></a>
                                        </center>
                                    <hr />
                                    <center>
                                    <a href="#" data-toggle="modal" data-target="#modaldelete"><h3><span class="fa fa-remove"></span>DELETE POST!</h3></a>
                                        </center>
                                    <hr />
                                    <h2>Total Post</h2>
                                    <asp:GridView class="table table-hover" ID="totalpost" runat="server">
                                        <EditRowStyle Font-Bold="True" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                    </asp:GridView>
                                </div>
                                <div class="col-md-4">
                                    <h2>Post Category</h2>
                                    <center>
                    <asp:Chart ID="ChartPost" runat="server">
                        <Legends>
                            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="True" Name="Default"
                                LegendStyle="Column" />
                        </Legends>
                        <Series>
                            <asp:Series Name="Default" CustomProperties="PieLabelStyle=Disabled"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BorderWidth="0"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                        </center>
                                </div>
                                <div class="col-md-4">
                                    <br />
                                    <asp:GridView class="table table-hover" ID="category" runat="server">
                                        <EditRowStyle Font-Bold="True" HorizontalAlign="Justify" VerticalAlign="Middle" />
                                    </asp:GridView>
                                    </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="tab-pane fade" id="createpost">
                <section class="whole-wrap">
                    <div class="container">
                        <div class="section-top-border">
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <h3 class="mb-30">Create Post</h3>
                                    <div class="mt-10">
                                        <h6>Post Image Cover*</h6>
                                        <label>Uploud Your Header/Cover Image: </label>
                                        <asp:TextBox ID="txtimageurl" runat="server" type="url" name="urlimage" placeholder="Image Url" class="form-control" TextMode="Url"></asp:TextBox>
                                    </div>
                                    <div class="mt-10">
                                        <h6>Post Title*</h6>
                                        <asp:TextBox ID="txtTitle" runat="server" type="text" name="title" placeholder="Title" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Title'"
                                            class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mt-10">
                                        <h6>Post Description*</h6>
                                        <asp:TextBox ID="txtDescription" runat="server" type="text" name="description" placeholder="Description" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Description'"
                                            class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div class="mt-10">
                                        <h5>Post Content*</h5>
                                        <asp:TextBox ID="txtContent" runat="server" class="form-control" TextMode="MultiLine" placeholder="Content" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Content'"></asp:TextBox>
                                        <script type="text/javascript" lang="javascript">CKEDITOR.replace('<%=txtContent.ClientID%>');</script>
                                    </div>
                                    <br />
                                    <h6>Post Date And Category*</h6>
                                    <div class="mt-10 row">
                                        <div class="col-6">
                                            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" name="date" placeholder="Date" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Date'"
                                                class="form-control">
                                            </asp:TextBox>
                                        </div>
                                        <div class="col-6">
                                            <div class="input-group-icon">
                                                <div class="icon"></div>
                                                <asp:DropDownList ID="categoryselect" class="form-select" runat="server">
                                                    <asp:ListItem Text="Category" Value="Category" />
                                                    <asp:ListItem Text="Android Phone" Value="Android Phone" />
                                                    <asp:ListItem Text="Anime Recommendations" Value="Anime Recommendations" />
                                                    <asp:ListItem Text="Basic Functionality Syntax" Value="Basic Functionality Syntax" />
                                                    <asp:ListItem Text="Course Project Systems" Value="Course Project Systems" />
                                                    <asp:ListItem Text="Miscellaneous" Value="Miscellaneous" />
                                                    <asp:ListItem Text="My Photography" Value="My Photography" />
                                                    <asp:ListItem Text="Simple Program" Value="Simple Program" />
                                                    <asp:ListItem Text="Tweaks Troubleshooting PC" Value="Tweaks Troubleshooting PC" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <center>
                            <asp:Button ID="btnPost" runat="server" Text="Post" class="genric-btn primary circle" OnClick="btnPost_Click"/>
                                </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="tab-pane fade" id="editpost">
                <section class="whole-wrap">
                    <div class="container">
                        <div class="section-top-border">
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <h3 class="mb-30">Edit Post</h3>
                                    <div class="mt-10">
                                        <center>
                                        <asp:TextBox CssClass="form-control" ID="txtPID" runat="server" placeholder="Post ID" Width="200" TextMode="Search"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="btnfind" runat="server" Text="Find" OnClick="btnfind_Click" />
                                    </center>
                                    </div>
                                    <div class="mt-10">
                                        <h6>Post Image Cover*</h6>
                                        <label>Uploud Your Header/Cover Image: </label>
                                        <asp:TextBox ID="txteditImage" runat="server" type="url" name="urlimage" placeholder="Image Url" class="form-control" TextMode="Url"></asp:TextBox>
                                    </div>
                                    <div class="mt-10">
                                        <h6>Post Title*</h6>
                                        <asp:TextBox ID="txteditTitle" runat="server" type="text" name="title" placeholder="Title" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Title'"
                                            class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mt-10">
                                        <h6>Post Description*</h6>
                                        <asp:TextBox ID="txteditDescription" runat="server" type="text" name="description" placeholder="Description" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Description'"
                                            class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div class="mt-10">
                                        <h5>Post Content*</h5>
                                        <asp:TextBox ID="txteditContent" runat="server" class="form-control" TextMode="MultiLine" placeholder="Content" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Content'"></asp:TextBox>
                                        <script type="text/javascript" lang="javascript">CKEDITOR.replace('<%=txteditContent.ClientID%>');</script>
                                    </div>
                                    <br />
                                    <h6>Post Date And Category*</h6>
                                    <div class="mt-10 row">
                                        <div class="col-6">
                                            <asp:TextBox ID="txteditDate" runat="server" TextMode="Date" name="date" placeholder="Date" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Date'"
                                                class="form-control">
                                            </asp:TextBox>
                                        </div>
                                        <div class="col-6">
                                            <div class="input-group-icon">
                                                <div class="icon"></div>
                                                <asp:DropDownList ID="editselectCategory" class="form-select" runat="server">
                                                    <asp:ListItem Text="Category" Value="Category" />
                                                    <asp:ListItem Text="Android Phone" Value="Android Phone" />
                                                    <asp:ListItem Text="Anime Recommendations" Value="Anime Recommendations" />
                                                    <asp:ListItem Text="Basic Functionality Syntax" Value="Basic Functionality Syntax" />
                                                    <asp:ListItem Text="Course Project Systems" Value="Course Project Systems" />
                                                    <asp:ListItem Text="Miscellaneous" Value="Miscellaneous" />
                                                    <asp:ListItem Text="My Photography" Value="My Photography" />
                                                    <asp:ListItem Text="Simple Program" Value="Simple Program" />
                                                    <asp:ListItem Text="Tweaks Troubleshooting PC" Value="Tweaks Troubleshooting PC" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <center>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update Post" class="genric-btn primary circle" OnClick="btnUpdate_Click"/>
                                </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- Modal Delete-->
        <div class="modal" id="modaldelete" tabindex="-1" role="dialog" aria-labelledby="modaldelete1" aria-hidden="true">
            <br />
            <br />
            <br />
            <br />
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modaldelete1">DELETE Post!. <span class="fa fa-user-secret"></span></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                    <br />
                    <center>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="txtpostid" runat="server" placeholder="Post ID" Width="200" TextMode="Search"></asp:TextBox>
                    <asp:Button class="btn btn-danger" ID="btndeletepost" runat="server" Text="Delete" OnClick="btndeletepost_Click"/>
                </div>
                        <asp:GridView class="table table-hover table-responsive" ID="GridViewPostData" runat="server">
                        <EditRowStyle Font-Bold="True" HorizontalAlign="Justify" VerticalAlign="Middle" />
                    </asp:GridView>
            </center>
                    <br />
                </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close<span class="fa fa-close"></span></button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Most View-->
        <div class="modal" id="modalmostview" tabindex="-1" role="dialog" aria-labelledby="modalmostview1" aria-hidden="true">
            <br />
            <br />
            <br />
            <br />
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                            <asp:DropDownList ID="DropDownListTop" runat="server" class="default-select" AutoPostBack="True" OnSelectedIndexChanged="DropDownListTop_SelectedIndexChanged">
                            <asp:ListItem Text="Top 5" Value="5" />
                            <asp:ListItem Text="Top 10" Value="10" />
                            <asp:ListItem Text="Top 20" Value="20" />
                            <asp:ListItem Text="Top All" Value="1000" />
                        </asp:DropDownList>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                            <h4 class="modal-title text-center" id="modalmostview1">Most View Post! <span class="fa fa-eye"></span></h4>
                        <hr />
                        <div class="container">
                            <center>
                        <asp:GridView class="table table-hover table-responsive" ID="GridMostView" runat="server">
                        <EditRowStyle Font-Bold="True" HorizontalAlign="Justify" VerticalAlign="Middle" />
                    </asp:GridView>
            </center>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close<span class="fa fa-close"></span></button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Most Comment-->
        <div class="modal" id="modalmostcomment" tabindex="-1" role="dialog" aria-labelledby="modalmostcomment1" aria-hidden="true">
            <br />
            <br />
            <br />
            <br />
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                            <asp:DropDownList ID="DropDownListComment" runat="server" class="default-select" AutoPostBack="True" OnSelectedIndexChanged="DropDownListComment_SelectedIndexChanged">
                            <asp:ListItem Text="Top 5" Value="5" />
                            <asp:ListItem Text="Top 10" Value="10" />
                            <asp:ListItem Text="Top 20" Value="20" />
                            <asp:ListItem Text="Top All" Value="1000" />
                        </asp:DropDownList>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                            <h4 class="modal-title text-center" id="modalmostcomment1">Most Comment Post! <span class="fa fa-eye"></span></h4>
                        <hr />
                        <div class="container">
                            <center>
                        <asp:GridView class="table table-hover table-responsive" ID="GridComment" runat="server">
                        <EditRowStyle Font-Bold="True" HorizontalAlign="Justify" VerticalAlign="Middle" />
                    </asp:GridView>
            </center>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close<span class="fa fa-close"></span></button>
                    </div>
                </div>
            </div>
        </div>
    </form>
        <!--JavaScripts========================== -->
    <script src="/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="/js/vendor/bootstrap.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/jquery.sticky.js"></script>
    <script src="/js/jquery.tabs.min.js"></script>
    <script src="/js/parallax.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery.ajaxchimp.min.js"></script>
    <script src="/js/jquery.magnific-popup.min.js"></script>
    <script src="/js/bootstrap-datepicker.js"></script>
    <script src="/js/main.js"></script>
    <script src="/hidetopp.js"></script>
</body>
</html>
