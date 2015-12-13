$(function () {
    // Change the link's icon while the request is performing
    $('.toggle input[type=checkbox]').on('click', function (event, options) {
        if ($(this).attr("doAgain") != "true") {
            $.ajax({
                type: "PUT",
                url: $(this).attr("href"),
                error: function (jqXHR, textStatus, errorThrown) {
                    $(this).attr("doAgain", true);
                    $(this).click();
                    $(this).attr("doAgain", false);
                }.bind(this)
            });
        }
    });
});