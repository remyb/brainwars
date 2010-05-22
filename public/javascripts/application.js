// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

/*  This is for jQuery DatePicker (no time) */
/*
$(function() {
    $("#event_start_at").datepicker();
});

$(function() {
    $("#event_end_at").datepicker();
});
*/

/* This is for anytime Datepicker w/ Timepicker for jQuery
   http://www.ama3.com/anytime/ */

$(function() {
    $("#event_start_at").AnyTime_picker(
    { format: "%Y-%m-%d %H:%i",
      formatUtcOffset: "%: (%@)",
      hideInput: false,
      placement: "inline" });
    });
    
$(function() {
    $("#event_end_at").AnyTime_picker(
     { format: "%Y-%m-%d %H:%i",
       formatUtcOffset: "%: (%@)",
       hideInput: false,
       placement: "inline" });
   });
   
   
  /* 
   AnyTime.picker( "field1", 
         { format: "%W, %M %D in the Year %z %E", firstDOW: 1 } );
     $("#field2").AnyTime_picker( 
         { format: "%H:%i", labelTitle: "Hora",
           labelHour: "Hora", labelMinute: "Minuto" } );

*/