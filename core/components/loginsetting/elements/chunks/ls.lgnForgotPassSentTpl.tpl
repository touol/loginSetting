<div class="container">
  <div class="row">
    <div class="col-md-8 col-lg-6">
      <div class="panel panel-primary">
        <div class="panel-heading"><i class="glyphicon glyphicon-erase"></i> [[%login.forgot_password]]</div>
        <div class="panel-body">
          <div class="text-danger">[[+loginfp.errors]]</div>
          
          <form class="form-horizontal" action="[[~[[*id]]]]" method="post">
            <div class="form-group">
              <label for="username" class="col-sm-4 control-label">[[%login.username]]</label>
              <div class="col-sm-8">
                <input type="text" name="username" class="form-control" id="username" value="[[+loginfp.post.username]]">
              </div>      
            </div>
            <p>[[%login.or_forgot_username]]</p>
            <div class="form-group">
              <label for="username" class="col-sm-4 control-label">[[%login.email]]</label>
              <div class="col-sm-8">
                <input type="text" name="email" class="form-control" id="email" value="[[+loginfp.post.email]]">
              </div>      
            </div>            
            <input class="returnUrl" type="hidden" name="returnUrl" value="[[+loginfp.request_uri]]" />
            <input class="loginFPService" type="hidden" name="login_fp_service" value="forgotpassword" />
            <input type="submit" value="[[%login.reset_password]]" name="login_fp" id="login_fp" class="btn btn-primary pull-right">            
          </form>
        </div>
      </div>
    </div>
  </div>
</div>