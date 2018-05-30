$(document).ready(function() {
    var tip_slider = $("input#tip_percent_slider").slider({
        min: 0, 
        max: 100, 
        value: 15,
        formatter: function(value) {
            $("#tp-label").html(value);
        	return 'Current value: ' + value;
        },
        labelledby: "Tip Percentage Slider"
    });
});
