<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_bus.aspx.cs" Inherits="Admin_bus" %>

<asp:Content runat="server" ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" >
    <asp:HyperLink ID="HyperLink1" SkinID="categories" runat="server" NavigateUrl="~/Admin_bus.aspx" >All Buses</asp:HyperLink>   |   
    <asp:HyperLink ID="HyperLink2" SkinID="categories" runat="server" NavigateUrl="~/Admin_booking.aspx">All Bookings</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel runat="server" CssClass="left" Height="600px">
     <asp:Label ID="Label4" runat="server" Text="Add Details for a new bus:" Font-Bold="true" Font-Size="X-Large" style="z-index: 1; left: 117px; top: 6px; position: absolute; height: 20px;" EnableTheming="false" />
        <br/>
        <asp:Label ID="Label5" runat="server" Text="Bus ID: " Font-Size="Medium" Font-Bold="true"  /><asp:TextBox ID="id" runat="server" style="position: absolute; top:89px; left: 249px; height: 22px" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="Insert" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="id" ErrorMessage="*Bus ID is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label6" runat="server" Text="Company:" Font-Size="Medium" Font-Bold="true"  /><asp:TextBox ID="company" runat="server" style="position: absolute; top: 132px; left: 241px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="Insert" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ControlToValidate="company" ErrorMessage="*Company is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label7" runat="server" Text="From: " Font-Size="Medium" Font-Bold="true" /><asp:TextBox ID="source" runat="server"  style="position: absolute; top: 177px; left: 241px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="Insert" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ControlToValidate="source" ErrorMessage="*Source city is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label1" runat="server" Text="To: " Font-Size="Medium" Font-Bold="true"  /><asp:TextBox ID="destination" runat="server" style="position: absolute; top: 230px; left: 248px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="Insert" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ControlToValidate="destination" ErrorMessage="*Destination city is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Time: " Font-Size="Medium" Font-Bold="true"  />
        <asp:RequiredFieldValidator ValidationGroup="Insert" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ControlToValidate="time" ErrorMessage="*Time is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Number of seats: " Font-Size="Medium" Font-Bold="true"  /><asp:TextBox ID="num_seats" runat="server" style="position: absolute; top: 340px; left: 254px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="Insert" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ControlToValidate="num_seats" ErrorMessage="*Number of seats is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label9" runat="server" Text="Date: " Font-Size="Medium" Font-Bold="true"  /><asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 254px; top: 411px; position: absolute; height: 151px; width: 178px"></asp:Calendar>
        
        <br/>
        <asp:ImageButton ValidationGroup="Insert" ID="signup" OnClick="signup_Click" runat="server" ImageUrl="~/signup.jpg" style="z-index: 1; top: 503px; position: absolute; height: 23px; width: 115px; right: 270px" EnableTheming="false"/>
        <asp:DropDownList ID="time" runat="server" style="z-index: 1; left: 248px; top: 282px; position: absolute; height: 17px; width: 193px" />
    </asp:Panel>
    <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="true" runat="server" />
         <asp:Panel ID="Panel3" runat="server" CssClass="center">
        <asp:Image ID="Image1" ImageUrl="~/line.jpg" runat="server"  Height="400px" Width="5px" />
    </asp:Panel>
         <asp:Panel ID="Panel1" runat="server" CssClass="center">
        <asp:Image ID="Image2" ImageUrl="~/line.jpg" runat="server"  Height="600px" Width="5px" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="right" Height="600px" >
        <asp:Label ID="Label8" runat="server" Text="Information about all the buses stored in the database:" Font-Size="X-Large" font-bold="true" Font-Underline="true" ></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" AutoGenerateDeleteButton="true" AutoGenerateEditButton="true"
                    Font-Size ="Large" DataSourceID="SqlDataSource1" EnablePersistedSelection ="true" AllowSorting="true" DataKeyNames="BusID" AlternatingRowStyle-BackColor="LightBlue" BorderStyle="Dashed">
                <columns>
                <asp:BoundField DataField="BusID" HeaderText="Bus ID" SortExpression="BusID"/>
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Source" HeaderText="From" SortExpression ="Source" />
                <asp:BoundField DataField="Destination" HeaderText="To"  SortExpression ="Destination"/>
                <asp:BoundField DataField="Date" HeaderText="Date"  SortExpression ="Date"/>
                <asp:BoundField DataField="Time" HeaderText="Time of Departure" SortExpression="Time"/>
                <asp:BoundField DataField="Seats" HeaderText="Number of Seats" SortExpression ="Seats"/>
                </columns>
         </asp:GridView>   

            
        <br/>
    </asp:Panel>
     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ connectionStrings:bus %>"
         SelectCommand ="select * from Buses"
         DeleteCommand ="delete from Buses where BusID = @BusID"
         UpdateCommand ="update Buses set Company = @Company, Source = @Source, Destination=@Destination, Date=@Date,Time=@Time,Seats=@Seats where BusID = @BusID">

        <DeleteParameters>
            <asp:ControlParameter Name ="BusID" ControlID="GridView1" />
        </DeleteParameters>
      
    </asp:SqlDataSource>
</asp:Content>