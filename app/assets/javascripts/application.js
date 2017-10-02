// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require jquery
//= require bootstrap-sprockets
// $(document).ready(()=> {
    
    
// });
// function openSlideMenu(){
//     // $('#left-nav').css({
//     //     width: '0%',
//     //     display: 'none'
//     // });
//     $('#left-nav').hide();
//     $('#content').css({
//         width: '100%'
//     });
// }

function toggleSlideMenu() {
    var leftnav = document.getElementById('left-nav'),
        content = document.getElementById('content');
        if(leftnav.style.width > '0px') {
            leftnav.style.width = '0%';
            content.style.width = '100%';
            console.log("SHOW");
        }
        else {
            leftnav.style.width = '20%';
            leftnav.style.cssFloat  = 'left';
            content.style.width = '80%';
            content.style.cssFloat  = 'left';  
            console.log("HIDE");
        }
}