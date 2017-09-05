{* top.tpl *}

<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Admin</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<style type="text/css" media="screen">
			h1{
				text-align: center;
			}
			.container a{
				margin:20px 0 20px 200px;
			}
			form{
				width:500px;
				border: 1px solid;
				border-radius: 10px;
				margin:100px auto;
			}
		</style>
	</head>
	<body>
	<div class="container">
	<legend><h1>ログイン後 管理画面</h1></legend>
		<form action="" method="get" accept-charset="utf-8">
		
		<a href="./inquiry_list.php" class="btn btn-primary">問い合わせ一覧</a><br>
		<hr>
		<a href="./logout.php" class="btn btn-primary">ログアウト</a>

		</form>
		<script src="//code.jquery.com/jquery.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</div>
	</body>
</html>