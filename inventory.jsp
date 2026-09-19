<%
    String productId = request.getParameter("productId");
    String productName = request.getParameter("productName");
    String supplierName = request.getParameter("supplierName");

    double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    double totalValue = unitPrice * quantity;

    String stockStatus;

    if (quantity == 0) {
        stockStatus = "Out of Stock";
    } else if (quantity < 10) {
        stockStatus = "Low Stock";
    } else {
        stockStatus = "In Stock";
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Inventory Report</title>
</head>

<body>

<h2>Product Inventory Report</h2>

<table border="1" cellpadding="10">

    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Unit Price</th>
        <th>Quantity</th>
        <th>Supplier Name</th>
        <th>Total Inventory Value</th>
        <th>Stock Status</th>
    </tr>

    <tr>
        <td><%= productId %></td>
        <td><%= productName %></td>
        <td><%= unitPrice %></td>
        <td><%= quantity %></td>
        <td><%= supplierName %></td>
        <td><%= totalValue %></td>
        <td><%= stockStatus %></td>
    </tr>

</table>

</body>
</html>
