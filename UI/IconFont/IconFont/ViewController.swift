//
//  ViewController.swift
//  IconFont
//
//  Created by taiyh on 2018/12/5.
//  Copyright © 2018 taiyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var label: UILabel = {
        let view = UILabel(frame: CGRect(x: 50, y: 100, width: 100, height: 40))
        return view
    }()
    
    lazy var img: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 50, y: 200, width: 100, height: 100))
        return view
    }()

    @IBOutlet weak var testlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        
        label.backgroundColor = .red
        label.textAlignment = .right
        label.iconfont(icon: .xiazai, size: 40)
        label.textColor = .green
        
        testlabel.iconfont(icon: .kefu, size: 100)
        testlabel.backgroundColor = .red
        testlabel.textColor = .green
        
        view.addSubview(img)
        //        img.image = IconFont.kefu.image(fontsize: 100)
        img.tintColor = .orange
        img.iconfont(icon: .kefu, size: 100)
    }


}

