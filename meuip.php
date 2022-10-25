<?php

echo "<br>1". $_SERVER['HTTP_CLIENT_IP'];

echo "<br>2". $_SERVER['HTTP_X_FORWARDED_FOR'];

echo "<br>3".$_SERVER['REMOTE_ADDR'];

?>