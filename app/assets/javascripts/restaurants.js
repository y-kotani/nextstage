// $(document).ready(function(){
//   var lat,lon;
//   var nap;
    // if (navigator.geolocation) {
    //     // 現在の位置情報取得を実施
    //     navigator.geolocation.getCurrentPosition(
    //    // 位置情報取得成功時
    //    function (pos) {
    //             var location ="<li>"+"緯度：" + pos.coords.latitude + "</li>";
    //             location += "<li>"+"経度：" + pos.coords.longitude + "</li>";
    //             lat = pos.coords.latitude;
    //             lon = pos.coords.longitude;
    //             setMarker(lat, lon);
    //    },
//        // 位置情報取得失敗時
//        function (error) {
//             var message = "";
//             switch (error.code) {
//                // 位置情報取得できない場合
//               case error.POSITION_UNAVAILABLE:
//                    message = "位置情報の取得ができませんでした。";
//                     break;
//              // Geolocation使用許可されない場合
//              case error.PERMISSION_DENIED:
//                    message = "位置情報取得の使用許可がされませんでした。";
//                    break;
//             // タイムアウトした場合
//             case error.PERMISSION_DENIED_TIMEOUT:
//               message = "位置情報取得中にタイムアウトしました。";
//               break;
//       }
//       window.alert(message);
//     });
//   } else {
//     window.alert("本ブラウザではGeolocationが使えません");
//   }
// // 地図を表示
//   map = new google.maps.Map(
//     document.getElementById("gmap"),{
//     //地図の縮尺
//       zoom : 12,
//     //地図の中心の座標
//       center : new google.maps.LatLng(0,0),
//     //地図の種類(市街地図や航空写真などといった形式)
//       mapTypeId : google.maps.MapTypeId.ROADMAP
//     }
//   );

//   // マーカーを表示
//   marker = new google.maps.Marker({
//     position: new google.maps.LatLng(0,0),
//     map: map
//   });

//   // 地図上に現在地を表示
//   function setMarker(lat, lon){
//     var pos = new google.maps.LatLng(lat, lon);
//     map.setCenter(pos);
//     marker.setPosition(pos);
//   }
// });
