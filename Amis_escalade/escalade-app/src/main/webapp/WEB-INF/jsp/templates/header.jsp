<%--
  Created by IntelliJ IDEA.
  User: lam99
  Date: 01/12/2019
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="home"><img src ="${pageContext.request.contextPath}/img/Logo.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="${pageContext.request.contextPath}/home">Accueil <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="${pageContext.request.contextPath}/listSites">Sites</a>
                <c:if test="${sessionScope.user.role == 'ADMIN'}">
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/admin/addPlace">Page admin</a>
                </c:if>
            </div>
        </div>
        <div>
            <div class="navbar-text" style="float: right">
                <c:if test="${sessionScope.user.username != null}">
                    <p>Bonjour ${sessionScope.user.username}<p/>
                </c:if>
            </div>
            <div class="navbar-text" style="float: right">
                <c:if test="${sessionScope.user.username != null}">
                    <a href="${pageContext.request.contextPath}/logout" tabindex="-1" aria-disabled="true">Se déconnecter</a>
                </c:if>
            </div>
        </div>
        <div class="navbar-text" style="float: right">
            <c:if test="${sessionScope.user.username == null}">
                <a href="${pageContext.request.contextPath}/login" tabindex="-1" aria-disabled="true">Se connecter</a>
            </c:if>
        </div>
    </nav>
</body>
</html>
