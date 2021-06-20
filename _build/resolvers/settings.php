<?php
/** @var xPDOTransport $transport */
/** @var array $options */
/** @var modX $modx */
if (!$transport->xpdo || !($transport instanceof xPDOTransport)) {
    return false;
}

$modx =& $transport->xpdo;
$success = false;
switch ($options[xPDOTransport::PACKAGE_ACTION]) {
    case xPDOTransport::ACTION_INSTALL:
    case xPDOTransport::ACTION_UPGRADE:


        $default_template = null;
        if ($template = $modx->getObject('modTemplate', array('templatename' => 'main'))) {
            $default_template = $template->get('id');
        }


        $settings = array(
            'default_template' => $default_template,
            
            // pdoTools
            'pdotools_fenom_default' => true,
            'pdotools_fenom_modx' => false,
            'pdotools_fenom_parser' => true,
            'pdotools_fenom_php' => false,
        );

        foreach ($settings as $key => $value) {
            /* @var modSystemSetting $tmp */
            if (!$tmp = $modx->getObject('modSystemSetting', array('key' => $key))) {
                $tmp = $modx->newObject('modSystemSetting');
                $tmp->set('key',$key);
            }

            $tmp->set('value', $value);
            $tmp->save();
        }

        $success = true;
        break;
    case xPDOTransport::ACTION_UNINSTALL:
        $success = true;
        break;
}

return $success;