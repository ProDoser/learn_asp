<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SongList.aspx.cs" Inherits="Music_Database.SongList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MusicConnectionString %>" DeleteCommand="DELETE FROM [Song] WHERE [ID] = ?" InsertCommand="INSERT INTO [Song] ([name], [length], [trackNo], [albumId]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:MusicConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Song] ORDER BY [albumId], [trackNo]" UpdateCommand="UPDATE [Song] SET [name] = ?, [length] = ?, [trackNo] = ?, [albumId] = ? WHERE [ID] = ?">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="length" Type="String" />
        <asp:Parameter Name="trackNo" Type="Int32" />
        <asp:Parameter Name="albumId" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="length" Type="String" />
        <asp:Parameter Name="trackNo" Type="Int32" />
        <asp:Parameter Name="albumId" Type="Int32" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            length:
            <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
            <br />
            trackNo:
            <asp:Label ID="trackNoLabel" runat="server" Text='<%# Eval("trackNo") %>' />
            <br />
            albumId:
            <asp:Label ID="albumIdLabel" runat="server" Text='<%# Eval("albumId") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            length:
            <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
            <br />
            trackNo:
            <asp:TextBox ID="trackNoTextBox" runat="server" Text='<%# Bind("trackNo") %>' />
            <br />
            albumId:
            <asp:TextBox ID="albumIdTextBox" runat="server" Text='<%# Bind("albumId") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />length:
            <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
            <br />trackNo:
            <asp:TextBox ID="trackNoTextBox" runat="server" Text='<%# Bind("trackNo") %>' />
            <br />albumId:
            <asp:TextBox ID="albumIdTextBox" runat="server" Text='<%# Bind("albumId") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            length:
            <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
            <br />
            trackNo:
            <asp:Label ID="trackNoLabel" runat="server" Text='<%# Eval("trackNo") %>' />
            <br />
            albumId:
            <asp:Label ID="albumIdLabel" runat="server" Text='<%# Eval("albumId") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            length:
            <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
            <br />
            trackNo:
            <asp:Label ID="trackNoLabel" runat="server" Text='<%# Eval("trackNo") %>' />
            <br />
            albumId:
            <asp:Label ID="albumIdLabel" runat="server" Text='<%# Eval("albumId") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
</asp:Content>
