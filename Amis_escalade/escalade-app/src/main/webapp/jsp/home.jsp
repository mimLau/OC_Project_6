<%--
  Created by IntelliJ IDEA.
  User: lam99
  Date: 30/11/2019
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<head>
    <title>Acceuil</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
    <jsp:include page="/templates/header.jsp"/>
    <c:if test="${sessionScope.user.username != null}">
        <a href="auth/addSite" tabindex="-1" aria-disabled="true">Ajouter un nouveau site d'escalade.</a>
    </c:if>

</body>
</DOCTYPE>