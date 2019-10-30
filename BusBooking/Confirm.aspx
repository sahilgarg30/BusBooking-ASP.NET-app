<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="content3" ContentPlaceHolderID="ContentPlaceHolder2" >
    <asp:HyperLink ID="HyperLink1" SkinID="categories" runat="server" NavigateUrl="~/Book.aspx" >Book Now</asp:HyperLink>   |   
    <asp:HyperLink ID="HyperLink2" SkinID="categories" runat="server" NavigateUrl="~/Trips.aspx">Past Trips</asp:HyperLink>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="center">
    <asp:Label ID ="label1" Text ="Confirmation" runat="server" Font-Size="XX-Large"></asp:Label>
        </asp:Panel>
</asp:Content>