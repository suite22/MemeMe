//
//  EditorViewController.swift
//  MemeMe
//
//  Created by Ben Goertz on 11/22/15.
//  Copyright © 2015 suite22. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {
	
	@IBOutlet weak var mainMemeImageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func pickImageButton(sender: AnyObject) {
		let imagePicker = UIImagePickerController()
		imagePicker.delegate = ImagePickerDelegate()
		self.presentViewController(imagePicker, animated: true, completion: nil)
	}
}

