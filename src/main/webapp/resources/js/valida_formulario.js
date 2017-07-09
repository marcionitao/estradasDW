   $(document).ready(function(){
              
                $('#contact-form').validate(
                {
                    rules: {
                        item_menu: {
                            minlength: 2,
                            required: true
                        },
                        descricao_menu: {                        
                            required: true                       
                        },                   
                        url: {
                            required: true,
                            url: true
                        }
                        
                    },
                    
                    messages: {
   						
                        item_menu: {
                            required: "Por favor, digite o nome do seu item.",
                            minlength: "Por favor, digite no minimo 2 caracteres."
                        },
                        descricao_menu:"Por favor, digite uma descricao para o seu item.",
                        url: {
                            required: "Por favor, digite o url do seu item.",
                            url: "Por favor, digite um url valido!"
                        }

                        
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
