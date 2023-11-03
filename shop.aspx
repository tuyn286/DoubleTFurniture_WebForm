<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="DoubleTFurniture.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- brand section -->

  <section class="brand_section">
    <div class="container">
      <div class="heading_container">
        <h2>
          Welcome to my Shop !
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
          <%} %>
      </div>
    </div>
  </section>

  <!-- end brand section -->
</asp:Content>
