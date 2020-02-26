<%-- 
    Document   : calendar
    Created on : May 31, 2018, 5:02:31 PM
    Author     : Sarita Karki
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link  rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css">
<link href="../css/sweetalert2.css" rel="stylesheet" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js"> </script>
<script src="../js/sweetalert2.min.js"></script>
<style>
    .fc-scroller,.fc-day-grid-container{
        height: 100% !important;
    }
</style>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <script type="text/javascript">
            $(function() {
        today = new Date();
        y = today.getFullYear();
        m = today.getMonth();
        d = today.getDate();

  // page is now ready, initialize the calendar...

  $('#calendar').fullCalendar({
    
            
            selectable: true,
            selectHelper: true,
            // titleFormat: {
            //     month: 'MMMM YYYY', // September 2015
            //     week: "MMMM D YYYY", // September 2015
            //     day: 'D MMM, YYYY'  // Tuesday, Sep 8, 2015
            // },
            
            select: function(start, end) {
                swal({
                    title: 'Create an Event',
                    html: '<br><input class="form-control" placeholder="Event Title" id="input-field">',
                    showCancelButton: true,
                    closeOnConfirm: true
                   
                }, function() {
                $.post("demo_test_post.asp",
                    {
                      name: "Donald Duck",
                      city: "Duckburg"
                    },
                    function(data,status){
                        alert("Data: " + data + "\nStatus: " + status);
                    });
                    
                    $.ajax({
           type : "POST",
           data : {
               
           },
           url : "http://localhost:8080/gurusisyas/stdTeacher/assignment.jsp",
           success : function(resp){
               alert(resp);
           },
           error : function(resp){
               alert("FAIL");
           }
       });
                    var eventData;
                    event_title = $('#input-field').val();
                    if (event_title) {
                        eventData = {
                            title: event_title,
                            start: start,
                            end: end
                        };
                       $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
                    }
                    $('#calendar').fullCalendar('unselect');
                });
            },
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            // color classes: [ event-blue | event-azure | event-green | event-orange | event-red ]
            events: [{
                    title: 'All Day Event',
                    start: new Date(y, m, 1)
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: new Date(y, m, d - 4, 6, 0),
                    allDay: false,
                    className: 'event-blue'
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: new Date(y, m, d + 3, 6, 0),
                    allDay: false,
                    className: 'event-blue'
                }
                
                
            ]
        
  })

});
        </script> 
    </body>
</html>
