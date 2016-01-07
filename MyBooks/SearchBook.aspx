<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchBook.aspx.cs" Inherits="MyBooks.SearchBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>Search Books</h1>
            </hgroup>
            <p>
                Basic search with basic exeption handling.</p>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lbId" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbId" runat="server"></asp:TextBox>
&nbsp;
<asp:Button ID="idSearch" runat="server" Text="Search" OnClick="idSearch_Click" />
<br />
<asp:Label ID="Label1" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbMinPrice" runat="server"></asp:TextBox>
&nbsp;
<asp:TextBox ID="tbHiPrice" runat="server"></asp:TextBox>
&nbsp;
<asp:Button ID="priceSearch" runat="server" Text="Search" OnClick="priceSearch_Click" />
<br />
<asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
&nbsp;<asp:TextBox ID="tbMinQty" runat="server"></asp:TextBox>
&nbsp;
<asp:TextBox ID="tbHiQty" runat="server"></asp:TextBox>
&nbsp;
<asp:Button ID="qtySearch" runat="server" Text="Search" OnClick="qtySearch_Click" />
<br />
    <br />
    <asp:Label ID="lbError" runat="server" CssClass="error"></asp:Label>
<br />
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    <AlternatingItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="TYPELabel" runat="server" Text='<%# Eval("TYPE") %>' />
            </td>
            <td>
                <asp:Label ID="TITLELabel" runat="server" Text='<%# Eval("TITLE") %>' />
            </td>
            <td>
                <asp:Label ID="AUTHORLabel" runat="server" Text='<%# Eval("AUTHOR") %>' />
            </td>
            <td>
                <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
            </td>
            <td>
                <asp:Label ID="QTYLabel" runat="server" Text='<%# Eval("QTY") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:TextBox ID="TYPETextBox" runat="server" Text='<%# Bind("TYPE") %>' />
            </td>
            <td>
                <asp:TextBox ID="TITLETextBox" runat="server" Text='<%# Bind("TITLE") %>' />
            </td>
            <td>
                <asp:TextBox ID="AUTHORTextBox" runat="server" Text='<%# Bind("AUTHOR") %>' />
            </td>
            <td>
                <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
            </td>
            <td>
                <asp:TextBox ID="QTYTextBox" runat="server" Text='<%# Bind("QTY") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="">
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
            <td>
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            </td>
            <td>
                <asp:TextBox ID="TYPETextBox" runat="server" Text='<%# Bind("TYPE") %>' />
            </td>
            <td>
                <asp:TextBox ID="TITLETextBox" runat="server" Text='<%# Bind("TITLE") %>' />
            </td>
            <td>
                <asp:TextBox ID="AUTHORTextBox" runat="server" Text='<%# Bind("AUTHOR") %>' />
            </td>
            <td>
                <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
            </td>
            <td>
                <asp:TextBox ID="QTYTextBox" runat="server" Text='<%# Bind("QTY") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="TYPELabel" runat="server" Text='<%# Eval("TYPE") %>' />
            </td>
            <td>
                <asp:Label ID="TITLELabel" runat="server" Text='<%# Eval("TITLE") %>' />
            </td>
            <td>
                <asp:Label ID="AUTHORLabel" runat="server" Text='<%# Eval("AUTHOR") %>' />
            </td>
            <td>
                <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
            </td>
            <td>
                <asp:Label ID="QTYLabel" runat="server" Text='<%# Eval("QTY") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                        <tr runat="server" style="">
                            <th runat="server">ID</th>
                            <th runat="server">TYPE</th>
                            <th runat="server">TITLE</th>
                            <th runat="server">AUTHOR</th>
                            <th runat="server">PRICE</th>
                            <th runat="server">QTY</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="TYPELabel" runat="server" Text='<%# Eval("TYPE") %>' />
            </td>
            <td>
                <asp:Label ID="TITLELabel" runat="server" Text='<%# Eval("TITLE") %>' />
            </td>
            <td>
                <asp:Label ID="AUTHORLabel" runat="server" Text='<%# Eval("AUTHOR") %>' />
            </td>
            <td>
                <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
            </td>
            <td>
                <asp:Label ID="QTYLabel" runat="server" Text='<%# Eval("QTY") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Books]">
</asp:SqlDataSource>
</asp:Content>
