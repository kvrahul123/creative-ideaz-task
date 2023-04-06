$(function() {
	"use strict";

	
// chart 1
var options = {
    series: [{
        name: "Sales",
        data: [450, 650, 440, 360, 940, 414, 555, 257, 400, 555, 257]
    },{
        name: "Orders",
        data: [580, 350, 760, 550, 850, 352, 785, 241, 352, 685, 425]
    }],
    chart: {
        foreColor: '#9a9797',
        type: "bar",
        //width: 130,
        height: 330,
        toolbar: {
            show: !1
        },
        zoom: {
            enabled: !1
        },
        dropShadow: {
            enabled: 0,
            top: 3,
            left: 14,
            blur: 4,
            opacity: .12,
            color: "#3461ff"
        },
        sparkline: {
            enabled: !1
        }
    },
    markers: {
        size: 0,
        colors: ["#3461ff", "#12bf24"],
        strokeColors: "#fff",
        strokeWidth: 2,
        hover: {
            size: 7
        }
    },
    plotOptions: {
        bar: {
            horizontal: !1,
            columnWidth: "50%",
            endingShape: "rounded"
        }
    },
	legend: {
        show: false,
        position: 'top',
        horizontalAlign: 'left',
        offsetX: -20
    },
    dataLabels: {
        enabled: !1
    },
    grid: {
      show: true,
       borderColor: '#eee',
       strokeDashArray: 4,
    },
    stroke: {
        colors: ["transparent"],
        show: !0,
        width: 5,
        curve: "smooth"
    },
    colors: ["#3461ff", "#12bf24"],
    xaxis: {
        categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    },
    tooltip: {
        theme: 'dark',
        y: {
            formatter: function (val) {
                return "" + val + ""
            }
        }
    }
  };

  var chart = new ApexCharts(document.querySelector("#chart1"), options);
  chart.render();


// Peity

  $('.donut').peity('donut')



// chart 2
var options = {
    series: [{
        name: "Visitors",
        data: [240, 640, 414, 755, 257, 500, 180]
    }],
    chart: {
        foreColor: '#9a9797',
        type: "area",
        //width: 130,
        height: 90,
        toolbar: {
            show: !1
        },
        zoom: {
            enabled: !1
        },
        dropShadow: {
            enabled: 0,
            top: 3,
            left: 14,
            blur: 4,
            opacity: .12,
            color: "#3461ff"
        },
        sparkline: {
            enabled: !0
        }
    },
    markers: {
        size: 0,
        colors: ["#3461ff"],
        strokeColors: "#fff",
        strokeWidth: 2,
        hover: {
            size: 7
        }
    },
    plotOptions: {
        bar: {
            horizontal: !1,
            columnWidth: "35%",
            endingShape: "rounded"
        }
    },
	legend: {
        show: false,
        position: 'top',
        horizontalAlign: 'left',
        offsetX: -20
    },
    dataLabels: {
        enabled: !1
    },
    stroke: {
        show: !0,
        width: 3,
        curve: "smooth"
    },
    colors: ["#3461ff", "#12bf24"],
    xaxis: {
        categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    },
    tooltip: {
        theme: 'dark',
        y: {
            formatter: function (val) {
                return "" + val + ""
            }
        }
    }
  };

  var chart = new ApexCharts(document.querySelector("#chart2"), options);
  chart.render();


// chart3
  
  $('#chart3').easyPieChart({
    
	easing: 'easeOutBounce',
	barColor : '#0259e6',
	lineWidth: 7,
	trackColor : 'rgba(52, 96, 255, 0.15)',
	scaleColor: false,
	onStep: function(from, to, percent) {
		$(this.el).find('.w_percent').text(Math.round(percent));
	}

});


// chart4

  $('#chart4').easyPieChart({
    
	easing: 'easeOutBounce',
	barColor : '#12bf24',
	lineWidth: 7,
	trackColor : 'rgb(18, 191, 35, 0.15)',
	scaleColor: false,
	onStep: function(from, to, percent) {
		$(this.el).find('.w_percent').text(Math.round(percent));
	}

});



// chart5

$('#chart5').easyPieChart({
    
	easing: 'easeOutBounce',
	barColor : '#e72e7a',
	lineWidth: 7,
	trackColor : 'rgb(231, 46, 46, 0.15)',
	scaleColor: false,
	onStep: function(from, to, percent) {
		$(this.el).find('.w_percent').text(Math.round(percent));
	}

});




// chart 6

var options = {
    series: [{
        name: "Views",
        data: [450, 650, 440, 160, 940, 414, 555, 257, 400]
    },{
        name: "Clicks",
        data: [580, 350, 760, 350, 850, 352, 785, 241, 352]
    }],
    chart: {
        foreColor: '#9a9797',
        type: "line",
        //width: 130,
        height: 280,
        toolbar: {
            show: !1
        },
        zoom: {
            enabled: !1
        },
        dropShadow: {
            enabled: 0,
            top: 3,
            left: 14,
            blur: 4,
            opacity: .12,
            color: "#3461ff"
        },
        sparkline: {
            enabled: !1
        }
    },
    markers: {
        size: 0,
        colors: ["#3461ff"],
        strokeColors: "#fff",
        strokeWidth: 2,
        hover: {
            size: 7
        }
    },
    plotOptions: {
        bar: {
            horizontal: !1,
            columnWidth: "35%",
            endingShape: "rounded"
        }
    },
	legend: {
        show: false,
        position: 'top',
        horizontalAlign: 'left',
        offsetX: -20
    },
    dataLabels: {
        enabled: !1
    },
    stroke: {
        show: !0,
        width: 3.5,
        curve: "smooth"
    },
    grid: {
        show: true,
         borderColor: '#eee',
         strokeDashArray: 4,
      },
    colors: ["#3361ff", "#ffc107"],
    xaxis: {
        categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct"]
    },
    tooltip: {
        theme: 'dark',
        y: {
            formatter: function (val) {
                return "" + val + ""
            }
        }
    }
  };

  var chart = new ApexCharts(document.querySelector("#chart6"), options);
  chart.render();



  
   // world map
	
	jQuery('#geographic-map').vectorMap({
		map: 'world_mill_en',
		backgroundColor: 'transparent',
		borderColor: '#818181',
		borderOpacity: 0.25,
		borderWidth: 1,
		zoomOnScroll: false,
		color: '#009efb',
		regionStyle: {
			initial: {
				fill: '#6c757d'
			}
		},
		markerStyle: {
			initial: {
				r: 9,
				'fill': '#fff',
				'fill-opacity': 1,
				'stroke': '#000',
				'stroke-width': 5,
				'stroke-opacity': 0.4
			},
		},
		enableZoom: true,
		hoverColor: '#009efb',
		markers: [{
			latLng: [21.00, 78.00],
			name: 'I Love My India'
		}],
		series: {
			regions: [{
				values: {
					IN: '#8833ff',
					US: '#3461ff',
					RU: '#12bf24',
					AU: '#ffb207'
				}
			}]
		},
		hoverOpacity: null,
		normalizeFunction: 'linear',
		scaleColors: ['#b6d6ff', '#005ace'],
		selectedColor: '#c9dfaf',
		selectedRegions: [],
		showTooltip: true,
		onRegionClick: function (element, code, region) {
			var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
			alert(message);
		}
	});


    $(document).ready(function() {
        $('#Transaction-History').DataTable({
           lengthMenu: [[6, 10, 20, -1], [6, 10, 20, 'Todos']]
        });
     } );


     new PerfectScrollbar(".new-customer-list")







});



  $(document).ready(function(){
			//after load will check the checkbox is checked or not
			var check = $("#yes").prop("checked");
			if(check){
				$("#first").addClass("activeTab");
			}
			
			//click on yes
			$("#yes").on("click", function(){
				check = $(this).prop("checked");
				$("#second").removeClass("activeTab");
				$("#first").addClass("activeTab");
				
			})
			//click on No
			$("#no").on("click", function(){
				check = $(this).prop("checked");
				$("#first").removeClass("activeTab");
				$("#second").addClass("activeTab");
				console.log(check);
			})
		});


  $(document).ready(function() {
  $("#addmore").click(function() {
    $("#req_input").append('<div class="required_inp row mb-3"><div class="col-md-3"><label class="mb-2">Size :</label><input class="form-control" name="size" type="text"></div><div class="col-md-3"><label class="mb-2">Price:</label><input name="price" class="form-control"  type="text"></div><div class="col-md-3"><label class="mb-2">Quantity per Box :</label><input name="qty" class="form-control"  type="text"></div>' + '<input type="button" class="inputRemove col-3 deletebtn text-white bg-danger border-0" value="Remove"/></div>');
  });
  $('body').on('click','.inputRemove',function() {
    $(this).parent('div.required_inp').remove()
  });
});
