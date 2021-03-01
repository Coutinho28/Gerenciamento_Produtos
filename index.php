<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/estilo.css">  
    <title>Document</title>
</head>
<body>
    <div  class="container-fluid">          
          <div id="login">        
            <form method="POST" action="login.php">
             <div  class="form-row">
                  <div class="col-11">
                      <div class="form-group">  
                        <input id="usuario" type="text" class="form-control" name="email" placeholder="Email" style="margin-left: 12px" >
                      </div>
                  </div>
              </div>
              <div class="form-row">
                <div class="col-11">
                  <input id="Senha"type="password" class="form-control" name="senha" placeholder="Senha" style="margin-left: 10px"  >
                  <small class="form-text text-multed" style="text-align: right;">
                    
                  </small>
                </div>
              </div>
                <input type="submit" name="entar" class="btn btn-primary" value="Login" id="btn-login">
            </form>
          </div>
        </div>      
</body>
<footer>
    
    <script src="bootstrap/js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
  </footer>
</html>