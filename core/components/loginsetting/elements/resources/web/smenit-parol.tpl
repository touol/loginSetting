[[!ChangePassword? 
submitVar=`change-password` 
placeholderPrefix=`cp.` 
validateOldPassword=`1` 
&validate=`nospam:blank` ]]

<div class="updprof-error">[[!+cp.error_message]]</div>
<form class="form" action="[[~[[*id]]]]" method="post">

    <div class="control-group">
        <label for="password_old" class="control-label">Старый пароль <span class="error">[[!+cp.error.password_old]]</span> </label>
        <div class="controls">
            <input class="form-control" id="password_old" type="password" name="password_old" value="[[+cp.password_old]]" />
        </div>
    </div>
    <div class="control-group">
        <label for="password_new" class="control-label">Новый пароль<span class="error">[[!+cp.error.password_new]]</span> </label> 
        <div class="controls">
            <input class="form-control" id="password_new" type="password" name="password_new" value="[[+cp.password_new]]" />
        </div>
    </div>
    <div class="control-group">
        <label for="password_new_confirm" class="control-label">Повторите пароль <span class="error">[[!+cp.error.password_new_confirm]]</span> </label> 
        <div class="controls">
            <input class="form-control" id="password_new_confirm" type="password" name="password_new_confirm" value="[[+cp.password_new_confirm]]" /></div>
        </div>
    <div class="control-group">
        <input type="submit"  class="btn btn-primary" name="logcp-submit" value="Изменить пароль" />
    </div>
</form>