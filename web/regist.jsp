<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <title>Regist Pages</title>
    </head>
    <body>
        <form action="../RegistServlet" method="post">
            <table>
                <tr>
                    <td class="alignRight">
                        Username: 
                    </td>
                    <td>
                        <input type="text" name="username" />
                    </td>
                </tr>
                <tr>
                    <td class="alignRight">
                        Password: 
                    </td>
                    <td>
                        <input type="password" name="password" />
                    </td>
                </tr>
                <tr>
                    <td class="alignRight">
                        Name: 
                    </td>
                    <td>
                        <input type="password" name="repeatPsd" />
                    </td>
                </tr>
                <tr>
                    <td class="alignRight">
                        Gender: 
                    </td>
                    <td>
                        Male&nbsp;&nbsp;<input type="radio" name="gender" value="male" class="radioMid" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Female&nbsp;&nbsp;<input type="radio" name="gender" value="Female" class="radioMid"  />
                    </td>
                </tr>
                <tr>
                    <td class="alignRight">
                        Phone-Number: 
                    </td>
                    <td>
                        <input type="text" name="phone" />
                    </td>
                </tr>
            </table>
            <input type="submit" value="Regist" class="submit" />
        </form>
    </body>
</html>
