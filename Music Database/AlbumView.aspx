<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumView.aspx.cs" Inherits="Music_Database.AlbumView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Select Album"></asp:Label>
&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
&nbsp;<asp:Button ID="btSelectAlbum" runat="server" Text="Select" OnClick="btSelectAlbum_Click" />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MusicConnectionStringAlbumSort %>" ProviderName="<%$ ConnectionStrings:MusicConnectionStringAlbumSort.ProviderName %>" SelectCommand="SELECT * FROM [Album] ORDER BY [name]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MusicConnectionString %>" DeleteCommand="DELETE FROM [Song] WHERE [ID] = ? AND [name] = ? AND [length] = ? AND [trackNo] = ? AND [albumId] = ?" InsertCommand="INSERT INTO [Song] ([name], [length], [trackNo], [albumId]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:MusicConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Song] ORDER BY [trackNo]" UpdateCommand="UPDATE [Song] SET [name] = ?, [length] = ?, [trackNo] = ?, [albumId] = ? WHERE [ID] = ? AND [name] = ? AND [length] = ? AND [trackNo] = ? AND [albumId] = ?">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_length" Type="String" />
            <asp:Parameter Name="original_trackNo" Type="Int32" />
            <asp:Parameter Name="original_albumId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
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
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_length" Type="String" />
            <asp:Parameter Name="original_trackNo" Type="Int32" />
            <asp:Parameter Name="original_albumId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
                </td>
                <td>
                    <asp:Label ID="trackNoLabel" runat="server" Text='<%# Eval("trackNo") %>' />
                </td>
                <td>
                    <asp:Label ID="albumIdLabel" runat="server" Text='<%# Eval("albumId") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
                </td>
                <td>
                    <asp:TextBox ID="trackNoTextBox" runat="server" Text='<%# Bind("trackNo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="albumIdTextBox" runat="server" Text='<%# Bind("albumId") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="lengthTextBox" runat="server" Text='<%# Bind("length") %>' />
                </td>
                <td>
                    <asp:TextBox ID="trackNoTextBox" runat="server" Text='<%# Bind("trackNo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="albumIdTextBox" runat="server" Text='<%# Bind("albumId") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
                </td>
                <td>
                    <asp:Label ID="trackNoLabel" runat="server" Text='<%# Eval("trackNo") %>' />
                </td>
                <td>
                    <asp:Label ID="albumIdLabel" runat="server" Text='<%# Eval("albumId") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">ID</th>
                                <th runat="server">name</th>
                                <th runat="server">length</th>
                                <th runat="server">trackNo</th>
                                <th runat="server">albumId</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="lengthLabel" runat="server" Text='<%# Eval("length") %>' />
                </td>
                <td>
                    <asp:Label ID="trackNoLabel" runat="server" Text='<%# Eval("trackNo") %>' />
                </td>
                <td>
                    <asp:Label ID="albumIdLabel" runat="server" Text='<%# Eval("albumId") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>
