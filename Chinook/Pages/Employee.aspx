<%@ Page Title="Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Page_Employee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Employees</h3>

        <div>
            <asp:ListView ID="EmployeeListView" runat="server" DataSourceID="EmployeeDataSource" InsertItemPosition="LastItem">
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("EmployeeID") %>' runat="server" ID="EmployeeIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="FirstNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("LastName") %>' runat="server" ID="LastNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("ReportsTo") %>' runat="server" ID="ReportsToTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("BirthDate") %>' runat="server" ID="BirthDateTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("HireDate") %>' runat="server" ID="HireDateTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Address") %>' runat="server" ID="AddressTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("State") %>' runat="server" ID="StateTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Country") %>' runat="server" ID="CountryTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("PostalCode") %>' runat="server" ID="PostalCodeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Fax") %>' runat="server" ID="FaxTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("FullName") %>' runat="server" ID="FullNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Customer") %>' runat="server" ID="CustomerTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Manager") %>' runat="server" ID="ManagerTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Subbordinates") %>' runat="server" ID="SubbordinatesTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("EmployeeID") %>' runat="server" ID="EmployeeIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="FirstNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("LastName") %>' runat="server" ID="LastNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("ReportsTo") %>' runat="server" ID="ReportsToTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("BirthDate") %>' runat="server" ID="BirthDateTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("HireDate") %>' runat="server" ID="HireDateTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Address") %>' runat="server" ID="AddressTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("State") %>' runat="server" ID="StateTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Country") %>' runat="server" ID="CountryTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("PostalCode") %>' runat="server" ID="PostalCodeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Fax") %>' runat="server" ID="FaxTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("FullName") %>' runat="server" ID="FullNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Customer") %>' runat="server" ID="CustomerTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Manager") %>' runat="server" ID="ManagerTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Subbordinates") %>' runat="server" ID="SubbordinatesTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeID") %>' runat="server" ID="EmployeeIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" ID="FirstNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("ReportsTo") %>' runat="server" ID="ReportsToLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("BirthDate") %>' runat="server" ID="BirthDateLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HireDate") %>' runat="server" ID="HireDateLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Address") %>' runat="server" ID="AddressLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("State") %>' runat="server" ID="StateLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Country") %>' runat="server" ID="CountryLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("PostalCode") %>' runat="server" ID="PostalCodeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Fax") %>' runat="server" ID="FaxLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Email") %>' runat="server" ID="EmailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("FullName") %>' runat="server" ID="FullNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Customer") %>' runat="server" ID="CustomerLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Manager") %>' runat="server" ID="ManagerLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Subbordinates") %>' runat="server" ID="SubbordinatesLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">EmployeeID</th>
                                        <th runat="server">FirstName</th>
                                        <th runat="server">LastName</th>
                                        <th runat="server">Title</th>
                                        <th runat="server">ReportsTo</th>
                                        <th runat="server">BirthDate</th>
                                        <th runat="server">HireDate</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">City</th>
                                        <th runat="server">State</th>
                                        <th runat="server">Country</th>
                                        <th runat="server">PostalCode</th>
                                        <th runat="server">Phone</th>
                                        <th runat="server">Fax</th>
                                        <th runat="server">Email</th>
                                        <th runat="server">FullName</th>
                                        <th runat="server">Customer</th>
                                        <th runat="server">Manager</th>
                                        <th runat="server">Subbordinates</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeID") %>' runat="server" ID="EmployeeIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" ID="FirstNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("ReportsTo") %>' runat="server" ID="ReportsToLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("BirthDate") %>' runat="server" ID="BirthDateLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HireDate") %>' runat="server" ID="HireDateLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Address") %>' runat="server" ID="AddressLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("State") %>' runat="server" ID="StateLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Country") %>' runat="server" ID="CountryLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("PostalCode") %>' runat="server" ID="PostalCodeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Fax") %>' runat="server" ID="FaxLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Email") %>' runat="server" ID="EmailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("FullName") %>' runat="server" ID="FullNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Customer") %>' runat="server" ID="CustomerLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Manager") %>' runat="server" ID="ManagerLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Subbordinates") %>' runat="server" ID="SubbordinatesLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

            <asp:ObjectDataSource ID="EmployeeDataSource" runat="server" DataObjectTypeName="ChinookBackend.Entities.Employee" DeleteMethod="RemoveEmployee" InsertMethod="AddEmployee" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllEmployees" TypeName="ChinookBackend.BLL.CRUD.EmployeeController" UpdateMethod="UpdateEmployee"></asp:ObjectDataSource>
        </div>
</asp:content>
