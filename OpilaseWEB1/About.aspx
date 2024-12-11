<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OpilaseWEB1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="autoID" DataSourceID="SqlDataSource1_autod" Height="50px" Width="125px" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="autoID" HeaderText="autoID" ReadOnly="True" SortExpression="autoID" />
            <asp:BoundField DataField="mark" HeaderText="mark" SortExpression="mark" />
            <asp:BoundField DataField="regNumber" HeaderText="regNumber" SortExpression="regNumber" />
            <asp:BoundField DataField="aasta" HeaderText="aasta" SortExpression="aasta" />
            <asp:TemplateField HeaderText="omanikID" SortExpression="omanikID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("omanikID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nimi" DataValueField="omanikID" SelectedValue='<%# Bind("omanikID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:autoConnectionString %>" DeleteCommand="DELETE FROM [omanik] WHERE [omanikID] = @omanikID" InsertCommand="INSERT INTO [omanik] ([omanikID], [nimi]) VALUES (@omanikID, @nimi)" SelectCommand="SELECT [omanikID], [nimi] FROM [omanik]" UpdateCommand="UPDATE [omanik] SET [nimi] = @nimi WHERE [omanikID] = @omanikID">
                        <DeleteParameters>
                            <asp:Parameter Name="omanikID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="omanikID" Type="Int32" />
                            <asp:Parameter Name="nimi" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nimi" Type="String" />
                            <asp:Parameter Name="omanikID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1_omank" runat="server"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("omanikID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1_autod" runat="server" ConnectionString="<%$ ConnectionStrings:autoConnectionString %>" DeleteCommand="DELETE FROM [auto] WHERE [autoID] = @autoID" InsertCommand="INSERT INTO [auto] ([autoID], [mark], [regNumber], [aasta], [omanikID]) VALUES (@autoID, @mark, @regNumber, @aasta, @omanikID)" SelectCommand="SELECT * FROM [auto]" UpdateCommand="UPDATE [auto] SET [mark] = @mark, [regNumber] = @regNumber, [aasta] = @aasta, [omanikID] = @omanikID WHERE [autoID] = @autoID">
            <DeleteParameters>
                <asp:Parameter Name="autoID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="autoID" Type="Int32" />
                <asp:Parameter Name="mark" Type="String" />
                <asp:Parameter Name="regNumber" Type="String" />
                <asp:Parameter Name="aasta" Type="Int32" />
                <asp:Parameter Name="omanikID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="mark" Type="String" />
                <asp:Parameter Name="regNumber" Type="String" />
                <asp:Parameter Name="aasta" Type="Int32" />
                <asp:Parameter Name="omanikID" Type="Int32" />
                <asp:Parameter Name="autoID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>
