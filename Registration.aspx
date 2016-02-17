<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Name Required" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td class="auto-style1">
                <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator" runat="server" ErrorMessage="Address Required" ControlToValidate="AddressTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>City</td>
            <td class="auto-style1">
                <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="CityRequiredFieldValidator" runat="server" ErrorMessage="City Required" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>State</td>
            <td class="auto-style1">
                <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="StateRequiredFieldValidator" runat="server" ErrorMessage="State Required" ControlToValidate="StateTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Zip Code</td>
            <td class="auto-style1">
                <asp:TextBox ID="ZipTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ZipRequiredFieldValidator" runat="server" ErrorMessage="Zip Code Required" ControlToValidate="ZipTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Phone</td>
            <td class="auto-style1">
                <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="PhoneRequiredFieldValidator" runat="server" ErrorMessage="Phone Number Required" ControlToValidate="PhoneTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td class="auto-style1">
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Email Address Required" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Not a valid email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Web Page</td>
            <td class="auto-style1">
                <asp:TextBox ID="WebPageTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="WebPageRequiredFieldValidator" runat="server" ErrorMessage="Web Page Required" ControlToValidate="WebPageTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Age Restriction</td>
            <td class="auto-style1">
                <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="AgeRequiredFieldValidator" runat="server" ErrorMessage="Age Restriction Required" ControlToValidate="AgeTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>User Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="UserNameRequiredFieldValidator" runat="server" ErrorMessage="User Name Required" ControlToValidate="UserNameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td class="auto-style1">
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Password Required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirmed Password</td>
            <td class="auto-style1">
                <asp:TextBox ID="ConfirmedTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="ConfirmedRequiredFieldValidator" runat="server" ErrorMessage="Confirmed Password Required" ControlToValidate="ConfirmedTextBox"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords don't match" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmedTextBox"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
