






function _Chart(div, canvas, type, data) {
    this.div = div
    this.canvas = canvas
    this.type = type
    this.data = data

    var canvas = this.canvas

    canvas.width = this.div.offsetWidth
    canvas.height = this.div.offsetHeight

    $(window).on('resize', function () {
        canvas.width = this.div.offsetWidth
        canvas.height = this.div.offsetHeight
    })
    var bgColor = $('.grid-item').css('background-color')
    var fontColor = $('.color-font').css('color')

    var ctxP = canvas.getContext('2d');
    var myPieChart = new Chart(ctxP, {
        type: this.type,
        data: {
            labels: this.data.labels,
            datasets: [{
                data: this.data.quantities,
                backgroundColor: this.data.colors
            }]
        },
        options: {
            responsive: true,
            elements: {
                arc: {
                    borderColor: bgColor
                }
            },
            legend: {
                display: true,
                labels: {
                    fontColor: fontColor,
                    padding: 30
                },
                position: 'left'
            },
        }
    });
}

function generateColor() {
    var letters = '456789AB';
    var color = '#';
    for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 8)];
    }
    return color;
}

function searchProducts(input, list, filter) {
    this.input = input.toUpperCase();
    this.list = list
    this.filter = filter

    Array.from(this.list).forEach((l, i) => {
        var value = $(l).find(this.filter).text().toUpperCase()
        if (value.indexOf(this.input) > -1) {
            $(l).css('display', 'block')
        } else {
            $(l).css('display', 'none')
        }
    })
}

function favoriteProducts(input, list, filter) {
    this.input = input.toUpperCase();
    this.list = list
    this.filter = filter

    Array.from(this.list).forEach((l, i) => {
        var value = $(l).find(this.filter).text().toUpperCase()
        if ($(l).find(this.filter).hasClass('active')) {
            $(l).css('display', 'block')
        } else {
            $(l).css('display', 'none')
        }
    })
}

function sortElement(property, order) {
    var sortOrder = 1;
    if (property[0] === "-") {
        sortOrder = -1;
        property = property.substr(1);
    }

    return function (a, b) {
        var t_first = $(a).find(property).text()
        var t_second = $(b).find(property).text()
        var first = accounting.unformat($(a).find(property).text())
        var second = accounting.unformat($(b).find(property).text())
        var f_date = new Date($(a).find(property).text())
        var s_date = new Date($(b).find(property).text())
        switch (order) {
            case 'price-desc':
                var result = (parseFloat(first) > parseFloat(second)) ? -1 : (parseFloat(first) < parseFloat(second)) ? 1 : 0;
                break;
            case 'price-asc':
                var result = (parseFloat(first) < parseFloat(second)) ? -1 : (parseFloat(first) > parseFloat(second)) ? 1 : 0;
                break
            case 'title-asc':
                var result = (t_first < t_second) ? -1 : (t_first > t_second) ? 1 : 0;
                break
            case 'date-asc':
                var result = (f_date > s_date) ? -1 : (f_date < s_date) ? 1 : 0;
                break
            case 'date-desc':
                var result = (f_date < s_date) ? -1 : (f_date > s_date) ? 1 : 0;
                break
        }
        return result * sortOrder;
    }
}

function filterProduct(list, property, order) {
    list.sort(sortElement(property, order))
}

function selectMenu(list, menu, type, input) {
    this.menu = menu
    this.list = list
    this.type = type
    this.input = input.toUpperCase();

    var menus = []
    var types = []
    var result = []
    var temp = []

    Array.from(this.menu).forEach(m => {
        if ($(m).hasClass('active')) {
            menus.push($(m).attr('id'))
        }
    })

    Array.from(this.type).forEach(t => {
        if ($(t).hasClass('active')) {
            types.push($(t).attr('id'))
        }
    })

    if (menus.length > 0) {
        Array.from(this.list).forEach(l => {
            if (menus.indexOf($(l).find('#details-brand').val()) !== -1) {
                if (types.length > 0) {
                    if (types.indexOf($(l).find('#details-categ').val()) !== -1) {
                        var value = $(l).find('#details-title').text().toUpperCase()
                        if (value.indexOf(this.input) > -1) {
                            $(l).css('display', 'block')
                        }
                        temp.push(l)
                    } else {
                        $(l).css('display', 'none')
                    }
                } else {
                    var value = $(l).find('#details-title').text().toUpperCase()
                    if (value.indexOf(this.input) > -1) {
                        $(l).css('display', 'block')
                    }
                    temp.push(l)
                }
            } else {
                $(l).css('display', 'none')
            }
        })
    } else if (types.length > 0) {
        Array.from(this.list).forEach(l => {
            if (types.indexOf($(l).find('#details-categ').val()) !== -1) {
                if (menus.length > 0) {
                    if (menus.indexOf($(l).find('#details-brand').val()) !== -1) {
                        var value = $(l).find('#details-title').text().toUpperCase()
                        if (value.indexOf(this.input) > -1) {
                            $(l).css('display', 'block')
                        }
                        temp.push(l)
                    } else {
                        $(l).css('display', 'none')
                    }
                } else {
                    var value = $(l).find('#details-title').text().toUpperCase()
                    if (value.indexOf(this.input) > -1) {
                        $(l).css('display', 'block')
                    }
                    temp.push(l)
                }
            } else {
                $(l).css('display', 'none')
            }
        })
    }
    else {
        Array.from(this.list).forEach(l => {
            var value = $(l).find('#details-title').text().toUpperCase()
            if (value.indexOf(this.input) > -1) {
                $(l).css('display', 'block')
            }
            temp.push(l)
        })
    }
    return temp
}

function valueForm(name, price, currency, details) {
    this.name = name
    this.price = price
    this.details = details
    this.currency = currency
    var element = ''
    if (this.currency == 'riel') {
        element = `<option value="dollar">$</option>
                    <option value="riel" selected="selected">R</option>`
    } else {
        element = `<option value="dollar" selected="seleceted">$</option>
                    <option disabled value="riel">R</option>`
    }
    return `<div class="form-group">
            <input class="form-control input-color" type="text" name="property-name" id="property-name" value="` +
        this.name +
        `">
            <label class="label name" for="property-name">Name</label>
        </div>
        <div class="row">
            <div class="col-md-8 pr-0">
                <div class="form-group">
                    <input class="form-control input-color" step="any" type="number" name="property-price" id="property-price" value="` +
        this.price + `">
                    <label class="label price" for="property-price">Price</label>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <select class="form-control input-color" id="property-currency" name="property-currency">
                        ` + element +
        `
                    </select>
                </div>
            </div>
        </div>
        <div class="form-group pb-3">
            <textarea class="form-control input-color" type="text" id="property-description" name="property-description" style="min-height: 100px;">` +
        this.details + `</textarea>
            <label class="label description" for="property-description">Description</label>
        </div>`
}

function uploadColor(picker, input) {
    $('.pcr-app').each((i, obj) => {
        if ($(obj).attr('id') == 'pickr-add') {
            $(obj).remove()
        }
    })
    this.picker = picker
    this.input = input
    const pickr = Pickr.create({
        el: this.picker,
        theme: 'classic', // or 'monolith', or 'nano'
        defaultRepresentation: 'HEX',
        default: '#111111',
        useAsButton: true,
        components: {
            // Main components
            preview: true,
            opacity: true,
            hue: true,

            // Input / output Options
            interaction: {
                hex: false,
                rgba: false,
                hsla: false,
                hsva: false,
                cmyk: false,
                input: true,
                clear: false,
                save: true
            }
        }
    })
    $('.pcr-app').each((i, obj) => {
        if ($(obj).attr('id') != 'pickr-edit') {
            $(obj).attr('id', 'pickr-add')
            $(obj).find('.pcr-interaction').attr('id', 'pcr-add-btn')
        }
    })

    $('#pcr-add-btn').prepend('<input value="" type="text" class="pcr-name" id="' + this.input +
        '" placeholder="Name" style="width: 50%; text-align: left">')


    pickr.on('save', (color, instance) => {
        $('.pcr-save').attr('disabled', true)
        const hex = color.toHEXA().toString()
        const name = $('#' + this.input).val()
        const id = $(this.picker).attr('id')
        if (name != '') {
            $.ajax({
                url: '/product/color/' + id,
                type: 'post',
                data: {
                    'hex': hex,
                    'color': name
                },
                beforeSend: function () {

                },
                success: function (data) {
                    $('#color').append(`<option value="` + data.hex + `" id="` + data.id +
                        `">` + data.color + `</option>`)
                    $('.pcr-save').attr('disabled', false)
                    $('.details-colors').append(`<div class="span-border"><span class="span-color" id="` + data
                        .id + `" style="background-color: ` + data.hex + `"></span></div>`)
                    $('.pcr-name').val('')
                    pickr.hide()
                }
            })
        } else {
            $('#' + this.input).focus()
            $('.pcr-save').attr('disabled', false)
        }
    })
}

function toggleEdit(show, hide) {
    this.show = show
    this.hide = hide

    this.show.removeClass('hide')
    this.hide.addClass('hide')
}

function toggleLoader(loader) {
    this.loader = loader
    if (this.loader.hasClass('hide')) {
        this.loader.removeClass('hide')
    } else {
        this.loader.addClass('hide')
    }
}

function toggleActive(element) {
    this.element = element
    if (this.element.hasClass('active')) {
        this.element.removeClass('active')
    } else {
        this.element.addClass('active').focus()
    }
}

function dynamicSort(property) {
    var sortOrder = 1;
    if (property[0] === "-") {
        sortOrder = -1;
        property = property.substr(1);
    }
    return function (a, b) {
        var result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
        return result * sortOrder;
    }
}

function showProduct(element, id, product, category, photo, price, arrival, discount) {
    this.element = element
    this.id = id
    this.product = product
    this.photo = photo
    this.price = price
    this.category = category
    this.arrival = arrival
    this.discount = discount
    var duration = ''
    var disc = ''

    if (this.arrival < 1) {
        duration = '<img src="static/svg/new-{{current_user.theme}}.svg" alt="" srcset="">'
    }
    if (this.discount != '') {
        disc = this.discount +'%'
    }
    this.element.append(`
            <a class="product-item" id="` + this.id + `" href="/product/` + this.id + `">
                <div class="item-wrapper">
                    <div class="item-img">
                        <img src="static/uploads/` + this.photo + `" alt="" srcset="">
                        <div class="product-btn color-text">
                            <i class="fa fa-pencil-square-o edit-product" aria-hidden="true"></i>
                            <i class="fa fa-trash-o delete-product" aria-hidden="true"></i>
                        </div>
                        <div class="product-arrival">
                            `+ duration + `
                        </div>
                    </div>
                    <div class="item-details">
                        <div class="details">
                            <p class="notranslate color-font text-wrapper" id="details-title" style="font-size: 14px;" title="` +
        this.product + `">` +
        this.product + `</p>
                            <p class="color-text" id="details-category" style="font-size: 12px;">` + this
            .category +
        `</p>
                        </div>
                        <div class="notranslate flex-between-end color-text" style="width: 100%;">
                            <p class="color-font text-wrapper" id="details-price" style="font-size: 14px; width: 100px;"><span class="symbol"></span><span class="price-tag currency-format">` +
        this.price + `</span></p>
                            <p style="font-size: 12px;">
                               
                            </p>
                        </div>
                    </div>
                </div>
            </a>`)
}

function convertUTCDateToLocalDate(date) {
    return new Date(Date.UTC(date.getFullYear(), date.getMonth(), date.getDate(),  date.getHours(), date.getMinutes(), date.getSeconds()));
}


function showProductDetails(params) {
    var image = params.image
    var colors = params.colors
    var product = params.product
    var category = params.category
    var description = params.description
    var currency = params.currency
    var price = params.price
    var properties = params.properties
    var editable = params.editable
    var values = params.values
    var id = params.id

    var add_property = '<button class="btn border btn-value color-font"><p class="plus">+</p></button>'
    var product_btn = `<div class="product-btn color-text">
                            <i class="fa fa-pencil-square-o edit-value" aria-hidden="true"></i>
                            <i class="fa fa-trash-o delete-value" aria-hidden="true"></i>
                        </div>`

    if (editable == false) {
        add_property = ''
        product_btn = ''
    }

    var color_element = ''

    if (colors.length > 0) {
        colors.forEach(color => {
            color_element += '<div class="span-border"><span class="span-color" id="' + color.id + '" style="background-color: ' + color.hex + '" title="' + color.color + '"></span></div>'
        });
    }

    if (currency == 'riel') {
        currency = 'R'
    } else {
        currency = '$'
    }

    var property_element = ''

    if (properties.length > 0) {
        properties.forEach(property => {
            var value_element = add_property

            if (values.length > 0) {
                values.forEach(value => {
                    if (value.currency == 'riel') {
                        value.currency = 'R'
                    } else {
                        value.currency = '$'
                    }
                    if (value.property == property.id) {
                        value_element += `<label class="value container-input" id="` + value.id + `">
                                            `+ product_btn + `
                                            <div class="flex-between-start">
                                                <div class="flex-column-start-start">
                                                    <h5 class="color-font notranslate" id="value-value">` + value.value + `</h5>
                                                    <p style="font-size: 11px" class="color-text" id="value-description">` + value.description + `</p>
                                                </div>
                                            </div>
                                            <div class="flex-end" style="font-size: 18px">
                                                <p class="color-text notranslate" id="value-currency">` + value.currency + `</p>
                                                <p class="color-text notranslate" id="value-price">` + value.price + `</p>
                                            </div>
                                            <input type="radio" name="` + property.id + `">
                                            <span class="checkbox"></span>
                                        </label>`
                    }

                });
            }
            property_element +=
                `<div class="flex-column-start-start mt-4">
                    <h5 class="color-font mb-3"><i class="fa fa-caret-right right" aria-hidden="true"></i>` +
                property.property + `</h5>
                    <button class="hide btn border color-font btn-slim add-value" id="` +
                property.id + `" data-toggle="modal" data-target="#addValue"><p class="plus">+</p></button>
                </div>
                <div class="property-values property-` + property.id + `">
                    ` + value_element + `
                </div>`
        });
    }

    return `<div class="product-details">
                <div class="details-left">
                    <div class="details-img">
                        <img src="` + image + `" alt="" srcset="">
                    </div>
                    <div class="details-colors">` + color_element +
        `</div>
                    <div class="details-appearance">
                        <h5 class="color-font mt-3"><i class="fa fa-caret-right right" aria-hidden="true"></i>Appearance</h5>
                    </div>
                </div>
                <div class="details-right">
                    <div class="details-details">
                        <div class="details">
                            <p class="notranslate color-font text-wrapper details-title" id="` + id +
        `" style="font-size: 23px;">` + product + `</p>
                            <div class="flex-start">
                                <p class="notranslate color-text" id="details-category" style="font-size: 12px;">` + category + `</p>
                                <div class="flex-start ml-1 description-container" style="width: 80%">
                                    <span class="caret-right"></span>
                                    <p class="color-text text-wrapper" id="details-description" style="font-size: 12px; text-align: left;">` + description + `<p>
                                </div>
                            </div>
                        </div>
                        <div class="details-header" style="font-size: 23px">
                            <span class="notranslate details-symbol color-font">` + currency + `</span>
                            <span class="notranslate details-price color-font">` + price + `</span>
                        </div>
                    </div> 
                    <hr></hr>                           
                    <div class="notranslate details-property">` + property_element + `</div>
                </div>
            </div>`
}

function showProductForm(params) {
    var category = params.category
    var product = params.product
    var barcode = params.barcode
    var price = params.price
    var description = params.description
    var colors = params.colors
    var discount = params.discount
    var period = params.period
    var stock = params.stock
    var percentage = ''
    var image = params.image
    var element = ''
    var isStock = ''

    if (stock) {
        isStock += 'checked="checked"'
    }

    if (period == null) {
        period = ''
    }

    if (discount == '') {
        percentage = '<span class="percentage hide">%</span>'
    } else {
        percentage = '<span class="percentage">%</span>'
    }

    if (colors.length > 0) {
        colors.forEach(color => {
            /*color change*/
            element += '<option value="' + color.hex + '" id="' + color.id + '">' + color.color +
                '</option>'
        });
    }
    if (category != '') {

    }
    var productForm =
        `<h5 class="color-font m-0">Product</h5>
            <div class="slide-form" style="width: 100%;">
                <form action="/product/add" method="post" enctype="multipart/form-data" style="width: 100%;" id="product-form">
                    <h5 class="color-font sub-content"><i class="fa fa-caret-right right" aria-hidden="true"></i>Select Category</h5>
                    <input type="hidden" name="brand" id="brand-id">
                    <div class="form-group selector">
                        <p class="detail-content">Use category for specific products</p>
                        <select name="category" id="category" class="form-control input-color notranslate" required>
                            <option disabled="disabled" selected="selected" value="">Select category</option>
                            {% if categories %}
                            {% for category in categories %}
                            <option value="{{category.id}}">{{category.category}}</option>
                            {% endfor %}
                            {% else %}
                            <option value="" disabled="disabled">No category</option>
                            {% endif %}
                        </select>
                    </div>
                    <h5 class="color-font sub-content mb-2"><i class="fa fa-caret-right right" aria-hidden="true"></i>Product
                        Informations</h5>
                   
                    <div class="form-group">
                        <input type="text" class="form-control input-color" name="product" id="product" value="` + product + `" required>
                        <label for="product" class="label product">Product</label>

                        <div class="checkbox-container">
                            <label for="is-stock" class="is-stock" title="tick this box if it contain stock" data-toggle="tooltip" data-placement="bottom">
                                <input type="checkbox" id="is-stock" name="is-stock" `+ isStock + ` value="true">
                                <span class="check-span"></span>
                            </label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <input type="number" step="any" class="form-control input-color" name="price" id="price" value="` + price +
        `" required>
                                <label for="price" class="label price">Price</label>
                            </div>
                        </div>
                        <div class="col-md-4 selector pl-0">
                            <div class="form-group">
                                <select name="currency" id="currency" class="form-control input-color">
                                    <option value="dollar"><span>&#36;</span></option>
                                    <option value="riel"><span>&#6107;</span></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 pr-0" style="position: relative">
                            `+ percentage + `
                            <div class="form-group">
                                <input type="number" min="0" max="100" class="form-control input-color" name="discount" id="discount"
                                    value="` + discount +
        `" required>
                                <label for="discount" class="label discount text-wrapper">Discount</label>
                            </div>
                        </div>
                        <div class="col-md-7 selector">
                            <div class="form-group date-field">
                                <input type="date" class="form-control input-color" name="period" id="period" value="` + period + `">
                                <label for="period" class="label period">Period</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control input-color" name="barcode" id="barcode" value="` + barcode + `" required>
                        <label for="barcode" class="label barcode">Barcode</label>
                        
                        <button type="button" class="is-scan" title="tick this box to scan barcode" data-toggle="tooltip" data-placement="bottom">
                            <ion-icon name="scan-outline"></ion-icon>
                        </button>
                    </div>
                    <div class="form-group">
                        <textarea name="details" id="details" class="form-control input-color textarea"
                            required>` + description + `</textarea>
                        <label for="details" class="label details">Description</label>
                    </div>
                </form>
                
                <div class="product-image hide">
                    <h5 class="color-font sub-content"><i class="fa fa-caret-right right" aria-hidden="true"></i>Product Appearance</h5>
                    <div class="form-group">
                        <p class="detail-content">Select product photo</p>
                        <div class="upload-container">
                            <div class="image-containers" id="product-img">
                                <div class="image-item">
                                    <img src="` + image + `" id="product-src">
                                </div>
                            </div>
                            <div class="bubbling hide">
                                <img src="/static/svg/bubbling-{{current_user.theme}}.svg">
                            </div>
                            <label for="product-photo" class="upload-label">
                                <input type="file" name="product-photo" id="product-photo" class="upload-input">
                                <span><i class="fa fa-camera" aria-hidden="true"></i></span>
                            </label>
                        </div>
                    </div>
                    <div class="form-group selector">
                        <p class="detail-content">Add color for product</p>
                        <div class="row notranslate">
                            <div class="col-sm-2">
                                <button class="btn input-color edit-color"></button>
                            </div>
                            <div class="col-sm-7 p-0 selector">
                                <select name="color" id="color" class="form-control input-color" required>
                                    <option disabled selected="selected" value="">Select color</option>
                                    ` + element + `
                                </select>   
                            </div>
                            <div class="col-sm-3">
                                <button class="btn pickr input-color">+</button>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <p class="detail-content">Select color photo: <span class="selected-color"></span></p>
                        <div class="upload-container">
                            <div class="image-containers" id="color-img">
                                <div class="image-item">
                                    <img src="/static/uploads/default.png" id="image-src">
                                </div>
                            </div>
                            <div class="bubbling hide">
                                <img src="/static/svg/bubbling-{{current_user.theme}}.svg">
                            </div>
                            <label for="photo" class="upload-label disabled">
                                <input type="file" name="photo" id="photo" class="upload-input" multiple disabled>
                                <span><i class="fa fa-camera" aria-hidden="true"></i></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn btn-block border color-font submit-product">Create</button>
            <button class="btn btn-block border color-font save-product hide">Save</button>`
    return productForm
}

function uuid() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0,
            v = c == 'x' ? r : (r & 0x3 | 0x8)
        return v.toString(16)
    })
}

function uploadFile(files, self, url, callback) {

    const validtypes = ['image/gif', 'image/jpeg', 'image/png']
    this.url = url
    this.files = files
    this.self = self

    var id = $(this.self).parent().parent().parent().attr('id')
    var loader = $(this.self).parent().parent().parent().find('.bubbling')

    var form = new FormData()

    var len = []

    if (this.files.length > 0) {
        this.files.forEach((file, index) => {
            if (jQuery.inArray(file.type, validtypes) == -1) {
                callback('File type is not valid', loader)
            } else {
                if (file.size > 2000000) {
                    callback('File exceed the max size', loader)
                } else {
                    form.append(index, file)
                    len.push(index)
                }
            }
        })
        if (len.length > 0) {
            $.ajax({
                url: this.url,
                type: 'post',
                data: form,
                contentType: false,
                cache: false,
                processData: false,
                beforeSend: function () {
                    toggleLoader(loader)
                },
                success: function (data) {
                    setTimeout(function () {
                        callback('Success', data)
                        toggleLoader(loader)
                    }, 1000)
                }
            })
        } else {
            callback('', loader)
        }
    } else {
        callback('No file selected', loader)
    }

}

function uploadPhoto(files, color, product, self, url) {

    const validtypes = ['image/gif', 'image/jpeg', 'image/png']
    this.color = color
    this.product = product
    this.url = url
    this.files = files
    this.self = self

    var imgtag = $(this.self).closest('.upload-container').find('.image-containers').attr('id')
    var name = $(this.self).closest('.slide-form').find('#product').val()
    var loader = $(this.self).closest('.upload-container').find('.bubbling')


    toggleLoader(loader)
    var form = new FormData()
    form.append('color', this.color)
    form.append('name', name)

    var len = []

    if (this.files.length > 0) {
        this.files.forEach((file, index) => {
            if (jQuery.inArray(file.type, validtypes) == -1) {
                alert('Invalide file!')
            } else {
                if (file.size > 2000000) {
                    alert('Image size too big ')
                } else {
                    form.append(index, file)
                    len.push(index)
                }
            }
        })
        if (len.length > 0) {
            $.ajax({
                url: this.url + '/' + this.product,
                type: 'post',
                data: form,
                contentType: false,
                cache: false,
                processData: false,
                beforeSend: function () {

                },
                success: function (data) {

                    setTimeout(function () {
                        if (this.url == '/product/photo') {
                            $('.details-img').html(
                                '<img src="/static/uploads/' + data[0]
                                    .src + '" alt="' + data[0].alt + '">')
                            var element = `<div class="image-item">
                                    <img src="/static/uploads/` + data[0].src + `" alt="` + data[0]
                                    .alt + `">
                                </div>`
                            $('#' + imgtag).html(element)
                        } else {
                            $('#' + imgtag).html(showColorPhotos(data
                                .photos, 'color-images'))
                        }
                        toggleLoader(loader)
                    }, 1000)
                }
            })
        } else {
            toggleLoader(loader)
        }
    } else {
        alert('No file selected')
        toggleLoader(loader)
    }
}

function showColorPhotos(data, carousel) {
    this.data = data
    this.carousel = carousel
    var element = '<div id="' + this.carousel + '" class="carousel slide" data-ride="carousel">'
    var indicators = '<ul class="carousel-indicators">'
    var images = '<div class="carousel-inner">'
    if (this.data.length > 1) {
        this.data.forEach((photo, i) => {
            if (i == 0) {
                indicators += '<li class="active" data-target="#' + this.carousel +
                    '" data-slide-to="' + i + '"></li>'
                images += `<div class="carousel-item active" id="` + photo.id + `">
                            <img src="/static/uploads/` + photo.src + `" alt="` + photo.alt + `">
                        </div>`
            } else {
                indicators += '<li data-target="#' + this.carousel + '" data-slide-to="' + i + '"></li>'
                images += `<div class="carousel-item" id="` + photo.id + `">
                            <img src="/static/uploads/` + photo.src + `" alt="` + photo.alt + `">
                        </div>`
            }
            element += `<a class="carousel-control-prev" href="#` + this.carousel + `" data-slide="prev">
                            <i class="fa fa-angle-left" aria-hidden="true"></i>
                        </a>
                        <a class="carousel-control-next" href="#` + this.carousel + `" data-slide="next">
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                        </a>`
        })
    } else {
        if (this.data.length) {
            images += `<div class="carousel-item active" id="` + data[0].id + `">
                            <img src="/static/uploads/` + this.data[0].src + `" alt="` + this.data[0].alt + `">
                        </div>`
        } else {
            images += `<div class="carousel-item active">
                        <img src="/static/uploads/default.png" alt="No photo">
                    </div>`
        }
    }
    indicators += '</ul>'
    images += '</div>'
    element += indicators + images + `</div>`
    return element
}

function productConfiguration(params) {
    var image = params.image
    var colors = params.colors
    var product = params.product
    var category = params.category
    var description = params.description
    var currency = params.currency
    var price = params.price
    var properties = params.properties
    var values = params.values
    var id = params.id
    var stocks = params.stocks

    var configuration_element = ''

    var color_element = ''
                        
    if (colors.length > 0) {
        color_element = `<h5 class="color-font" style="text-align: start">
                            <i class="fa fa-caret-right right" aria-hidden="true"></i>Color
                        </h5><div class="details-colors">`
        colors.forEach(color => {
            var quantity = 0
            stocks.forEach(stock => {
                if (stock.color == color.id) {
                    quantity += stock.quantity
                }
            })
            color_element += `<div class="span-border color-text">
                        <span class="span-color" id="` + color.id + `" style="background-color: ` + color.hex + `" title="` + color.color + `"></span><div class="flex-between-end" style="width: 100%"><p>`+ color.color +`</p><p>`+quantity+`</p></div>
                    </div>`
        });
        color_element += '</div>'
    }

    

    if (currency == 'riel') {
        currency = 'R'
    } else {
        currency = '$'
    }

    var property_element = ''

    if (properties.length > 0) {
        var propertyArr = []
        properties.forEach(property => {
            var value_element = ''

            if (values.length > 0) {
                var isSeleted = false
                var propertyObj = {}
                values.forEach(value => {
                    var precision = 0
                    if (value.price % 1 != 0) {
                        precision = 2
                    }
                    var selected = ''
                    var option = accounting.formatMoney(value.price, {
                                        precision: precision,
                                        format: {
                                            pos : "+%s%v",
                                            neg : "-%s%v",
                                            zero: '<ion-icon class="value-active" name="checkmark-done-outline"></ion-icon>'
                                        }
                                    })
                    if (value.currency == 'riel') {
                        value.currency = 'R'
                    } else {
                        value.currency = '$'
                    }
                    if (value.property == property.id) {
                        if (accounting.unformat(value.price) == 0 && isSeleted == false) {
                            isSeleted = true
                            selected = 'checked'
                            propertyObj['id'] = property.id
                            propertyObj['name'] = property.property
                            propertyObj['value'] = value.value
                            propertyObj['price'] = value.price
                            propertyObj['description'] = value.description

                            configuration_element += `<div class="config-list flex-between" id="`+property.id+`">
                                                        <p class="property-name color-text" style="font-size: 13px">`+property.property+`: <span class="color-font value-description">`+value.description.toLowerCase()+' '+value.value.toLowerCase()+`</span></p>
                                                    </div>`
                        }
                        
                        value_element += `<label class="value container-input" id="` + value.id + `">
                                            <div class="flex-between-start">
                                                <div class="flex-column-start-start">
                                                    <h5 class="color-font notranslate" id="value-value">` + value.value + `</h5>
                                                    <p style="font-size: 11px" class="color-text" id="value-description">` + value.description + `</p>
                                                </div>
                                            </div>
                                            <input type="radio" class="input-radio" name="`+ property.property.toLowerCase().split(' ').join('-') +`" id="` + property.id + `" `+ selected +` value="` + value.id + `">
                                            <div class="flex-end notranslate color-text" style="font-size: 18px;" id="value-price">
                                                ` + option + `
                                            </div>
                                            <span class="hide checkbox"></span>
                                        </label>`
                    }
                })
                propertyArr.push(propertyObj)
            } else {
                value_element = '<button class="btn border btn-value color-font" disabled>...</button>'
            }
            property_element +=
                `<div class="flex-column-start-start mt-4">
                    <h5 class="color-font mb-3"><i class="fa fa-caret-right right" aria-hidden="true"></i>` +
                property.property + `</h5>
                </div>
                <div class="property-values" id="` + property.property.split(' ').join('-') + '_' + property.id + `">
                    ` + value_element + `
                </div>`
        });
    }


    return `<div class="modal-header">
            <div class="details-details">
                <div class="details">
                    <p class="notranslate color-font text-wrapper details-title" id="` + id +
        `" style="font-size: 23px;">` + product + `</p>
                    <div class="flex-start">
                        <p class="notranslate color-text" id="details-category" style="font-size: 12px;">` + category + `</p>
                        <div class="flex-start ml-1 description-container" style="width: 80%">
                            <span class="caret-right"></span>
                            <p class="color-text text-wrapper" id="details-description"
                                style="font-size: 12px; text-align: left;">` + description + `
                            <p>
                        </div>
                    </div>
                </div>
                <div class="details-header" style="font-size: 23px">
                    <span class="notranslate details-price color-font">` + accounting.formatMoney(price) + `</span>
                </div>
            </div>
        </div>
        <div class="modal-body">
            <span class="color-font alert-btn"><ion-icon name="alert-circle-outline"></ion-icon></span>
            <div class="modal-wrapper">
                <div class="product-details">
                    <div class="details-left">
                        <div class="details-img">
                            <img src="` + image + `" alt="" srcset="">
                        </div>
                        <h5 class="color-text mt-4" style="text-align: start;"><i class="fa fa-caret-right right" aria-hidden="true"></i>
                            Configuration</h5>
                        <div class="details-appearance notranslate">
                            `+ configuration_element +`
                        </div>
                    </div>
                    <div class="details-right">
                        ` + color_element +`
                        <div class="notranslate details-property">` + property_element + `</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn color-font close-modal" data-dismiss="modal">Cancel</button>
            <button class="btn border continue-btn color-font">Continue</button>
        </div>`
}

function generateString(length) {
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
        result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
}

function roundUp(num, precision) {
    precision = Math.pow(10, precision)
    return Math.ceil(num * precision) / precision
}