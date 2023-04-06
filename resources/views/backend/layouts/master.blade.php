<!doctype html>
<html lang="en" class="semi-dark">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <meta name="base_url" content="{{url('/')}}" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="{{asset('backend/assets/images/favicon-32x32.png')}}" type="image/png" />
  <!--plugins-->
  <link href="{{asset('backend/assets/plugins/simplebar/css/simplebar.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/plugins/metismenu/css/metisMenu.min.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/plugins/select2/css/select2.min.css')}}"  rel="stylesheet" />
  <link href="{{asset('backend/assets/plugins/select2/css/select2-bootstrap4.css')}}"  rel="stylesheet" />
	<!-- <link href="assets/plugins/select2/css/select2-bootstrap4.css" rel="stylesheet" /> -->
  <!-- Bootstrap CSS -->
  <link href="{{asset('backend/assets/css/bootstrap.min.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/css/bootstrap-extended.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/css/style.css')}}" rel="stylesheet" />
  <link href="{{asset('backend/assets/css/icons.css')}}" rel="stylesheet">
  <link href="{{asset('backend/assets/css/dropzone.css')}}" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

  <!-- loader-->
	<link href="{{asset('backend/assets/css/pace.min.css')}}" rel="stylesheet" />

  <!--Theme Styles-->
  <link href="{{asset('backend/assets/css/semi-dark.css')}}" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" integrity="sha512-WWc9iSr5tHo+AliwUnAQN1RfGK9AnpiOFbmboA0A0VJeooe69YR2rLgHw13KxF1bOSLmke+SNnLWxmZd8RTESQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    {{-- < Date Time Picker> --}}
    <link href="{{asset('backend/assets/css/bootstrap-datetimepicker.min.css')}}" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" 
     href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
  <title>Lavenjal : SLV Beverages </title>
</head>

<body>
      <!--start wrapper-->
  <div class="wrapper login-section">
@if(\Route::currentRouteName() != 'login')
@include('backend.layouts.header')
@endif


@yield('content')
 <!-- Bootstrap bundle JS -->
 <script src="{{asset('backend/assets/js/bootstrap.bundle.min.js')}}"></script>
  <!--plugins-->
  <script src="{{asset('backend/assets/js/jquery.min.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/simplebar/js/simplebar.min.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/metismenu/js/metisMenu.min.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/easyPieChart/jquery.easypiechart.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/peity/jquery.peity.min.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js')}}"></script>
  <script src="{{asset('backend/assets/js/pace.min.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/vectormap/jquery-jvectormap-2.0.2.min.js')}}"></script>
	<script src="{{asset('backend/assets/plugins/vectormap/jquery-jvectormap-world-mill-en.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/apexcharts-bundle/js/apexcharts.min.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
	<script src="{{asset('backend/assets/plugins/datatable/js/dataTables.bootstrap5.min.js')}}"></script>
	<script src="{{asset('backend/assets/js/table-datatable.js')}}"></script>
  <script src="{{asset('backend/assets/js/icons-feather-icons.js')}}"></script>
  <script src="{{asset('backend/assets/plugins/select2/js/select2.min.js')}}"></script>
  <script src="{{asset('backend/assets/js/form-select2.js')}}"></script>
  <!--app-->
  <script src="{{asset('backend/assets/js/app.js')}}"></script>
  <script src="{{asset('backend/assets/js/index2.js')}}"></script>
  <script src="{{asset('backend/assets/js/dropzone.js')}}"></script>
  <script src="{{asset('backend/assets/js/dropzone-script.js')}}"></script>
  <script src="{{asset('backend/assets/js/main.js')}}"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker-standalone.css" integrity="sha512-wT6IDHpm/cyeR3ASxyJSkBHYt9oAvmL7iqbDNcAScLrFQ9yvmDYGPZm01skZ5+n23oKrJFoYgNrlSqLaoHQG9w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  {{-- < Date Time Picker> --}}
  <script src="{{asset('backend/assets/js/bootstrap-datetimepicker.min.js')}}"></script>
  <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
     <!--<script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyCCX4rxZW4aRNvLsIuI_8fr7IL4XBjzBkQ&libraries=places" ></script>-->
     <script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyDTSBZf-ou394xq5d-d6yehNxuTMDqt9W4&libraries=places"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

@yield('scripts')
<script type="text/javascript">
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
$(document).ready(function(){
  setTimeout(()=>{

    },3000)
})
    $(document).on("click",".messages",function(){
         $.ajax({
            url: "{{url('update_notifications')}}",
            type: "POST",
            data: {
                _token: "{{ csrf_token() }}",
            },
            success: function (response) {
              
            },
        });
    })
</script>
  </body>
  </html>
