
$(function(){
    var good = $('#good');
    var bad = $('#bad');

    good.on('click', function () {
        var url;
        if ($(this).hasClass('active')) {
            url = '../../index.php/home/min_good';
        } else {
            url = '../../index.php/home/add_good';
        }
        $.ajax({
            url: url,
            data: {article_id: $("input:hidden").val()},
            success: function (data) {
                good.find('span').html(data);
            }
        });
        $(this).toggleClass('active');
    });

    bad.on('click', function () {
        var url;
        if ($(this).hasClass('active')) {
            url = '../../index.php/home/min_bad';
        } else {
            url = '../../index.php/home/add_bad';
        }
        $.ajax({
            url: url,
            data: {article_id: $("input:hidden").val()},
            success: function (data) {
                bad.find('span').html(data);
            }
        });
        $(this).toggleClass('active');
    });

});