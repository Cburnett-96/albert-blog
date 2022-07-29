hidetop = document.getElementById("hidethis");

        window.onscroll = function () {scrollFunction()};

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        hidetop.style.display = "none";
            } else {
        hidetop.style.display = "block";
            }
        }