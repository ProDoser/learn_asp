<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HRSolutionLite._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Basic human resourse managment solution.</h2>
            </hgroup>
            <p>
                This solution allow perform basic staff management manipulation. Browsing, editing and adding staff members.
            </p>
            <p>
                Database has 2 tables Staff and Department.</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Pages:</h3>
    <ol class="round">
        <li class="one">
            <h5>Staff List</h5>
            Here is list of all staff members with 2 search criteria (by department or by position)
        </li>
        <li class="two">
            <h5>Staff Management</h5>
            Here all staff members could be edited or deleted. NB! I tried to add search feature there, but some error hapens. After the search Edit/Delete buttons perfom action over wrong staff member, like before the search.&nbsp;
        </li>
        <li class="three">
            <h5>Add member</h5>
            Allow to add new staff member. Gender and Department cold be only chosen from dropDownList. Gender has 2 values (no DB bindig in case if DB empty or only one gender members) and all departments that currently exists.</li>
    </ol>
</asp:Content>
