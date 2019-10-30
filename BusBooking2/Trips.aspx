<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trips.aspx.cs" Inherits="Trips" %>

<asp:Content runat="server" ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" >
    <asp:HyperLink ID="HyperLink1" SkinID="categories" runat="server" NavigateUrl="~/Book.aspx" >Book Now</asp:HyperLink>   |   
    <asp:HyperLink ID="HyperLink2" SkinID="categories" runat="server" NavigateUrl="~/Trips.aspx">Past Trips</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">

        <br />
        <br />

        <br />

        <br />
        
        <br />
        
        <br />
        
        <br />
        
        <br />


            <asp:Label ID="Label8" runat="server" Text="History of Orders:" Font-Size="X-Large" font-bold="true" Font-Underline="true" ></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" CellSpacing="1"
                 DataKeyNames="Time" DataSourceID="SqlDataSource1" AllowSorting="true" AlternatingRowStyle-BackColor="LightBlue" BorderStyle="Dashed" Font-Size="X-Large" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <columns>
                <asp:BoundField DataField="BusID" HeaderText="Bus ID" SortExpression="BusID" />
                <asp:BoundField DataField="Time" HeaderText="Time of Booking" SortExpression="Time" />
                <asp:BoundField DataField="Seats" HeaderText="Number of Seats Booked" SortExpression="Seats" />
                <asp:CommandField ShowSelectButton="true" SelectText="Cancel Booking" ButtonType="Button" />
                </columns>
            </asp:GridView>
        <br/>
    </asp:Panel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ connectionStrings:bus %>"
         SelectCommand ="select * from Bookings where Username = @us">
           <SelectParameters>
            <asp:SessionParameter Name="us" SessionField="user" DefaultValue="Anonymous Buyer"  Type="String"/>
        </SelectParameters>  
    </asp:SqlDataSource>

</asp:Content>

