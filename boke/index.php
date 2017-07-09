<?php
define('CSS_PATH', '/boke/boke/public/css/');
define('JS_PATH', '/boke/boke/public/js/');
define('IMG_PATH', '/boke/boke/public/img/');
define('PHP_PATH', '/boke/boke/index.php/');


define('VIEW_PATH', 'app/views/');
define('DEBUG', true);
if (DEBUG) {
    include 'core/debug.php';
}
include 'core/function.php';
include 'core/core.php';

spl_autoload_register('\core\core::autoload');
\core\core::run();

