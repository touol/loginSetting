<?php
/** @var modX $modx */
/* @var array $scriptProperties */
switch ($modx->event->name) {
    case 'OnHandleRequest':
        /* @var loginSetting $loginSetting*/
        $loginSetting = $modx->getService('loginsetting', 'loginSetting', $modx->getOption('loginsetting_core_path', $scriptProperties, $modx->getOption('core_path') . 'components/loginsetting/') . 'model/');
        if ($loginSetting instanceof loginSetting) {
            $loginSetting->loadHandlerEvent($modx->event, $scriptProperties);
        }
        break;
}
return '';