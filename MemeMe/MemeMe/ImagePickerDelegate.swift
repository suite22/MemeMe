//
//  ImagePickerDelegate.swift
//  MemeMe
//
//  Created by Ben Goertz on 11/22/15.
//  Copyright © 2015 suite22. All rights reserved.
//

import Foundation
import UIKit

class ImagePickerDelegate: NSObject, UIImagePickerControllerDelegate {
	
	func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
		// TODO: Handle a user's input
	}
	
	func imagePickerControllerDidCancel(picker: UIImagePickerController) {
		// TODO: Handle when a user cancels input.
	}
}
