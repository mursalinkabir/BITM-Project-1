<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main Menu.aspx.cs" Inherits="CityCountryInfoManagement.UI.Main_Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="cityEntryButton" runat="server" OnClick="cityEntryButton_Click" Text="City Entry" />
        <br />
        <asp:Button ID="countryEntryButton" runat="server" OnClick="countryEntryButton_Click" Text="Country Entry" />
        <br />
        <asp:Button ID="cityviewButton" runat="server" Text="City View" />
        <br />
        <asp:Button ID="countryviewButton" runat="server" OnClick="countryviewButton_Click" Text="Country View" />
    
    </div>
    </form>
</body>
</html>
