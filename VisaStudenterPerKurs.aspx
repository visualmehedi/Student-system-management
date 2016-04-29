<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisaStudenterPerKurs.aspx.cs" Inherits="Studiesystemet.UpdateStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <h2>Visa studenter per kurs</h2>
    <asp:Label ID="lblValKurskod" Text="Välj kurs:" runat="server" ></asp:Label>  
    <asp:DropDownList ID="ddlStudenter" runat="server" OnSelectedIndexChanged="ddlStudenter_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>
    <p></p>
    <asp:Label ID="lblKurskod" runat="server"></asp:Label>
    <asp:Label ID="lblKursnamn" runat="server"></asp:Label>
    <p></p>
    <asp:Label ID="lblStudenterSaknas" runat="server"></asp:Label>
    <p></p>
    <asp:DataList ID="dlstStudenter" runat="server">
        <HeaderTemplate>
            <hr/>
        </HeaderTemplate>
        <FooterTemplate>
            <hr />
        </FooterTemplate>
        <ItemTemplate>
            <asp:Label ID="lblEnamn" runat="server"
                Text='<%# DataBinder.Eval(Container, "DataItem.Enamn") %>'></asp:Label>
  
            <asp:Label ID="lblPersnr" runat="server"
                Text='<%# DataBinder.Eval(Container, "DataItem.ElevId") %>'></asp:Label>
        </ItemTemplate>
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>
  
</asp:Content>
