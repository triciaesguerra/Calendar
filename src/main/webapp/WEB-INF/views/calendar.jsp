<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
 	<head>

		<!--Include Stylesheets -->
		<link href="<c:url value="/resources/calendar/css/fullcalendar.css" />" rel="stylesheet"/>
		
		<!-- <link rel="stylesheet" href="<c:url value="/resources/calendar/css/fullcalendar.print.css" />" />
		 <link rel="stylesheet" href="<c:url value="/resources/calendar/css/fullcalendar.css" />" />-->

		<!-- Include JS Plugins -->
	    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	    <script src="<c:url value="/resources/calendar/js/fullcalendar.js" />"></script>

	    <!--Load Calendar-->
	    <script>
	    $(document).ready(function() {
	    	
			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();
			
			var calendar = $('#calendar').fullCalendar({
				header: {
					left: 'prevYear,prev,next,nextYear today',
					center: 'title',
					right: 'month,agendaWeek,agendaDay'
				},
				eventColor: '#36D7B7',
				selectable: true,
				selectHelper: true,
				editable: true,
				select: function(start, end, allDay) {
					var title = prompt('Event Title:');
					if (title) {
						calendar.fullCalendar('renderEvent',
							{
								title: title,
								start: start,
								end: end,
								allDay: allDay
							},
							true // make the event "stick"
						);
					}
					calendar.fullCalendar('unselect');
				},
				editable: true,
				
				eventClick: function(event){
					   $('#myCalendar').fullCalendar('removeEvents',event._id);
					}
			});
			
			
			
		});
	    </script>
	<style>

		body {
			margin-top: 40px;
			text-align: center;
			font-size: 14px;
			font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
			}
	
		#calendar {
			width: 900px;
			margin: 0 auto;
			}

	</style>
	</head>

	<body>
		<div id="calendar"></div>
	</body>
</html>