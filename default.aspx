<%@ Import Namespace="HtmlAgilityPack" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="datatable.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Natiga Scrapper</title>
</head>
<body>
    <div class="container">
        <table id="mydata" class="table table-striped table-bordered table-hover" >  
                <thead>
                    <tr>
                        <th>رقم الجلوس</th>
                        <th>الاسم</th>
                        <th>الشعبة</th>
                        <th>الدرجة</th>
                    </tr>  
                </thead>
                <tfoot>
                       <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>Email</th>
                        <th>Phone</th>
                       </tr>  
                </tfoot>
                <tbody> <% for (int i = 349146; i <= 349148; i++) {
                  // if (i == 236408) continue;
                   List<String> names = new List<string>();

                   string url = "https://nategtk.com/thanwya/" + i;
                   var Webget = new HtmlWeb();
                   var doc = Webget.Load(url);
                   try {
                       foreach (HtmlNode node in doc.DocumentNode.SelectNodes("//table [@class='dataTable']//tbody//tr//td")) {
                           names.Add(node.ChildNodes[0].InnerHtml);
                       }
                       var degrees = doc.DocumentNode.SelectNodes("//table [@class='dataTable']//tbody//tr//td//strong").Skip(1).Take(1);         
              %>
                    <tr>
                        <td><%=names[1] %></td>
                        <td><%=names[3] %></td>
                        <td><%=names[9] %></td>
                        <td><%= degrees.First().ChildNodes[0].InnerText.Trim() %></td>  
                        
              <%}catch (Exception e){}} %>
                        
                    </tr>  
                </tbody>  
        </table>
    </div>
     

   
</body>
</html>
