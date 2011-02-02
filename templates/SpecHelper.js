beforeEach(function() {
  this.addMatchers({

    toHaveSomething: function() {
      var summary = this.actual;
      this.actual = summary.clone().wrap('<div>').parent().html();

      // Magical matcher work goes here.  

      return false;
    },
});
