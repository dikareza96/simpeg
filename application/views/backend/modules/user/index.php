
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        User
        
      </h1> 
    
    </section>
 <!-- Main content -->
    <section class="content container-fluid">
      <div class="row">
        <div class="col-xs-12">
          <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Daftar User</h3>
               <div class="box-tools pull-right">
                    <a href="" class="btn btn-primary btn-sm btn-flat" >
                          
                          Tambah Data
                    </a>
                 </div>
               
            </div>

            <!-- /.box-header -->
            <div class="box-body">
              <table id="table_user" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                <thead>
                  <tr>
                      <th class="text-center">NO.</th>
                      <th class="text-center">Nama</th>
                      <th class="text-center">Ktp</th>
                      <th class="text-center">Email</th>
                      <th class="text-center">Username</th>
                      <th class="text-center">Device ID</th>
                      <th class="text-center">Aktif</th>
                      <th class="text-center">Status ID</th>
                      <th class="text-center">Action</th>
                  </tr>
                </thead>

                <tbody>
                   <?php $no=1; 
                foreach ($user as $row) {
                ?>  
                <tr>
                  <td class="text-center"><?php echo $no++ ?></td>
                  <td class="text-center"><?php echo $row->nama ;?></td>
                  <td class="text-center"><?php echo $row->ktp ;?></td>
                  <td class="text-center"><?php echo $row->email ;?></td>
                  <td class="text-center"><?php echo $row->username ;?></td>
                  <td class="text-center"><?php echo $row->device_id ;?></td>
                  <td class="text-center"><?php echo $row->aktif ;?></td>
                  <td class="text-center"><?php echo $row->status ;?></td>
                  <td class="text-center" style="width:150px;">
                     <!--  <form method="POST" action="<?php echo base_url("backend/".$route."/destroy/$row->id") ?>" accept-charset="UTF-8"> -->
                      <!-- <a href="" class="btn btn-primary btn-sm btn-flat" >
                          Show
                         </a> -->
                         <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default" onclick="viewUser(<?php echo $row->id ;?>)">
                Show
              </button>
                     <!--  <input name="_method" type="hidden" value="DELETE">
                      <input name="_token" type="hidden" value="{{ csrf_token() }}">
                      <input type="submit" class="btn btn-danger btn-sm btn-flat" onclick="return confirm('Anda yakin akan menghapus data ini?');" value="Hapus">

                      </form> -->
                  </td>
                                       
               
                </tr> 
              <?php } ?> 
              
                 </tbody>
               
              </table>
              <div class="modal fade" id="modal-default">
          <div class="modal-dialog ">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Detail User</h4>
              </div>
              <div class="modal-body">
                <p>Isi</p>

                <!-- general form elements disabled -->
                <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Data User</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form">
                <!-- text input -->
              
                <div class="form-group">
                  <label>Nama</label>
                  <input type="text" class="form-control" disabled id="nama_user">
                </div>
              
                <div class="form-group">
                  <label>Email</label>
                  <input type="text" class="form-control" disabled id="email_user">
                </div>
                
                <div class="form-group">
                  <label>Device id</label>
                  <input type="text" class="form-control" disabled id="device_user">
                </div>
               
                <div class="form-group">
                  <label>Status</label>
                  <input type="text" class="form-control" disabled id="status_user">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form">
                <!-- text input -->
              
               
                <div class="form-group">
                  <label>KTP</label>
                  <input type="text" class="form-control" disabled id="ktp_user">
                </div>
               
                <div class="form-group">
                  <label>Username</label>
                  <input type="text" class="form-control" disabled id="username_user">
                </div>
               
                <div class="form-group">
                  <label>Aktif</label>
                  <input type="text" class="form-control" disabled id="aktif_user">
                </div>
                
              </form>
            </div>
          </div>
        </div>


      <div class="row">
                <div class="col-md-12">
          <!-- Custom Tabs (Pulled to the right) -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1-1" data-toggle="tab">Alamat</a></li>
              <li><a href="#tab_2-2" data-toggle="tab">Telepon</a></li>
              
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1-1">
                
        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form">
                <!-- text input -->
              
               
                <div class="form-group">
                  <label>Nama</label>
                  <input type="text" class="form-control" disabled id="nama_alamat">
                </div>
               
                <div class="form-group">
                  <label>Alamat</label>
                  <input type="text" class="form-control" disabled id="alamat_alamat">
                </div>
               
                <div class="form-group">
                  <label>lng</label>
                  <input type="text" class="form-control" disabled id="lng_alamat">
                </div>
                <div class="form-group">
                  <label>Utama</label>
                  <input type="text" class="form-control" disabled id="utama_alamat">
                </div>                
              </form>
            </div>
          </div>
        </div>

        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form">
                <!-- text input -->
              
               
                <div class="form-group">
                  <label>Jenis Alamat</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
               
                <div class="form-group">
                  <label>Lat</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
               
                <div class="form-group">
                  <label>Keterangan</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
                
              </form>
            </div>
          </div>
        </div>
                
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2-2">
                 
                 <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form">
                <!-- text input -->
              
               
                <div class="form-group">
                  <label>Nama</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
               
                <div class="form-group">
                  <label>Jenis Telepon</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
               
                <div class="form-group">
                  <label>Ref</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
                
              </form>
            </div>
          </div>
        </div>

        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form">
                <!-- text input -->
              
               
                <div class="form-group">
                  <label>Jenis Perangkat</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
               
                <div class="form-group">
                  <label>Nomor</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
               
                <div class="form-group">
                  <label>Utama</label>
                  <input type="text" class="form-control" disabled value="">
                </div>
                
              </form>
            </div>
          </div>
        </div>

              </div>
              <!-- /.tab-pane -->
             
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
     </div>
      <!-- /.content-wrapper -->
 

<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/backend/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>assets/backend/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/backend/dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(document).ready(function() {

    // var link = <?php echo base_url("backend/user/detail_user/") ?>;


  $(function () {
    
    $('#table_user').DataTable()
  });
  });
function viewUser($id)
{
  var controller = "user";
  
   

  $.ajax({
   
    url: "detail_user/"+$id,
    type: 'POST',
    dataType: 'JSON',
    success: function(data){
      $('#nama_user').val(data['nama']);
      $('#ktp_user').val(data['ktp']);
      $('#email_user').val(data['email']);
      $('#username_user').val(data['username']);
      $('#device_user').val(data['device_id']);
      $('#aktif_user').val(data['aktif']);
      $('#status_user').val(data['status']);
      $('#nama_alamat').val(data['nama_alamat']);
       $('#jenis_alamat').val(data['jenis_alamat']);
        $('#alamat_alamat').val(data['alamat']);
         $('#lat_alamat').val(data['alamat']);
          $('#lng_alamat').val(data['lng_alamat']);
           $('#keterangan_alamat').val(data['keterangan_alamat']);
            $('#utama_alamat').val(data['utama_alamat']);
    },error: function(){
      alert('error');
    }
  });
}

</script>
    