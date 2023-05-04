//
//  ViewController.swift
//  HorseRideCardGame
//
//  Created by Melih Şişkular on 4.05.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Definitions
    var horseSpades = UIImageView()
    var horseClub = UIImageView()
    var horseDiamonds = UIImageView()
    var horseHeart = UIImageView()
    
    var horseSpades1 = UIImageView()
    var horseClub1 = UIImageView()
    var horseDiamonds1 = UIImageView()
    var horseHeart1 = UIImageView()
    var horseSpades2 = UIImageView()
    var horseClub2 = UIImageView()
    var horseDiamonds2 = UIImageView()
    var horseHeart2 = UIImageView()
    var horseSpades3 = UIImageView()
    var horseClub3 = UIImageView()
    var horseDiamonds3 = UIImageView()
    var horseHeart3 = UIImageView()
    var horseSpades4 = UIImageView()
    var horseClub4 = UIImageView()
    var horseDiamonds4 = UIImageView()
    var horseHeart4 = UIImageView()
    var horseSpades5 = UIImageView()
    var horseClub5 = UIImageView()
    var horseDiamonds5 = UIImageView()
    var horseHeart5 = UIImageView()
    var horseSpades6 = UIImageView()
    var horseClub6 = UIImageView()
    var horseDiamonds6 = UIImageView()
    var horseHeart6 = UIImageView()
    
    var cardSide1 = UIImageView()
    var cardSide2 = UIImageView()
    var cardSide3 = UIImageView()
    var cardSide4 = UIImageView()
    var cardSide5 = UIImageView()
    var cardSide6 = UIImageView()
    
    var randomCardSide1 = ""
    var randomCardSide2 = ""
    var randomCardSide3 = ""
    var randomCardSide4 = ""
    var randomCardSide5 = ""
    var randomCardSide6 = ""
    
    var startButton = UIButton()
    
    var randomSelectedCard = UIImageView()
    
    var width = CGFloat()
    var height = CGFloat()
    
    var deste = [String]()
    
    var pointOfSpades = 0
    var pointOfClub = 0
    var pointOfHeart = 0
    var pointOfDiamonds = 0
    let winningPoint = 7 ///Puanlar buna eşit ise gerçekten kazanılır!

    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5
        width = view.frame.size.width
        height = view.frame.size.height
       
  
        startButton.layer.cornerRadius = 8
        startButton.backgroundColor = .white
        startButton.setTitle("Yarışa Başla!", for: UIControl.State.normal)
        startButton.setTitleColor(.blue, for: UIControl.State.normal)
        
        randomSelectedCard.isUserInteractionEnabled = true
        let gestureForRandomCard = UISwipeGestureRecognizer(target: self, action: #selector(swipeRandomCard))
        gestureForRandomCard.direction = [.right,.left]
        randomSelectedCard.addGestureRecognizer(gestureForRandomCard)
        
        
        appendCardstoDeckArray()
        startingImageFunc()
        frameArrangmentFunc()
        viewAddSubviewFunc()
        randomChoosed6CardsFromDecks()
        

        
    }
 
  
    
                                                          //MARK: Functions

    
    func controlOfSideCards() {
        
        if pointOfClub >= 1 && pointOfHeart >= 1 && pointOfSpades >= 1 && pointOfDiamonds >= 1 {
            cardSide1.image = UIImage(named: randomCardSide1)
            controlSide1()
            
            if pointOfClub >= 2 && pointOfHeart >= 2 && pointOfSpades >= 2 && pointOfDiamonds >= 2 {
                cardSide2.image = UIImage(named: randomCardSide2)
                controlSide2()
                
                
                if pointOfClub >= 3 && pointOfHeart >= 3 && pointOfSpades >= 3 && pointOfDiamonds >= 3 {
                    cardSide3.image = UIImage(named: randomCardSide3)
                    controlSide3()
                    
                    
                    if pointOfClub >= 4 && pointOfHeart >= 4 && pointOfSpades >= 4 && pointOfDiamonds >= 4 {
                        cardSide4.image = UIImage(named: randomCardSide4)
                        controlSide4()
                        
                        
                        if pointOfClub >= 5 && pointOfHeart >= 5 && pointOfSpades >= 5 && pointOfDiamonds >= 5 {
                            cardSide5.image = UIImage(named: randomCardSide5)
                            controlSide5()
                            
                            
                            if pointOfClub >= 6 && pointOfHeart >= 6 && pointOfSpades >= 6 && pointOfDiamonds >= 6 {
                                cardSide6.image = UIImage(named: randomCardSide6)
                                controlSide6()
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    
    func whereIsTheCards() {
        switch pointOfClub {
        case 1:
            horseClub1.image = UIImage(named: "Sinek As")
            horseClub.image = UIImage()
            horseClub2.image = UIImage()
            horseClub3.image = UIImage()
        case 2:
            horseClub2.image = UIImage(named: "Sinek As")
            horseClub.image = UIImage()
            horseClub1.image = UIImage()
            horseClub3.image = UIImage()
            horseClub4.image = UIImage()
        case 3:
            horseClub3.image = UIImage(named: "Sinek As")
            horseClub1.image = UIImage()
            horseClub2.image = UIImage()
            horseClub4.image = UIImage()
            horseClub5.image = UIImage()
        case 4:
            horseClub4.image = UIImage(named: "Sinek As")
            horseClub2.image = UIImage()
            horseClub3.image = UIImage()
            horseClub5.image = UIImage()
            horseClub6.image = UIImage()
        case 5:
            horseClub5.image = UIImage(named: "Sinek As")
            horseClub3.image = UIImage()
            horseClub4.image = UIImage()
            horseClub6.image = UIImage()
           
        case 6:
            horseClub6.image = UIImage(named: "Sinek As")
            horseClub4.image = UIImage()
            horseClub5.image = UIImage()
  
        default:
            print("Başlangıc Noktası")
        }
        
        
        switch pointOfSpades {
        case 1:
            horseSpades1.image = UIImage(named: "Maça As")
            horseSpades.image = UIImage()
            horseSpades2.image = UIImage()
            horseSpades3.image = UIImage()
        case 2:
            horseSpades2.image = UIImage(named: "Maça As")
            horseSpades.image = UIImage()
            horseSpades1.image = UIImage()
            horseSpades3.image = UIImage()
            horseSpades4.image = UIImage()
        case 3:
            horseSpades3.image = UIImage(named: "Maça As")
            horseSpades1.image = UIImage()
            horseSpades2.image = UIImage()
            horseSpades4.image = UIImage()
            horseSpades5.image = UIImage()
        case 4:
            horseSpades4.image = UIImage(named: "Maça As")
            horseSpades.image = UIImage()
            horseSpades3.image = UIImage()
            horseSpades5.image = UIImage()
            horseSpades6.image = UIImage()
        case 5:
            horseSpades5.image = UIImage(named: "Maça As")
            horseSpades3.image = UIImage()
            horseSpades4.image = UIImage()
            horseSpades6.image = UIImage()
        case 6:
            horseSpades6.image = UIImage(named: "Maça As")
            horseSpades4.image = UIImage()
            horseSpades5.image = UIImage()
        default:
            print("Başlangıc Noktası")
        }
        
        
        switch pointOfHeart {
        case 1:
            horseHeart1.image = UIImage(named: "Kupa As")
            horseHeart.image = UIImage()
            horseHeart2.image = UIImage()
            horseHeart3.image = UIImage()
        case 2:
            horseHeart2.image = UIImage(named: "Kupa As")
            horseHeart.image = UIImage()
            horseHeart1.image = UIImage()
            horseHeart3.image = UIImage()
            horseHeart4.image = UIImage()
        case 3:
            horseHeart3.image = UIImage(named: "Kupa As")
            horseHeart1.image = UIImage()
            horseHeart2.image = UIImage()
            horseHeart4.image = UIImage()
            horseHeart5.image = UIImage()
        case 4:
            horseHeart4.image = UIImage(named: "Kupa As")
            horseHeart2.image = UIImage()
            horseHeart3.image = UIImage()
            horseHeart5.image = UIImage()
            horseHeart6.image = UIImage()
        case 5:
            horseHeart5.image = UIImage(named: "Kupa As")
            horseHeart3.image = UIImage()
            horseHeart4.image = UIImage()
            horseHeart6.image = UIImage()
        case 6:
            horseHeart6.image = UIImage(named: "Kupa As")
            horseHeart5.image = UIImage()
            horseHeart4.image = UIImage()
        default:
            print("Başlangıc Noktası")
        }
        
        
        switch pointOfDiamonds {
        case 1:
            horseDiamonds1.image = UIImage(named: "Karo As")
            horseDiamonds.image = UIImage()
            horseDiamonds2.image = UIImage()
            horseDiamonds3.image = UIImage()
        case 2:
            horseDiamonds2.image = UIImage(named: "Karo As")
            horseDiamonds.image = UIImage()
            horseDiamonds1.image = UIImage()
            horseDiamonds3.image = UIImage()
            horseDiamonds4.image = UIImage()
        case 3:
            horseDiamonds3.image = UIImage(named: "Karo As")
            horseDiamonds1.image = UIImage()
            horseDiamonds2.image = UIImage()
            horseDiamonds4.image = UIImage()
            horseDiamonds5.image = UIImage()
        case 4:
            horseDiamonds4.image = UIImage(named: "Karo As")
            horseDiamonds2.image = UIImage()
            horseDiamonds3.image = UIImage()
            horseDiamonds5.image = UIImage()
            horseDiamonds6.image = UIImage()
        case 5:
            horseDiamonds5.image = UIImage(named: "Karo As")
            horseDiamonds3.image = UIImage()
            horseDiamonds4.image = UIImage()
            horseDiamonds6.image = UIImage()
        case 6:
            horseDiamonds6.image = UIImage(named: "Karo As")
            horseDiamonds5.image = UIImage()
            horseDiamonds4.image = UIImage()
        default:
            print("Başlangıc Noktası")
        }
    }
    
    func whoIstheWinner() {
        if winningPoint == pointOfClub {
            print("Oyun biter")
        }else if winningPoint == pointOfHeart {
            print("Oyun biter")
        }else if winningPoint == pointOfSpades {
            print("Oyun biter")
        }else if winningPoint == pointOfDiamonds {
            print("Oyun biter")
        }
    }
    
    @objc
    func swipeRandomCard() {
        ///Desteden 4 as oyun için çıktı, 6 tane kart yan taraf için çıktı
        ///Artık deste karıştırılıp en sondan çekişler yapabiliriz
        for _ in 1...5 {
            deste.shuffle()
        }
        var upCardFromDecks = deste.randomElement()!
        randomSelectedCard.image = UIImage(named: upCardFromDecks)
      
        if upCardFromDecks.hasPrefix("Sinek") {
            if upCardFromDecks.hasPrefix("Sinek As") {
                pointOfClub += 2
            }else {
                pointOfClub += 1
            }
        }else if upCardFromDecks.hasPrefix("Maça") {
            if upCardFromDecks.hasPrefix("Maça As") {
                pointOfSpades += 2
            }else {
                pointOfSpades += 1
            }
        }else if upCardFromDecks.hasPrefix("Karo") {
            if upCardFromDecks.hasPrefix("Karo As") {
                pointOfDiamonds += 2
            }else {
                pointOfDiamonds += 1
            }
        }else if  upCardFromDecks.hasPrefix("Kupa") {
            if upCardFromDecks.hasPrefix("Kupa As") {
                pointOfHeart += 2
            }else {
                pointOfHeart += 1
            }
        }
        
        whereIsTheCards()
        controlOfSideCards()
        whoIstheWinner()
        
    }
    
    func randomChoosed6CardsFromDecks() {
        ///Sağdaki kartlar için 6 tane kart seçimi yapıldı bundan sonra random kart seçimi yapılabilir!
        randomCardSide1 = deste.randomElement()!
        randomCardSide2 = deste.randomElement()!
        randomCardSide3 = deste.randomElement()!
        randomCardSide4 = deste.randomElement()!
        randomCardSide5 = deste.randomElement()!
        randomCardSide6 = deste.randomElement()!
        
    }
    
    
    func controlSide1() {
        if randomCardSide1.hasPrefix("Sinek") {
            if randomCardSide1.hasPrefix("Sinek As") {
               pointOfClub -= 2
            }else {
              pointOfClub -= 1
            }
            
        }
        if randomCardSide1.hasPrefix("Maça") {
            if randomCardSide1.hasPrefix("Maça As") {
                pointOfSpades -= 2
            }else {
                pointOfSpades -= 1
            }
        }
        if randomCardSide1.hasPrefix("Kupa") {
            if randomCardSide1.hasPrefix("Kupa As") {
                pointOfHeart -= 2
            }else {
                pointOfHeart -= 1
            }
        }
        if randomCardSide1.hasPrefix("Karo") {
            if randomCardSide1.hasPrefix("Karo As") {
                pointOfDiamonds -= 2
            }else {
                pointOfDiamonds -= 1
            }
        }
        whereIsTheCards()
    }
    func controlSide2() {
        if randomCardSide2.hasPrefix("Sinek") {
            if randomCardSide2.hasPrefix("Sinek As") {
                pointOfClub -= 2
            }else {
                pointOfClub -= 1
            }
        }
        if randomCardSide2.hasPrefix("Maça") {
            if randomCardSide2.hasPrefix("Maça As") {
                pointOfSpades -= 2
            }else {
                pointOfSpades -= 1
            }
        }
        if randomCardSide2.hasPrefix("Kupa") {
            if randomCardSide2.hasPrefix("Kupa As") {
                pointOfHeart -= 2
            }else {
                pointOfHeart -= 1
            }
        }
        if randomCardSide2.hasPrefix("Karo") {
            if randomCardSide2.hasPrefix("Karo As") {
                pointOfDiamonds -= 2
            }else {
                pointOfDiamonds -= 1
            }
        }
        whereIsTheCards()
    }
    func controlSide3() {
        if randomCardSide3.hasPrefix("Sinek") {
            if randomCardSide3.hasPrefix("Sinek As") {
                pointOfClub -= 2
            }else {
                pointOfClub -= 1
            }
        }
        if randomCardSide3.hasPrefix("Maça") {
            if randomCardSide3.hasPrefix("Maça As") {
                pointOfSpades -= 2
            }else {
                pointOfSpades -= 1
            }
        }
        if randomCardSide3.hasPrefix("Kupa") {
            if randomCardSide3.hasPrefix("Kupa As") {
                pointOfHeart -= 2
            }else {
                pointOfHeart -= 1
            }
        }
        if randomCardSide3.hasPrefix("Karo") {
            if randomCardSide3.hasPrefix("Karo As") {
                pointOfDiamonds -= 2
            }else {
                pointOfDiamonds -= 1
            }
        }
        whereIsTheCards()
    }
    func controlSide4() {
        if randomCardSide4.hasPrefix("Sinek") {
            if randomCardSide4.hasPrefix("Sinek As") {
                pointOfClub -= 2
            }else {
                pointOfClub -= 1
            }
        }
        if randomCardSide4.hasPrefix("Maça") {
            if randomCardSide4.hasPrefix("Maça As") {
                pointOfSpades -= 2
            }else {
                pointOfSpades -= 1
            }
        }
        if randomCardSide4.hasPrefix("Kupa") {
            if randomCardSide4.hasPrefix("Kupa As") {
                pointOfHeart -= 2
            }else {
                pointOfHeart -= 1
            }
        }
        if randomCardSide4.hasPrefix("Karo") {
            if randomCardSide4.hasPrefix("Karo As") {
                pointOfDiamonds -= 2
            }else {
                pointOfDiamonds -= 1
            }
        }
        whereIsTheCards()
    }
    func controlSide5() {
        if randomCardSide5.hasPrefix("Sinek") {
            if randomCardSide5.hasPrefix("Sinek As") {
                pointOfClub -= 2
              
            }else {
                pointOfClub -= 1
            }
        }
        if randomCardSide5.hasPrefix("Maça") {
            if randomCardSide5.hasPrefix("Maça As") {
                pointOfSpades -= 2
            }else {
                pointOfSpades -= 1
            }
        }
        if randomCardSide5.hasPrefix("Kupa") {
            if randomCardSide5.hasPrefix("Kupa As") {
                pointOfHeart -= 2
            }else {
                pointOfHeart -= 1
            }
        }
        if randomCardSide5.hasPrefix("Karo") {
            if randomCardSide5.hasPrefix("Karo As") {
                pointOfDiamonds -= 2
            }else {
                pointOfDiamonds -= 1
            }
        }
        whereIsTheCards()
    }
    func controlSide6() {
        if randomCardSide6.hasPrefix("Sinek") {
            if randomCardSide6.hasPrefix("Sinek As") {
                pointOfClub -= 2
            }else {
               pointOfClub -= 1
            }
        }
        if randomCardSide6.hasPrefix("Maça") {
            if randomCardSide6.hasPrefix("Maça As") {
                pointOfSpades -= 2
            }else {
                pointOfSpades -= 1
            }
        }
        if randomCardSide6.hasPrefix("Kupa") {
            if randomCardSide6.hasPrefix("Kupa As") {
                pointOfHeart -= 2
            }else {
                pointOfHeart -= 1
            }
        }
        if randomCardSide6.hasPrefix("Karo") {
            if randomCardSide6.hasPrefix("Karo As") {
                pointOfDiamonds -= 2
            }else {
                pointOfDiamonds -= 1
            }
        }
        whereIsTheCards()
    }
    
    
    func startingImageFunc() {
        
        horseClub.image = UIImage(named: "Sinek As")
        horseDiamonds.image = UIImage(named: "Karo As")
        horseHeart.image = UIImage(named: "Kupa As")
        horseSpades.image = UIImage(named: "Maça As")
        cardSide1.image = UIImage(named: "arka2")
        cardSide2.image = UIImage(named: "arka2")
        cardSide3.image = UIImage(named: "arka2")
        cardSide4.image = UIImage(named: "arka2")
        cardSide5.image = UIImage(named: "arka2")
        cardSide6.image = UIImage(named: "arka2")
        randomSelectedCard.image = UIImage(named: "random")
        
    }
    
    
    func frameArrangmentFunc() {
        
        horseClub.frame = CGRect(x: width * 0.05, y: height * 0.85, width: width * 0.13, height: height * 0.1)
        horseDiamonds.frame = CGRect(x: width * 0.25, y: height * 0.85, width: width * 0.13, height: height * 0.1)
        horseSpades.frame = CGRect(x: width * 0.45, y: height * 0.85, width: width * 0.13, height: height * 0.1)
        horseHeart.frame = CGRect(x: width * 0.65, y: height * 0.85, width: width * 0.13, height: height * 0.1)
        randomSelectedCard.frame =  CGRect(x: width * 0.82, y: height * 0.835, width: width * 0.16, height: height * 0.12)
        cardSide1.frame =  CGRect(x: width * 0.83, y: height * 0.70, width: width * 0.13, height: height * 0.1)
        cardSide2.frame =  CGRect(x: width * 0.83, y: height * 0.58, width: width * 0.13, height: height * 0.1)
        cardSide3.frame =  CGRect(x: width * 0.83, y: height * 0.46, width: width * 0.13, height: height * 0.1)
        cardSide4.frame =  CGRect(x: width * 0.83, y: height * 0.34, width: width * 0.13, height: height * 0.1)
        cardSide5.frame =  CGRect(x: width * 0.83, y: height * 0.22, width: width * 0.13, height: height * 0.1)
        cardSide6.frame =  CGRect(x: width * 0.83, y: height * 0.1, width: width * 0.13, height: height * 0.1)
        startButton.frame =  CGRect(x: width * 0.5 - (width * 0.7)/2, y: height * 0.5 - (height * 0.2)/2, width: width * 0.7, height: height * 0.2)
        horseClub1.frame = CGRect(x: width * 0.05, y: height * 0.70, width: width * 0.13, height: height * 0.1)
        horseDiamonds1.frame = CGRect(x: width * 0.25, y: height * 0.70, width: width * 0.13, height: height * 0.1)
        horseSpades1.frame = CGRect(x: width * 0.45, y: height * 0.70, width: width * 0.13, height: height * 0.1)
        horseHeart1.frame = CGRect(x: width * 0.65, y: height * 0.70, width: width * 0.13, height: height * 0.1)
        horseClub2.frame = CGRect(x: width * 0.05, y: height * 0.58, width: width * 0.13, height: height * 0.1)
        horseDiamonds2.frame = CGRect(x: width * 0.25, y: height * 0.58, width: width * 0.13, height: height * 0.1)
        horseSpades2.frame = CGRect(x: width * 0.45, y: height * 0.58, width: width * 0.13, height: height * 0.1)
        horseHeart2.frame = CGRect(x: width * 0.65, y: height * 0.58, width: width * 0.13, height: height * 0.1)
        horseClub3.frame = CGRect(x: width * 0.05, y: height * 0.46, width: width * 0.13, height: height * 0.1)
        horseDiamonds3.frame = CGRect(x: width * 0.25, y: height * 0.46, width: width * 0.13, height: height * 0.1)
        horseSpades3.frame = CGRect(x: width * 0.45, y: height * 0.46, width: width * 0.13, height: height * 0.1)
        horseHeart3.frame = CGRect(x: width * 0.65, y: height * 0.46, width: width * 0.13, height: height * 0.1)
        horseClub4.frame = CGRect(x: width * 0.05, y: height * 0.34, width: width * 0.13, height: height * 0.1)
        horseDiamonds4.frame = CGRect(x: width * 0.25, y: height * 0.34, width: width * 0.13, height: height * 0.1)
        horseSpades4.frame = CGRect(x: width * 0.45, y: height * 0.34, width: width * 0.13, height: height * 0.1)
        horseHeart4.frame = CGRect(x: width * 0.65, y: height * 0.34, width: width * 0.13, height: height * 0.1)
        horseClub5.frame = CGRect(x: width * 0.05, y: height * 0.22, width: width * 0.13, height: height * 0.1)
        horseDiamonds5.frame = CGRect(x: width * 0.25, y: height * 0.22, width: width * 0.13, height: height * 0.1)
        horseSpades5.frame = CGRect(x: width * 0.45, y: height * 0.22, width: width * 0.13, height: height * 0.1)
        horseHeart5.frame = CGRect(x: width * 0.65, y: height * 0.22, width: width * 0.13, height: height * 0.1)
        horseClub6.frame = CGRect(x: width * 0.05, y: height * 0.1, width: width * 0.13, height: height * 0.1)
        horseDiamonds6.frame = CGRect(x: width * 0.25, y: height * 0.1, width: width * 0.13, height: height * 0.1)
        horseSpades6.frame = CGRect(x: width * 0.45, y: height * 0.1, width: width * 0.13, height: height * 0.1)
        horseHeart6.frame = CGRect(x: width * 0.65, y: height * 0.1, width: width * 0.13, height: height * 0.1)
      
    }
    
    
    func viewAddSubviewFunc() {
        view.addSubview(horseClub)
        view.addSubview(horseHeart)
        view.addSubview(horseSpades)
        view.addSubview(horseDiamonds)
        view.addSubview(cardSide1)
        view.addSubview(cardSide2)
        view.addSubview(cardSide3)
        view.addSubview(cardSide4)
        view.addSubview(cardSide5)
        view.addSubview(cardSide6)
        view.addSubview(randomSelectedCard)
        view.addSubview(startButton)
        view.addSubview(horseSpades1)
        view.addSubview(horseSpades2)
        view.addSubview(horseSpades3)
        view.addSubview(horseSpades4)
        view.addSubview(horseSpades5)
        view.addSubview(horseSpades6)
        view.addSubview(horseDiamonds1)
        view.addSubview(horseDiamonds2)
        view.addSubview(horseDiamonds3)
        view.addSubview(horseDiamonds4)
        view.addSubview(horseDiamonds5)
        view.addSubview(horseDiamonds6)
        view.addSubview(horseHeart1)
        view.addSubview(horseHeart2)
        view.addSubview(horseHeart3)
        view.addSubview(horseHeart4)
        view.addSubview(horseHeart5)
        view.addSubview(horseHeart6)
        view.addSubview(horseClub1)
        view.addSubview(horseClub2)
        view.addSubview(horseClub3)
        view.addSubview(horseClub4)
        view.addSubview(horseClub5)
        view.addSubview(horseClub6)
    }
    

    
    func appendCardstoDeckArray() {
        
        ///Oyun 2 deste ile oynanacak
        ///Ama bu kartların 1 çifti zaten oyunda 2 çift sağlanması için bize 1 tane lazım bunlardan ondan dolayı for'da dahil etmedim
        deste.append("Maça As")
        deste.append("Sinek As")
        deste.append("Karo As")
        deste.append("Kupa As")
        
        for _ in 1...2 {
           
            deste.append("Maça 2")
            deste.append("Maça 3")
            deste.append("Maça 4")
            deste.append("Maça J")
            deste.append("Maça K")
            deste.append("Maça 5")
            deste.append("Maça 6")
            deste.append("Maça 7")
            deste.append("Maça 8")
            deste.append("Maça 9")
            deste.append("Maça 10")
            deste.append("Maça Q")
            
            
            deste.append("Sinek 2")
            deste.append("Sinek 3")
            deste.append("Sinek 4")
            deste.append("Sinek J")
            deste.append("Sinek K")
            deste.append("Sinek 5")
            deste.append("Sinek 6")
            deste.append("Sinek 7")
            deste.append("Sinek 8")
            deste.append("Sinek 9")
            deste.append("Sinek 10")
            deste.append("Sinek Q")
            
       
            deste.append("Karo 2")
            deste.append("Karo 3")
            deste.append("Karo 4")
            deste.append("Karo J")
            deste.append("Karo K")
            deste.append("Karo 5")
            deste.append("Karo 6")
            deste.append("Karo 7")
            deste.append("Karo 8")
            deste.append("Karo 9")
            deste.append("Karo 10")
            deste.append("Karo Q")
            
         
            deste.append("Kupa 2")
            deste.append("Kupa 3")
            deste.append("Kupa 4")
            deste.append("Kupa J")
            deste.append("Kupa K")
            deste.append("Kupa 5")
            deste.append("Kupa 6")
            deste.append("Kupa 7")
            deste.append("Kupa 8")
            deste.append("Kupa 9")
            deste.append("Kupa 10")
            deste.append("Kupa Q")
        }
        
        
    }
    

}

