$( document ).ready(function() {
    console.log( "ready!" );
    $('form').each(function (index, element){
        console.log( element.action );
        var data = { 
             product: {
                code: element.product_code.value, quantity: element.product_quantity.value, price: element.product_price.value
             }
             , id: element.product_code }

        console.log(data.product)
        $(element.product_price).focusout(function (){
            console.log("clicked")
            $.ajax({
                url: element.action, 
                type: 'PATCH', 
                
                data: {
                   product: (data.product)
                },
                success: function(result){
                    toastr.success(`Produto ${element.product_code.value} alterado`, '', { closeButton: true, progressBar: true })
                }});
        })


    })
});