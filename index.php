<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            width: 100vw;
            height: 100vh;
            background-color: #eee;
        }

        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
        }

        .loader-wrapper {
            width: 100%;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #5e0808;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }

        .loader {
            display: inline-block;
            width: 30px;
            height: 30px;
            position: relative;
            border: 4px solid #fff;
            animation: loader 2s infinite ease;
        }

        .loader-inner {
            vertical-align: top;
            display: inline-block;
            width: 100%;
            background-color: #fff;
            animation: loader-inner 2s infinite ease-in;
        }

        @keyframes loader {
            0% { transform: rotate(0deg); }
            25% { transform: rotate(180deg); }
            50% { transform: rotate(180deg); }
            75% { transform: rotate(360deg); }
            100% { transform: rotate(360deg); }
        }

        @keyframes loader-inner {
            0% { height: 0%; }
            25% { height: 0%; }
            50% { height: 100%; }
            75% { height: 100%; }
            100% { height: 0%; }
        }
    </style>
</head>
<body>
    <div class="content">
        <div class="loader-wrapper">
            <span class="loader"><span class="loader-inner"></span></span>
        </div>
    </div>

    <script>
    $(window).on("load", function() {
        setTimeout(function() {
            $(".loader-wrapper").fadeOut("slow", function() {
                // After the loader fades out, redirect to the homepage
                window.location.href = 'homepage.php';
            });
        }, 2000); // Adjust the delay time (in milliseconds) as needed
    });
</script>

</body>
</html>