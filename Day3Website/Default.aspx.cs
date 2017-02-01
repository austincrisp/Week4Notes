using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string Name = "Andrew Crisp";
    public string Winner = "";
    public List<string> Options = new List<string>()
    {
        "Wilkins", "Austin", "Meagan", "Linus"
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Name = Request.Form["Word"];
            Winner = Request.Form["Winner"];
        }
    }
}