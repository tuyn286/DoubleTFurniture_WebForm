<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DoubleTFurniture.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- trending section -->

  <section class="trending_section layout_padding">
    <div id="accordion">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="detail-box">
              <div class="heading_container">
                <h2>
                  Trending Categories
                </h2>
              </div>
              <div class="tab_container">
                  <%foreach (var item in categories)
                      { %>
                        <div class="t-link-box" aria-expanded="false" data-toggle="collapse" data-target="#collapse<%=item.madanhmuc%>"
                           aria-controls="collapse<%=item.madanhmuc %>">
                          <div class="number">
                            <h5>
                              <%=item.madanhmuc%>
                            </h5>
                          </div>
                          <hr>
                          <div class="t-name">
                            <h5>
                              <%=item.tendanhmuc %>
                            </h5>
                          </div>
                        </div>
                  <%} %>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="collapse show" id="collapse1" aria-labelledby="headingOne" data-parent="#accordion">
              <div class="img_container ">
                <div class="box b-1">
                  <div class="img-box">
                    <img src="images/t-1.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/t-2.jpg" alt="">
                  </div>
                </div>
                <div class="box b-2">
                  <div class="img-box">
                    <img src="images/t-3.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/t-4.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
            <div class="collapse" id="collapse2" aria-labelledby="headingTwo" data-parent="#accordion">
              <div class="img_container ">
                <div class="box b-1">
                  <div class="img-box">
                    <img src="images/t-3.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/t-4.jpg" alt="">
                  </div>
                </div>
                <div class="box b-2">

                  <div class="img-box">
                    <img src="images/t-1.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/t-2.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
            <div class="collapse" id="collapse3" aria-labelledby="headingThree" data-parent="#accordion">
              <div class="img_container ">
                <div class="box b-1">
                  <div class="img-box">
                    <img src="images/t-4.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/t-1.jpg" alt="">
                  </div>
                </div>
                <div class="box b-2">
                  <div class="img-box">
                    <img src="images/t-3.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/t-2.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
            <div class="collapse" id="collapse4" aria-labelledby="headingfour" data-parent="#accordion">
              <div class="img_container ">
                <div class="box b-1">
                  <div class="img-box">
                    <img src="images/t-1.jpg" alt="">
                  </div>

                  <div class="img-box">
                    <img src="images/t-4.jpg" alt="">
                  </div>
                </div>
                <div class="box b-2">
                  <div class="img-box">
                    <img src="images/t-3.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/t-2.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>

  </section>

  <!-- end trending section -->

  <!-- discount section -->

  <section class="discount_section  layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <h2>
              The Latest Collection
            </h2>
            <h2 class="main_heading">
              50% DISCOUNT
            </h2>

            <div class="">
              <a href="">
                Buy Now
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/discount-img.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- end discount section -->

  <!-- brand section -->

  <section class="brand_section">
    <div class="container">
      <div class="heading_container">
        <h2>
          Featured Brands
        </h2>
      </div>
      <div class="brand_container layout_padding2">
          <%foreach (var item in products)
              { %>
                <div class="box">
                  <a href="details.aspx?MASANPHAM=<%=item.masanpham%>">
                    <div class="img-box">
                      <img src="images/<%=item.hinhanh %>" alt="">
                    </div>
                    <div class="detail-box">
                      <h6 class="price">
                        $<%=item.gia %>
                      </h6>
                      <h6>
                        <%=item.tensanpham %>
                      </h6>
                    </div>
                  </a>
                </div>
          <%if (item.masanpham == 4)
                      break;
              } %>
      </div>
      <a href="shop.aspx" class="brand-btn">
        See More
      </a>
    </div>
  </section>

  <!-- end brand section -->
</asp:Content>
