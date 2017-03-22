<?php
/**
 * converting from x,xxx.xx to xxxx.xx 
 */

$value = "1,578.73";
floatval(preg_replace("/[^-0-9\.]/","", $value));
