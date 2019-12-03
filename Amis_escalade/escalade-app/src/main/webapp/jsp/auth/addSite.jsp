<%--
  Created by IntelliJ IDEA.
  User: lam99
  Date: 03/12/2019
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en">
<head>
    <title>Ajouter un site d'escalade</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.css">
</head>
<body>
      <jsp:include page="/templates/header.jsp"/>
      <form method="post" action="auth/addSite">
          <div class="form-group">
              <label for="siteName">Nom du site</label>
              <input type="text" class="form-control" id="siteName">
          </div>
            <div class="form-group">
                <label for="selectPlace">Lieu</label>
                <select class="form-control" id="selectPlace">
                    <optgroup label="France">
                        <option value="Alsace-Moselle">Alsace-Moselle</option>
                        <option value="Vosges">Vosges</option>
                    </optgroup>
                    <optgroup label="Suisse">
                        <option value="Jura">Jura</option>
                    </optgroup>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Ajouter</button>
        </form>




    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
