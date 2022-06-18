//
//  FakeData.swift
//  MallSwiftTest
//
//  Created by yushengliu on 2022/6/2.
//

import Foundation
class FakeData{
    
    static var bannerList = [String]()
    static var product = [Product]()
    static var deals = [Deal]()
    
    
    static func createBanners() -> [String] {
        if bannerList.count == 0
        {
            bannerList = ["https://static001.geekbang.org/resource/image/30/86/307332b7ba9556ba1e38c358ad6aab86.jpg",
                          "https://static001.geekbang.org/resource/image/4e/c5/4ea96e35e97f37914c1703d1cf4b69c5.jpg",
                          "https://static001.geekbang.org/resource/image/f7/b4/f79b1fcb2e9eeb1002fd7db4b4fd10b4.jpg"
            ]
            
        }
        return bannerList;
    }
    
    func createproducts() -> [String:String] {
        
        var  product1 = [String:String]()
         if product1.count == 0
        {
            product1 = ["key":"1"]


        }
        return product1;
    }
    

    
    
}
