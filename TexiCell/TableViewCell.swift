//
//  TableViewCell.swift
//  出租车cell
//
//  Created by 小黄star on 2017/5/19.
//  Copyright © 2017年 小黄star. All rights reserved.
//

import UIKit
class TableViewCell: UITableViewCell {
    var user_pic = UIImageView()
    var user_name = UILabel()
    var publicTime = UILabel()
    var title = UILabel()
    var morePic = UIImageView()
    var button = UIButton()
    var lightLine = UIView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        user_pic.frame = CGRect.init(x: 10, y: 10, width: 40, height: 40)
        user_pic.contentMode = .scaleAspectFill
        user_pic.clipsToBounds = true
        user_pic.layer.cornerRadius = 20
        user_pic.backgroundColor = UIColor.lightGray
        contentView.addSubview(user_pic)
        
        user_name.frame = CGRect.init(x: user_pic.right + 10, y: 15 , width: 100, height: 10)
        user_name.text = "德玛西亚"
        user_name.font = UIFont.systemFont(ofSize: 15)
        user_name.textAlignment = .left
        contentView.addSubview(user_name)
        
        publicTime.frame = CGRect.init(x: user_pic.right + 10, y: user_name.bottom + 10, width: 100, height: 10)
        publicTime.font = UIFont.systemFont(ofSize: 12)
        publicTime.textAlignment = .left
        publicTime.text = "2017-05-19"
        contentView.addSubview(publicTime)
        title.frame = CGRect.init(x: 18, y: user_pic.bottom + 10, width: screenW - 36, height: 10)
        title.text = "出租车可以发广告啦...."
        title.font = UIFont.systemFont(ofSize: 17)
        title.textAlignment = .left
        contentView.addSubview(title)
        let nameArr = ["http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg",
            "http://b.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31cc6476eb985d6277f9e2ff8bd.jpg",
                       "http://c.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9174d18e030cb3d70cf3bc7579b.jpg",
            "http://e.hiphotos.baidu.com/image/w%3D310/sign=79bc1b1a950a304e5222a6fbe1c9a7c3/d1160924ab18972b50a46fd4e4cd7b899e510a15.jpg",
            "http://c.hiphotos.baidu.com/image/w%3D310/sign=05e2c867272dd42a5f0907aa333a5b2f/7dd98d1001e93901f3f7103079ec54e737d196c3.jpg",
            "http://e.hiphotos.baidu.com/image/w%3D310/sign=3914596cf1deb48ffb69a7dfc01e3aef/d0c8a786c9177f3ea3e73f0072cf3bc79e3d56e8.jpg",
            "http://c.hiphotos.baidu.com/image/w%3D310/sign=8cc67b8cc91349547e1eee65664e92dd/4610b912c8fcc3ce11e40a3e9045d688d43f2093.jpg",
            "http://c.hiphotos.baidu.com/image/w%3D310/sign=93e1c429952bd40742c7d5fc4b889e9c/3812b31bb051f8191cdd594bd8b44aed2e73e733.jpg",
            "http://b.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31cc6476eb985d6277f9e2ff8bd.jpg"]

        for i in 0 ..< 9{
            setBtnWithTitle(nameArr[i], frame: CGRect(x: 18+CGFloat(i).truncatingRemainder(dividingBy: 3)*(0.307*screenW), y: CGFloat(i/3) * (0.142*screenH) + title.bottom + 10, width: (screenW - 50)/3, height: (0.135*screenH)))
        }
    lightLine.frame = CGRect.init(x: 0, y:  title.bottom + 40 + 0.135*screenH * 3, width: screenW, height: 1)
        lightLine.backgroundColor = UIColor.lightGray
        contentView.addSubview(lightLine)
    }
    func setBtnWithTitle(_ title:String,frame:CGRect){
       
        let img = UIImageView(frame: frame)
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        let url = URL.init(string: title)
        img.sd_setImage(with: url, placeholderImage: UIImage(named:""))
        
        contentView.addSubview(img)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
