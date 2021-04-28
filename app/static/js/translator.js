languagesObj = {}

$.fn.translator = function () {
    languages = {
        english: {
            advertise: 'Advertise',
            about: 'About',
            home: 'Home',
            financial: 'Financial',
            customize: 'Modify',
            reports: 'Reports',
            configuration: 'Setting',
            cashing: 'Cashing',
            order: 'Book',
            stock: 'Stock',
            expense: 'Expense',
            transaction: 'Transaction',
            title: 'Title',
            newest: 'Newest',
            oldest: 'Oldest',
            expensive: 'Most expensive',
            cheapest: 'Cheapest',
            result: 'No product found...',
            description: 'Description',
            price: 'Price',
            disc: 'Disc',
            qty: 'Qty',
            amount: 'Amount',
            placeOrder: 'Place Order',
            cash: 'Cash',
            card: 'Card',
            paid: 'Paid',
            currency: 'Currency',
            unit: 'Unit',
            total: 'Total',
            contact: 'Contact',
            date: 'Date',
            invoice: 'Invoice',
            cashier: 'Cashier',
            return: 'Return',
            greet: 'Thank you for purchasing',
            drawer: 'Drawer',
            create: 'Create',
            end: 'End',
            cancel: 'Cancel',
            open: 'Open',
            close: 'Close',
            process: 'In Process',
            customer: 'Customer',
            phone: 'Phone',
            room: 'Room',
            newCustomer: 'New Customer',
            from: 'From',
            to: 'To',
            birth: 'Birthdate',
            okay: 'Process',
            payment: 'Payment',
            checkIn: 'Check In',
            checkOut: 'Check Out',
            duration: 'Duration',
            confirm: 'Confirm',
            color: 'Color',
            cost: 'Cost',
            rate: 'Rate',
            adjust: 'Adjust',
            expenseDetails: 'Add expense details and amount',
            details: 'Details',
            dateCreated: 'Created On',
            add: 'Add',
            since: 'Since',
            status: 'Status',
            user: 'User',
            category: 'Category',
            brand: 'Brand',
            product: 'Product',
            store: 'Store',
            role: 'Role',
            today: 'Today',
            activity: 'Activity',
            name: 'Name',
            save: 'Save',
            categoryDetails: 'Select category for product',
            brandDetails: 'Select brand for product',
            productInfo: 'Product Information',
            period: 'Period',
            discount: 'Discount',
            barcode: 'Barcode',
            productApp: 'Product Appearance',
            photoDetails: 'Add photo for product',
            colorDetails: 'Add color for product',
            colorPhotoDetails: 'Add photo for colot',
            width: 'Width',
            height: 'Height',
            weight: 'Weight',
            depth: 'Depth',
            material: 'Material',
            selectCate: 'Select Category',
            storeModify: 'Modify Store',
            saveStore: 'Save Store Info',
            floorDetails: 'Select floor for specific property',
            roomNo: 'Property Name',
            editRoom: 'Edit Property',
            username: 'Username',
            email: 'Email',
            fullname: 'Fullname',
            gender: 'Gender',
            company: 'Company',
            hometown: 'Hometown',
            location: 'Location',
            pwd: 'Password',
            listRole: 'List Role',
            admin: 'Admin',
            editor: 'Editor',
            report: 'Report',
            performance: 'Performance',
            profit: 'Profit',
            sale: 'Sale',
            income: 'Income',
            quantity: 'Quantity',
            doneBy: 'Done by',
            themeDetails: 'Choose your favorite background color',
            langDetails: 'Choose your prefer language',
            backupDetails: 'Back up your data to prevent data lose',
            restoreDetails: 'Restore data to go back to the previous change',
            restore: 'Restore',
            lang: 'Language',
            theme: 'Theme',
            backup: 'Backup',
            daily: 'Daily',
            monthly: 'Monthly',
            yearly: 'Yearly',
            alreadyPaid: 'Already Paid',
            expire: 'Expire',
            noColor: 'No color added',
            totalCost: 'Total Cost',
            totalPaid: 'Total Paid',
            totalReturn: 'Total Return',
            money: 'Money',
            counter: 'Counter',
            continue: 'Continue',
            remain: 'Remain',
            totalRemain: 'Total Remain',
            owe: 'Owe',
            totalInvoice: 'Total Invoice',
            orderSchedule: 'Order Schedule'
        },
        khmer: {
            advertise: 'ពាណិជ្ជកម្ម',
            about: 'អំពី',
            home: 'ទំព័រដើម',
            financial: 'ហិរញ្ញវត្ថុ',
            customize: 'កែប្រែ',
            reports: 'របាយការណ៍',
            configuration: 'កំណត់',
            cashing: 'គិតលុយ',
            order: 'កម្មង់',
            stock: 'ស្តុក',
            expense: 'ចំណាយ',
            transaction: 'ប្រតិបត្តិការ',
            title: 'ឈ្មោះ',
            newest: 'ថ្មី',
            oldest: 'ចាស់',
            expensive: 'ថ្លៃ',
            cheapest: 'ថោក',
            result: 'គ្នានរបស់បានបង្កើត...',
            description: 'ពិពណ៌នា',
            price: 'តម្លៃ',
            disc: 'បញ្ចុះ',
            qty: 'ចំនួន',
            amount: 'សរុប',
            placeOrder: 'គិតលុយ',
            cash: 'សាច់ប្រាក់',
            card: 'កាត',
            paid: 'ប្រាក់ទទួល',
            currency: 'រូបិយប័ណ្ណ',
            unit: 'ចំនួន',
            total: 'សរុប',
            contact: 'ទាក់ទង',
            date: 'ថ្ងៃទី',
            invoice: 'វិក្កយបត្រ',
            cashier: 'អ្នកគិតលុយ',
            return: 'ប្រាក់អាប់',
            greet: 'សូមអរគុណចំពោះការទិញ',
            drawer: 'ហិបប្រាក់',
            create: 'បង្កើត',
            end: 'បញ្ចប់',
            cancel: 'បោះបង់',
            open: 'បើក',
            close: 'បិទ',
            process: 'ដំណើរការ',
            customer: 'អតិថិជន',
            phone: 'ទូរស័ព្ទ',
            room: 'បន្ទប់',
            newCustomer: 'អតិថិជនថ្មី',
            from: 'ពី',
            to: 'ដល់',
            birth: 'ថ្ងៃកំណើត',
            okay: 'យល់ព្រម',
            payment: 'ការទូទាត់',
            checkIn: 'ចាប់ផ្តើម',
            checkOut: 'ទូទាត់',
            duration: 'រយះពេល',
            confirm: 'ផ្ទៀងផ្ទាត់',
            color: 'ពណ៌',
            cost: 'តម្លៃដើម',
            rate: 'អត្រា',
            adjust: 'កែតម្រូវ',
            expenseDetails: 'បន្ថែមការចំណាយនិងចំនួនទឹកប្រាក់',
            details: 'ព័ត៌មានលម្អិត',
            dateCreated: 'កាលបរិច្ឆេទបង្កើត',
            add: 'បន្ថែម',
            since: 'ថ្ងៃបង្កើត',
            status: 'ស្ថានភាព',
            user: 'អ្នកប្រើ',
            category: 'ប្រភេទ',
            brand: 'ម៉ាក',
            product: 'ផលិតផល',
            store: 'ហាង',
            role: 'មុខងារ',
            today: 'ថ្ងៃនេះ',
            activity: 'សកម្មភាព',
            name: 'ឈ្មោះ',
            save: 'រក្សាទុក',
            categoryDetails: 'ជ្រើសរើសប្រភេទសម្រាប់ផលិតផល',
            brandDetails: 'ជ្រើសរើសម៉ាកសម្រាប់ផលិតផល',
            productInfo: 'ព័ត៌មានផលិតផល',
            period: 'រយៈពេល',
            discount: 'បញ្ចុះតំលៃ',
            barcode: 'បាកូដ',
            productApp: 'រូបរាងផលិតផល',
            photoDetails: 'រូបសម្រាប់ផលិតផល',
            colorDetails: 'ពណ៌សម្រាប់ផលិតផល',
            colorPhotoDetails: 'ពណ៌សម្រាប់រូបភាព',
            width: 'ទទឹង',
            height: 'កម្ពស់',
            weight: 'ទំងន់',
            depth: 'ជម្រៅ',
            material: 'សម្ភារៈ',
            selectCate: 'ជ្រើសរើសប្រភេទ',
            storeModify: 'កែប្រែហាង',
            saveStore: 'រក្សាទុកព័ត៌មានហាង',
            floorDetails: 'ជ្រើសរើសជាន់សំរាប់ទ្រព្យសម្បត្តិជាក់លាក់',
            roomNo: 'ឈ្មោះទ្រព្យសម្បត្តិ',
            editRoom: 'កែប្រែទ្រព្យសម្បត្តិ',
            username: 'ឈ្មោះ​អ្នកប្រើប្រាស់',
            email: 'អ៊ីមែល',
            fullname: 'ឈ្មោះ​ពេញ',
            gender: 'ភេទ',
            company: 'ក្រុមហ៊ុន',
            hometown: 'ស្រុកកំណើត',
            location: 'ទីតាំង',
            pwd: 'ពាក្យសម្ងាត់',
            listRole: 'បញ្ជីតួនាទី',
            admin: 'គ្រប់គ្រង',
            editor: 'កែព័ត៌មាន',
            report: 'មើលរបាយការណ៍',
            performance: 'សមិទ្ធិផល',
            profit: 'ចំណេញ',
            sale: 'លក់',
            income: 'ចំណូល',
            quantity: 'ចំនួន',
            doneBy: 'បានធ្វើដោយ',
            themeDetails: 'ជ្រើសរើសពណ៌ផ្ទៃខាងក្រោយដែលអ្នកចូលចិត្ត',
            langDetails: 'ជ្រើសរើសភាសាដែលអ្នកចូលចិត្ត',
            backupDetails: 'បម្រុងទុកទិន្នន័យរបស់អ្នកដើម្បីការពារការបាត់បង់ទិន្នន័យ',
            restoreDetails: 'ត្រលប់ទិន្នន័យទៅការផ្លាស់ប្តូរពីមុន',
            restore: 'ត្រលប់ទិន្នន័យ',
            lang: 'ភាសា',
            theme: 'ផ្ទៃខាងក្រោយ',
            backup: 'បម្រុងទុកទិន្នន័យ',
            changePwd: 'ប្តូរពាក្យសម្ងាត់',
            currentPwd: 'ពាក្យសម្ងាត់បច្ចុប្បន្ន',
            newPwd: 'ពាក្យសម្ងាត់ថ្មី',
            confirmPwd: 'ផ្ទៀងផ្ទាត់ពាក្យសម្ងាត់',
            daily: 'ប្រចាំថ្ងៃ',
            monthly: 'ប្រចាំខែ',
            yearly: 'ប្រចាំឆ្នាំ',
            alreadyPaid: 'បានបង់ប្រាក់រួច',
            expire: 'ផុតកំណត់',
            noColor: 'គ្មានពណ៍បានបង្កើតទេ',
            totalCost: 'សរុបតម្លៃ',
            totalPaid: 'ប្រាក់ទទួល',
            totalReturn: 'ប្រាក់អាប់',
            money: 'សាច់ប្រាក់',
            counter: 'បញ្ជរ',
            continue: 'បន្ត',
            remain: 'នៅសល់',
            totalRemain: 'សរុបជំពាក់',
            owe: 'ជំពាក់',
            totalInvoice: 'វិក្កយបត្រសរុប',
            orderSchedule: 'កាលវិភាគកម្មង់'
        }
    }

    languagesObj = languages

    language = $('html').attr('data-lang')

    $.each($('#select-lang option'), function () {
        if ($(this).val() == language) {
            $(this).attr('selected', 'selected')
        }
    })

    $('.ln-order-schedule').text(languages[language].orderSchedule)
    $('.ln-total-invoice').text(languages[language].totalInvoice)
    $('.ln-total-remain').text(languages[language].totalRemain)
    $('.ln-owe').text(languages[language].owe)
    $('.ln-remain').text(languages[language].remain)
    $('.ln-continue').text(languages[language].continue)
    $('.ln-counter').text(languages[language].counter)
    $('.ln-money').text(languages[language].money)
    $('.ln-total-cost').text(languages[language].totalCost)
    $('.ln-total-paid').text(languages[language].totalPaid)
    $('.ln-total-return').text(languages[language].totalReturn)
    $('.ln-no-color').text(languages[language].noColor)
    $('.ln-expire').text(languages[language].expire)
    $('.ln-advertise').text(languages[language].advertise)
    $('.ln-alreadyPaid').text(languages[language].alreadyPaid)
    $('.ln-daily').text(languages[language].daily)
    $('.ln-monthly').text(languages[language].monthly)
    $('.ln-yearly').text(languages[language].yearly)
    $('.ln-home').text(languages[language].home)
    $('.ln-about').text(languages[language].about)

    $('.ln-changepwd').text(languages[language].changePwd)
    $('.ln-currentpwd').text(languages[language].currentPwd)
    $('.ln-newpwd').text(languages[language].newPwd)
    $('.ln-confirmpwd').text(languages[language].confirmPwd)

    $('.ln-theme-details').text(languages[language].themeDetails)
    $('.ln-lang-details').text(languages[language].langDetails)
    $('.ln-backup-details').text(languages[language].backupDetails)
    $('.ln-restore-details').text(languages[language].restoreDetails)
    $('.ln-restore').text(languages[language].restore)
    $('.ln-lang').text(languages[language].lang)
    $('.ln-theme').text(languages[language].theme)
    $('.ln-backup').text(languages[language].backup)


    $('.ln-doneBy').text(languages[language].doneBy)
    $('.ln-quantity').text(languages[language].quantity)
    $('.ln-income').text(languages[language].income)
    $('.ln-profit').text(languages[language].profit)
    $('.ln-sale').text(languages[language].sale)
    $('.ln-financial').text(languages[language].financial)
    $('.ln-performance').text(languages[language].performance)

    $('.ln-listRole').text(languages[language].listRole)
    $('.ln-admin').text(languages[language].admin)
    $('.ln-editor').text(languages[language].editor)
    $('.ln-report').text(languages[language].report)

    $('.ln-username').text(languages[language].username)
    $('.ln-email').text(languages[language].email)
    $('.ln-fullname').text(languages[language].fullname)
    $('.ln-gender').text(languages[language].gender)
    $('.ln-company').text(languages[language].company)
    $('.ln-hometown').text(languages[language].hometown)
    $('.ln-location').text(languages[language].location)
    $('.ln-pwd').text(languages[language].pwd)

    $('.ln-storeModify').text(languages[language].storeModify)
    $('.ln-save-store').text(languages[language].saveStore)
    $('.ln-floor-details').text(languages[language].floorDetails)
    $('.ln-roomNo').text(languages[language].roomNo)
    $('.ln-editRoom').text(languages[language].editRoom)

    $('.ln-select-cate').text(languages[language].selectCate)
    $('.ln-category-details').text(languages[language].categoryDetails)
    $('.ln-brand-details').text(languages[language].brandDetails)
    $('.ln-product-info').text(languages[language].productInfo)
    $('.ln-period').text(languages[language].period)
    $('.ln-discount').text(languages[language].discount)
    $('.ln-barcode').text(languages[language].barcode)
    $('.ln-product-app').text(languages[language].productApp)
    $('.ln-photo-details').text(languages[language].photoDetails)
    $('.ln-color-details').text(languages[language].colorDetails)
    $('.ln-color-photo-details').text(languages[language].colorPhotoDetails)

    $('.ln-width').text(languages[language].width)
    $('.ln-height').text(languages[language].height)
    $('.ln-weight').text(languages[language].weight)
    $('.ln-depth').text(languages[language].depth)
    $('.ln-material').text(languages[language].material)
    $('.ln-save').text(languages[language].save)

    $('.ln-name').text(languages[language].name)
    $('.ln-user').text(languages[language].user)
    $('.ln-today').text(languages[language].today)
    $('.ln-activity').text(languages[language].activity)
    $('.ln-product').text(languages[language].product)
    $('.ln-brand').text(languages[language].brand)
    $('.ln-category').text(languages[language].category)
    $('.ln-role').text(languages[language].role)
    $('.ln-store').text(languages[language].store)


    $('.ln-since').text(languages[language].since)
    $('.ln-status').text(languages[language].status)
    $('.ln-add').text(languages[language].add)
    $('.ln-details').text(languages[language].details)
    $('.ln-date-create').text(languages[language].dateCreated)
    $('.ln-expense-details').text(languages[language].expenseDetails)
    $('.ln-expense').text(languages[language].expense)
    $('.ln-rate').text(languages[language].rate)
    $('.ln-cost').text(languages[language].cost)
    $('.ln-adjust').text(languages[language].adjust)
    $('.ln-checkin').text(languages[language].checkIn)
    $('.ln-checkout').text(languages[language].checkOut)
    $('.ln-duration').text(languages[language].duration)
    $('.ln-confirm').text(languages[language].confirm)
    $('.ln-color').text(languages[language].color)

    $('.ln-stock').text(languages[language].stock)
    $('.ln-payment').text(languages[language].payment)
    $('.ln-okay').text(languages[language].okay)
    $('.ln-birthdate').text(languages[language].birth)
    $('.ln-from').text(languages[language].from)
    $('.ln-to').text(languages[language].to)
    $('.ln-new-customer').text(languages[language].newCustomer)
    $('.ln-room').text(languages[language].room)
    $('.ln-phone').text(languages[language].phone)
    $('.ln-customer').text(languages[language].customer)
    $('.ln-process').text(languages[language].process)
    $('.ln-close').text(languages[language].close)
    $('.ln-open').text(languages[language].open)
    $('.ln-cancel').text(languages[language].cancel)
    $('.ln-create').text(languages[language].create)
    $('.ln-end').text(languages[language].end)
    $('.ln-drawer').text(languages[language].drawer)
    $('.ln-greet').text(languages[language].greet)
    $('.ln-return').text(languages[language].return)
    $('.ln-contact').text(languages[language].contact)
    $('.ln-date').text(languages[language].date)
    $('.ln-invoice').text(languages[language].invoice)
    $('.ln-cashier').text(languages[language].cashier)
    $('.ln-configuration').text(languages[language].configuration)

    // Side Nav
    $('#home').find('span').text(languages[language].home)
    $('#financial').find('span').text(languages[language].financial)
    $('#customize').find('span').text(languages[language].customize)
    $('#reports').find('span').text(languages[language].reports)
    $('#configuration').find('span').text(languages[language].configuration)

    // Financial menu nav
    $('.cashing').text(languages[language].cashing)
    $('.order').text(languages[language].order)
    $('.stock').text(languages[language].stock)
    $('.expense').text(languages[language].expense)
    $('.transaction').text(languages[language].transaction)

    // Cashing
    $('#title').text(languages[language].title)
    $('#newest').text(languages[language].newest)
    $('#oldest').text(languages[language].oldest)
    $('#most-expensive').text(languages[language].expensive)
    $('#cheapest').text(languages[language].cheapest)

    $('.ln-result').text(languages[language].result)

    $('.ln-description').text(languages[language].description)
    $('.ln-price').text(languages[language].price)
    $('.ln-disc').text(languages[language].disc)
    $('.ln-qty').text(languages[language].qty)
    $('.ln-amount').text(languages[language].amount)
    
    $('.ln-order').text(languages[language].placeOrder)

    $('.ln-cash').text(languages[language].cash)
    $('.ln-card').text(languages[language].card)
    $('.ln-paid').text(languages[language].paid)
    $('.ln-currency').text(languages[language].currency)
    $('.ln-unit').text(languages[language].unit)
    $('.ln-total').text(languages[language].total)
}
