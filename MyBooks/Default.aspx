<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyBooks._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>This is my Book Database web site</h1>
            </hgroup>
            <p>
                For some reason new Master Page layout appear.
                From the menu above it is possible to navigate between pages. Microsoft Access Database was used for this task.</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Add/Delete books</h5>
            Here it is possible too add or delete books to/from database</li>
        <li class="two">
            <h5>Search</h5>
            It is possible to search by ID, Price or Quantity</li>
        
    </ol>
</asp:Content>
