<%@ Page Title="Artist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="Chinook.Pages.Artist"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Artists</h3>

    <div class="row">
        <asp:Repeater ID="ArtistRepeater" runat="server"
             DataSourceID="ArtistDataSource"
             ItemType="ChinookBackend.Entities.Artist">
            <ItemTemplate>
                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><%# Item.Name %></h4>
                        </div>
                        <div class="panel-body">
                            <asp:Repeater ID="AlbumRepeater" runat="server"
                                 DataSource="<%# Item.Album %>"
                                 ItemType="ChinookBackend.Entities.Album">
                                <ItemTemplate><%# Item.Title.Trim() %></ItemTemplate>
                                <SeparatorTemplate>, </SeparatorTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:ObjectDataSource ID="ArtistDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllArtists" TypeName="ChinookBackend.BLL.CRUD.ArtistController"></asp:ObjectDataSource>
</asp:Content>
