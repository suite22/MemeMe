//
//  EditorViewController.swift
//  MemeMe
//
//  Created by Ben Goertz on 11/22/15.
//  Copyright © 2015 suite22. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	
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
		imagePicker.delegate = self
		self.presentViewController(imagePicker, animated: true, completion: nil)
	}
	
	func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
		if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
			self.mainMemeImageView.image = image
		}
		picker.dismissViewControllerAnimated(true, completion: nil)
	}

	func imagePickerControllerDidCancel(picker: UIImagePickerController) {
		// TODO: Handle when a user cancels input.
		picker.dismissViewControllerAnimated(true, completion: nil)
	}
}

