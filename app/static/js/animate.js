var canvas = document.querySelector('canvas')
var container = $('.container-left')

canvas.width = container.width()
canvas.height = container.height()

var c = canvas.getContext('2d')

var colors = [
    '#34495e80',
    '#7f8c8d80',
    '#2980b980',
    '#16a08580'
]



function Circle(x, y, dx, dy, radius, maxSize, minSize) {
    this.x = x
    this.y = y
    this.dx = dx
    this.dy = dy
    this.radius = radius
    this.maxSize = maxSize
    this.minSize = minSize
    this.color = colors[Math.floor(Math.random() * 4)]

    this.draw = function () {
        c.fillStyle = this.color
        c.fillRect(this.x, this.y, this.radius, this.radius)
    }
    this.update = function () {
        if (this.x + this.radius > container.width() || this.x < 0) {
            this.dx = -this.dx
        }
        if (this.y + this.radius > container.height() || this.y < 0) {
            this.dy = -this.dy
        }
        this.x += this.dx
        this.y += this.dy

        this.draw()
    }
}

var circleArray = []

function init() {
    canvas.width = container.width()
    canvas.height = container.height()
    circleArray = []
    for (let index = 0; index <= 10; index++) {
        var x = Math.random() * (container.width() - radius * 2)
        var y = Math.random() * (container.height() - radius * 2)

        var dx = (Math.random() - 0.5) * 4
        var dy = (Math.random() - 0.5) * 4
        var radius = Math.random() * 50 + 30
        var maxSize = 100
        var minSize = 30
        circleArray.push(new Circle(x, y, dx, dy, radius, maxSize, minSize))
    }
}

init()

$(window).on('resize', function () {
    init()
})

function animate() {
    requestAnimationFrame(animate)
    c.clearRect(0, 0, innerWidth, innerHeight)

    for (let index = 0; index < circleArray.length; index++) {
        circleArray[index].update()
    }
}
animate()


var tl = gsap.timeline()

tl.from('.hero h3', {
    x: -100
}).from('.hero p', {
    x: 1000,
    duration: 1.5,
    ease: "power3.out"
}).from('.logo', {
    y: -50,
    ease: 'elastic.out',
    duration: 1
}, '-=0.5')
