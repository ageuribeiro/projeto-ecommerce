$(document).ready(function () {
    $("#btn-login").click(function () {
        $.ajax({
            url: "/login",
            method: "GET",
            success: function (data) {
                $("#conteudo-dinamico").html(data);
                $("body").css({
                    "background-image": "url('./static/assets/imgs/max-bender-unsplash.jpg')",
                    "background-size": "cover",
                    "background-position": "center",
                    "background-repeat": "no-repeat"
                });
            },
            error: function (xhr) {
                alert("Erro ao tentar carregar a página de login.");
            }
        });
    });

    $("#btn-register").click(function () {
        $.ajax({
            url: "/register",
            method: "GET",
            success: function (data) {
                $("$conteudo-dinamico").html(data);
            },
            error: function (xhr) {
                alert("Erro ao carregar a página de registro.");
            }
        });
    });
});


