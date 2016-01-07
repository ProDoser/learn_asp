<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Music_Database._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Music Database</h2>
            </hgroup>
            <p>
                This music database caontains few albums. Users could select albums. Most of the features are not included becouse this task was not compulsary and being deleted. Before Sunday DB was created and filled. At albums page user could choose album to view. At All Songs page browse all songs, edit, delete or add new songs to the collections.</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>&nbsp;</h3>
    <ol class="round">
        <li class="one">
            <h5>Artist, genre and albums management still under construction.</h5>
&nbsp;</li>
    </ol>
</asp:Content>
