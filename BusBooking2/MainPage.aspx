<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server" />
<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server" />

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="left">
        <asp:Label ID="Label1" runat="server" Text="Login:" Font-Bold="true" Font-Size="X-Large" style="z-index: 1; left: 130px; top: 6px; position: absolute; height: 20px;"  />
        <br/>
        <asp:Label ID="Label2" runat="server" Text="Username: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 5px; top: 107px; position: absolute" /><asp:TextBox ID="username" runat="server" Width="188px" style="z-index: 1; left: 169px; top: 109px; position: absolute" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="G1" ControlToValidate="username" runat="server" ForeColor="Red" Text="*required field" ErrorMessage="*Username field cannot be left empty" style="z-index: 1; left: 11px; top: 95px; position: absolute"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Password: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 15px; top: 186px; position: absolute" /><asp:TextBox ID="password" runat="server" style="z-index: 1; left: 167px; top: 191px; position: absolute; width: 197px;" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="G1" ControlToValidate="password" runat="server" Text="*required field" ErrorMessage="*Password field cannot be left empty" style="z-index: 1; left: 20px; top: 168px; position: absolute"></asp:RequiredFieldValidator>
        <br/>
        <br/>
        <asp:RegularExpressionValidator ValidationExpression="[\d\w]{6,15}" ValidationGroup="G1" ID="RegularExpressionValidator1" ForeColor="Red" ControlToValidate="password" runat="server"  Text="*Password must contain between 6-15 letters or numbers." ErrorMessage="*Password must contain between 6-15 letters or numbers." style="z-index: 1; left: 22px; top: 223px; position: absolute"></asp:RegularExpressionValidator>
        <br/>
        <asp:ImageButton ID="login" OnClick="login_Click" ImageUrl="~/login.jpg" ValidationGroup="G1" runat="server" style="z-index: 1; left: 130px; top: 250px; position: absolute; height: 23px; width: 115px;" EnableTheming="false"/>
        <asp:ImageButton ID="admin_login" OnClick="admin_login_Click" ImageUrl="~/admin.jpg" ValidationGroup="G1" runat="server" style="z-index: 1; left: 131px; top: 299px; position: absolute; height: 23px; width: 115px;" EnableTheming="false" />
        <br/>
        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="G1" runat="server" />
        <br/>
        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
        
    </asp:Panel>
    
         <asp:Panel ID="Panel2" runat="server" CssClass="center">
        <asp:Image ID="Image1" ImageUrl="~/line.jpg" runat="server"  Height="400px" Width="5px" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="right">

        <asp:Label ID="Label4" runat="server" Text="Create an account:" Font-Bold="true" Font-Size="X-Large" style="z-index: 1; left: 117px; top: 6px; position: absolute; height: 20px;" EnableTheming="false" />
        <br/>
        <asp:TextBox ID="TextBox3" runat="server" style="position: absolute; top:80px; left: 142px; height: 22px" EnableTheming="false"></asp:TextBox>
        <br/>
        <asp:TextBox ID="TextBox4" runat="server" style="position: absolute; top: 140px; left: 142px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="G2" ControlToValidate="TextBox4" Text="*required field" ErrorMessage="*Email ID is required" style="z-index: 1; left: 26px; top: 131px; position: absolute"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label7" runat="server" Text="Username: " Font-Size="Large" Font-Bold="true" style="z-index: 1; left: 16px; top: 201px; position: absolute" /><asp:TextBox ID="TextBox1" runat="server"  style="position: absolute; top: 200px; left: 142px; height: 22px;" EnableTheming="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Username is required" style="z-index: 1; left: 11px; top: 189px; position: absolute" Text="*required field" ValidationGroup="G2"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label8" runat="server" Font-Bold="true" Font-Size="Large" style="z-index: 1; left: 22px; top: 262px; position: absolute" Text="Password: " />
        <asp:TextBox ID="TextBox2" runat="server" EnableTheming="false" style="position: absolute; top: 260px; left: 142px; height: 22px;"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="password" ErrorMessage="*Password must contain between 6-15 letters or numbers." ForeColor="Red" Text="*" ValidationExpression="[\d\w]{6,15}" ValidationGroup="G2"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Name is required" style="z-index: 1; left: 28px; top: 64px; position: absolute" Text="*required field" ValidationGroup="G2"></asp:RequiredFieldValidator>
        <br/>
        <asp:Label ID="Label9" runat="server" Font-Bold="true" Font-Size="Large" style="z-index: 1; left: 1px; top: 324px; position: absolute" Text="Retype Password: " />
        <asp:TextBox ID="TextBox5" runat="server" EnableTheming="false" style="position: absolute;top: 320px; left: 142px; height: 22px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Font-Bold="true" Font-Size="Large" style="position: absolute; z-index: 1; left: 27px; top: 85px" Text="Name: " />
        <br/>
        <asp:ImageButton ValidationGroup="G2" ID="signup" runat="server" OnClick="signup_Click" ImageUrl="~/signup.jpg" style="z-index: 1; top: 379px; position: absolute; height: 23px; width: 115px; right: 132px" EnableTheming="false" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Email ID format is incorrect" style="z-index: 1; left: 24px; top: 171px; position: absolute" ValidationExpression=".*@.*" ValidationGroup="G2"></asp:RegularExpressionValidator>
        <asp:Label ID="Label6" runat="server" Font-Bold="true" Font-Size="Large" style="z-index: 1; left: 23px; top: 144px; position: absolute" Text="Email ID:" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox5" ErrorMessage="*Passwords don't match" Operator="Equal" style="z-index: 1; left: 5px; top: 348px; position: absolute" Type="String" ValidationGroup="G2" ValueToCompare=""></asp:CompareValidator>
        <asp:ValidationSummary ID="ValidationSummary2" ValidationGroup="G2" runat="server" style="z-index: 1; left: -15px; top: 363px; position: absolute; height: 28px; width: 387px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Password is required" style="z-index: 1; left: 24px; top: 241px; position: absolute" Text="*required field" ValidationGroup="G2"></asp:RequiredFieldValidator>
    </asp:Panel>
    
</asp:Content>