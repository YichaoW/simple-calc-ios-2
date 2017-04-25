//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by Yichao Wang on 4/24/17.
//  Copyright © 2017 Yichao Wang. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    var history = [String]()

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        if (history.count > 0) {
            for index in 0...history.count - 1 {
                let label = UILabel(frame: CGRect(x: 0, y: index * 30, width: Int(self.view.frame.size.width), height: 30))
                label.text = history[index]
                scrollView.addSubview(label)
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! ViewController
        vc.history = history
        
    }
    

}
