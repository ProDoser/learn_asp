<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffList.aspx.cs" Inherits="HRSolutionLite.StaffList" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lbDep" runat="server" Text="Deparment"></asp:Label>
<asp:DropDownList ID="DropDownListDep" runat="server" DataSourceID="SqlDataSource2" DataTextField="DepName" DataValueField="DepName">
</asp:DropDownList>
<asp:Button ID="btSearch" runat="server" OnClick="btSearch_Click" Text="Search" />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM [Department]"></asp:SqlDataSource>
<asp:Label ID="lbPosition" runat="server" Text="Position"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownListPosition" runat="server" DataSourceID="SqlDataSource3" DataTextField="Position" DataValueField="Position">
</asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT Staff.ID, Staff.Name, Staff.DepId, Staff.Gender, Staff.Phone, Staff.Email, Staff.Salary, FORMAT(Staff.BirthDate, 'DD.MM.YYYY') AS BirthDate, Staff.[Position] FROM [Staff] ORDER BY [DepId], [Name]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [Position] FROM [Staff]"></asp:SqlDataSource>
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID">
    <AlternatingItemTemplate>
        <tr style="background-color: #FFF8DC;">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            </td>
            <td>
                <asp:Label ID="DepIdLabel" runat="server" Text='<%# Eval("DepId") %>' />
            </td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            </td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            </td>
            <td>
                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
            </td>
            <td>
                <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            </td>
            <td>
                <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color: #008A8C; color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            </td>
            <td>
                <asp:TextBox ID="DepIdTextBox" runat="server" Text='<%# Bind("DepId") %>' />
            </td>
            <td>
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            </td>
            <td>
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            </td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            </td>
            <td>
                <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
            </td>
            <td>
                <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
            </td>
            <td>
                <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
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
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            </td>
            <td>
                <asp:TextBox ID="DepIdTextBox" runat="server" Text='<%# Bind("DepId") %>' />
            </td>
            <td>
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            </td>
            <td>
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            </td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            </td>
            <td>
                <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
            </td>
            <td>
                <asp:TextBox ID="BirthDateTextBox" runat="server" Text='<%# Bind("BirthDate") %>' />
            </td>
            <td>
                <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color: #DCDCDC; color: #000000;">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            </td>
            <td>
                <asp:Label ID="DepIdLabel" runat="server" Text='<%# Eval("DepId") %>' />
            </td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            </td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            </td>
            <td>
                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
            </td>
            <td>
                <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            </td>
            <td>
                <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                            <th runat="server">ID</th>
                            <th runat="server">Name</th>
                            <th runat="server">DepId</th>
                            <th runat="server">Gender</th>
                            <th runat="server">Phone</th>
                            <th runat="server">Email</th>
                            <th runat="server">Salary</th>
                            <th runat="server">BirthDate</th>
                            <th runat="server">Position</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
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
        <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            </td>
            <td>
                <asp:Label ID="DepIdLabel" runat="server" Text='<%# Eval("DepId") %>' />
            </td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            </td>
            <td>
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
            </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            </td>
            <td>
                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
            </td>
            <td>
                <asp:Label ID="BirthDateLabel" runat="server" Text='<%# Eval("BirthDate") %>' />
            </td>
            <td>
                <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
</asp:Content>
