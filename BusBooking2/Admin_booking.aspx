<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_booking.aspx.cs" Inherits="Admin_booking" %>

<asp:Content runat="server" ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" >
    <asp:HyperLink ID="HyperLink1" SkinID="categories" runat="server" NavigateUrl="~/Admin_bus.aspx" >All Buses</asp:HyperLink>   |   
    <asp:HyperLink ID="HyperLink2" SkinID="categories" runat="server" NavigateUrl="~/Admin_booking.aspx">All Bookings</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel runat="server">
    <asp:Label ID="Label8" runat="server" Text="All the past bookings:" Font-Size="X-Large" font-bold="true" Font-Underline="true" style="z-index: 1; left: 27px; top: 143px; position: absolute" ></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" CellSpacing="1"
                  DataSourceID="SqlDataSource1" AllowSorting="true" AlternatingRowStyle-BackColor="LightBlue" BackColor="White" BorderStyle="Dashed" style="z-index: 1; left: 27px; top: 187px; position: absolute; height: 284px; width: 395px">
                <columns>
                <asp:BoundField DataField="Username" HeaderText="Customer ID"  SortExpression="Username"/>
                <asp:BoundField DataField="BusID" HeaderText="Bus ID" SortExpression="BusID" />
                <asp:BoundField DataField="Time" HeaderText="Time of Booking" SortExpression="Time" />
                <asp:BoundField DataField="Seats" HeaderText="Number of Seats" SortExpression="Seats" />
                </columns>
            </asp:GridView>
    </asp:Panel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ connectionStrings:bus %>"
         SelectCommand ="select * from Bookings">     
    </asp:SqlDataSource>

</asp:Content>