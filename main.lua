local tap = 0


-- Setting Background
local backImage = display.newImageRect("back.jpg",650,650)
backImage.x = display.contentCenterX
backImage.y = display.contentCenterY


-- Display Score Text
local score = display.newText(tap,display.contentCenterX-100,55,native.systemFont,70)


-- Setting Bar
local bar = display.newImageRect("bar.jpg",500,20)
bar.x = display.contentCenterX
bar.y = display.contentHeight-15


-- Setting Ball
local ball = display.newImageRect("ball.png",100,100)
ball.x = display.contentCenterX
ball.y = display.contentCenterY


-- Adding Physics
local movement = require("physics")
movement.start()
movement.addBody(ball,{radius=41.5, bounce= 0.7})
movement.addBody(bar,"static")


-- Adding User Tap And Move the ball
local function push()
    ball:applyLinearImpulse(0,-0.5,ball.x,ball.y)

    -- Adding Score And Display

    tap = tap+1
    score.text = tap 

end


-- Event Listener for Tapping the Ball
ball:addEventListener("tap",push)