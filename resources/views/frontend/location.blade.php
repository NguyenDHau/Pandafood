<!DOCTYPE html>
<html>
<head>
    <title>Get GPS Location</title>
    <script>
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }

        function showPosition(position) {
            var latitude = position.coords.latitude;
            var longitude = position.coords.longitude;

            // Hiển thị thông tin vị trí lên trang web
            var locationInfo = document.getElementById("location-info");
            locationInfo.innerHTML = "Latitude: " + latitude + "<br>Longitude: " + longitude;
        }
    </script>
</head>
<body>

<button onclick="getLocation()">Get GPS Location</button>

<!-- Phần tử để hiển thị thông tin vị trí -->
<div id="location-info"></div>

</body>
</html>
