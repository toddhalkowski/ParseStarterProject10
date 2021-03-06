//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        
        println("Image Selected")
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        importedImage.image = image
        
    }
    
    
    
    @IBAction func importImage(sender: AnyObject) {
        
        var image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        image.allowsEditing = false
        
        self.presentViewController(image, animated: true, completion: nil)
    }
    
    @IBOutlet var importedImage: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
        
        /* 

        var product = PFObject(className: "Products")
        
        product["name"] = "Ice Cream"
        
        product["description"] = "Tutti Fruiti"
        
        product["price"] = 4.99
        
        product.saveInBackgroundWithBlock { (success, error) -> Void in
            
            if success == true {
                
                println("Object saved with ID \(product.objectId)")
                
                
            } else {
                
                println("Failed")
                println(error)
                
            }
            
        }

        
        var query = PFQuery(className: "Products")
        
        query.getObjectInBackgroundWithId("P9Ul3tVe98", block: { (object: PFObject?, error: NSError? ) -> Void in
            
            if error != nil {
                
                println(error)
                
            } else if let product = object {
                
                product["description"] = "Rocky Road"
                
                product["price"] = 5.99
                
                product.saveInBackground()
                
                //println(object!.objectForKey("description"))
                
            }
            
            
        })

        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

