<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <style type="text/css">
      body,html,#container{
        /* height: 100%;
        margin: 0px */
        height: 100%;
        margin: 0px;
      }
    </style>
    <title>快速入门</title>
    
  </head>
  <body>
   <div id="container" tabindex="0"></div>
   <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=您申请的key值"></script>
   <script type="text/javascript">
   var map = new AMap.Map('container',{
            resizeEnable: true,
            zoom: 10,
            center: [116.39,39.9]
      });
   </script>
  </body>
</html>