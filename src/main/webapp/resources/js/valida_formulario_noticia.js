   $(document).ready(function(){
              
                $('#contact-form').validate(
                {
                    rules: {
                        titulo_noticia: {
                            minlength: 2,
                            required: true
                        },
                        descricao_noticia: {                        
                            required: true                       
                        }
                    },
                    
                    messages: {
   						
                        titulo_noticia: {
                            required: "Por favor, digite o titulo da noticia.",
                            minlength: "Por favor, digite no minimo 2 caracteres."
                        },
                        descricao_noticia:"Por favor, digite uma descricao para a sua noticia."
                                                
                    },
                    
                    highlight: function(element) {
                        $(element).closest(".control-group").removeClass("success").addClass("error");
                    },
                    success: function(element) {
                        element
                        .text("OK!").addClass("valid")
                        .closest(".control-group").removeClass("error").addClass("success");
                    }
                });
            }); // end document.ready
