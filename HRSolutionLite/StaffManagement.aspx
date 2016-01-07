<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffManagement.aspx.cs" Inherits="HRSolutionLite.StaffManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<br />
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="ID" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            DepId:
            <asp:Label ID="DepIdLabel" runat="server" Text='<%# Eval("DepId") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Salary:
            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
            <br />
            BirthDate:
            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            <br />
            Position:
            <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            DepId:
            <asp:TextBox ID="DepIdTextBox" runat="server" Text='<%# Bind("DepId") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Salary:
            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
            <br />
            BirthDate:
            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
            <br />
            Position:
            <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            DepId:
            <asp:TextBox ID="DepIdTextBox" runat="server" Text='<%# Bind("DepId") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Salary:
            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
            <br />
            BirthDate:
            <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
            <br />
            Position:
            <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
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
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            DepId:
            <asp:Label ID="DepIdLabel" runat="server" Text='<%# Eval("DepId") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Salary:
            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
            <br />
            BirthDate:
            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            <br />
            Position:
            <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
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
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            DepId:
            <asp:Label ID="DepIdLabel" runat="server" Text='<%# Eval("DepId") %>' />
            <br />
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Salary:
            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
            <br />
            BirthDate:
            <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            <br />
            Position:
            <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Staff] ORDER BY [DepId]" DeleteCommand="DELETE FROM [Staff] WHERE [ID] = ?" InsertCommand="INSERT INTO [Staff] ([ID], [Name], [DepId], [Gender], [Phone], [Email], [Salary], [BirthDate], [Position]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Staff] SET [Name] = ?, [DepId] = ?, [Gender] = ?, [Phone] = ?, [Email] = ?, [Salary] = ?, [BirthDate] = ?, [Position] = ? WHERE [ID] = ?">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="DepId" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Salary" Type="Int32" />
        <asp:Parameter Name="BirthDate" Type="DateTime" />
        <asp:Parameter Name="Position" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="DepId" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Salary" Type="Int32" />
        <asp:Parameter Name="BirthDate" Type="DateTime" />
        <asp:Parameter Name="Position" Type="String" />
        <asp:Parameter Name="original_ID" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
