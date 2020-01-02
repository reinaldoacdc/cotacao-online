$( document ).ready(function() {
    console.log( "ready!" );
    new tablesort(document.getElementsByClassName('table')[0]);
    $('#sourcetable tbody tr').each(function (index, element){        
        $(element.cells[3]).focusout(function (){
            console.log('changes')
            var data = { 
                product: {
                   code: element.dataset.productCode, 
                   description: element.dataset.description,
                   quantity: element.dataset.productQuantity, 
                   price: element.cells[3].childNodes[1].value
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
                },
                failure: function(result){
                    toastr.erro(`Erro ao alterar o produto: ${element.dataset.productCode}`, '', { closeButton: true, progressBar: true })
                }            
            })
        })


    })
});