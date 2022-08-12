//
//  ViewController.swift
//  veriSaklama
//
//  Created by Recep Akkoyun on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtYapilacakIs: UITextField!
    @IBOutlet weak var txtYapilacakZaman: UITextField!
    @IBOutlet weak var lblYapilacakIs: UILabel!
    @IBOutlet weak var lblYapilacakZaman: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
       let kaydedilenNot = UserDefaults.standard.object(forKey: "not")//uygulamanın açılış ekranında                                                                 kaydedilen notu gösterdedim
       let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if let gelenZaman = kaydedilenZaman as? String{
            lblYapilacakZaman.text = "Yapılacak Zaman:  \(gelenZaman)"
        }
        if let gelenNot = kaydedilenNot as? String{
            lblYapilacakIs.text = "Yapılacak iş:  \(gelenNot)"
        }
    }
    
 
    @IBAction func btnKaydet(_ sender: Any) {
        
        
            
        UserDefaults.standard.set(txtYapilacakIs.text!, forKey: "not") // Uygulama Kapansa da not u kaydet                                                                  dedim
        
        UserDefaults.standard.set(txtYapilacakZaman.text!, forKey: "zaman")
        
        
        lblYapilacakIs.text = "Yapılacak İş: \(txtYapilacakIs.text!)"
        lblYapilacakZaman.text = "Yapılacak Zaman: \(txtYapilacakZaman.text!)"
        txtYapilacakIs.text = ""
        txtYapilacakZaman.text = ""
        
    }
    
    @IBAction func btnSil(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: "not")
        UserDefaults.standard.removeObject(forKey: "zaman")

        lblYapilacakIs.text = "Yapılacak İş:"
        lblYapilacakZaman.text = "Yapılacak Zaman:"
        
    }
    

}


