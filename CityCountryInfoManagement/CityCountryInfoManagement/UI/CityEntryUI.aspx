﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntryUI.aspx.cs" Inherits="CityCountryInfoManagement.UI.CityEntryUI" validateRequest=false  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_editor.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <link href="../CSS/style.css" rel="stylesheet" />

</head>
<body>
    
    <form id="form1" runat="server">
    <fieldset class="fieldsetstyle"><legend>City Entry</legend>
     <table class="auto-style1">
        <tr>
            <td>
               <span class="whitetext">Name</span> </td>
            <td>
                <asp:TextBox CssClass="textboxstyle" ID="cityEntryNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
              <span class="whitetext">Location</span></td>
            <td>
                <asp:TextBox CssClass="textboxstyle" ID="cityLocationTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                <span class="whitetext">About</span></td>
            <td><textarea class="textareasize" ID="cityEntryAbout" runat="server"></textarea></td>
        </tr>
         <tr>
            <td>
                <span class="whitetext">Dwellers</span></td>
            <td>
                <asp:TextBox CssClass="textboxstyle" ID="CityDwellersTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <span class="whitetext">Weather</span></td>
            <td>
                <asp:TextBox CssClass="textboxstyle" ID="WeatherTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td>
                <span class="whitetext">Country</span></td>
            <td>
                <asp:DropDownList CssClass="textboxstyle" ID="cityCountryDropdownList" runat="server"></asp:DropDownList>
            </td>
        </tr>

       
        <tr>
            <td>&nbsp;</td>
            <td>
                <%--<asp:Button ID="cityEntrySaveButton" runat="server" Text="Save" OnClick="cityEntrySaveButton_Click" />--%>
                <asp:LinkButton ID="cityEntrySaveButton" runat="server" OnClick="cityEntrySaveButton_Click" ><i class="fa fa-flag-o button-form"> Save</i>
</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cityEntryButton" runat="server" Text="Reset" />
                <asp:Label ID="CitymessageLabel" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </tr>
         
                  </table>
        </fieldset>
                 <asp:GridView ID="cityEntryGridView" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" PageSize="4">
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
                    <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        
                        <asp:Label runat="server" Text='<%#Eval("Location")%>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:HiddenField runat="server" ID="idHiddenField" Value='<%#Eval("Id")%>'/>
                        <asp:Label runat="server" Text='<%#Eval("About")%>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dwellers">
                    <ItemTemplate>
                       
                        <asp:Label runat="server" Text='<%#Eval("Dwellers")%>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                    <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                       
                        <asp:Label runat="server" Text='<%#Eval("CountryId")%>'></asp:Label>
                    </ItemTemplate>
                     </asp:TemplateField>
                </Columns>
                      </asp:GridView>
                 
            
         
   
    
    
        </form >
        
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script src="../froala_editor_1.2.7/js/froala_editor.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/tables.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/lists.min.js"></script>
   
    <script src="../froala_editor_1.2.7/js/plugins/media_manager.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_family.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_size.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/block_styles.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/video.min.js"></script>
        <script>
            $(function () {
                $('#cityEntryAbout').editable({
                    inlineMode: false,
                    alwaysBlank: true,
                    height: 150
                })
            });
  </script>
</body>
</html>