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