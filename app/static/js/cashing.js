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
                var customer = $('#select-customer').val()
                if (customer == undefined) {
                    customer = ''
                }
                var json = JSON.stringify(transactionArr)
                if (id == '') {
                    $.ajax({
                        url: '/payment',
                        type: 'POST',
                        data: {
                            data: json,
                            customer: customer
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
                                $('#totalUSD').text(accountUSD(data.data.amount))
                                $('#totalKHR').text(accountKHR(data.data.amount * data.rate))
            
                                var invoice_item = ''
            
                                data.data.transactions.forEach(t => {
                                    invoice_item += `<tr id="`+t.id+`">
                                                            <td>`+t.description+`</td>
                                                            <td style="text-align: center">`+accountUSD(t.price)+`</td>
                                                            <td style="text-align: center">`+t.discount+`%</td>
                                                            <td style="text-align: center">`+t.quantity+`</td>
                                                            <td style="text-align: center">`+accountUSD(t.amount)+`</td>
                                                        </tr>`
                                })

                                if (data.data.remain % 1 == 0) {
                                    precision = 2
                                } else {
                                    if ((data.data.remain * 1).toString().split('.')[1].length > 2) {
                                        precision = 3
                                    } else {
                                        precision = 2
                                    }
                                }

                                checkout = accounting.formatMoney(data.data.remain, {
                                    precision: precision,
                                    format: {
                                        pos: "%v%s("+Math.round(data.data.remain * data.rate / 100) * 100+"\u17DB)",
                                        neg: "-%v%s(-"+Math.round(data.data.remain * data.rate / 100) * 100+"\u17DB)",
                                        zero: '...'
                                    }
                                })
                                
                                $('#item-invoice').html(invoice_item)
                                $('#totalCash').text('...')
                                $('#totalChange').text('...')
            
                                $('#paymentModel').modal('show')
                                $('.payment-total').attr('id', data.data.id).html(`<div class="checkout-btn">
                                                    <span class="color-font ln-checkout mr-1">Check Out: </span>
                                                    <span class="currency-format color-font" id="paymentAmount">`+checkout+`</span>
                                                </div>`).translator()
                                $('#receive-cash').val('').focus()
                                $('.payment-add').attr('disabled', false)
                                
                            } else {
                                alert(languagesAlert[language].noTransaction)
                            }
                        }
                    })
                } else {
                    $.ajax({
                        url: '/payment/'+id,
                        type: 'POST',
                        data: {
                            data: json,
                            customer: customer
                        },
                        success: function(data) {
                            $('.order-btn').attr('data-change', false)
                            var time = new Date(convertUTCDateToLocalDate(new Date(data.data.createdOn))).toLocaleTimeString()
                            var date = new Date(convertUTCDateToLocalDate(new Date(data.data.createdOn))).toDateString()
                            $('#invoiceTime').text(time)
                            $('#invoiceDate').text(date)
                            $('#invoiceNo').text(data.data.invoice)
                            $('#totalUSD').text(accountUSD(data.data.amount))
                            $('#totalKHR').text(accountKHR(data.data.amount * data.rate))
        
                            var invoice_item = ''
        
                            data.data.transactions.forEach(t => {
                                invoice_item += `<tr id="`+t.id+`">
                                                        <td>`+t.description+`</td>
                                                        <td style="text-align: center">`+accountUSD(t.price)+`</td>
                                                        <td style="text-align: center">`+t.discount+`%</td>
                                                        <td style="text-align: center">`+t.quantity+`</td>
                                                        <td style="text-align: center">`+accountUSD(t.amount)+`</td>
                                                    </tr>`
                            })

                            if (data.data.remain % 1 == 0) {
                                precision = 2
                            } else {
                                if ((data.data.remain * 1).toString().split('.')[1].length > 2) {
                                    precision = 3
                                } else {
                                    precision = 2
                                }
                            }

                            checkout = accounting.formatMoney(data.data.remain, {
                                precision: precision,
                                format: {
                                    pos: "%v%s("+Math.round(data.data.remain * data.rate / 100) * 100+"\u17DB)",
                                    neg: "-%v%s(-"+Math.round(data.data.remain * data.rate / 100) * 100+"\u17DB)",
                                    zero: '...'
                                }
                            })
                            
                            $('#item-invoice').html(invoice_item)
                            $('#totalCash').text('...')
                            $('#totalChange').text('...')
        
                            $('#paymentModel').modal('show')
                            $('.payment-total').attr('id', data.data.id).html(`<div class="checkout-btn">
                                                <span class="color-font ln-checkout mr-1">Check Out: </span>
                                                <span class="currency-format color-font" id="paymentAmount">`+checkout+`</span>
                                            </div>`).translator()
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
    var currency = $('#receive-currency').val()
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
    var customer = $('#select-customer').val()
    if (customer == undefined) {
        customer = ''
    }
    $.ajax({
        url: '/checkout/'+payment,
        type: 'POST',
        data: {
            data: json,
            customer: customer
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
                    if (currency == 'KHR') {
                        money /= data.rate
                    }
                    change += money
                }

                var paid = 0
                var khr = 0
                var dlr = 0

                paymentObj.amounts.forEach(p => {
                    if (p.currency == 'KHR') {
                        khr += parseFloat(p.amount)
                        p.amount /= data.rate
                    } else {
                        dlr += parseFloat(p.amount)
                    }
                    paid += parseFloat(p.amount)
                })

                var format_money = ''

                if (khr == 0) {

                    format_money = accountUSD(dlr)
                } else if (dlr == 0) {
                    format_money = accountKHR(khr)
                } else {
                    dlr = accountUSD(dlr)

                    khr = accountKHR(khr)

                    format_money = dlr +' + '+khr
                }

                $('#totalCash').text(format_money)

                if (data.total_change % 1 == 0) {
                    precision = 2
                } else {
                    if ((data.total_change * 1).toString().split('.')[1].length > 2) {
                        precision = 3
                    } else {
                        precision = 2
                    }
                }

                $('#totalChange').text(accounting.formatMoney(data.total_change, {
                    precision: precision,
                    format: {
                        pos: "%v%s("+Math.round(data.total_change * 4000 / 100) * 100+"\u17DB)",
                        neg: "-%v%s(-"+Math.round(data.total_change * 4000 / 100) * 100+"\u17DB)",
                        zero: '...'
                    }
                }))

                total_change = accountUSD(data.total_change)

                total_remain = accountUSD(data.total_remain)

                var element = '<div class="total-container"><div class="total-paid"><span class="color-font ln-total-paid">Total Paid:</span><span>'+format_money+'</span></div><div class="total-remain"><span class="color-font ln-total-remain">Total Remain:</span><span>'+total_remain+'</span></div></div><div class="change-container"><div class="change-left color-font"><span class="ln-total-return">Total Return: </span><span>'+total_change+'</span></div><div class="list-changes">'
                                                      
                changeArr.forEach(m => {
                    if (m.money != 0) {
                        var money_currency = ''
                        var money = 0
                        if (m.currency == 'USD') {
                            money_currency = 'x'+m.unit

                            if (m.money % 1 == 0) {
                                money_precision = 2
                            } else {
                                if ((m.money * 1).toString().split('.')[1].length > 2) {
                                    money_precision = 3
                                } else {
                                    money_precision = 2
                                }
                            }

                            money = accounting.formatMoney(m.money, {
                                precision: money_precision,
                                format: {
                                    pos: "%v%s("+Math.round(m.money * 4000 / 100) * 100+"\u17DB)",
                                    neg: "-%v%s(-"+Math.round(m.money * 4000 / 100) * 100+"\u17DB)",
                                    zero: '...'
                                }
                            })
                        } else {
                            money_currency = 'x'+m.unit

                            money = accountKHR(m.money)
                        }
                        element += '<div class="change-row"><span>'+m.currency+' '+money+'</span><span>'+money_currency+'</span></div>'
                    }
                })

                

                element += '</div></div><div class="invoice-btn"><button class="color-text-contrast close-payment ln-close">Continue</button><a href="/invoice/'+payment+'" target="_blank" class="btn border color-font print-inv"><ion-icon name="print-outline"></ion-icon></a></div>'
                $('.payment-total').html(element).translator()

                // Bind click when checked out
                $('.product-btn').attr('disabled', true)
                $('.transaction-item').find('.remove-btn').addClass('hide')
                
            } else {
                if (amount % 1 == 0) {
                    precision = 2
                } else {
                    if ((amount * 1).toString().split('.')[1].length > 2) {
                        precision = 3
                    } else {
                        precision = 2
                    }
                }

                checkout = accounting.formatMoney(amount, {
                    precision: precision,
                    format: {
                        pos: "%v%s("+Math.round(amount * data.rate / 100) * 100+"\u17DB)",
                        neg: "-%v%s(-"+Math.round(amount * data.rate / 100) * 100+"\u17DB)",
                        zero: '%v%s'
                    }
                })
                $('.payment-total').html('<div class="checkout-btn"><span class="color-font ln-checkout mr-1">Check Out: </span><span class="currency-format color-font" id="paymentAmount">'+checkout+'</span></div>').translator()
                alert(languagesAlert[language].proceedRemainError)
            }
        }
    })
})






