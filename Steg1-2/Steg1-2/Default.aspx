<%@ Page Title="Kassakvitto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Steg1_2._Default" ViewStateMode="Disabled" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Label ID="LabelSum" runat="server" Text="Total köpesumma:"></asp:Label>
    <div>
        <asp:TextBox ID="TextBoxSum" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Köpesumma måste tilldelas" ControlToValidate="TextBoxSum" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Köpesumma måste vara mer än 0" ControlToValidate="TextBoxSum" Display="Dynamic" Type="Currency" ValueToCompare="0" Operator="GreaterThan"></asp:CompareValidator>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <asp:Panel ID="PanelReceipt" runat="server" Visible="false">
        <div class="Receipt">
            <h1>DeVe</h1>
            En del av EllenU<br />
            <br />
            Tel: 0772-28 80 80<br />
            ÖppetTider: 8-17<br />
            EV. FEL GER UNDERKÄNT<br />
            <div class="ReceiptValues">
                <dl>
                    <dt>Totalt:</dt>
                    <dd><asp:Literal ID="LiteralSubTotal" runat="server"></asp:Literal></dd>

                    <dt>Rabattsats:</dt>
                    <dd><asp:Literal ID="LiteralDiscountPercentage" runat="server"></asp:Literal></dd>

                    <dt>Rabatt:</dt>
                    <dd><asp:Literal ID="LiteralDiscount" runat="server"></asp:Literal></dd>

                    <dt>Att betala:</dt>
                    <dd><asp:Literal ID="LiteralTotal" runat="server"></asp:Literal></dd>
                </dl>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
