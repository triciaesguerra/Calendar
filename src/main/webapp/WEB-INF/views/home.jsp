<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
 	<head>

		<!--Include Stylesheets -->
		<link href="<c:url value="/resources/css/fullcalendar.css" />" rel="stylesheet"/>
		
		<!-- <link rel="stylesheet" href="<c:url value="/resources/css/fullcalendar.print.css" />" />
		 <link rel="stylesheet" href="<c:url value="/resources/css/fullcalendar.css" />" />-->

		<!-- Include JS Plugins -->
	    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	    <script src="<c:url value="/resources/js/fullcalendar.js" />"></script>

	    <!--Load Calendar-->
	    <script>
	    	$(document).ready(function() {
	    		
	    		$('#external-events div.external-event').each(function() {
	    			
	    			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
	    			// it doesn't need to have a start or end
	    			var eventObject = {
	    				title: $.trim($(this).text()) // use the element's text as the event title
	    			};
	    			
	    			// store the Event Object in the DOM element so we can get to it later
	    			$(this).data('eventObject', eventObject);
	    			
	    			// make the event draggable using jQuery UI
	    			$(this).draggable({
	    				zIndex: 999,
	    				revert: true,      // will cause the event to go back to its
	    				revertDuration: 0  //  original position after the drag
	    			});
	    			
	    		});
	    	

    		// page is now ready, initialize the calendar...

		    	$('#calendar').fullCalendar({
		        // put your options and callbacks here
		    	});

			});
	    </script>

	</head>

	<body>
		<div id="calendar"></div>
	</body>
</html>