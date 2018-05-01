using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical1_WebService
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string name, section;
        //lecture
        double quiz, exam, part, supp;
        //lab
        double act, prac, proj;
        //final
        double lec, lab, final, rate;
        string remarks;
        //service
        GradesService gs = new GradesService();
        //database
        student_scheduleEntities gradeDB = new student_scheduleEntities();
        grade gradeTable = new grade();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            InitializeVaribles();
            try
            {
              lec =  gs.lectureGrade(quiz, exam, part, supp);
              lab = gs.labGrade(act, prac, proj);
              final = gs.finalGrade(lab, lec);
              rate = gs.rating(final);
              remarks = gs.remarks(rate);
              int id = gs.insertGrade(createGrade(name, section, final, rate, remarks));

              Response.Redirect("~/Result.aspx?id=" + id);
            }
            catch (Exception a)
            {
                txtTest.Text = e.ToString();
            }
        }

        public void InitializeVaribles()
        {
            name = txtStudentName.Text;
            section = txtSection.Text;

            quiz = Convert.ToDouble(txtQuiz.Text);
            exam = Convert.ToDouble(txtExams.Text);
            part = Convert.ToDouble(txtClassPart.Text);
            supp = Convert.ToDouble(txtSuppOutputs.Text);

            act = Convert.ToDouble(txtLabActivities.Text);
            prac = Convert.ToDouble(txtPractExam.Text);
            proj = Convert.ToDouble(txtProject.Text);
            
        }
  
        public grade createGrade(string name, string section, double final, double rate, string remarks)
        {
            gradeTable.name = name;
            gradeTable.section = section;
            gradeTable.grade1 = final;
            gradeTable.rating = rate;
            gradeTable.remarks = remarks;
            return gradeTable;
        }

    }
}