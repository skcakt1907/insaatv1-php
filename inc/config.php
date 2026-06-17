<?php
// ========== Veritabanı Ayarları ==========
// Müşteri buradan kendi DB bilgilerini girer
define('DB_HOST', 'localhost');
define('DB_NAME', 'insaatv1');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_CHARSET', 'utf8mb4');

// ========== Site Sabitleri ==========
define('SITE_URL', 'http://localhost/insaatv1-php');
define('UPLOADS', __DIR__ . '/../uploads');
define('UPLOADS_URL', SITE_URL . '/uploads');

// Hata gösterimi (canlıda false yap)
define('DEBUG', true);

if (DEBUG) {
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
} else {
    error_reporting(0);
    ini_set('display_errors', 0);
}

session_start();
date_default_timezone_set('Europe/Istanbul');
