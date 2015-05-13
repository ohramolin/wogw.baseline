<%@ Import Namespace="UCommerce.Presentation.Web"%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditProductCatalogGroup.ascx.cs" Inherits="UCommerce.Web.UI.Catalog.EditProductCatalogGroup1" %>
<%@ Register tagPrefix="commerce" tagName="ValidationSummary" src="../Controls/ValidationSummaryDisplay.ascx" %>

<commerce:ValidationSummary runat="server" />

<div class="propertyPane">      
    <commerce:PropertyPanel runat="server" meta:resourceKey="Domain">
        <asp:DropDownList runat="server" ID="DomainDropDown" DataSource="<%# Domains %>" DataValueField="DomainId" DataTextField="DomainName" CssClass="mediumWidth"></asp:DropDownList>
    </commerce:PropertyPanel>
    <commerce:PropertyPanel runat="server" meta:resourceKey="Description">
        <asp:TextBox runat="server" ID="DescriptionTextBox" Text="<%# View.ProductCatalogGroup.Description %>" TextMode="MultiLine" CssClass="mediumWidth smallHeight textArea" />
    </commerce:PropertyPanel>
    <div class="propertyPaneFooter">-</div>
</div>

<div class="propertyPane">
	<commerce:PropertyPanel runat="server" meta:resourceKey="Currency">
		<asp:DropDownList runat="server" ID="CurrencyDropDownList" DataSource="<%# View.Currencies %>" DataValueField="CurrencyId" DataTextField="ISOCode" CssClass="mediumWidth" />
	</commerce:PropertyPanel>
	<commerce:PropertyPanel runat="server" meta:resourceKey="EmailProfile">
		<asp:DropDownList runat="server" ID="EmailProfileDropDownList" DataSource="<%# View.EmailProfiles %>" DataValueField="EmailProfileId" DataTextField="Name" CssClass="mediumWidth" />
	</commerce:PropertyPanel>

	<commerce:PropertyPanel runat="server" meta:resourceKey="OrderNumber">
		<asp:DropDownList runat="server" ID="OrderNumberDropDown" DataSource="<%# OrderNumberSeries %>" DataTextField="OrderNumberName" DataValueField="OrderNumberId" CssClass="mediumWidth"></asp:DropDownList>
	</commerce:PropertyPanel>

	<commerce:PropertyPanel runat="server" meta:resourceKey="ProductReviewsRequireApproval">
		<asp:CheckBox runat="server" ID="ProductReviewsRequireApproval" Checked="<%# View.ProductCatalogGroup.ProductReviewsRequireApproval %>" />
	</commerce:PropertyPanel>
    <div class="propertyPaneFooter">-</div>
</div>

<div class="propertyPane">
    <commerce:PropertyPanel runat="server" meta:resourceKey="CreateCustomersAsMembers">
        <asp:CheckBox runat="server" ID="CreateCustomersAsMembers" Checked="<%# View.ProductCatalogGroup.CreateCustomersAsMembers %>" />
    </commerce:PropertyPanel>
            
    <commerce:PropertyPanel runat="server" meta:resourceKey="MemberGroup">
        <asp:DropDownList runat="server" ID="MemberGroupDropDown"  DataSource="<%# MemberGroups %>" DataValueField="MemberGroupId" DataTextField="Name" CssClass="mediumWidth" />
    </commerce:PropertyPanel>
            
    <commerce:PropertyPanel runat="server" meta:resourceKey="MemberType">
        <asp:DropDownList runat="server" ID="MemberTypeDropDown" DataSource="<%# MemberTypes %>" DataValueField="MemberTypeId" DataTextField="Name" CssClass="mediumWidth" />
    </commerce:PropertyPanel>
    <div class="propertyPaneFooter">-</div>
</div>