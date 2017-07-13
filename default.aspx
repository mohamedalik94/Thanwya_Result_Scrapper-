<%@ Import Namespace="HtmlAgilityPack" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="datatable.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

     

        
        

        
        
       
          
        
    <div class="container">
        
                <!-- فيس بوك اسكربت -->

                <div id="fb-root"></div>
                <script>
                    (function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));</script>


                <!--  انهاء الاسكربت-->

                <div style="text-align: center;">
                    <a target="_blank" href="https://www.facebook.com/MohamedKhaskia"><span style="font-size: 24px;">my facebook account <br> https://www.facebook.com/MohamedKhaskia</span></a>
                </div>

        <a href="ganzour.byethost6.com">لعرض نتائج السنوات السابقة </a>
        <h1>البنات</h1>
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
                       

                       ////p//span
                     /*  foreach (HtmlNode node in doc.DocumentNode.SelectNodes("//div[@class='content']//div[@class='result success']//span")) {
                           degree.Add(node.ChildNodes[1].InnerHtml);
                       }
                   */
        
              %>
                    <tr>
                     
                        <td><%=names[1] %></td>
                        <td><%=names[3] %></td>
                        <td><%=names[9] %></td>
                        <td><%= degrees.First().ChildNodes[0].InnerText.Trim() %></td>
                        
                       

                        <%--<td><%=names[2] %></td>
                        <td><%=degree[1]%></td>--%>
              <%
                      }
                   catch (Exception e)
                   {

                      }

                  } %>
                    </tr>  
                </tbody>
              

        </table>



    </div>
     

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script>
       // $(mydata).dataTable();
    </script>
    </form>
</body>
</html>