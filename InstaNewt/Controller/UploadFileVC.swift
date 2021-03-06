//
//  UploadFileVC.swift
//  InstaNewt
//
//  Created by Giovanni Palusa on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import UIKit

class UploadFileVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    ///var imageTake = UIImageView()
    
    @IBOutlet weak var mainImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openCameraBtn(_ sender: Any) {
        
        if (UIImagePickerController .isSourceTypeAvailable( UIImagePickerControllerSourceType.camera)) {
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
        else {
            let alert = UIAlertController(title: "Fel!", message: "Ingen kamera? Du skojar!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Knapp", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func openLibraryBtn(_ sender: Any) {
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePicker.allowsEditing = true
        self.present(imagePicker, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        mainImage.image = info[UIImagePickerControllerEditedImage] as? UIImage
        
    }
    
    @IBOutlet weak var imageText: UITextView!
    
    @IBAction func addButton(_ sender: Any) {
        
        //let imagedata = UIImage(named: "dog.png")
        
        let blobb: NSData = UIImagePNGRepresentation(mainImage.image!)! as NSData
        let postobj = Post(favourite: false, imageText: imageText.text ,imageData: blobb)
        
        imageArray.append(postobj)
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    
    
    
}
