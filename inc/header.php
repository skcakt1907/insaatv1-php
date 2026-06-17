<?php
require_once __DIR__ . '/helpers.php';
$current = basename($_SERVER['SCRIPT_NAME']);
$pageTitle = $pageTitle ?? ayar('site_baslik');
?>
<!doctype html>
<html lang="tr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title><?= e($pageTitle) ?></title>
<meta name="description" content="<?= e(ayar('site_aciklama')) ?>">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.css" rel="stylesheet">
<link href="<?= SITE_URL ?>/css/style.css" rel="stylesheet">
</head>
<body>

<div class="top-bar d-none d-md-block">
  <div class="container d-flex justify-content-between">
    <div>
      <span><i class="bi bi-geo-alt-fill"></i> <?= e(ayar('adres')) ?></span>
      <span class="ms-4"><i class="bi bi-clock-fill"></i> <?= e(ayar('calisma_saati')) ?></span>
    </div>
    <div>
      <a href="mailto:<?= e(ayar('mail')) ?>"><i class="bi bi-envelope-fill"></i> <?= e(ayar('mail')) ?></a>
      <a href="tel:<?= e(ayar('telefon')) ?>" class="ms-3"><i class="bi bi-telephone-fill"></i> <?= e(ayar('telefon')) ?></a>
    </div>
  </div>
</div>

<nav class="navbar navbar-expand-lg sticky-top">
  <div class="container">
    <a class="navbar-brand" href="<?= SITE_URL ?>/index.php"><?= e(ayar('site_adi')) ?></a>
    <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#nav"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="nav">
      <ul class="navbar-nav ms-auto align-items-lg-center">
        <?php
        $menu = [
          'index.php'      => 'Anasayfa',
          'hakkimizda.php' => 'Hakkımızda',
          'hizmetler.php'  => 'Hizmetler',
          'projeler.php'   => 'Projeler',
          'blog.php'       => 'Blog',
          'iletisim.php'   => 'İletişim',
        ];
        foreach ($menu as $f => $t):
          $a = $current === $f ? 'active' : '';
        ?>
        <li class="nav-item"><a class="nav-link <?= $a ?>" href="<?= SITE_URL ?>/<?= $f ?>"><?= $t ?></a></li>
        <?php endforeach; ?>
        <li class="nav-item"><a class="nav-link btn-quote" href="<?= SITE_URL ?>/iletisim.php">Teklif Al</a></li>
      </ul>
    </div>
  </div>
</nav>
