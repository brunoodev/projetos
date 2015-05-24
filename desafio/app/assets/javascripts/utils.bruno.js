
  function enviaBusca(){
    var montaUrl = "/clientes/busca/"+$('input:text[name=nome]').val();
    window.location.href = montaUrl;
  }
  $(document).ready(function(){
    jQuery('input').keypress(function(event){
        var enterOkClass =  jQuery(this).attr('class');
        if (event.which == 13 && enterOkClass != 'enterSubmit') {
            event.preventDefault();
            return false;   
        }
    });
  }); 