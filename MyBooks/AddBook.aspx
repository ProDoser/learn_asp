<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="MyBooks.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbId" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbType" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label3" runat="server" Text="Title"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label4" runat="server" Text="Author"></asp:Label>
&nbsp;&nbsp;
<asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbPrice" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label>
&nbsp;<asp:TextBox ID="tbQty" runat="server"></asp:TextBox>
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
<asp:Label ID="lbMessage" runat="server"></asp:Label>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
&nbsp;
</asp:Content>
