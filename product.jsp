<!DOCTYPE html>
<html>
<head>
    <title>Product Inventory</title>
</head>
<body>

<h2>Product Inventory Management System</h2>

<form action="inventory.jsp" method="post">

    Product ID:
    <input type="text" name="productId" required>
    <br><br>

    Product Name:
    <input type="text" name="productName" required>
    <br><br>

    Unit Price:
    <input type="number" step="0.01" name="unitPrice" required>
    <br><br>

    Quantity:
    <input type="number" name="quantity" required>
    <br><br>

    Supplier Name:
    <input type="text" name="supplierName" required>
    <br><br>

    <input type="submit" value="Generate Inventory Report">

</form>

</body>
</html>
