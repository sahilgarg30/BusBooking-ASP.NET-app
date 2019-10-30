<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<asp:Content runat="server" ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" >
    <asp:HyperLink ID="HyperLink1" SkinID="categories" runat="server" NavigateUrl="~/Book.aspx" >Book Now</asp:HyperLink>   |   
    <asp:HyperLink ID="HyperLink2" SkinID="categories" runat="server" NavigateUrl="~/Trips.aspx">Past Trips</asp:HyperLink>
</asp:Content>

<asp:Content runat="server" ID="content1" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" CssClass="left">
        <asp:Label ID="Label1" runat="server" Text="Search for buses here:" Font-Bold="true" Font-Size="X-Large" Font-Underline="true" style="height: 20px; z-index: 1; left: 29px; top: 5px; position: absolute;" />
        <br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Company: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 25px; top: 47px; position: absolute" /><asp:DropDownList ID="companies" runat="server" style="z-index: 1; left: 147px; top: 43px; position: absolute"></asp:DropDownList>
        <asp:RequiredFieldValidator ValidationGroup="G1" ForeColor="Red" ControlToValidate="companies" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Company name is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="From: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 23px; top: 83px; position: absolute" /><asp:DropDownList ID="source" runat="server" style="z-index: 1; left: 146px; top: 81px; position: absolute"></asp:DropDownList>
        <asp:RequiredFieldValidator ValidationGroup="G1" ForeColor="Red" ControlToValidate="source" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Source city is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label4" runat="server" Text="To: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 24px; top: 118px; position: absolute; height: 20px; width: 36px" /><asp:DropDownList ID="destination" runat="server" style="z-index: 1; left: 146px; top: 116px; position: absolute"></asp:DropDownList>
        <asp:RequiredFieldValidator ValidationGroup="G1" ForeColor="Red" ControlToValidate="destination" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Destination city is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label6" runat="server" Font-Bold="true" Font-Size="Large" Text="Start Time: " style="z-index: 1; left: 25px; top: 155px; position: absolute" />
        <asp:DropDownList ID="stime" runat="server" style="z-index: 1; left: 144px; top: 155px; position: absolute"></asp:DropDownList>
        <asp:RequiredFieldValidator ValidationGroup="G1" ForeColor="Red" ControlToValidate="stime" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Start time is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label7" runat="server" Text="End Time: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 23px; top: 192px; position: absolute" /><asp:DropDownList ID="etime" runat="server" style="z-index: 1; left: 144px; top: 191px; position: absolute; margin-top: 0px;"></asp:DropDownList>
        <asp:RequiredFieldValidator ValidationGroup="G1" ForeColor="Red" ControlToValidate="etime" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*End time is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label5" runat="server" Font-Bold="true" Font-Size="Large" style="margin-top: 11px; z-index: 1; left: 24px; top: 217px; position: absolute; right: 325px;" Text="Date: " />
        <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 158px; top: 216px; position: absolute; height: 70px; width: 150px"></asp:Calendar>
        <br/>
        <asp:ImageButton ID="search" PostBackUrl="~/Book.aspx" ValidationGroup="G1" runat="server" ImageUrl="~/search.png" style="z-index: 1; left: 10px; top: 360px; position: absolute; height: 23px; width: 115px;" BorderStyle="Double" />
    </asp:Panel>
    <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="true" ValidationGroup="G1" runat="server" />
         <asp:Panel ID="Panel2" runat="server" CssClass="center">
        <asp:Image ID="Image1" ImageUrl="~/line.jpg" runat="server"  Height="400px" Width="5px" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="right">
            <asp:Label ID="Label8" runat="server" Text="List of the buses available according to the search filters:" Font-Size="X-Large" font-bold="true" Font-Underline="true" ></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" AutoGenerateSelectButton="true" CellSpacing="1" OnSelectedIndexChanging="selection_changed" sortExpression="id" 
                  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID ="SqlDataSource1" Font-Size="Large" AllowSorting="true" AlternatingRowStyle-BackColor="LightBlue" BorderStyle="Dashed">
                <columns>
                <asp:BoundField DataField="BusID" HeaderText="Bus ID" SortExpression="BusID"/>
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Source" HeaderText="From" SortExpression ="Source" />
                <asp:BoundField DataField="Destination" HeaderText="To"  SortExpression ="Destination"/>
                <asp:BoundField DataField="Date" HeaderText="Date"  SortExpression ="Date"/>
                <asp:BoundField DataField="Time" HeaderText="Time of Departure" SortExpression="Time"/>
                <asp:BoundField DataField="Seats" HeaderText="Number of Seats Available" SortExpression ="Seats"/>
                </columns>
            </asp:GridView>
        <br/>
        <asp:Label ID="seats" runat="server" Text="Number of tickets you would like to book: "></asp:Label><asp:TextBox ID="num_seats" runat="server"></asp:TextBox>
        <br/>
        <asp:ImageButton ID="book" ImageUrl="~/book.jpg" runat="server" OnClick="Book_Ticket" />
    </asp:Panel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ connectionStrings:bus %>"
         SelectCommand ="select * from Buses where Company = @company AND Source = @source  AND Destination = @destn AND Time >= @start AND Time <= @end  AND Date = @date  ">
        <SelectParameters>
            <asp:ControlParameter ControlID="companies" Name ="company" PropertyName ="SelectedValue" />
            <asp:ControlParameter ControlID="source" Name ="source" PropertyName ="SelectedValue" />
            <asp:ControlParameter ControlID="destination" Name ="destn" PropertyName ="SelectedValue" />
            <asp:ControlParameter ControlID="stime" Name ="start" PropertyName ="SelectedValue" />
            <asp:ControlParameter ControlID="etime" Name ="end" PropertyName ="SelectedValue" />
            <asp:ControlParameter ControlID="Calendar1" Name ="date" PropertyName ="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>

            
</asp:Content>