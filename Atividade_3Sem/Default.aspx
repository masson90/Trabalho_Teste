<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Atividade_3Sem.Default" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Pagina de Login</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">

	<script type="text/javascript">
        function ValidNumeric() {

            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode >= 48 && charCode <= 57) { return true; }
            else { return false; }
        } 
    </script>

</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Entrar</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form runat="server">					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<%--<input type="text" class="form-control" placeholder="usuário">--%>
						<asp:TextBox ID="txtUsuario" runat="server" class="form-control"
							placeholder="usuario"></asp:TextBox>
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<%--<input type="password" class="form-control" placeholder="senha">--%>
						<asp:TextBox ID="txtSenha" runat="server" class="form-control"
							type="password" placeholder="senha" onkeypress="return ValidNumeric()"></asp:TextBox>
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Lembrar de mim
					</div>
					<div class="form-group">
						<%--<input type="submit" value="Entrar" class="btn float-right login_btn">--%>
						<asp:Button ID="btnEntrar" CssClass="btn float-right login_btn"
							runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
					</div>
					<%--<div>
						<asp:Label ID="lblwarning" ></asp:Label>
					</div>--%>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Não tem conta?<a href="#">Cadastre-se</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Esqueceu a senha?</a>
				</div>
				<div class="row">
					<div class="col-md-12 text-center text-primary">
						<asp:Label ID="lblerro" runat="server" ForeColor="Red"  Text="Usuario ou Senha Incorretos" Visible="false"></asp:Label>
					</div>                    
				</div>
			</div>
		</div>
	</div>
</div>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" 
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>