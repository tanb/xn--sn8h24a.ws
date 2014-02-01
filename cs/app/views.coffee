class MainView extends BNView
    constructor: () ->
        super
        this.imageView = new BNImageView()
        frame = {
            x: 0,
            y: 0,
            width: 45,
            height: 45,
        }
        this.imageView.frame = frame
        this.imageView.src = '/img/logo.png'
        this.imageView.circularize = true;
        this.addSubview(this.imageView)

        this.githubBtn = new BNButton()
        this.githubBtn.setTitle("tanB's Github Profile")
        githubBtnFrame = {
            x: 0,
            y: 0,
            width: 160,
            height: 35,
        }
        this.githubBtn.frame = githubBtnFrame
        this.addSubview(this.githubBtn)

    layoutSubviews: () ->
        super

        imgFrame = this.imageView.frame
        imgX = (this.frame.width - imgFrame.width) / 2
        imgY = (this.frame.height - imgFrame.height) / 2

        imgFrame.x = imgX
        imgFrame.y = imgY
        this.imageView.frame = imgFrame

        githubBtnX = this.frame.width - this.githubBtn.frame.width - 8
        githubBtnY = 8
        
        githubBtnFrame = this.githubBtn.frame
        githubBtnFrame.x = githubBtnX
        githubBtnFrame.y = githubBtnY
        this.githubBtn.frame = githubBtnFrame


class MobileFirstView extends BNView
    constructor: () ->
        super
        this._$elm.css({
            'background-color': 'red'
        })

    layoutSubviews: () ->
        super
