<%@ Page Title="" Language="C#" MasterPageFile="~/View/Main.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplicationTest.View.LoginPage" %>

<asp:Content ContentPlaceHolderID="title" runat="server">Login</asp:Content>
<asp:Content ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" type="text/css" href="../Assets/css/login-page.css" /> 
</asp:Content>

<asp:Content ContentPlaceHolderID="Content" runat="server">
    <div class="container content-wrapper">
        <div class="row align-items-center">
            <div class="col-md-4 offset-4 d-flex align-items-center input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="lblUsername" runat="server" Text="Username" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" class="form-control"/>
            </div>
            <div class="col-md-4 offset-4 d-flex align-items-center input-group">
                <asp:RequiredFieldValidator ID="requiredUsername" runat="server" class="text-danger" ValidationGroup="groupLogin" ErrorMessage="Username cannot be empty" ControlToValidate="txtUsername" />
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-4 offset-4 d-flex align-items-center input-group">
                <div class="input-group-prepend">
                    <asp:Label ID="lblPassword" runat="server" Text="Password" class="input-group-text" />
                </div>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" class="form-control" />
            </div>
            <div class="col-md-4 offset-4 d-flex align-items-center input-group">
            <asp:RequiredFieldValidator ID="requiredPassword" runat="server" class="text-danger" ValidationGroup="groupLogin" ErrorMessage="Password cannot be empty" ControlToValidate="txtPassword" />
            </div>
        </div>
        <div class="row align-items-center">
            <div class="col-md-4 offset-4 d-flex align-items-center input-group">
                <asp:CheckBox ID="checkBoxRemember" Text="Remember Me" CssClass="m-0" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 offset-5">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" class="btn btn-secondary" />
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="groupLogin" OnClick="btnLogin_Click" class="btn btn-primary" />
            </div>
        </div>
    </div>
</asp:Content>
