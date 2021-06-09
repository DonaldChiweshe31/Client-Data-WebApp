<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Client_data.aspx.cs" Inherits="WarpClientForm.Client_data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main content">
    <section id="wrapper">
        <div class="row">
            <div class="col-lg-12" style="left: -10px; top: 25px">
                <section class="panel">
                    <header class="panel-heading">
                        <div class="col-md-4 col-md-offset-4">
                            <h1 style="color: #C0C0C0; overflow: hidden;">Client Data Filing</h1>
                        </div>
                    </header>
                    
                      
                    <div class ="panel body">
                        <div class="row">
                            <div class="col-md-4 col-md-offset-1" style="left: 0px; top: 0px">
                                <div class="form-group" style="position: absolute; bottom: auto">
                                   
                                    <asp:Label Text="Name" runat="server"  />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Name" Width="410px" ID="txtBoxName" />
                                    <asp:HiddenField ID="hfUserID" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ClientName Required*" ControlToValidate="txtBoxName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Surname" runat="server"  />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Surname" Width="404px" ID="txtBoxSurname" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Surname is Required*" ControlToValidate="txtBoxSurname" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Email" runat="server"  />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Email" Width="398px" ID="txtBoxEmail" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBoxEmail" ErrorMessage="Enter valid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Email Required" ControlToValidate="txtBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                             <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Password" runat="server"  />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Pasword" Width="395px" ID="txtBoxPassword" />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtboxCoPassword" ErrorMessage="Both Passwords must match" ForeColor="Red" ControlToValidate="txtBoxPassword"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBoxPassword" ErrorMessage="*Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Confirm Password" runat="server"  />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Confirm Password" Width="388px" ID="txtboxCoPassword" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtboxCoPassword" ErrorMessage="Password Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtBoxPassword" ErrorMessage="Both Passwords must match" ForeColor="Red" ControlToValidate="txtboxCoPassword"></asp:CompareValidator>
                                </div>
                            </div>
                          <%--  --%>
                             <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Country" runat="server"  />
                                    <asp:DropDownList runat="server" CssClass="form-control input-sm" ID="DropdownCountries">
                                        <asp:ListItem Text="South Africa" />
                                        <asp:ListItem Text="India" />
                                        <asp:ListItem Text="Canada" />
                                        <asp:ListItem Text="China" />
                                        <asp:ListItem Text="Mexico" />
                                        <asp:ListItem Text="Namibia" />
                                        <asp:ListItem Text="Tanzania" />
                                        <asp:ListItem Text="Russia" />
                                        <asp:ListItem Text="Japan" />
                                        <asp:ListItem Text="Australia" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        </div>
                         
                           <div class="row">
                             <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Favourite Colour" runat="server"  />
                                    <asp:RadioButtonList runat="server" ID="rdbColours" >
                                       <asp:ListItem Text="   Red" />   
                                        <asp:ListItem Text="  Blue" />  
                                        <asp:ListItem Text="  Green" />
                                        </asp:RadioButtonList>
                                    </div>
                                 </div>
                               </div>
                    
                                  <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Birthday" runat="server"  />
                                    <asp:TextBox runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="Birthday" Width="372px" ID="txtBoxDate" />
                                </div>
                    </div>

                       <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Cell Phone Number" runat="server"   />
                                    <asp:TextBox runat="server" Enabled="true" TextMode="Phone" CssClass="form-control input-sm" placeholder="Cell Phone Number" Width="390px" ID="txtBoxCellNumber" />
                                 
                                </div>
                            </div>
                             <%--<div class="col-md-4 col-md-offset-1">--%>
                                <div class="form-group">
                                    <asp:Label Text="Comments" runat="server"  />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Comments" Width="236px" ID="txtBoxComment" />
                                &nbsp;</div>
                            </div>
                        </div>

                    <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <asp:Button Text="Save" ID="btnSave" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click" />
                            &nbsp;&nbsp;
                                    <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="Red" Text="lblSuccessMessage"></asp:Label>
                            </div>
                        </div>
                   </div>
               </section>
                </section>
           </section>

</asp:Content>
