<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BrendanKallioA1._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Calculator</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="container">
        <form id="calculatorForm" runat="server">
            <div class="row">
                <!-- Game 1 Container -->
                <div class="col-md-5 col-lg-2 game-container">
                    <h1>Game One</h1>
                    <asp:Label ID="resultLabel1" runat="server" Text="Result:"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="Win">Won</asp:ListItem>
                        <asp:ListItem Value="Lose">Lost</asp:ListItem>
                    </asp:RadioButtonList>
                    <div>
                        <asp:Label ID="pointsScoredLabel1" runat="server" Text="Points Scored:"></asp:Label>
                        <asp:TextBox ID="pointsScoredTextBox1" CssClass="numericInput scored1" notEqualTo=".allowed1" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="pointsAllowedLabel1" runat="server" Text="Points Allowed:"></asp:Label>
                        <asp:TextBox ID="pointsAllowedTextBox1" CssClass="numericInput allowed1" notEqualTo=".scored1" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="spectatorsLabel1" runat="server" Text="Spectators:"></asp:Label>
                        <asp:TextBox ID="spectatorsTextBox1" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!-- End of Game 1 Container -->
                <!-- Game 2 Container -->
                <div class="col-md-5 col-lg-2 game-container">
                    <h1>Game Two</h1>
                    <asp:Label ID="resultLabel2" runat="server" Text="Result:"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Value="Win">Won</asp:ListItem>
                        <asp:ListItem Value="Lose">Lost</asp:ListItem>
                    </asp:RadioButtonList>
                    <div>
                        <asp:Label ID="pointsScoredLabel2" runat="server" Text="Points Scored:"></asp:Label>
                        <asp:TextBox ID="pointsScoredTextBox2" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="pointsAllowedLabel2" runat="server" Text="Points Allowed:"></asp:Label>
                        <asp:TextBox ID="pointsAllowedTextBox2" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="spectatorsLabel2" runat="server" Text="Spectators:"></asp:Label>
                        <asp:TextBox ID="spectatorsTextBox2" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!-- End of Game 2 Container -->
                <!-- Game 3 Container -->
                <div class="col-md-5 col-lg-2 game-container">
                    <h1>Game Three</h1>
                    <asp:Label ID="resultLabel3" runat="server" Text="Result:"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                        <asp:ListItem Value="Win">Won</asp:ListItem>
                        <asp:ListItem Value="Lose">Lost</asp:ListItem>
                    </asp:RadioButtonList>
                    <div>
                        <asp:Label ID="pointsScoredLabel3" runat="server" Text="Points Scored:"></asp:Label>
                        <asp:TextBox ID="pointsScoredTextBox3" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="pointsAllowedLabel3" runat="server" Text="Points Allowed:"></asp:Label>
                        <asp:TextBox ID="pointsAllowedTextBox3" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="spectatorsLabel3" runat="server" Text="Spectators:"></asp:Label>
                        <asp:TextBox ID="spectatorsTextBox3" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!-- End of Game 3 Container -->
                <!-- Game 4 Container -->
                <div class="col-md-5 col-lg-2 game-container">
                    <h1>Game Four</h1>
                    <asp:Label ID="resultLabel4" runat="server" Text="Result:"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                        <asp:ListItem Value="Win">Won</asp:ListItem>
                        <asp:ListItem Value="Lose">Lost</asp:ListItem>
                    </asp:RadioButtonList>
                    <div>
                        <asp:Label ID="pointsScoredLabel4" runat="server" Text="Points Scored:"></asp:Label>
                        <asp:TextBox ID="pointsScoredTextBox4" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="pointsAllowedLabel4" runat="server" Text="Points Allowed:"></asp:Label>
                        <asp:TextBox ID="pointsAllowedTextBox4" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="spectatorsLabel4" runat="server" Text="Spectators:"></asp:Label>
                        <asp:TextBox ID="spectatorsTextBox4" class="numericInput" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!-- End of Game 4 Container -->
            </div>
            <div id="summary">
                <asp:Button class="btn btn-success" id="summaryButton" runat="server" Text="Summarize" onclick="summaryButton_Click"  />
            </div>
        </form>
    </div>
   <div>    <asp:Label ID="gamesWonLabel" runat="server"></asp:Label><br />
            <asp:Label ID="gamesLostLabel" runat="server"></asp:Label><br />
            <asp:Label ID="winPercentageLabel" runat="server"></asp:Label><br />
            <asp:Label ID="totalPointsScoredLabel" runat="server"></asp:Label><br />
            <asp:Label ID="totalPointsAllowedLabel" runat="server"></asp:Label><br />
            <asp:Label ID="pointDifferentialLabel" runat="server"></asp:Label><br />
            <asp:Label ID="totalSpectatorsLabel" runat="server"></asp:Label><br />
            <asp:Label ID="averageSpectatorsLabel" runat="server"></asp:Label><br />
        </div>
    </div>
</asp:Content>
