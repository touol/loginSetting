[[!Register?
    &submitVar=`registerbtn`
    &activationEmailTpl=`ls.lgnActivateEmailTpl`
    &activationEmailSubject=`Спасибо за регистрацию!`
    &submittedResourceId=`102`
    &usergroups=`Покупатели`
    &activation=`0`
    &validate=`nospam:blank,
      username:required,
      password:required,
      password_confirm:password_confirm=^password^,
      fullname:required,
      email:required:email,
      phone:required`
    &placeholderPrefix=`reg.`
    &excludeExtended=`org`
    &usergroups=`Users`
]]
<div class="registerMessage">[[!+reg.error.message]]</div>
     
<form class="form-horizontal" action="[[~[[*id]]]]" method="post">
    <input type="hidden" name="nospam" value="[[!+reg.nospam]]" />
    <input type="hidden" name="registerbtn" value="1" />
    
    <div class="form-group row">
        <label for="reg_username" class="col-sm-2 col-form-label">Логин*:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="reg_username" name="username" value="[[!+reg.username]]" placeholder="Введите логин">
            <div class="error">[[!+reg.error.username]]</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="reg_password" class="col-sm-2 col-form-label">Пароль*:</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="reg_password" name="password" value="[[!+reg.password]]" placeholder="Введите пароль">
            <div class="error">[[!+reg.error.password]]</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="password_confirm" class="col-sm-2 col-form-label">Повторите пароль*:</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="password_confirm" name="password_confirm" value="[[!+reg.password_confirm]]" placeholder="Повторите пароль">
            <div class="error">[[!+reg.error.password_confirm]]</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="fullname" class="col-sm-2 col-form-label">Ф.И.О.*:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="fullname" name="fullname" value="[[!+reg.fullname]]" placeholder="Введите Ф.И.О.">
            <div class="error">[[!+reg.error.fullname]]</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="email" class="col-sm-2 col-form-label">Адрес эл. почты*:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="email" name="email" value="[[!+reg.email]]" placeholder="Введите адрес эл. почты">
            <div class="error">[[!+reg.error.email]]</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="phone" class="col-sm-2 col-form-label">Телефон*:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="phone" name="phone" value="[[!+reg.phone]]" placeholder="Введите телефон">
            <div class="error">[[!+reg.error.phone]]</div>
        </div>
    </div>
    <div class="form-group row">
        <label for="invite_code" class="col-sm-2 col-form-label"></label>
        <div class="col-sm-10">
            <p>
                Заполняя данную форму, вы принимаете условия <a href=[[~99]]>Соглашения об использовании сайта</a>, в том числе в части обработки и использования персональных данных
            </p>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
        </div>
</form>
<style>
    .error{
        color:red;
    }
</style>
