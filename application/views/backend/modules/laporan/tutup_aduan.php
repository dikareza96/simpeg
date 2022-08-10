
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Detail Aduan
            <!-- <small>Preview</small> -->
        </h1>
     <!--    <ol class="breadcrumb">
            <li><a href="<?php echo base_url("backend/home/index");?>"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="<?php echo base_url("backend/".$route."/index");?>"></a></li>
            <li class="active">Edit Profile</li>
        </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
        <form role="form" method="POST" enctype="multipart/form-data" action="<?php echo base_url("laporan/update");?>">

            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <!-- <div class="box-header with-border">
              <h3 class="box-title">New Post </h3>
          </div> -->
          <!-- /.box-header -->
          <!-- form start -->
          <?php foreach ($laporan as $row) {

            ?>

            <input id="id" name="id" required="required" type="hidden" value="<?php echo $row->id; ?>"> 
            <div class="box-body">



                <div class="form-group">
                    <label class="exampleInputFile">Pihak yang dilaporkan</label>
                    <input type="text" class="form-control" id="tersangka" name="tempat_kejadian" placeholder="Enter role name" value="<?php echo $row->tersangka; ?>" disabled>
                </div>
                <div class="form-group">
                    <label class="exampleInputFile">Waktu kejadian</label>
                    <input type="text" class="form-control" id="waktu_kejadian" name="waktu_kejadian" placeholder="Enter role name" value="<?php echo $row->waktu_kejadian; ?>" disabled>
                </div>
                <div class="form-group">
                    <label class="exampleInputFile">Tempat kejadian</label>
                    <input type="text" class="form-control" id="tersangka" name="tempat_kejadian" placeholder="Enter role name" value="<?php echo $row->tersangka; ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Detail laporan</label>
                    <textarea class="form-control" rows="3" name="detail_laporan" id="waktu_kejadian" disabled><?php echo $row->detail_laporan; ?></textarea>

                </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">status</label>
                    <textarea class="form-control" rows="3" name="detail_laporan" id="waktu_kejadian" disabled><?php echo $row->status; ?></textarea>

                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Bukti Foto / video</label>
                    <input type="file" class="form-control" id="image" name="image" disabled>
                    <img class="form-control" id="bukti_foto" alt="Bukti Foto" style="width: 300px;height: 300px;" src="<?=base_url()?>assets/uploads/<?=$row->file;?>">
                </div>
                <?php
                if (isset($jenis_komplain) ? $jenis_komplain:'') {
                    $jenis_komplain;
                }else{
                    $jenis_komplain = '';
                }
                if (isset($jenis_laporan) ? $jenis_laporan:'') {
                    $jenis_laporan;
                }else{
                    $jenis_laporan = '';
                }
                if (isset($tindak_lanjut) ? $tindak_lanjut:'') {
                    $tindak_lanjut;
                }else{
                    $tindak_lanjut = '';
                }
                ?>


                <div class="form-group">
                    <label class="exampleInputFile">Jenis laporan</label>
                    <input type="text" class="form-control" id="jenis_laporan" name="jenis_laporan" placeholder="" value="<?php echo $jenis_laporan; ?>" disabled>
                </div>

                 <?php  
                        // $nama_komite1 = '';
                        // $nama_komite2 = '';
                        // $nama_komite3 = '';
                        // $nama_komite4 = '';
                        // $etik = '';
                        // $keperawatan = '';
                        // $medik = '';
                        // $tenaga = '';
                // if(!empty($nama_komite1)){
                //     if($nama_komite1 == 'komite_etik') {
                //         $etik = 'Komite Etik & Hukum';
                //     }
                // }else{
                //     $etik = '';
                // }
                // if(!empty($nama_komite2)){
                //     if($nama_komite2 == 'komite_keperawatan') {
                //         $keperawatan = 'Komite Keperawatan';
                //     }
                // }else{
                //     $keperawatan = '';
                // }
                // if(!empty($nama_komite3)){
                //     if($nama_komite3 == 'komite_medik') {
                //         $medik = 'Komite Medik';
                //     }
                // }else{
                //     $medik = '';
                // }
                // if(!empty($nama_komite4)){
                //     if($nama_komite4 == 'komite_tenaga') {
                //         $tenaga = 'Komite Tenaga Kesehatan Lain';
                //     }
                // }else{
                //     $tenaga = '';
                // }
                    // if(!empty($tindak_lanjut1)){
                    //     $tindak_lanjut1 = '';
                    // }if(!empty($tindak_lanjut2)){
                    //     $tindak_lanjut2 = '';
                    // }if(!empty($tindak_lanjut3)){
                    //     $tindak_lanjut3 = '';
                    // }if(!empty($tindak_lanjut4)){
                    //     $tindak_lanjut4 = '';
                    // }

                 foreach($tindak_lanjut_komite as $get_nama){
                          if($get_nama->id_komite == 'komite_etik' ){
                                  $nama_komite = 'Komite Etik & Hukum';
                           }if($get_nama->id_komite == 'komite_keperawatan' ){
                                  $nama_komite = 'Komite Etik & Hukum';
                           }if($get_nama->id_komite == 'komite_medik' ){
                                  $nama_komite = 'Komite Medik';
                           }if($get_nama->id_komite == 'komite_tenaga' ){
                                  $nama_komite = 'Komite Tenaga Kesehatan Lain';
                                }
                    }
                 ?> 
 
            <!--  <?php foreach($tindak_lanjut_komite as $index){
              ?>  
                    <div class="form-group">
                    <label for="exampleInputEmail1">Evaluasi <?php echo $nama_komite;?></label>
                       <textarea class="form-control" rows="3" name="tindak_lanjut" id="tindak_lanjut" disabled><?php echo $index->tindak_lanjut; ?></textarea>
                   </div> 
              <?php }?> -->
              <?php if(!empty($tindak_lanjut_komite )){?>
                    <?php foreach($tindak_lanjut_komite as $index){?>
                        <div class="form-group">
                            <?php if($index->id_komite == 'humas' ){ ?>
                                <label for="exampleInputEmail1">Evaluasi Humas</label>
                            <?php }if($index->id_komite == 'komite_etik' ){ ?>
                                <label for="exampleInputEmail1">Evaluasi Komite Etik & Hukum</label>
                            <?php }if($index->id_komite == 'spi' ){ ?>
                                <label for="exampleInputEmail1">Evaluasi SPI</label>
                            <?php }?>
                            <textarea class="form-control" rows="3" name="tindak_lanjut" id="tindak_lanjut" disabled><?php echo $index->tindak_lanjut; ?></textarea>
                        </div> 
                    <?php }?>
                <?php }else{?>
                 <div class="form-group">
                    <label for="exampleInputEmail1">Evaluasi</label>
                    <textarea class="form-control" rows="3" name="tindak_lanjut" id="tindak_lanjut" disabled>Komite belom mengisi tindak lanjut</textarea>
                </div> 
            <?php }?>

             <?php if(!empty($row->tindak_lanjut_karumkit)){?>
                <div class="form-group">
                    <label for="exampleInputEmail1">Keputusan Karumkit</label>
                    <textarea class="form-control" rows="3" name="tindak_lanjut_karumkit" id="tindak_lanjut_karumkit" disabled><?php echo $row->tindak_lanjut_karumkit; ?></textarea>
                </div>
            <?php }?>

                
                   <?php if(!empty($row->status == '3')){?>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Status: </label>
                        <br>
                        <input type="radio" class="minimal" name="status" value="3" checked="" disabled="">
                        <label for="exampleInputEmail1">Status selesai</label>
                    </div>
                   <?php }elseif(!empty($row->status < '2')){?>
                     <div class="form-group">
                         <!--  <label for="exampleInputEmail1">Status: </label>
                          <br>
                          <input type="radio" class="minimal" name="status" value="3"disabled>
                          <label for="exampleInputEmail1">Status selesai</label> -->
                      </div> 
                  <?php }else{?>
                     <div class="form-group">
                          <label for="exampleInputEmail1">Status: </label>
                          <br>
                          <input type="radio" class="minimal" name="status" value="3">
                          <label for="exampleInputEmail1">Status selesai</label>
                      </div>
                    <?php }?>





<div class="box-footer">
    <a href="<?php echo base_url("laporan/index")?>" type="button" class="btn btn-default ">Back</a>
    <button type="submit" class="btn btn-info pull-right">Submit</button>
</div>
<!-- /.box-body -->
</div>


<?php }?>
</div>
<!-- /.box -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>

</div>
<!--/.col (left) -->
<!-- right column -->

<!--/.col (right) -->
</div>
<!-- /.row -->
</form>
</section>

<!-- /.content -->
</div>

<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/adminlte.min.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/plugins/iCheck/icheck.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/demo.js"></script>
<script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        // CKEDITOR.replace('editor2')
    //bootstrap WYSIHTML5 - text editor
    // $('.textarea').wysihtml5()



    //Initialize Select2 Elements
    $('.select2').select2()
    // Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("bukti_foto");
// var img = document.getElementById("myImg");

var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}

});
</script>

