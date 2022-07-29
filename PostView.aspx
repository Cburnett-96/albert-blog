<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostView.aspx.cs" Inherits="myblog.Post.Resetagahanap" ValidateRequest="false" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <form action="#" runat="server">
        <asp:Label ID="lblID" runat="server"></asp:Label>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="container1">
                    <div class="icontopright myfootershare">
                    </div>
                    <img src="<%#Eval("PImg")%>" alt="<%#Eval("PTitle")%>" style="width: 100%;">
                    <div class="content1">
                        <h3 style="color: white"><%#Eval("PTitle")%></h3>
                        <span class="meta">Posted on <%#Eval("PDate")%>
                        </span>
                    </div>
                </div>
                <div class="content">
                    <div class="col-lg-10 col-md-10 mx-auto testing">
                        <h5>
                            <%#Eval("PDescription")%>
                        </h5>
                        <a>View: <span class="fa fa-eye"></span> <%#Eval("PView")%></a>
                        <br />
                        <a>Comment: <img src="img/chat.png" height="15" width="15" /> <%#Eval("PNumComment")%></a>
                        <br />
                        <a href="../Category/Post_<%#Eval("PCategory")%>">
                            <span class="ti-folder mr-1"></span><%#Eval("PCategory")%>
                        </a>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnlike_Click"><img src="img/like.png" height="15" width="15" /> <%#Eval("PLike")%></asp:LinkButton>
                        <a href="https://www.facebook.com/sharer.php?u=https://albertzz.somee.com/PostSearch?<%#Eval("PTitle")%>" onclick="window.open(this.href, '', 'resizable=yes,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=yes,dependent=no,width=600,height=600'); return false;"><span class="ti-facebook"></span></a>
                        <a href="https://twitter.com/share?url=https://albertzz.somee.com/PostSearch?<%#Eval("PTitle")%>" onclick="window.open(this.href, '', 'resizable=yes,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=yes,dependent=no,width=600,height=600'); return false;"><span class="ti-twitter"></span></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <hr />
        <section class="blog-post-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="content">
                            <article>
                                <asp:Label ID="lblContent" runat="server"> </asp:Label>
                            </article>
                            <hr />
                        <h6 class="panel-title">Did you like our post?&emsp;&emsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="btnlike_Click"><img src="img/like.png" height="15" width="15" /></asp:LinkButton></h6>
                            <hr />
                            <h6 class="panel-title">Previous Comment&emsp;&emsp;<img src="img/chat.png" height="15" width="15" /><asp:Label ID="Label2" runat="server"></asp:Label>
                            </h6>

                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <div class="commentbox">
                                        <b>
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("UserName") %>'>'></asp:Label></b>&nbsp;(<asp:Label ID="Label2" runat="server" Text='<%#Eval("CommentDate") %>'>'></asp:Label>):<br />
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("CommentMessage") %>'></asp:Label><br />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <hr />
                            <a class="genric-btn link" data-toggle="modal" data-target="#exampleModal">Comment Here</a>
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
                                        <a><img src="img/like.png" height="15" width="15" /> <%#Eval("PLike")%></a>
                                        <img src="../img/chat.png" height="15" width="15" /><asp:Label ID="Label2" runat="server" Text='<%#Eval("PNumComment")%>'></asp:Label>
                                        <asp:Button ID="btnReadMore" class="blog-post-btn" runat="server" Text="Read More" OnClick="Button_btnReadMore" />
                                        <span class="ti-arrow-right"></span>
                                        <hr />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                                </center>
                            </div>
                            <div class="single-sidebar-widget popular-post-widget">
                                <h4 class="details mt-0">About Me?</h4>
                                <br />
                                <div class="single-post-list">
                                    <div class="thumb">
                                        <center>
                                            <img class="img-fluid" src="https://add.pics/images/2021/05/15/profileblur.png" alt="Pogi" style="width:220px;height:391px" onclick="this.src='https://add.pics/images/2021/04/02/profile.jpg'">
                                                </center>
                                    </div>
                                    <br />
                                    <div class="details mt-0">
                                        <a>
                                            <h6>Albert Querido Pasco
                                                    <span class="lnr lnr-coffee-cup"></span>
                                            </h6>
                                        </a>

                                        <p>Thinker💭😮</p>
                                        <p>Mysterious😐😶</p>
                                        <p>Friendly???(Maybe not)(I like being alone👤 'cuz everyone are judgmental[Ako rin]😂 and NO ONE'S UNDERSTAND ME!)😅😞</p>
                                        <p>FUNNY??😕😂(I dunno!😮😒)</p>
                                        <p>Bored 😒</p>
                                        <p>Practical(I'm always something sure)🙎 </p>
                                        <p>Kind/Gentle (IF) 😇</p>
                                        <p>CCL? (Coffee & Cat Lover)☕😻</p>
                                        <p>Calm/Peaceful ✌</p>
                                        <p>Impatient 😠🙅</p>
                                        <p>Cacography(Poor Spelling) 🥺</p>
                                        <p>Resourceful /tactful(Strategy) 😏</p>
                                        <p>Manageable/Arrangeable 👊👍😊📝</p>
                                        <p>Always like a new things/discover😱😘🔎🔍</p>
                                        <p>Gamers 💻🎮</p>
                                        <p>Artist🎹🎧🎤🎶 (not yet, in my dream)lol...</p>
                                        <p>Watchers (Movies 🎥 /TV 📺 Series /Anime) 😍😋😙</p>
                                        <p>And Also I Like fiddling (Electronic/Electrical Gadgets & Computer 💻, Smartphone📱and Internet World 🌍) 😅🙌</p>
                                        <p>
                                            <b>This kinds if my attitude/character.
                                                If no one's didn't accept this phenomenon (hahaha 😂😅) 
                                                Just get out in my way.</b>
                                        </p>
                                    </div>
                                </div>
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
            </div>
        </section>
        <!-- Modal -->
        <div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <br />
            <br />
            <br />
            <br />
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Comment Form. <span class="fa fa-user-secret"></span></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <label for="name">Name*</label>
                        <asp:TextBox ID="txtname" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                        <label for="email">Date</label>
                        <asp:TextBox ID="txtdate" runat="server" TextMode="Date" placeholder="Date" CssClass="form-control"></asp:TextBox>
                        <label for="mobile">Comment</label>
                        <asp:TextBox CssClass="form-control" ID="txtcomments" runat="server" TextMode="MultiLine" Rows="3" placeholder="Your Comments Here" ClientIDMode="Static"></asp:TextBox>
                        </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button class="btn btn-success" ID="btncomment" runat="server" Text="Comment" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
                        ClassicEditor
                            .create(document.querySelector( '#txtcomments' ) )
                                .then( editor => {
                                        console.log( editor );
                                } )
                                .catch( error => {
                                        console.error( error );
                                } );
    </script>
</asp:Content>
