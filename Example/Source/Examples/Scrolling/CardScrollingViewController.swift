//
//  CardScrollingViewController.swift
//  BrickKit
//
//  Created by Ruben Cagnie on 6/5/16.
//  Copyright © 2016 Wayfair LLC. All rights reserved.
//

import BrickKit

class CardScrollingViewController: BaseScrollingViewController {
    override class var title: String {
        return "Cards"
    }
    override class var subTitle: String {
        return "Scroll bricks like cards"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        layout.zIndexBehavior = .BottomUp
        behavior = CardLayoutBehavior(dataSource: self)
    }

}

extension CardScrollingViewController: CardLayoutBehaviorDataSource {
    func cardLayoutBehavior(behavior: CardLayoutBehavior, smallHeightForItemAtIndexPath indexPath: NSIndexPath, withIdentifier identifier: String, inCollectionViewLayout collectionViewLayout: UICollectionViewLayout) -> CGFloat? {
        return identifier == BrickIdentifiers.repeatLabel ? 50 : nil
    }
}
