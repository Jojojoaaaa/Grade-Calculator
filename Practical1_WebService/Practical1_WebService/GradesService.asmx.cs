using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Practical1_WebService
{
    /// <summary>
    /// Summary description for GradesService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GradesService : System.Web.Services.WebService
    {
        student_scheduleEntities gradeDB = new student_scheduleEntities();
        [WebMethod]
        public double lectureGrade(double quiz, double exams, double part, double supp)
        {
            double lecture;
            lecture = (quiz * .3 + exams * .4 + part * .1 + supp * .2);
            return lecture;
        }

        [WebMethod]
        public double labGrade(double act, double prac, double proj)
        {
            double lab;
            lab = (act * .2 + prac * .5 + proj * .3);
            return lab;
        }

        [WebMethod]
        public double finalGrade(double lab, double lec)
        {
            double final;
            final = (lab * .6 + lec * .4);
            return final;
        }

        [WebMethod]
        public double rating(double final)
        {
            double rate = 0;
            if (final >= 0 && final < 75)
            {
                rate = 5.00;
            }
            else if (final >= 75 && final < 77)
            {
                rate = 3.00;
            }
            else if (final >= 77 && final < 80)
            {
                rate = 2.75;
            }
            else if (final >= 80 && final < 83)
            {
                rate = 2.5;
            }
            else if (final >= 83 && final < 86)
            {
                rate = 2.25;
            }
            else if (final >= 86 && final < 89)
            {
                rate = 2.00;
            }
            else if (final >= 89 && final < 92 )
            {
                rate = 1.75;
            }
            else if (final >= 92 && final < 95)
            {
                rate = 1.50;
            }
            else if (final >= 95 && final < 98)
            {
                rate = 1.25;
            }
            else if (final >= 98 && final <= 100)
            {
                rate = 1.00;
            }

            return rate;
        }

        [WebMethod]
        public string remarks(double rate)
        {
            string remarks = "Pass";
                if (rate > 2.75)
            {
                remarks = "Fail";
            }
            return remarks;
            
        }

        [WebMethod]
        public int insertGrade(grade grades)
        {
            gradeDB.grades.Add(grades);
            gradeDB.SaveChanges();
            return Convert.ToInt32(grades.id);
        }

        [WebMethod] 
        public grade getGrade(int id)
        {
            grade grades = gradeDB.grades.Find(id);
            return grades;
        }
    }
}
