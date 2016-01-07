<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="HRSolutionLite.AddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbId" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbDepartment" runat="server" Text="Department"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DepName" DataValueField="ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM [Department]"></asp:SqlDataSource>
    <br />
    
    
        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
    
        
    
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
        <asp:ListItem Value="F">Female</asp:ListItem>
    </asp:DropDownList>
&nbsp;<br />
    <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbEmail" CssClass="validation-error" ErrorMessage="Wrong Email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Salary"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbSalary" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Birth Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbBirthDate" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Position"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPosition" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btAdd" runat="server" OnClick="btAdd_Click" Text="Add" />
    <asp:Label ID="lbMessage" runat="server"></asp:Label>
</asp:Content>
