<?php

require __DIR__ . '/vendor/autoload.php';

printf('REDIS_HOST: %s <br/>', getenv('REDIS_HOST'));

Predis\Autoloader::register();

$redis = new Predis\Client([
    "scheme" => "tcp",
    "host"   => getenv('REDIS_HOST'),
    "port"   => getenv('REDIS_PORT'),
]);
echo "Connected to Redis <br/>";

$value = $redis->get("foo");
$redis->set("foo", "bar");
$value = $redis->get("foo");
var_dump($value);
