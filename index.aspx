<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Quiz_System.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .box-btn{
            display:flex;
            justify-content:center;
            margin-top:20%;
        }
        .btn{
            margin-right:60px;
            padding:10px 30px;
            font-size:30px;
            letter-spacing:2px;
            border-radius:20px;
            cursor:pointer;
        }
        .btn:hover{
            box-shadow:-1px -1px 1px #ffffff,
                        3px 3px 3px #808080;
        }
        .thead h3{
            text-align:center;
            font-size:35px;
        }
        .title{
            margin:0 15% 30px;            
        }
        .title span{
            font-weight:bold;
            font-size:25px;
        }
        .title input{
            padding:5px;
            width:50%;
            margin-left:10px;
        }
        .ques-box{
            margin:10px 10%;
            padding:10px 0 10px 5%;
        }
        .ques-box span{
            font-weight:bold;
            font-size:18px;
        }
        .ques-box input{
            margin:0 0 10px 5px;
            padding:5px;
        }
        .ques,.ans{
            width:80%;
        }
        .opt{
            margin-right:10px;
            width:20%;
        }
        .Cbtn{
            width:20%;
            font-size:25px;
            letter-spacing:2px;
            border-radius:10px;
            margin:10px 15% 40px;
            cursor:pointer;
        }
        .bkbtn{
            width:100px;
            font-size:20px;
            letter-spacing:1px;
            border-radius:10px;
            margin:20px 6% -10px;
            cursor:pointer;
        }
        .quiz-list{
            margin:0 15%;
        }
        .box{
            display:flex;
            justify-content:space-between;
            background:#c0bdbd;
            padding:15px 20px;
            border-radius:20px;
        }
        .box h3{
            margin:0;
            font-size:28px;
            letter-spacing:1px;
            text-transform:uppercase;
            font-family:'Calisto MT';
        }
        .lbstart{
            margin:auto 20px;
            padding:8px 20px;
            border:1px solid #fff;
            border-radius:10px;
            font-size:20px;
            font-weight:bold;
            letter-spacing:1px;
            text-decoration:none;
            color:#fff;
            background:#000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ActiveViewIndex="0" runat="server" ID="mv">
                <asp:View ID="v1" runat="server">
                    <div class="box-btn">
                        <asp:Button Text="Create Quiz" CssClass="btn" runat="server" OnClick="createquiz" />
                        <asp:Button Text="Start Quiz" CssClass="btn" runat="server" OnClick="quizlist" />
                    </div>
                </asp:View>

                <asp:View ID="v2" runat="server">
                    <div class="main-box">
                        <div class="thead">
                            <asp:Button Text="BACK" CssClass="bkbtn" runat="server" OnClick="back" />
                            <h3>CREATE QUIZ</h3>
                        </div>
                        <div class="title">
                            <span>Quiz Title:</span>
                            <asp:TextBox runat="server" ID="qzt" ></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 1:</span>
                            <asp:TextBox runat="server" ID="tbq1" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 1:</span>
                            <asp:TextBox runat="server" ID="tba1" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq1o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq1o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq1o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq1o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 2:</span>
                            <asp:TextBox runat="server" ID="tbq2" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 2:</span>
                            <asp:TextBox runat="server" ID="tba2" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq2o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq2o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq2o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq2o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 3:</span>
                            <asp:TextBox runat="server" ID="tbq3" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 3:</span>
                            <asp:TextBox runat="server" ID="tba3" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq3o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq3o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq3o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq3o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 4:</span>
                            <asp:TextBox runat="server" ID="tbq4" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 4:</span>
                            <asp:TextBox runat="server" ID="tba4" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq4o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq4o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq4o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq4o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 5:</span>
                            <asp:TextBox runat="server" ID="tbq5" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 5:</span>
                            <asp:TextBox runat="server" ID="tba5" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq5o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq5o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq5o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq5o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 6:</span>
                            <asp:TextBox runat="server" ID="tbq6" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 6:</span>
                            <asp:TextBox runat="server" ID="tba6" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq6o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq6o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq6o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq6o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 7:</span>
                            <asp:TextBox runat="server" ID="tbq7" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 7:</span>
                            <asp:TextBox runat="server" ID="tba7" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq7o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq7o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq7o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq7o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 8:</span>
                            <asp:TextBox runat="server" ID="tbq8" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 8:</span>
                            <asp:TextBox runat="server" ID="tba8" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq8o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq8o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq8o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq8o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 9:</span>
                            <asp:TextBox runat="server" ID="tbq9" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 9:</span>
                            <asp:TextBox runat="server" ID="tba9" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq9o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq9o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq9o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq9o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <div class="ques-box">
                            <span>Question 10:</span>
                            <asp:TextBox runat="server" ID="tbq10" CssClass="ques" ></asp:TextBox><br />
                            <span>Answer 10:</span>
                            <asp:TextBox runat="server" ID="tba10" CssClass="ans" ></asp:TextBox><br />
                            <asp:TextBox runat="server" ID="tbq10o1" placeholder="Option1" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq10o2" placeholder="Option2" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq10o3" placeholder="Option3" CssClass="opt"></asp:TextBox>
                            <asp:TextBox runat="server" ID="tbq10o4" placeholder="Option4" CssClass="opt"></asp:TextBox>
                        </div>
                        <asp:Button ID="btn" Text="CREATE" CssClass="Cbtn" runat="server" OnClick="create" />
                    </div>
                </asp:View>

                <asp:View ID="v3" runat="server">
                    <div>
                        <div class="thead">
                            <asp:Button Text="BACK" CssClass="bkbtn" runat="server"  OnClick="back" />
                            <h3>QUIZ</h3>
                        </div>
                        <div class="quiz-list">
                            <asp:ListView ID="lvquiz" runat="server">
                                <ItemTemplate>
                                    <div class="box">
                                        <h3><%#Eval("title") %></h3>
                                        <asp:LinkButton ID="lbstart" Text="START" CssClass="lbstart" runat="server" CommandArgument='<%#Eval("id") %>' OnClick="start" />
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
