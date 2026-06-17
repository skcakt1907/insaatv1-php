<footer>
  <div class="container">
    <div class="row g-4">
      <div class="col-lg-4 col-md-6">
        <div class="brand"><?= e(ayar('site_adi')) ?></div>
        <p><?= e(ayar('hakkimizda_kisa')) ?></p>
        <div class="social mt-3">
          <a href="<?= e(ayar('facebook')) ?>"><i class="bi bi-facebook"></i></a>
          <a href="<?= e(ayar('instagram')) ?>"><i class="bi bi-instagram"></i></a>
          <a href="<?= e(ayar('twitter')) ?>"><i class="bi bi-twitter-x"></i></a>
          <a href="<?= e(ayar('linkedin')) ?>"><i class="bi bi-linkedin"></i></a>
          <a href="<?= e(ayar('youtube')) ?>"><i class="bi bi-youtube"></i></a>
        </div>
      </div>
      <div class="col-lg-2 col-md-6">
        <h5>Kurumsal</h5>
        <a href="<?= SITE_URL ?>/hakkimizda.php">Hakkımızda</a>
        <a href="<?= SITE_URL ?>/hizmetler.php">Hizmetler</a>
        <a href="<?= SITE_URL ?>/projeler.php">Projeler</a>
        <a href="<?= SITE_URL ?>/blog.php">Blog</a>
        <a href="<?= SITE_URL ?>/iletisim.php">İletişim</a>
      </div>
      <div class="col-lg-3 col-md-6">
        <h5>Hizmetler</h5>
        <?php foreach (getList('hizmetler','durum=1','sira ASC',5) as $h): ?>
          <a href="<?= SITE_URL ?>/hizmetler.php"><?= e($h['baslik']) ?></a>
        <?php endforeach; ?>
      </div>
      <div class="col-lg-3 col-md-6">
        <h5>İletişim</h5>
        <p><i class="bi bi-geo-alt-fill text-warning me-2"></i><?= e(ayar('adres')) ?></p>
        <p><i class="bi bi-telephone-fill text-warning me-2"></i><?= e(ayar('telefon')) ?></p>
        <p><i class="bi bi-envelope-fill text-warning me-2"></i><?= e(ayar('mail')) ?></p>
      </div>
    </div>
    <div class="footer-bottom">
      &copy; <?= date('Y') ?> <?= e(ayar('site_adi')) ?>. Tüm hakları saklıdır.
    </div>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="<?= SITE_URL ?>/js/main.js"></script>
</body>
</html>
