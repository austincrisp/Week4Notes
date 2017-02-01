<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <h1>Welcome to Web Development</h1>


        <% if (Name.Contains("Austin"))
            { %>
        <h3><%= Name %> is the coolest dude ever.</h3>
        <% } else {%>
        <h3><%= Name %> is a bum. Get a job, <%= Name %></h3>
        <% } %>

        <a href="About.aspx">About me</a>

        <form id="form1" runat="server">
            <div class="form-group">
                <input type="text" class="form-control" name="Word" />
                <select name="Winner">
                    <% foreach (var option in Options)
                        { %>
                    <option value="<%= option.ToLower() %>"><%= option %></option>
                    <% } %>
                </select>
                <% if (Winner == "meagan") { %>
                <h1>YAAAAAY Meagan is the winner!</h1>
                <% } %>
            </div>
            <div>
                <input type="submit" class="btn btn-default" value="Submit" />
            </div>
        </form>
    </div>
</body>
</html>
