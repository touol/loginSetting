<div class="panel panel-primary">
<div class="panel-body">
  <p class="text-danger">[[+errors]]</p>
  <form action="[[~[[*id]]]]" method="post">
    <div class="form-group">
      <label for="username">[[%login.username]]</label>
        <input type="text" name="username" class="form-control" id="username">
    </div>
    <div class="form-group">
      <label for="password">[[%login.password]]</label>
        <input type="password" name="password" class="form-control" id="password">
    </div>              
    <input class="returnUrl" type="hidden" name="returnUrl" value="[[+request_uri]]" />
    <input class="loginLoginValue" type="hidden" name="service" value="login">
    <input type="submit" value="[[+actionMsg]]" name="Login" id="Login" class="btn btn-primary pull-right">
  </form>
  <div class="clearfix"></div>
  <hr style="margin-top:10x;margin-bottom:5px;">
  <p><a href="[[~101]]">Регистрация</a></p
  <p><a href="[[~103]]">Забыли пароль?</a></p>
</div>
</div>