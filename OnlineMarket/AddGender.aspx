﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddGender.aspx.cs" Inherits="OnlineMarket.AddGender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Gender</h2>
            <hr />
             <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Gender Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtGenderName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is required!" ControlToValidate="txtGenderName"></asp:RequiredFieldValidator>
                </div>
            </div>   
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-default" Text="Add Gender" OnClick="btnAdd_Click"/>
                </div>
            </div>
        </div>
             <h1>Gender</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Gender</div>
            <asp:Repeater ID="rptrGender" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                            <th>#</th>
                            <th>Gender</th>
                            <th>Edit</th>
                            </tr>
                        </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("GenderID") %></th>
                        <td><%# Eval("GenderName") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                        </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <!-- Table -->             
        </div>
    </div>
</asp:Content>
