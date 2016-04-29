<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisaStudieuppgifter.aspx.cs" Inherits="Studiesystemet.VisaStudieuppgifter" %>
<asp:Content ID="ContentBody" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:GridView ID="gridViewStudieuppgifter" runat="server" AutoGenerateColumns="False" DataMember="DefaultView" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Enamn" HeaderText="Efternamn" />
            <asp:BoundField DataField="Fnamn" HeaderText="Förnamn" />
            <asp:BoundField DataField="Kursnamn" HeaderText="Kursnamn" />
            <asp:BoundField DataField="Poang" HeaderText="Poäng" />
            <asp:BoundField DataField="Niva" HeaderText="Nivå" />
        </Columns>
    </asp:GridView>
</asp:Content>
