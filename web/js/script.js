$(document).ready(function () {  
    $("#tel").mask("(00)0000-0000");
    
  
    $("#formulario").validate({
        rules: {
            nome: {
                required: true,
                minWords: 2
            },
            email:{
                required: true,
                email: true
            }
            
        
        }
    })
})

$(document).ready(function () {  
    $("#entrada").mask("00/00/0000");
    $("#renovacao").mask("00/00/0000")
    
   
    $("#fichaFeminina").validate({
        
    })
})

