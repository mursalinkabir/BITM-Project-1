<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryViewUI.aspx.cs" Inherits="CityCountryInfoManagement.UI.CountryViewUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />
    <title>Country View</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 131px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <fieldset class="fieldsetstyle2"><legend>Search criteria</legend>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp; &nbsp;Name</td>
                <td>
                    <asp:TextBox ID="countryViewSearchTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="countryViewSearchButton"  runat="server" Text="Search" OnClick="countryViewSearchButton_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="countryViewMeassageLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </fieldset>
        <asp:GridView ID="countryViewGridView" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" CellPadding="4" PageSize="4">
            <Columns>
                  <asp:TemplateField HeaderText="SL#">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Container.DataItemIndex+1 %>'>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:HiddenField runat="server" ID="idHiddenField" Value='<%#Eval("Id")%>'/>
                        <asp:Label runat="server" Text='<%#Eval("About")%>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="No of Cities">
                    <ItemTemplate>
                       
                        <asp:Label runat="server" Text='<%#Eval("NoOfCities")%>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="No of City Dwellers">
                    <ItemTemplate>
                       
                        <asp:Label runat="server" Text='<%#Eval("NoOfDwellers")%>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                </Columns>
                      <PagerSettings Mode="NumericFirstLast" />
        </asp:GridView>
   
    </form>
</body>
</html>
