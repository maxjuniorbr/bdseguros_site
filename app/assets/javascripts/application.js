// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function validate(form) {
  for(var i = 0; i < form.length; i++) {
    $(form[i]).validate({
      onsubmit: false
    });
  }
}

function showHideStep(sufix, amount, show) {
  for(var i = 1; i <= amount; i++) {
    if(show != i) {
      $("#step_" + i).hide();
      $($("#step_" + i + "_" + sufix)).hide();
      $("#info_step_" + i).css("color", "#61717C");
    } else {
      $("#step_" + i).show();
      $($("#step_" + i + "_" + sufix)).show();      
    }
  } 
}

function isValid(form) {
  for(var i = 0; i < form.length; i++) {
    return $(form[i]).valid();
  }
}

function goStep(step, focus, highlight) {
  if(isValid(["#quote"])) {
    showHideStep("auto", 5, step + 1);   
    if(focus != "") {
      $(focus).focus();
    }
    if(highlight != "") {
      $("#info_step_" + highlight).css("color", "#0291C9");
    }
  } 
}

function tipTip(tag, text, activation) {
  $(tag).tipTip({
    activation: activation,
    defaultPosition: "right",
    maxWidth: "400px",
    content: text
  });    
}

function blockEnter(form) {
  $(form).keypress(function(e) {
    if (e.which == 13) {
      return false;
    }
  });    
}

function sendForm(form) {
  $.blockUI({ message: "Aguarde..."});
  $(form).submit();
}

function _GET(param)
{
  var url   = window.location.search.replace("?", "");
  var itens = url.split("&");

  for(n in itens)
  {
    if(itens[n].match(param))
    {
      return decodeURIComponent(itens[n].replace(param+"=", ""));
    }
  }
  return "";
}

function checkOldBrowsers() {
  if ($.browser.msie) {
    if ($.browser.version < 8) {
      window.location.replace("/erros?oldversion=1");
    }
  }
}