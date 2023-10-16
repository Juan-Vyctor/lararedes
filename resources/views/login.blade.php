<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

    <style>
        .addingcolor {
            background-color: #184505;
        }

        .addcolor {
            color: #184505;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row text-center mt-5 mb-3">
            <i class="fa fa-user fa-5x addcolor" aria-hidden="true"></i>
        </div>
        <div class="row d-flex justify-content-center align-items-center p-4 ">
            <div class="col-12 col-md-4 bg-white rounded-5 p-3 border border-success-subtle">
                
                <div class="row text-center">
                    <h3 class="p-3 addcolor">Login</h3>
                    <a href="/" class="text-decoration-none">
                        <p class="mb-4 text-muted">Voltar</p>
                    </a>    
                </div>

                <div class="row d-flex justify-content-center">
                    <div class="col-8">
                        <form action="auth" method="POST"> @csrf
                            <div class="mb-4 form-floating">
                                <input type="text" class="form-control" id="email" name="email" placeholder="João Garcia">
                                <label for="email" class="form-label">Email</label>
                              </div>
                            <div class="mb-4 form-floating">
                                <input type="password" class="form-control" id="senha" name="senha" placeholder="xxxxx">
                                <label for="senha" class="form-label">Senha</label>
                            </div>
                            <div class="d-flex justify-content-center">
                                <button type="submit" class="btn btn-success addingcolor text-white w-75">Acessar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>