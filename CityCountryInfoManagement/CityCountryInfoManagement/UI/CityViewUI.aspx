<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityViewUI.aspx.cs" Inherits="CityCountryInfoManagement.UI.CityViewUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
       <form id="form1" runat="server">
    <div style="height: 311px">
        <fieldset>
            <legend>
                View Cities
            </legend>
            <fieldset style="height: 100px">
                <legend>Search Criteria</legend>
                <table>
                    <tr>
                        <td>
                            <asp:RadioButton ID="cityRadioButton"  runat="server" GroupName="search" Checked="True" Text="City" />
                            <br />
                            <asp:RadioButton ID="countryRadioButton" runat="server" GroupName="search" Text="Country" />
                        </td><td class="auto-style1">
                            <asp:TextBox ID="cityNameTextBox" runat="server" Height="22px"></asp:TextBox>
                            <br />
                            <asp:DropDownList ID="countryDropDownList" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="messageLabel" runat="server"></asp:Label>
                        </td>
                        <td> <asp:Button ID="searchCityButton" runat="server" Text="Search" OnClick="searchCityButton_Click" style="height: 26px" /></td>
                    </tr>
                </table>
                
            </fieldset>
            <asp:GridView ID="cityGridView" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" CellPadding="4" PageSize="4">
                <Columns>
                    <asp:TemplateField HeaderText="SL#">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Container.DataItemIndex+1 %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CityName")%>'></asp:Label>
                    </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CityAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="No Of Dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("NoOfDwellers")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Location")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="Weather">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Weather")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="About Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                
                </Columns>
            </asp:GridView>

        </fieldset>
    
    </div>
    </form>
</body>
</html>
