<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UppdateraKurser.aspx.cs" Inherits="Studiesystemet.UppdateraKurser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Uppdatera kurser</h2>
    <asp:DropDownList ID="ddlCourses" runat="server" OnSelectedIndexChanged="ddlCourses_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
    <p></p>
    <asp:Label ID="lblStatus" runat="Server"></asp:Label>
    <asp:DetailsView ID="detailsViewCourses" runat="server" OnItemUpdating="detailsViewCourses_ItemUpdating" Height="50px" Width="300px" AllowPaging="False" AutoGenerateEditButton="True" DefaultMode="Edit"></asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
