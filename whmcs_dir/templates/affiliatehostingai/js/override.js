$(document).ready(function() {

    // display menu items on hover
    $('.navbar-nav li.dropdown').hover(
        function () {
            $(this).addClass('show');
            $(this).children('a.dropdown-toggle').attr('aria-expanded', 'true');
            $(this).children('.dropdown-menu').addClass('show');
        },
        function () {
            $(this).removeClass('show');
            $(this).children('a.dropdown-toggle').attr('aria-expanded', 'false');
            $(this).children('.dropdown-menu').removeClass('show');
        }
    );
});