<div class='profile block'>
    <div class='right'>
        <div class="update-profile">
            [[!UpdateProfile? &submitVar=`login-updprof-btn` &excludeExtended=`nospam,login-updprof-btn`]]
            <form class="form" action="[[~[[*id]]]]" method="post">
                <input type="hidden" name="nospam" value="[[!+reg.nospam]]" />
                <div class="updprof-error">[[+error.message]]</div>
                <span>[[+login.update_success:if=`[[+login.update_success]]`:is=`1`:then=`[[%login.profile_updated? &namespace=`login` &topic=`updateprofile`]]`]]</span>
        
                <span>Контактная информация</span>
                <div class='person'>
                    <div class="form-group row">
                        <label for="fullname" class="col-sm-2 col-form-label">Ф.И.О.*:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="fullname" name="fullname" value="[[!+fullname]]">
                            <div class="error">[[!+error.fullname]]</div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="email" class="col-sm-2 col-form-label">Адрес эл. почты*:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" name="email" value="[[!+email]]">
                            <div class="error">[[!+error.email]]</div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="phone" class="col-sm-2 col-form-label">Адрес эл. почты*:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="phone" name="phone" value="[[!+phone]]">
                            <div class="error">[[!+error.phone]]</div>
                        </div>
                    </div>
                </div>
                <input type="button"  class='btn btn-info' value="Обновить пароль" onclick="$(location).attr('href','smenit-parol.html');">
                <input type="submit"  class='btn btn-primary' name="login-updprof-btn" value="Редактировать профиль">
            </form>
            
        </div>
    </div>
</div>