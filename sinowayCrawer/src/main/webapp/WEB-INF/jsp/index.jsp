<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="keywords"
	content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">

<title>CISP</title>
<!--  <link href="css/table-responsive.css" rel="stylesheet" /> -->
<!--common-->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />
<link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
<link rel="stylesheet" type="text/css" href="css/jquery.gritter.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-datepicker/css/datepicker-custom.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-timepicker/css/timepicker.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-colorpicker/css/colorpicker.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap-datetimepicker/css/datetimepicker-custom.css" />
<link rel="stylesheet" href="css/bootstrap-chinese-region.css">
<!--icheck-->
<link href="js/iCheck/skins/flat/grey.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/red.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/green.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/blue.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/yellow.css" rel="stylesheet">
<link href="js/iCheck/skins/flat/purple.css" rel="stylesheet">

</head>

<body class="sticky-header">

	<section>
		<!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<!-- <div class="logo">
				<a href="index.pfv"><img src="images/logo.png" alt=""></a>
			</div> -->

			<div class="logo-icon text-center">
				<a href="index.pfv"><img src="" alt=""></a>
			</div>
			<!--logo and iconic logo end-->
			<div class="left-side-inner">
				<!--sidebar nav start-->
				<ul class="nav nav-pills nav-stacked custom-nav">
					<li id="home" class="active"><a href="index.pfv"><i
							class="fa fa-home"></i> <span>系统首页</span></a>
					</li>
					<li class="menu-list"><a><i class="fa fa-laptop"></i>
							<span>会员信息共享</span></a>
						<ul class="sub-menu-list">
							<li id="jinjianManage-menu"><a id="jinjianManage-menu-a"
								href="javascript:void(0)" onclick="getHtml('')">列表找房
							</a></li>
							<li id="contactManage-menu"><a id="contactManage-menu-a"
								href="javascript:void(0)" onclick="getHtml('show')">地图找房</a></li>
							
							
						</ul>
					</li>
					<li class="menu-list"><a><i class="fa fa-laptop"></i>
							<span>不良信贷记录</span></a>
						<ul class="sub-menu-list">
							<li id='blackListManage-menu'><a id="blackListManage-menu-a"
								href="javascript:void(0)"
								onclick="getHtml('blackListManage.pfv')">不良信贷信息管理</a></li>
						</ul>
					</li>
					<li class="menu-list"><a><i class="fa fa-laptop"></i>
							<span>服务中心</span></a>
						<ul class="sub-menu-list">
							<li id='instiadmin-menu'><a id="historyReport-menu-a"
								href="javascript:void(0)" onclick="getHtml('instiadmin.pfv')">机构管理</a></li>
							<li><a id="" href="javascript:void(0)"
								onclick="getHtml('consumerManage.pfv')">用户管理</a></li>
							<li><a id="" href="javascript:void(0)"
								onclick="getHtml('membershipManage.pfv')">会员管理</a></li>
						</ul>
					</li>
					
				</ul>
				<!--sidebar nav end-->
			</div>
		</div>
		<!-- left side end-->

		<!-- main content start-->
		<div class="main-content">

			<!-- header section start-->
			<div class="header-section">

				<!--toggle button start-->
				<a class="toggle-btn"><i class="fa fa-bars"></i></a>
				<!--toggle button end-->

				<!--notification menu start -->
				<div class="menu-right">
					<ul class="notification-menu">

						<li><a href="#" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown"><span id = "useridcode"></span> &nbsp;<span id = "usernamer"></span> <span class="caret"></span>
						</a>
							<ul class="dropdown-menu dropdown-menu-usermenu pull-right">
								<li><a href="#"><i class="fa fa-user"></i> 个人中心</a></li>
								<li><a href="loginout.pfv"><i class="fa fa-sign-out"></i> 退出</a></li>
							</ul></li>

					</ul>
				</div>
				<!--notification menu end -->

			</div>
			<!-- header section end-->

			<!-- page heading start-->
			<div class="page-heading">
				<!--标签区域  -->
				<div class="row">
					<div class="col-md-12">
						<section class="panel">

							<div class="panel-body">

								<div class="col-md-2">
									<a id="jinjianManage" href="javascript:void(0)"
										onclick="getHtml('searchList')"
										class="btn btn-primary btn-lg btn-block">列表找房</a>
								</div>
								<div class="col-md-2">
									<a id="contactManage" href="javascript:void(0)"
										onclick="loadFunc()"
										class="btn btn-primary btn-lg btn-block info-number">地图找房<span
										id="cntrctNum" class="badge"></span></a>
								</div>


							</div>
						</section>
					</div>
				</div>

			</div>
			<!-- page heading end-->

			<!--body wrapper start-->
			<div id="main" class="wrapper">
			<div id="container" style="width:1500px;height:500px;" tabindex="0"></div>
				
				

			</div>
    	<!--footer section start-->
			<footer> 2016 &copy; CISP by SinowayCredit </footer>
			<!--footer section end-->
		</div>
		<!-- main content end-->
	</section>
	<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=97876398f33beea0c6850d68266eb3a7"></script> 
   <!--   <script src="http://webapi.amap.com/js/marker.js"></script> -->
   <script type="text/javascript">
  function loadFunc(){
	  var provinces = [{
			"name": "1",
			"center": "116.405285,39.904989",
			"type": 0,
			"subDistricts": []
		}, {
			"name": "2",
			"center": "117.190182,39.125596",
			"type": 1,
			"subDistricts": []
		},{
			"name": "3",
			"center": "101.778916,36.623178",
			"type": 1,
			"subDistricts": []
		}, {
			"name": "4",
			"center": "106.278179,38.46637",
			"type": 1,
			"subDistricts": []
		}, {
			"name": "5",
			"center": "87.617733,43.792818",
			"type": 1,
			"subDistricts": []
		}, {
			"name": "6",
			"center": "121.509062,25.044332",
			"type": 2,
			"subDistricts": []
		}, {
			"name": "7",
			"center": "114.173355,22.320048",
			"type": 1,
			"subDistricts": []
		}]
      var mapObj = new AMap.Map('container',{resizeEnable: true,zoom:4});
      var markers = []; //province见Demo引用的JS文件
      for (var i = 0; i < provinces.length; i += 1) {
  			var marker;
  			if (provinces[i].type === 0) {
  				var icon = new AMap.Icon({
  					image: 'http://vdata.amap.com/icons/b18/1/2.png',
  					size: new AMap.Size(24, 24)
  				});
  				marker = new AMap.Marker({
  					icon: icon,
  					position: provinces[i].center.split(','),
  					offset: new AMap.Pixel(-12,-12),
  					zIndex: 101,
  					title: provinces[i].name,
  					map: mapObj
  				});
  			} else {
  				marker = new AMap.Marker({
  					position: provinces[i].center.split(','),
  					title: provinces[i].name,
  					map: mapObj
  				});
          if (provinces[i].type === 2) {
    				var content= "<div class = 'taiwan'>宝岛台湾</div>";
    				baodao = new AMap.Marker({
    					content: content,
    					position: provinces[i].center.split(','),
    					title: provinces[i].name,
    					offset: new AMap.Pixel(0,0),
    					map: mapObj
    				});
          }
  			}
  			markers.push(marker);
  		}
			  mapObj.setFitView();
  }
    /* 
    var marker = new AMap.Marker({
            position: [116.480983, 39.989628]
    });
    marker.setMap(map);
    map.setCenter(marker.getPosition()) */
   </script>

	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.gritter.js"></script>
	<!--common scripts for all pages-->
	<script src="js/scripts.js"></script>
	<script src="js/index.js"></script>
	<script src="js/json2.js"></script>
	
	<!--dynamic table-->
	<script type="text/javascript" src="js/advanced-datatable/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<script type="text/javascript"
		src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script type="text/javascript"
		src="js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>



</body>

</html>