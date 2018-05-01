<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical1_WebService.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="StyleSheeet1.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div = "container text-center">
        <br />
        <div class="panel panel-default">
            <h3>Student Info</h3>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Student's Name: " CssClass="centerthis"></asp:Label>
                <asp:TextBox ID="txtStudentName" runat="server" Width="400px" CssClass="form-control" BorderColor="#000066" BorderWidth="3px" BackColor="White"></asp:TextBox>
                </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Section: " CssClass=""></asp:Label>
                <asp:TextBox ID="txtSection" runat="server" Width="200px" CssClass="form-control" BorderColor="#000066" BorderWidth="3px"></asp:TextBox>
            </div>
        </div>
        <hr />
            <div class="panel panel-default">
                    <h3>Lecture</h3>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Quizzes (30%): "></asp:Label>
                        <asp:TextBox ID="txtQuiz" runat="server" CssClass="form-control" Width="200px" BorderColor="#000066" BorderWidth="3px"></asp:TextBox>
            
                        <asp:Label ID="Label4" runat="server" Text="Midtem/Final Exam (40%): " CssClass=""></asp:Label>
                        <asp:TextBox ID="txtExams" runat="server" CssClass="form-control" Width="200px" BorderColor="#000066" BorderWidth="3px"></asp:TextBox>
                   
                        <asp:Label ID="Label5" runat="server" Text="Class Participation (10%): "></asp:Label>
                        <asp:TextBox ID="txtClassPart" runat="server" CssClass="form-control" Width="200px" BorderColor="#000066" BorderWidth="3px"></asp:TextBox>
            
                        <asp:Label ID="Label6" runat="server" Text="Supplementary Outputs (20%): "></asp:Label>
                        <asp:TextBox ID="txtSuppOutputs" runat="server" CssClass="form-control" Width="200px" BorderColor="#000066" BorderWidth="3px"></asp:TextBox>
                    </div>
                </div>

        <div class="panel panel-default">
                <h3>Laboratory</h3>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Lab Activities (20%): "></asp:Label>
                    <asp:TextBox ID="txtLabActivities" runat="server" CssClass="form-control" Width="200px" BorderColor="#000066" BorderWidth="3px"></asp:TextBox>
        
                    <asp:Label ID="Label8" runat="server" Text="Practical Exam (50%): "></asp:Label>
                    <asp:TextBox ID="txtPractExam" runat="server" CssClass="form-control" Width="200px" BorderColor="#000066" BorderWidth="3px"></asp:TextBox>
            
                    <asp:Label ID="Label9" runat="server" Text="Project (30%): "></asp:Label>
                    <asp:TextBox ID="txtProject" runat="server" CssClass="form-control" Width="200px" BorderColor="#000066" BorderWidth="3px"   ></asp:TextBox>
                </div>
        </div>        
</div>
     
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="btnSubmit_Click"/>
        <br />
        <asp:Label ID="txtTest" runat="server"></asp:Label>
    </form>
</body>
</html>
