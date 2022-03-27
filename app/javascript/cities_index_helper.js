var CitiesIndexHelper = {
  initialize : function() {
    this.initializeClearBtn();
  },


  initializeClearBtn : function() {
    $("#clear-cities").on('click', function() {
      $('#name').val(null).trigger('change');
      $('#cities').submit();
    });
  },
};
