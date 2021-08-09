<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="Quiz_System.Quiz" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" />
    <style>
        .quiz-box{
            display:block !important;
            padding:10px 50px 0px 30px;
            border-radius:10px;
            width:max-content;
            margin: 20px 50px;
        }
        .quiz-box h3{
            font-size:24px;
        }
        .lbopt{
            display:block !important;
            width:600px !important;
            padding:10px 20px;
            margin:10px;
            border:1px solid black;
            border-radius:10px;
            text-decoration:none;
            font-size:20px;
            color:#000;
        }
        .marks{
            float:right;
            margin:40px 15% 0 0;
            font-size:28px;
            line-height:40px;
        }
        .lbans:before{
            content:'Answer: ';
        }
        .sbt{
            margin:20px 50px;
            padding:10px 20px;
            font-size:24px;
        }
    </style>
</head>
<body>
    
     <div class="marks">
        <span>Your Marks:</span>
        <asp:Label ID="lbmark" runat="server">0</asp:Label>
    </div>
    <form id="form1" runat="server">
        <div>
           
            
            <asp:ListView ID="lvquiz" runat="server">
                <ItemTemplate>
                    <div class="quiz-box fst">
                        <h3>Ques1 : <%#Eval("Q1") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans1" CommandArgument='<%#Eval("O1") %>' ><%#Eval("O1") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans1" CommandArgument='<%#Eval("O2") %>' ><%#Eval("O2") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans1" CommandArgument='<%#Eval("O3") %>' ><%#Eval("O3") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans1" CommandArgument='<%#Eval("O4") %>' ><%#Eval("O4") %></asp:LinkButton>
                        <asp:Label ID="a1" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A1") %>'><%#Eval("A1") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques2 : <%#Eval("Q2") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans2" CommandArgument='<%#Eval("O5") %>' ><%#Eval("O5") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans2" CommandArgument='<%#Eval("O6") %>' ><%#Eval("O6") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans2" CommandArgument='<%#Eval("O7") %>' ><%#Eval("O7") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans2" CommandArgument='<%#Eval("O8") %>' ><%#Eval("O8") %></asp:LinkButton>
                        <asp:Label ID="a2" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A2") %>'><%#Eval("A2") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques3 : <%#Eval("Q3") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans3" CommandArgument='<%#Eval("O9") %>' ><%#Eval("O9") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans3" CommandArgument='<%#Eval("O10") %>' ><%#Eval("O10") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans3" CommandArgument='<%#Eval("O11") %>' ><%#Eval("O11") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans3" CommandArgument='<%#Eval("O12") %>' ><%#Eval("O12") %></asp:LinkButton>
                        <asp:Label ID="a3" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A3") %>'><%#Eval("A3") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques4 : <%#Eval("Q4") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans4" CommandArgument='<%#Eval("O13") %>' ><%#Eval("O13") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans4" CommandArgument='<%#Eval("O14") %>' ><%#Eval("O14") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans4" CommandArgument='<%#Eval("O15") %>' ><%#Eval("O15") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans4" CommandArgument='<%#Eval("O16") %>' ><%#Eval("O16") %></asp:LinkButton>
                        <asp:Label ID="a4" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A4") %>'><%#Eval("A4") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques5 : <%#Eval("Q5") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans5" CommandArgument='<%#Eval("O17") %>' ><%#Eval("O17") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans5" CommandArgument='<%#Eval("O18") %>' ><%#Eval("O18") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans5" CommandArgument='<%#Eval("O19") %>' ><%#Eval("O19") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans5" CommandArgument='<%#Eval("O20") %>' ><%#Eval("O20") %></asp:LinkButton>
                        <asp:Label ID="a5" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A5") %>'><%#Eval("A5") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques6 : <%#Eval("Q6") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans6" CommandArgument='<%#Eval("O21") %>' ><%#Eval("O21") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans6" CommandArgument='<%#Eval("O22") %>' ><%#Eval("O22") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans6" CommandArgument='<%#Eval("O23") %>' ><%#Eval("O23") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans6" CommandArgument='<%#Eval("O24") %>' ><%#Eval("O24") %></asp:LinkButton>
                        <asp:Label ID="a6" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A6") %>'><%#Eval("A6") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques7 : <%#Eval("Q7") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans7" CommandArgument='<%#Eval("O25") %>' ><%#Eval("O25") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans7" CommandArgument='<%#Eval("O26") %>' ><%#Eval("O26") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans7" CommandArgument='<%#Eval("O27") %>' ><%#Eval("O27") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans7" CommandArgument='<%#Eval("O28") %>' ><%#Eval("O28") %></asp:LinkButton>
                        <asp:Label ID="a7" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A7") %>'><%#Eval("A7") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques8 : <%#Eval("Q8") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans8" CommandArgument='<%#Eval("O29") %>' ><%#Eval("O29") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans8" CommandArgument='<%#Eval("O30") %>' ><%#Eval("O30") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans8" CommandArgument='<%#Eval("O31") %>' ><%#Eval("O31") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans8" CommandArgument='<%#Eval("O32") %>' ><%#Eval("O32") %></asp:LinkButton>
                        <asp:Label ID="a8" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A8") %>'><%#Eval("A8") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques9 : <%#Eval("Q9") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans9" CommandArgument='<%#Eval("O33") %>' ><%#Eval("O33") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans9" CommandArgument='<%#Eval("O34") %>' ><%#Eval("O34") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans9" CommandArgument='<%#Eval("O35") %>' ><%#Eval("O35") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans9" CommandArgument='<%#Eval("O36") %>' ><%#Eval("O36") %></asp:LinkButton>
                        <asp:Label ID="a9" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A9") %>'><%#Eval("A9") %></asp:Label>
                    </div>
                    <div class="quiz-box nxt">
                        <h3>Ques10 : <%#Eval("Q10") %></h3>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans10" CommandArgument='<%#Eval("O37") %>' ><%#Eval("O37") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans10" CommandArgument='<%#Eval("O38") %>' ><%#Eval("O38") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans10" CommandArgument='<%#Eval("O39") %>' ><%#Eval("O39") %></asp:LinkButton>
                        <asp:LinkButton CssClass="lbopt" runat="server" OnClick="ans10" CommandArgument='<%#Eval("O40") %>' ><%#Eval("O40") %></asp:LinkButton>
                        <asp:Label ID="a10" runat="server" CssClass="lbans" ForeColor="Green" Visible="false" Text='<%#Eval("A10") %>'><%#Eval("A10") %></asp:Label>
                    </div>
                    <asp:Button Text="Submit" CssClass="sbt" OnClick="submit" runat="server" />
                </ItemTemplate>
            </asp:ListView>
           
        </div>
    </form>
    
</body>
</html>
