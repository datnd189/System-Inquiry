{* inquiry.tpl *}
<!DOCTYPE html>
<html lang="">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>問い合わせ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <style type="text/css" media="screen">
      h1{
        text-align: center;
      }
      label{
        padding: 10px 0 10px 0;
      }
      form{
        width: 500px;
        margin: 100px auto;
      }
    </style>
  </head>
<body>
<div class="container">
{if 0 < $error_detail_count}
  <div style="color: red;">エラーがあります</div>
{/if}

{if true == $error_detail.error_must_email}
  <div style="color: red;">メアドは必須です。</div>
{/if}
{if true == $error_detail.error_csrf_token}
  <div style="color: red;">CSRFトークンエラー</div>
{/if}

{*
error_must_body
error_format_email
error_format_birthday
error_csrf_timeover
*}


<form action="./inquiry_fin.php" method="POST" role="form">
  <legend><h1> 問い合わせ</h1></legend>

  <div class="form-group">
    <label for="">メールアドレス</label>
    <input type="text" class="form-control" id="" placeholder="メールを入力してください" name="email" value="{$input.email}">
    <label for="">名前:</label>
    <input type="text" class="form-control" id="" placeholder="名前を入力してください" name="name" value="{$input.name}">
    <label for="">誕生日:</label>
    <input type="text" class="form-control" id="" placeholder="誕生" name="birthday" value="{$input.birthday}">
    <label for="textarea" class="control-label">問い合わせ内容</label>
        <textarea name="body" id="textarea" class="form-control" rows="3" required="required">{$input.body}</textarea>
        <input type="hidden" name="csrf_token" value="{$csrf_token}">
  </div>
  <button type="submit" class="btn btn-primary">問い合わせ</button>
</form>



  </form>

  <script src="//code.jquery.com/jquery.js"></script>  
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
  
  </div>
</body>
</html>
