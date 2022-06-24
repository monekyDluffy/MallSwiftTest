//
//  BannerView.swift
//  MallSwiftTest
//
//  Created by yushengliu on 2022/6/22.
//

import UIKit
import SnapKit


protocol  BannerViewDataSource :AnyObject
{
    func numberOfBanners(_ banneview : BannerView)-> Int
    
    func viewForBanner(_ bannerview: BannerView ,index: Int,  convertView: UIView) -> UIView
}

protocol BannerViewDelegate
{
    func didselectBanner(_banner :BannerView, index: Int)
}




class BannerView: UIView{
//                  ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
    
    static var cellId = "bannerViewCellId"

//    var collectionview : UICollectionView
//    var flowLayout : UICollectionViewFlowLayout  //布局
//    var pagecontroller : UIPageControl  //指示
    
    
    
    weak var datasource: BannerViewDataSource!
//    weak var delegate: BannerViewDelegate?
    
    
    
//    func collectionView(_ collectionView: UIC ollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 1
//    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//    }
    



}
