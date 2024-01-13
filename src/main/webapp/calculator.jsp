<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h2 {
            color: #333;
            margin-bottom: 20px; /* Add space between title and form */
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        input {
            margin: 5px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[readonly] {
            background-color: #eee;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    <h2>Simple Calculator</h2>
    <form method="post" action="calc" > 
        <input type="text" name="num1" value="${c.num1}"/>
        <input type="text" name="operation" value="${c.operation}"/>
        <input type="text" name="num2" value="${c.num2}"/>
        <input type="submit" value="="/>
        <input type="text" readonly name="result" value="${c.result}"/>
    </form>
</body>
</html>
