<!DOCTYPE html>
<html lang="en">
    <head>
        [[$Head]]
        <style>
            .nav-lk{
                list-style: none;
                padding-left: 0px;
                margin: 0;
            }
            .nav-lk li{
                display: inline-block;
                padding-left: 20px;
            }
        </style>
    </head>
    <body>
        [[$Navbar]]
        
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-9">
                    [[$Crumbs]]
                    <ul class="nav-lk" style="float:none;">
                        {'!pdoMenu' | snippet : [
                            'startId'=>104,
                            'level'=>1,
                            'tplParentRow'=>'@INLINE
                                <li class="[[+classnames]] dropdown">
                                    <a href="[[+link]]" class="dropdown-toggle" data-toggle="dropdown" [[+attributes]] data-accsess="[[+user_group]]![[+document_group]]![[+principal]]">[[+menutitle]]<b class="caret"></b></a>
                                    <ul class="dropdown-menu">[[+wrapper]]</ul>
                                </li>
                            ',
                            'tplInnerRow'=>'@INLINE 
                            <li class="submenu_item [[+classnames]]"><a href="[[+link]]" [[+attributes]] data-accsess="[[+user_group]]![[+document_group]]![[+principal]]">[[+menutitle]]</a>[[+wrapper]]</li>
                            ',
                            'tplOuter'=>'@INLINE [[+wrapper]]',
                        ]}
                    </ul>
                    [[$Content]]
                </div>
                <div class="col-md-3">
                    [[$ls.rightCol]]
                </div>
            </div>
            [[$Footer]]
        </div>
    </body>
</html>
