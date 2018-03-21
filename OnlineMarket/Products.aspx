<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlineMarket.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="rptrProduts" runat="server">
            <ItemTemplate>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("ImageName") %><%#Eval("Extension") %>" alt="<%#Eval("ImageName") %>">
                    <div class="caption">
                        <div class="probrand"><strong><%#Eval("BrandName") %></strong></div>
                        <div class="proName"><%#Eval("PName") %></div>
                        <div class="proPrice"><span class="proOgPrice"><%#Eval("PPrice") %></span>&nbsp<%#Eval("PSelPrice") %>&nbsp<span class="proPriceDiscount">($ <%#Eval("DiscAmount") %> Off)</span></div>
                    </div>
                </div>
            </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
