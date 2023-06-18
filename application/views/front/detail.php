<main id="main">
    <input type="hidden" name="id" value="<?= $posting['id']; ?>">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Portfolio Details</h2>
                <ol>
                </ol>
            </div>

        </div>
    </section><!-- Breadcrumbs Section -->

    <!-- ======= Portfolio Details Section ======= -->
    <section class="portfolio-details">
        <div class="container">

            <div class="portfolio-details-container">

                <div class="owl-carousel portfolio-details-carousel">
                    <img src="<?php if ($posting['image1'] != NULL) {
                                    echo base_url('assets/img/posting/post/') . $posting['image1'];
                                } else {
                                    echo base_url('assets/img/posting/post/default1.jpg');
                                } ?>" class="img-fluid" alt="" style=" width:100%; height: 500px !important;">
                    <img src="<?php if ($posting['image2'] != NULL) {
                                    echo base_url('assets/img/posting/post/') . $posting['image2'];
                                } else {
                                    echo base_url('assets/img/posting/post/default1.jpg');
                                } ?>" class="img-fluid" alt="" style=" width:100%; height: 500px !important;">
                    <img src="<?php if ($posting['image3'] != NULL) {
                                    echo base_url('assets/img/posting/post/') . $posting['image3'];
                                } else {
                                    echo base_url('assets/img/posting/post/default1.jpg');
                                } ?>" class="img-fluid" alt="" style=" width:100%; height: 500px !important;">
                </div>

                <div class="portfolio-info">
                    <h3>Post Information</h3>
                    <ul>
                        <li><strong>Harga Tiket</strong> : <?= $posting['ticket_price'] ?></li>
                        <li><strong>Alamat</strong> : <?= $posting['address'] ?></li>
                        <li><strong>Peta</strong> :<a href="<?= $posting['maps'] ?>" target="_blank">View Map</a></li>

                    </ul>
                </div>

            </div>

            <div class="portfolio-description">
                <h2><?= $posting['title'] ?></h2>
                <p>
                    <?= $posting['description'] ?>.
                </p>
            </div>
        </div>
    </section><!-- End Portfolio Details Section -->

</main><!-- End #main -->
