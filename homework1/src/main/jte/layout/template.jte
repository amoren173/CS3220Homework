@param gg.jte.Content content
@param String title
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${title}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><img src="dolphin128x128.png" height="25px">Dolphins Swim Academy</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/displayclasses">Classes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/students">Students</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Coaches</a>
                    </li>
                    <li>
                        <a class="nav-link" href="/registerclass">Create New Class</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</div>

<main>
    ${content}
</main>


<div class="container mt-5" >

    <p class="p-3 mb-2 bg-light text-light-emphasis text-center">
        Copyright &copy; Dolphins Swim Academy 2024<br>
        Dolphin icon is created by <a href="https://www.flaticon.com/authors/freepik">Freepik</a> from <a href="https://www.flaticon.com/">Flaticon</a>
    </p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
