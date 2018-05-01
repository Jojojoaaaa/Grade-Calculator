using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical1_WebService
{
    public partial class Result : System.Web.UI.Page
    {
        GradesService gs = new GradesService();
        grade grades = new grade();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            grades = gs.getGrade(id);
            lblResult.Text = "You " + grades.remarks;
            if (Convert.ToString(grades.remarks).Equals("Pass"))
            {
                lblGreet.Text = "Congratulations!";
                
            }
            else
            {
                lblGreet.Text = "Sorry.";
            }
            lblRate.Text = "Your rating is: " + grades.rating;
            lblFinal.Text = "Final grade: " + grades.grade1;

        }
    }
}