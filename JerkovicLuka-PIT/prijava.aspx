<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="JerkovicLuka_PIT.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
        <div>
            <!--- POLJE ZA IME --->
            Prezime i Ime: 
            <asp:TextBox ID="txtIme"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtImeValidator"
                ErrorMessage="Ime i prezime su obavezni!"
                ControlToValidate="txtIme"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />
 
            <!--- POLJE ZA EMAIL --->
            Email: 
            <asp:TextBox ID="txtEmail"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtEmailValidator"
                ErrorMessage="Email je obavezan!"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="txtEmailExpression"
                ErrorMessage="Email nije u ispravnom formatu"
                ControlToValidate="txtEmail"               
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RegularExpressionValidator>
            <br />
 
            <!--- POLJE ZA POTVRDU MAILA --->           
            Potvrdi Email: 
            <asp:TextBox ID="txtConfirm"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtConfirmValidator"
                ErrorMessage="Obavezno je potvrditi email!"
                ControlToValidate="txtConfirm"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="PorediLozinkeValidator"
                ErrorMessage="Emailovi nisu isti"
                ControlToCompare="txtConfirm"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server" ></asp:CompareValidator>
            <br />
 
            <!--- POLJE ZA BROJ GODINA --->           
            Godina Rođenja: 
            <asp:TextBox ID="txtAge"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtAgeValidator"
                ErrorMessage="Obavezno je uneti godište!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="GodineValidator"
                ErrorMessage="Nedozvoljeno godište!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                MinimumValue="2003"
                MaximumValue="2010"
                Type="Integer"
                runat="server"></asp:RangeValidator>
            <br />

            <!--- RAZRED --->
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">I</asp:ListItem>
                <asp:ListItem Value="2">II</asp:ListItem>
                <asp:ListItem Value="3">III</asp:ListItem>
                <asp:ListItem Value="4">IV</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="radioButtonValidator"
                ErrorMessage="Obavezno je izabrati razred!"
                ControlToValidate="RadioButtonList1"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />

            <!--- SUBMIT --->
            <asp:Button ID="btnSubmit"
                ValidationGroup="Group1"
                CausesValidation="true"
                OnClick="btnSubmit_Click"
                Text="Prijavi se"
                runat="server"/>
            <br />

            <!--- ERROR CONSOLE --->
            <asp:Label ID="lblPoruka"
                runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
