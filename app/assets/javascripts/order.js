$( document ).ready(function() {
    console.log( "ready!" );
    new tablesort(document.getElementsByClassName('table')[0]);
    $('#sourcetable tbody tr').each(function (index, element){
        $(element.cells[2]).focusout(function (){
            var data = { 
                product: {
                   code: element.dataset.productCode, quantity: element.dataset.productQuantity, 
                   price: element.cells[2].childNodes[1].value
                }
                , id: element.dataset.productCode }
   
            $.ajax({
                url: element.dataset.productUrl, 
                type: 'PATCH', 
                
                data: {
                   product: (data.product)
                },
                success: function(result){
                    toastr.success(`Produto ${element.dataset.productCode} alterado`, '', { closeButton: true, progressBar: true })
                }});
        })


    })
});