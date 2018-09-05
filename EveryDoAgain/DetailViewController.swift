//
//  DetailViewController.swift
//  EveryDoAgain
//
//  Created by Wiljay Flores on 2018-09-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.title!.description
            }
            if let label = priorityLabel {
                label.text = detail.priorityNumber.description
            }
            if let label = descriptionLabel {
                label.text = detail.todoDescription!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

