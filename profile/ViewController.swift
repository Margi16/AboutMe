//
//  ViewController.swift
//  profile
//
//  Created by Margi Bhatt on 29/09/21.
//

import UIKit
import CardSlider

struct Item: CardSliderItem{
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
    
}

class ViewController: UIViewController, CardSliderDataSource{
   
 
    var data = [
        Item(image: UIImage(named: "food")!, rating: nil, title: "Food🤤", subtitle: "I will surely go along!😉", description: "I am a big lover of food since my childhood! Pastas, Momos, Noodles - yes please!"),
        Item(image: UIImage(named: "dance")!, rating: nil, title: "Dance 💃🏻", subtitle: "Dancing up to the beats!", description: "Dance is a major hobby of mine! Let's dance to our heart!"),
        Item(image: UIImage(named: "code")!, rating: nil, title: "Code👩‍💻", subtitle: "iOS Development", description: "Always enthusiastic about knowing how the logic is working!"),
        Item(image: UIImage(named: "talk")!, rating: nil, title: "Talk🗣", subtitle: "Loves to talk!", description: "Have always been a conversation opener and love talking and joking around!")
    ]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let vc = CardSliderViewController.with(dataSource: self)
        vcCustomize(vc)
//        present(vc, animated: true)
        self.navigationController?.present(vc, animated: true, completion: nil)
        
    }

    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    
    func vcCustomize(_ vc: CardSliderViewController){
        vc.title = "Welcome!"
        vc.modalPresentationStyle = .fullScreen
    }
}

