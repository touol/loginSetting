<?php
/** @var xPDOTransport $transport */
/** @var array $options */
/** @var modX $modx */
if ($transport->xpdo) {
    $modx =& $transport->xpdo;

    $dev = MODX_BASE_PATH . 'Extras/loginSetting/';
    /** @var xPDOCacheManager $cache */
    $cache = $modx->getCacheManager();
    if (file_exists($dev) && $cache) {
        if (!is_link($dev . 'assets/components/loginsetting')) {
            $cache->deleteTree(
                $dev . 'assets/components/loginsetting/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_ASSETS_PATH . 'components/loginsetting/', $dev . 'assets/components/loginsetting');
        }
        if (!is_link($dev . 'core/components/loginsetting')) {
            $cache->deleteTree(
                $dev . 'core/components/loginsetting/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_CORE_PATH . 'components/loginsetting/', $dev . 'core/components/loginsetting');
        }
    }
}

return true;