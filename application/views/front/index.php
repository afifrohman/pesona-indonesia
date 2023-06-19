<main id="main">

 <!-- ======= About Us Section ======= -->
<section id="about" class="about">
    <div class="container">
        <?php foreach ($about as $ab) : ?>
        <div class="row no-gutters">
            <div class="col-lg-6 video-box">
                <img src="<?= base_url('assets/img/posting/about/') . $ab['image']; ?>" class="img-fluid" alt="">
            </div>
            <div class="col-lg-6 d-flex flex-column justify-content-center about-content">
                <div class="section-title">
                    <h2>About Us</h2>
                    <p><?= $ab['description'] ?></p>
                </div>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
</section><!-- End About Us Section -->



    <!-- ======= Our Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
        <div class="container" data-aos="fade-up" data-aos-delay="100">

            <div class="section-title">
                <h2>Pilihan Wisata</h2>
            </div>

            <div class="row portfolio-container">
                <?php foreach ($posting as $p) : ?>
                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="<?php if ($p['image1'] != NULL) {
                                            echo base_url('assets/img/posting/post/') . $p['image1'];
                                        } elseif ($p['image1'] == NULL) {
                                            echo base_url('assets/img/posting/post/') . $p['image2'];
                                        } elseif ($p['image2'] != NULL) {
                                            echo base_url('assets/img/posting/post/') . $p['image2'];
                                        } elseif ($p['image2'] == NULL) {
                                            echo base_url('assets/img/posting/post/') . $p['image3'];
                                        } elseif ($p['image3'] != NULL) {
                                            echo base_url('assets/img/posting/post/') . $p['image3'];
                                        } else {
                                            echo base_url('assets/img/posting/post/default1.jpg');
                                        } ?>" class="img-fluid" alt="" style="width: 100%; height:300px; !important">
                        <div class="portfolio-info">
                            <h4><?= $p['title'] ?></h4>
                            <p><?= $p['ticket_price'] ?></p>
                            <p><?= $p['maps'] ?></p>
                            <div class="portfolio-links">
                                <a href="<?= base_url('assets/img/posting/post/') . $p['image1']; ?>"
                                    data-gall="portfolioGallery" class="venobox" title="<?= $p['title'] ?>"><i
                                        class="icofont-eye"></i></a>
                                <a href="<?= base_url('front/detail/') . $p['id']; ?>" title="More Details"><i
                                        class="icofont-external-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
            <?php echo $this->pagination->create_links(); ?>

        </div>
    </section>
    <!-- End Our Portfolio Section -->

    <!-- ======= Our Team Section ======= -->
    <section id="team" class="team">
        <div class="container">
            <div class="section-title">
                <h2>Our Team</h2>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-6" data-aos="fade-up">
                    <div class="member">
                    <div class="pic"><img src="<?= base_url('assets/img/profile/team/anggota-1.jpg'); ?>"
                        class="img-fluid" alt="" style="width:270px; height:270px !important;"></div>
                    <div class="member-info">
                        <h4>Afif Rohman</h4>
                        <span>Fullstack Web Developer</span>
                    </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="member">
                    <div class="pic"><img src="<?= base_url('assets/img/profile/team/anggota-2.jpeg'); ?>"
                        class="img-fluid" alt="" style="width:270px; height:270px !important;"></div>
                    <div class="member-info">
                        <h4>Virly Diranisha</h4>
                        <span>Content Creator</span>
                    </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="member">
                    <div class="pic"><img src="<?= base_url('assets/img/profile/team/anggota-3.jpeg'); ?>"
                        class="img-fluid" alt="" style="width:270px; height:270px !important;"></div>
                    <div class="member-info">
                        <h4>M. Dzaky Dwi Ardiansyah</h4>
                        <span>Fullstack Web Developer </span>
                    </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-6" data-aos="fade-up" data-aos-delay="200">
                    <div class="member">
                    <div class="pic"><img src="<?= base_url('assets/img/profile/team/anggota-4.jpeg'); ?>"
                        class="img-fluid" alt="" style="width:270px; height:270px !important;"></div>
                    <div class="member-info">
                        <h4>Nadia Putri Ariyanto</h4>
                        <span>Project Manager</span>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Our Team Section -->

    <!-- ======= Contact Us Section ======= -->
    <section id="contact" class="contact">
        <div class="container">

            <div class="section-title">
                <h2>Contact Us</h2>
            </div>

            <div class="row">

                <div class="col-lg-6 d-flex align-items-stretch" data-aos="fade-up">
                    <div class="info-box">
                        <i class="bx bx-map"></i>
                        <h3>Alamat</h3>
                        <p>Jln. Ahmad Yamin, Jakarta, Indonesia</p>
                    </div>
                </div>

                <div class="col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="info-box">
                        <i class="bx bx-envelope"></i>
                        <h3>Email Kami</h3>
                        <p>pesonaindonesia@gmail.com<br>berpetualang@gmail.com</p>
                    </div>
                </div>

                <div class="col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                    <div class="info-box ">
                        <i class="bx bx-phone-call"></i>
                        <h3>Hubungi Kami</h3>
                        <p>+628525346754<br>+628543456577</p>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Contact Us Section -->

</main><!-- End #main -->