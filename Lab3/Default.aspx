<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" HeaderText="Fel har inträffat, åtgärda och försök igen..." />
        <!-- Starttemperature -->
        <div>
            <span>Starttemperatur</span><br />
            <asp:TextBox ID="StartTempTextBox" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="StartTempCompareValidator" runat="server" ErrorMessage="Starttemperaturen måste vara ett heltal!" Display="Dynamic" Operator="DataTypeCheck" Type="Integer" ControlToValidate="StartTempTextBox">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="StartTempRequiredFieldValidator" runat="server" ErrorMessage="Starttemperaturen måste ha ett värde!" Display="Dynamic" ControlToValidate="StartTempTextBox">*</asp:RequiredFieldValidator>
            <br /><br />
        </div>

        <!-- Endtemperature -->
        <div>
            <span>Sluttemperatur</span><br />
            <asp:TextBox ID="EndTempTextBox" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="EndTempCompareValidator" runat="server" ErrorMessage="Sluttemperaturen måste vara ett heltal!" Display="Dynamic" Type="Integer" ControlToValidate="EndTempTextBox" ControlToCompare="StartTempTextBox" Operator="DataTypeCheck">*</asp:CompareValidator>
            <asp:CompareValidator ID="EndTempCompareGreaterThan" runat="server" ErrorMessage="Sluttemperaturen måste vara mer än starttemperaturen!" ControlToCompare="StartTempTextBox" ControlToValidate="EndTempTextBox" Display="Dynamic" Operator="GreaterThan" Type="Integer">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="EndTempRequiredFieldValidator" runat="server" ErrorMessage="Sluttemperaturen måste ha ett värde!" ControlToValidate="EndTempTextBox" Display="Dynamic">*</asp:RequiredFieldValidator>
            <br /><br />
        </div>

        <!-- Interval -->
        <div>
            <span>Temperatursteg</span><br />
            <asp:TextBox ID="StepsTextBox" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="StepsCompareValidator" runat="server" ErrorMessage="Intervallet måste vara ett heltal!" ControlToValidate="StepsTextBox" Display="Dynamic" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="StepsRequiredFieldValidator" runat="server" ErrorMessage="Intervallet måste ha ett värde!" Display="Dynamic" ControlToValidate="StepsTextBox">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="StepsRangeValidator" runat="server" ErrorMessage="Intervallet måste vara mellan 1 - 100!" ControlToValidate="StepsTextBox" Display="Dynamic" MaximumValue="100" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            <br /><br />
        </div>

        <!-- Radiobuttons -->
        <div>
            <asp:RadioButton ID="CelciusToFarenButton" runat="server" Checked="True" GroupName="RadioButtons" /><span>Celcius till Farenheit</span><br />
            <asp:RadioButton ID="FarenToCelciusButton" runat="server" GroupName="RadioButtons" /><span>Farenheit till Celcius</span><br />
        </div>
        <!-- Sendbutton -->
        <asp:Button ID="SendButton" runat="server" Text="Omvandla" OnClick="SendButton_Click" />
    </div>

         <asp:Table ID="Table1" runat="server" CssClass="table" Visible="false">
         <asp:TableHeaderRow>
             <asp:TableHeaderCell ID="TableHeader1"></asp:TableHeaderCell>
             <asp:TableHeaderCell ID="TableHeader2"></asp:TableHeaderCell>
         </asp:TableHeaderRow>
         </asp:Table>
    </form>
</body>
</html>
