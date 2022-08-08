
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
      
      
      
      <div class="box-body">
        <!-- form start -->
        <?php foreach ($laporan as $row) {
         $en= array("Sunday", "Monday", "Tuesday", "Wednesday","Thursday","Friday", "Saturday",
          "January","February","March","April", "May","June","July","August","September","October","November","Desember");
         $id = array("Minggu", "Senin","Selasa","Rabu","Kamis","Jumat","Sabtu",
          "Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
          ?>
          <input id="id" name="id" required="required" type="hidden" value="<?php echo $row->id; ?>"> 

          <div class="form-group">
            <label class="exampleInputFile">Pihak yang dilaporkan</label>
            <input type="text" class="form-control" id="tersangka" name="tempat_kejadian" placeholder="Enter role name" value="<?php echo $row->tersangka; ?>" disabled>
        </div>
        <div class="form-group">
            <label class="exampleInputFile">Pelapor</label>
            <input type="text" class="form-control" id="korban" name="korban" placeholder="Enter role name" value="<?php echo $row->korban; ?>" disabled>
        </div>
        <div class="form-group">
            <label class="exampleInputFile">Waktu kejadian</label>
            <input type="text" class="form-control" id="waktu_kejadian" name="waktu_kejadian" placeholder="Enter role name" value="<?php echo str_replace($en, $id, strftime("%d %B %Y", strtotime($row->waktu_kejadian)));?>" disabled>
        </div>
        <div class="form-group">
            <label class="exampleInputFile">Tempat kejadian</label>
            <input type="text" class="form-control" id="tersangka" name="tempat_kejadian" placeholder="Enter role name" value="<?php echo $row->tempat_kejadian; ?>" disabled>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Detail laporan</label>
            <textarea class="form-control" rows="3" name="detail_laporan" id="waktu_kejadian" disabled><?php echo $row->detail_laporan; ?></textarea>

        </div>

        <div class="form-group">
            <label for="exampleInputEmail1">Bukti Foto / video</label>
            <input type="file" class="form-control" id="image" name="image" disabled>
            <img class="form-control" style="width: 200px;height: 200px;" src="<?=base_url()?>assets/uploads/<?=$row->file;?>">
        </div>
    <?php } ?>
    
    <?php 
    if($this->session->userdata('level')=='karumkit' || $this->session->userdata('admin')=='admin'){

        ?>
        <div class="form-group">
            <label for="exampleInputEmail1">Tembusan: </label>
            <br>
            <?php
            if (isset($komite1) ? $komite1:'') {
                $komite1;
            }else{
                $komite1 = '';
            }
            if (isset($komite2) ? $komite2:'') {
                $komite2;
            }else{
                $komite2 = '';
            }
            if (isset($komite3) ? $komite3:'') {
                $komite3;
            }else{
                $komite3 = '';
            }
            if (isset($komite4) ? $komite4:'') {
                $komite4;
            }else{
                $komite4 = '';
            }?>
            <!-- 1 -->
            <?php 
            if('komite_etik' ==  $komite1 OR 'komite_etik' ==  $komite2 OR 'komite_etik' == $komite3 OR 'komite_etik' ==  $komite4 ){
                ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_etik" checked="" disabled="">
                <label for="exampleInputEmail1">Komite Etik dan hukum</label>
            <?php }else{ ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_etik" >
                <label for="exampleInputEmail1">Komite Etik dan hukum</label>
            <?php } ?>
            <br>
            <!-- 2 -->
            <?php 
            if('komite_keperawatan' ==  $komite1 OR 'komite_keperawatan' ==  $komite2 OR 'komite_keperawatan' ==  $komite3 OR 'komite_keperawatan' ==  $komite4 ){
                ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_keperawatan" checked="" disabled="">
                <label for="exampleInputEmail1">Komite Keperawatan</label>
            <?php }else{ ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_keperawatan" >
                <label for="exampleInputEmail1">Komite Keperawatan</label>
            <?php } ?>

            <br>
            <?php 
            if( 'komite_medik' == $komite1 OR 'komite_medik' ==  $komite2 OR 'komite_medik' ==  $komite3 OR 'komite_medik' ==  $komite4 ){
                ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_medik" checked="" disabled="">
                <label for="exampleInputEmail1">Komite Medik</label>
            <?php }else{ ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_medik" >
                <label for="exampleInputEmail1">Komite Medik</label>
            <?php } ?>
            <br>
            <?php 
            if('komite_tenaga' ==  $komite1 OR 'komite_tenaga' ==  $komite2 OR 'komite_tenaga' ==  $komite3 OR 'komite_tenaga' ==  $komite4 ){
                ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_tenaga" checked="" disabled="">
                <label for="exampleInputEmail1">Komite Tenaga Kesehatan Lain</label>
            <?php }else{ ?>
                <input type="checkbox" class="minimal" name="komite[]" value="komite_tenaga" >
                <label for="exampleInputEmail1">Komite Tenaga Kesehatan Lain</label>
            <?php } ?>


        </div>
    <?php } ?>
    <?php 
    if($this->session->userdata('level')=='komite_medik' || $this->session->userdata('level')=='admin' || $this->session->userdata('level')=='komite_etik' || $this->session->userdata('level')=='komite_tenaga' || $this->session->userdata('level')=='komite_keperawatan' || $this->session->userdata('level')=='spi' || $this->session->userdata('level')=='humas'){

        ?>
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
        <?php 
        if(!empty($jenis_laporan)){
            ?>
            <div class="form-group">
                <label class="exampleInputFile">Jenis laporan</label>
                <input type="text" class="form-control" id="jenis_laporan" name="jenis_laporan" placeholder="" value="<?php echo $jenis_laporan; ?>" disabled>
            </div>
        <?php }else{ ?>
         <div class="form-group">
            <label class="exampleInputFile">Jenis laporan</label>
            <input type="text" class="form-control" id="jenis_laporan" name="jenis_laporan" placeholder="" value="<?php echo $jenis_laporan; ?>" >
        </div>
    <?php } ?>

    <div class="form-group">
       
        <label for="exampleInputEmail1">Jenis komplain: </label>
        <?php 
        if('1' ==  $jenis_komplain){
            ?>
            <div class="radio">
                <label>
                    <input type="radio" name="jenis_komplain" value="1" checked disabled>
                    Perilaku yang mengganggu
                </label>
            </div>
        <?php }else{ ?>
         <div class="radio">
            <label>
                <input type="radio" name="jenis_komplain" value="1">
                Perilaku yang mengganggu
            </label>
        </div>
    <?php } ?>
    <?php if('2' ==  $jenis_komplain){
        ?>

        <div class="radio">
            <label>
                <input type="radio" name="jenis_komplain" value="2" checked disabled>
                Perilaku yang tidak layak
            </label>
        </div>
    <?php }else{ ?>
     <div class="radio">
        <label>
            <input type="radio" name="jenis_komplain" value="2">
            Perilaku yang tidak layak
        </label>
    </div>
<?php } ?>


<?php if('3' ==  $jenis_komplain){
    ?>
    <div class="radio">
        <label>
            <input type="radio" name="jenis_komplain" value="3" checked disabled>
            Perilaku yang melecehkan
        </label>
    </div>
<?php }else{ ?>
 <div class="radio">
    <label>
        <input type="radio" name="jenis_komplain" value="3">
        Perilaku yang melecehkan
    </label>
</div>
<?php } ?>


<?php if('4' ==  $jenis_komplain){
    ?>
    <div class="radio">
        <label>
            <input type="radio" name="jenis_komplain" value="4" checked disabled>
            Pelecehan seksual
        </label>
    </div>
<?php }else{ ?>
 <div class="radio">
    <label>
        <input type="radio" name="jenis_komplain" value="4">
        Pelecehan seksual
    </label>
</div>
<?php } ?>

</div>
               <!--  <?php 
                $nama_komite = '';
                    if($nama_komite1 =='komite_etik') {
                        $nama_komite = 'Komite Etik & Hukum';
                    }
                    if ($nama_komite2 =='komite_medik') {
                        $nama_komite = 'Komite Medik';
                    }
                    if ($nama_komite3 =='komite_tenaga') {
                        $nama_komite = 'Komite Tenaga Kesehatan Lain';
                    }if ($nama_komite4 =='komite_keperawatan') {
                        $nama_komite = 'Komite Keperawatan';
                    }
                    ?> -->

                    
                    <?php if(!empty($tindak_lanjut)){
                        ?>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Evaluasi </label>
                            <textarea class="form-control" rows="3" name="tindak_lanjut_komite" id="tindak_lanjut_komite" disabled=""><?php echo $tindak_lanjut; ?></textarea>

                        </div>
                    <?php }else{ ?>
                       <div class="form-group">
                        <label for="exampleInputEmail1">Evaluasi </label>
                        <textarea class="form-control" rows="3" name="tindak_lanjut_komite" id="tindak_lanjut_komite" ><?php echo $tindak_lanjut; ?></textarea>

                    </div>
                <?php } ?>

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
                <?php }?>
                    



                <?php if(!empty($row->tindak_lanjut_karumkit)){?>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Keputusan Karumkit</label>
                        <textarea class="form-control" rows="3" name="tindak_lanjut_karumkit" id="tindak_lanjut_karumkit" disabled><?php echo $row->tindak_lanjut_karumkit; ?></textarea>
                    </div>
                <?php }?>

                  
                
                
            <?php } ?>
             <?php if($this->session->flashdata('error')){?>
                <div class="alert alert-danger alert-dismissible" id="gagal_popup">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><i class="icon fa fa-ban"></i> Warning</h4>
                    Gagal menyimpan, data anda kurang lengkap!
                </div>
            <?php }?>
            <!-- if komite -->
        </div>

        <div class="box-footer">
            <a href="<?php echo base_url("laporan/index")?>" type="button" class="btn btn-default ">Back</a>
            <button type="submit" class="btn btn-info pull-right">Submit</button>
        </div>
        <!-- /.box-body -->



    </div>

    <!-- /.box -->

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

        CKEDITOR.replace('editor2')
//bootstrap WYSIHTML5 - text editor
$('.textarea').wysihtml5()



//Initialize Select2 Elements
$('.select2').select2()

});
     setTimeout(function() {
      $('#gagal_popup').hide()
    }, 4000);
//iCheck for checkbox and radio inputs
// $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
//   checkboxClass: 'icheckbox_minimal-blue',
//   radioClass   : 'iradio_minimal-blue'
// })
</script>

