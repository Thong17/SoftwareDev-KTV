paymentObj = {
    'amounts': []
}

$(document).on('click', '.order-btn', function() {
    var id = $(this).attr('id')
    var isChange = $(this).attr('data-change')
    var drawer = $('.drawer-btn').attr('id')
    if (drawer == 'none') {
        $('.drawer-btn').click()
    } else {
        if ($(this).attr('data-check') == 'true') {
            if (isChange == 'true') {
                var transactions = document.querySelectorAll('.transaction-item')
                var transactionArr = []
                Array.from(transactions).forEach(t => {
                    transactionArr.push($(t).attr('id'))
                })
                var json = JSON.stringify(transactionArr)
                if (id == '') {
                    $.ajax({
                        url: '/payment',
                        type: 'POST',
                        data: {
                            data: json
                        },
                        dataType: 'json',
                        success: function(data) {
                            if (data.result == 'Success') {
                                $('.order-btn').attr('data-change', false)
                                $('.order-btn').attr('id', data.data.id)
                                var time = new Date(convertUTCDateToLocalDate(new Date(data.data.createdOn))).toLocaleTimeString()
                                var date = new Date(convertUTCDateToLocalDate(new Date(data.data.createdOn))).toDateString()
                                $('#invoiceTime').text(time)
                                $('#invoiceDate').text(date)
                                $('#invoiceNo').text(data.data.invoice)
                                $('#totalUSD').text(accounting.formatMoney(data.data.amount, {
                                    precision: 2,
                                    format: {
                                        pos: "%v%s",
                                        neg: "%v%s",
                                        zero: '...'
                                    }
                                }))
                                $('#totalKHR').text(accounting.formatMoney(data.data.amount * data.rate, {
                                    precision: 0,
                                    format: {
                                        pos: "%v\u17DB",
                                        neg: "%v\u17DB",
                                        zero: '...'
                                    }
                                }))
            
                                var invoice_item = ''
            
                                data.data.transactions.forEach(t => {
                                    invoice_item += `<tr id="`+t.id+`">
                                                            <td>`+t.description+`</td>
                                                            <td style="text-align: center">`+accounting.formatMoney(t.price, {
                                                                precision: 2,
                                                                format: {
                                                                    pos: "%v%s",
                                                                    neg: "%v%s",
                                                                    zero: '...'
                                                                }
                                                            })+`</td>
                                                            <td style="text-align: center">`+t.discount+`</td>
                                                            <td style="text-align: center">`+t.quantity+`</td>
                                                            <td style="text-align: center">`+accounting.formatMoney(t.amount, {
                                                                precision: 2,
                                                                format: {
                                                                    pos: "%v%s",
                                                                    neg: "%v%s",
                                                                    zero: '...'
                                                                }
                                                            })+`</td>
                                                        </tr>`
                                })
                                
                                $('#item-invoice').html(invoice_item)
                                $('#totalCash').text('...')
                                $('#totalChange').text('...')
            
                                $('#paymentModel').modal('show')
                                $('.payment-total').attr('id', data.data.id).html(`<div class="checkout-btn">
                                                    <span class="color-font">Check Out: </span>
                                                    <span class="currency-format color-text" id="paymentAmount">`+accounting.formatMoney(data.data.amount)+`</span>
                                                </div>`)
                                $('#receive-cash').val('').focus()
                                $('.payment-add').attr('disabled', false)
                                
                            } else {
                                alert(data.result)
                            }
                        }
                    })
                } else {
                    $.ajax({
                        url: '/payment/'+id,
                        type: 'POST',
                        data: {
                            data: json
                        },
                        success: function(data) {
                            $('.order-btn').attr('data-change', false)
                            var time = new Date(convertUTCDateToLocalDate(new Date(data.data.createdOn))).toLocaleTimeString()
                            var date = new Date(convertUTCDateToLocalDate(new Date(data.data.createdOn))).toDateString()
                            $('#invoiceTime').text(time)
                            $('#invoiceDate').text(date)
                            $('#invoiceNo').text(data.data.invoice)
                            $('#totalUSD').text(accounting.formatMoney(data.data.amount, {
                                precision: 2,
                                format: {
                                    pos: "%v%s",
                                    neg: "%v%s",
                                    zero: '...'
                                }
                            }))
                            $('#totalKHR').text(accounting.formatMoney(data.data.amount * data.rate, {
                                precision: 0,
                                format: {
                                    pos: "%v\u17DB",
                                    neg: "%v\u17DB",
                                    zero: '...'
                                }
                            }))
        
                            var invoice_item = ''
        
                            data.data.transactions.forEach(t => {
                                invoice_item += `<tr id="`+t.id+`">
                                                        <td>`+t.description+`</td>
                                                        <td style="text-align: center">`+accounting.formatMoney(t.price, {
                                                            precision: 2,
                                                            format: {
                                                                pos: "%v%s",
                                                                neg: "%v%s",
                                                                zero: '...'
                                                            }
                                                        })+`</td>
                                                        <td style="text-align: center">`+t.discount+`</td>
                                                        <td style="text-align: center">`+t.quantity+`</td>
                                                        <td style="text-align: center">`+accounting.formatMoney(t.amount, {
                                                            precision: 2,
                                                            format: {
                                                                pos: "%v%s",
                                                                neg: "%v%s",
                                                                zero: '...'
                                                            }
                                                        })+`</td>
                                                    </tr>`
                            })
                            
                            $('#item-invoice').html(invoice_item)
                            $('#totalCash').text('...')
                            $('#totalChange').text('...')
        
                            $('#paymentModel').modal('show')
                            $('.payment-total').attr('id', data.data.id).html(`<div class="checkout-btn">
                                                <span class="color-font">Check Out: </span>
                                                <span class="currency-format color-text" id="paymentAmount">`+accounting.formatMoney(data.data.amount)+`</span>
                                            </div>`)
                            $('#receive-cash').val('').focus()
                            $('.payment-add').attr('disabled', false)
                        }
                    })
                }
            } else {
                $('#paymentModel').modal('show')
            }
        } else {
            $('#input-quantity').focus()
        }
    }
    
    
})

function amountList(id, money, currency, unit) {
    return `<tr id="`+id+`">
                <td class="pre-money">`+money+`</td>
                <td class="pre-currency" style="text-align:center;">`+currency+`</td>
                <td class="pre-unit" style="text-align:center;">`+unit+`</td>
                <td class="pre-total" style="text-align:center;">`+money * unit+`</td>
                <td class="color-text flex-between-center clear-btn"><ion-icon name="close-outline"></ion-icon></td>
            </tr>`
}

$(document).on('click', '.clear-btn', function() {
    var id = $(this).closest('tr').attr('id')
    paymentObj.amounts.forEach((a, i) => {
        if (a.id == id) {
            paymentObj.amounts.splice(i, 1)
            $('#'+id).remove()
        }
    })
})

$(document).on('input', '#receive-cash', function() {
    var value = $(this).val()
    if (value < 0) {
        value = 0
        $(this).val(value)
    }
})

$(document).on('click', '.payment-add', function() {
    var amount = $('#receive-cash').val()
    var currency = $('#receive-currency option:selected').text()
    if (amount > 0) {
        var id = generateString(8)
        $('#list-payment').append(amountList(id, amount, currency, 1))
        paymentObj.amounts.push({
            'id': id,
            'amount': amount,
            'currency': $('#receive-currency').val()
        })
    } else {
        $('#receive-cash').focus()
    }
})

$(document).on('click', '.checkout-btn', function() {
    var payment = $('.payment-total').attr('id')
    var amount = accounting.unformat($(this).find('#paymentAmount').text())
    var json = JSON.stringify(paymentObj)
    $.ajax({
        url: '/checkout/'+payment,
        type: 'POST',
        data: {
            data: json
        },
        dataType: 'json',
        beforeSend: function() {
            $('.payment-total').html('<span class="loading-gif"><img src="/static/icons/loading.gif" alt="" srcset=""></span>')
        },
        success: function(data) {
            if (data.result == 'Success') {
                $('.payment-add').attr('disabled', true)
                $('.clear-btn ion-icon').addClass('hide')
                var changeObj = {
                    'moneys': [],
                    'currencies': []
                }

                var moneyArr = []
                var changeArr = []
                

                data.change.forEach(c => {
                    if (moneyArr.includes(c.money+c.currency)) {
                        changeArr.forEach(a => {
                            if (a.money == c.money && a.currency == c.currency) {
                                a.unit += 1
                            }
                        })
                    } else {

                        moneyArr.push(c.money+c.currency)
                        changeArr.push({
                            'money': c.money,
                            'currency': c.currency,
                            'unit': 1
                        })
                    }
                    
                    changeObj.moneys.push(c.money)
                    changeObj.currencies.push(c.currency)
                    
                })

                var change = 0

                for (let i = 0; i < changeObj.moneys.length; i++) {
                    var money = changeObj.moneys[i];
                    var currency = changeObj.currencies[i];
                    if (currency != 'USD') {
                        money /= data.rate
                    }
                    change += money
                }

                var paid = 0
                var khr = 0

                paymentObj.amounts.forEach(p => {
                    if (p.currency != 'USD') {
                        khr += parseFloat(p.amount)
                        p.amount /= data.rate
                    } 
                    paid += parseFloat(p.amount)
                })

                var format_money = ''

                if (khr == 0) {
                    format_money += "%v%s"
                } else {
                    format_money += "%v%s("+khr+"\u17DB)"
                }

                $('#totalCash').text(accounting.formatMoney(paid, {
                    precision: 2,
                    format: {
                        pos: format_money,
                        neg: "%v%s",
                        zero: '...'
                    }
                }))

                $('#totalChange').text(accounting.formatMoney(change, {
                    precision: 2,
                    format: {
                        pos: "%v%s("+change * data.rate+"\u17DB)",
                        neg: "%v%s",
                        zero: '...'
                    }
                }))

                var element = '<div class="total-container"><div class="total-paid"><span class="color-font">Total Paid:</span><span>'+paid.toFixed(2)+' USD</span></div><div class="total-change"><span class="color-font">Total Cost:</span><span>'+amount+' USD</span></div></div><div class="change-container"><div class="change-left color-font"><span>Total Return: </span><span>'+change.toFixed(2)+' USD</span></div><div class="list-changes">'

                changeArr.forEach(m => {
                    if (m.money != 0) {
                        var money_currency = ''
                        if (m.currency == 'USD') {
                            money_currency = 'x'+m.unit+' ('+m.money*data.rate*m.unit+'\u17DB)'
                        } else {
                            money_currency = 'x'+m.unit
                        }
                        element += '<div class="change-row"><span>'+m.currency+' '+m.money.toFixed(2)+'</span><span>'+money_currency+'</span></div>'
                    }
                })

                

                element += '</div></div><div class="invoice-btn"><button class="color-text close-payment">Continue</button><a href="/invoice/'+payment+'" target="_blank" class="btn border color-font print-inv"><ion-icon name="print-outline"></ion-icon></a></div>'
                $('.payment-total').html(element)

                // Bind click when checked out
                $('.product-btn').attr('disabled', true)
                $('.transaction-item').find('.remove-btn').addClass('hide')
                
            } else {
                $('.payment-total').html('<div class="checkout-btn"><span class="color-font">Check Out: </span><span class="currency-format color-text" id="paymentAmount">'+accounting.formatMoney(amount)+'</span></div>')
                alert(data.result)
            }
        }
    })
})

$(document).on('click', '.close-payment', function() {
    var transactions = document.querySelectorAll('.transaction-item')
    Array.from(transactions).forEach(t => {
        $(t).remove()
    })
    paymentObj.amounts = []
    $('#paymentModel').modal('hide')
    $('#list-payment').empty()
    $('#sumTotal').text(accounting.formatMoney(0))
    $('.order-btn').attr({
        'id': '',
        'data-change': true
    })
    // Unbind Click event when close payment
    $('.product-btn').attr('disabled', false)
    $('.sum-order').text(0)
})


