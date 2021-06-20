<?php

/**
 * The home manager controller for loginSetting.
 *
 */
class loginSettingHomeManagerController extends modExtraManagerController
{
    /** @var loginSetting $loginSetting */
    public $loginSetting;


    /**
     *
     */
    public function initialize()
    {
        $this->loginSetting = $this->modx->getService('loginSetting', 'loginSetting', MODX_CORE_PATH . 'components/loginsetting/model/');
        parent::initialize();
    }


    /**
     * @return array
     */
    public function getLanguageTopics()
    {
        return ['loginsetting:manager', 'loginsetting:default'];
    }


    /**
     * @return bool
     */
    public function checkPermissions()
    {
        return true;
    }


    /**
     * @return null|string
     */
    public function getPageTitle()
    {
        return $this->modx->lexicon('loginsetting');
    }


    /**
     * @return void
     */
    public function loadCustomCssJs()
    {
        $this->addCss($this->loginSetting->config['cssUrl'] . 'mgr/main.css');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/loginsetting.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/misc/utils.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/misc/combo.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/misc/default.grid.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/misc/default.window.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/widgets/items/grid.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/widgets/items/windows.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/widgets/home.panel.js');
        $this->addJavascript($this->loginSetting->config['jsUrl'] . 'mgr/sections/home.js');

        $this->addJavascript(MODX_MANAGER_URL . 'assets/modext/util/datetime.js');

        $this->loginSetting->config['date_format'] = $this->modx->getOption('loginsetting_date_format', null, '%d.%m.%y <span class="gray">%H:%M</span>');
        $this->loginSetting->config['help_buttons'] = ($buttons = $this->getButtons()) ? $buttons : '';

        $this->addHtml('<script type="text/javascript">
        loginSetting.config = ' . json_encode($this->loginSetting->config) . ';
        loginSetting.config.connector_url = "' . $this->loginSetting->config['connectorUrl'] . '";
        Ext.onReady(function() {MODx.load({ xtype: "loginsetting-page-home"});});
        </script>');
    }


    /**
     * @return string
     */
    public function getTemplateFile()
    {
        $this->content .=  '<div id="loginsetting-panel-home-div"></div>';
        return '';
    }

    /**
     * @return string
     */
    public function getButtons()
    {
        $buttons = null;
        $name = 'loginSetting';
        $path = "Extras/{$name}/_build/build.php";
        if (file_exists(MODX_BASE_PATH . $path)) {
            $site_url = $this->modx->getOption('site_url').$path;
            $buttons[] = [
                'url' => $site_url,
                'text' => $this->modx->lexicon('loginsetting_button_install'),
            ];
            $buttons[] = [
                'url' => $site_url.'?download=1&encryption_disabled=1',
                'text' => $this->modx->lexicon('loginsetting_button_download'),
            ];
            $buttons[] = [
                'url' => $site_url.'?download=1',
                'text' => $this->modx->lexicon('loginsetting_button_download_encryption'),
            ];
        }
        return $buttons;
    }
}