<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server" />
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="left">
        <asp:Label ID="Label1" runat="server" Text="Login:" Font-Bold="true" Font-Size="X-Large" style="z-index: 1; left: 130px; top: 6px; position: absolute; height: 20px;"  />
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Username: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 5px; top: 107px; position: absolute" /><asp:TextBox ID="username" runat="server" Width="188px" style="z-index: 1; left: 169px; top: 109px; position: absolute" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="username" runat="server" ForeColor="Red" Text="*required field" ErrorMessage="*Username field cannot be left empty"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Password: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 15px; top: 186px; position: absolute" /><asp:TextBox ID="password" runat="server" style="z-index: 1; left: 167px; top: 191px; position: absolute; width: 197px;" ></asp:TextBox>
        <br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="G1" ControlToValidate="password" runat="server" Text="*required field" ErrorMessage="*Password field cannot be left empty"></asp:RequiredFieldValidator>
        <br/>
        <asp:RegularExpressionValidator ValidationExpression="[\d\w]{6,15}" ValidationGroup="G1" ID="RegularExpressionValidator1" ForeColor="Red" ControlToValidate="password" runat="server"  Text="Password must contain between 6-15 letters or numbers." ErrorMessage="Password must contain between 6-15 letters or numbers."></asp:RegularExpressionValidator>
        <br/>
        <asp:ImageButton ID="login" OnClick="login_Click" ImageUrl="~/login.jpg" ValidationGroup="G1" runat="server" style="z-index: 1; left: 130px; top: 250px; position: absolute; height: 23px; width: 115px;" EnableTheming="false"/>
        <asp:ImageButton ID="admin_login" OnClick="admin_login_Click" ImageUrl="~/admin.jpg" ValidationGroup="G1" runat="server" style="z-index: 1; left: 133px; top: 299px; position: absolute; height: 23px; width: 115px;" EnableTheming="false" />
        <br/>
        <br/>
        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
    </asp:Panel>
    <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="true" ValidationGroup="G1" runat="server" />
         <asp:Panel ID="Panel2" runat="server" CssClass="center">
        <asp:Image ID="Image1" ImageUrl="~/line.jpg" runat="server"  Height="400px" Width="5px" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="right">

        <asp:Label ID="Label4" runat="server" Text="Create an account:" Font-Bold="true" Font-Size="X-Large" style="z-index: 1; left: 117px; top: 6px; position: absolute; height: 20px;" EnableTheming="false" />
        <br/>
        <asp:Label ID="Label5" runat="server" Text="Name: " Font-Size="Large" Font-Bold="true"  /><asp:TextBox ID="TextBox3" runat="server" style="position: absolute; top:80px; left: 142px; height: 22px" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="G2" runat="server" ControlToValidate="TextBox3" Text="*required field" ErrorMessage="*Name is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label6" runat="server" Text="Email ID:" Font-Size="Large" Font-Bold="true"  /><asp:TextBox ID="TextBox4" runat="server" style="position: absolute; top: 140px; left: 142px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RegularExpressionValidator  ID="RegularExpressionValidator2" ValidationGroup="G2" ControlToValidate="TextBox4" ValidationExpression=".*@.*" runat="server" ErrorMessage="*Email ID format is incorrect"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="G2" ControlToValidate="TextBox4" Text="*required field" ErrorMessage="*Email ID is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label7" runat="server" Text="Username: " Font-Size="Large" Font-Bold="true" /><asp:TextBox ID="TextBox1" runat="server"  style="position: absolute; top: 200px; left: 142px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ValidationGroup="G2"  Text="*required field" ErrorMessage="*Username is required"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label8" runat="server" Text="Password: " Font-Size="Large" Font-Bold="true"  /><asp:TextBox ID="TextBox2" runat="server" style="position: absolute; top: 260px; left: 142px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ValidationGroup="G2" Text="*required field" ErrorMessage="*Password is required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ValidationExpression="[\d\w]{6,15}" ValidationGroup="G2" ID="RegularExpressionValidator3" ForeColor="Red" ControlToValidate="password" runat="server"  Text="*" ErrorMessage="*Password must contain between 6-15 letters or numbers."></asp:RegularExpressionValidator>
        <br/>
        <asp:Label ID="Label9" runat="server" Text="Retype Password: " Font-Size="Large" Font-Bold="true"  /><asp:TextBox ID="TextBox5" runat="server" style="position: absolute;top: 320px; left: 142px; height: 22px" EnableTheming="false"></asp:TextBox>    
        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="TextBox2" ValidationGroup="G2" ControlToValidate="TextBox5" Operator="Equal" Type="String" ValueToCompare="" runat="server" ErrorMessage="*Passwords don't match"></asp:CompareValidator>
        <br/>
        <asp:ImageButton ValidationGroup="G2" ID="signup" runat="server" OnClick="signup_Click" ImageUrl="~/signup.jpg" style="z-index: 1; top: 380px; position: absolute; height: 23px; width: 115px; right: 120px" EnableTheming="false" />
    </asp:Panel>
    <asp:ValidationSummary ID="ValidationSummary2" ShowSummary="true" ValidationGroup="G2" runat="server" />
</asp:Content>