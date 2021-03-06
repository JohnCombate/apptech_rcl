<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="IN101100.aspx.cs" Inherits="Page_IN101100" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="ItemBrand.INItemBrandMaint"
        PrimaryView="ItemBrands"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
	<px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Primary" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="ItemBrands">
			    <Columns>
				<px:PXGridColumn DataField="BrandCD" Width="140" />
				<px:PXGridColumn DataField="Description" Width="180" /></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>
