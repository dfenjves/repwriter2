function selectRep(target){
  $(target).click(function(e) {
        $(target).not(this).removeClass('active')
        .siblings('input').prop('checked',false)
            .siblings('.img-radio').css('opacity','0.5');
      $(this).addClass('active')
            .siblings('input').prop('checked',true)
        .siblings('.img-radio').css('opacity','1');
    });
}

$(function () {
  selectRep('.btn-radio');
});

$(function () {
  selectRep('.rep-photo');
});

