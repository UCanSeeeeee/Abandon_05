//
//  Post.swift
//  weiboApp
//
//  Created by 王杰 on 2021/12/7.
//

import SwiftUI

struct PostList: Codable{
    var list:[Post]
}


// Data model
struct Post: Codable{
    //property 属性
    let id:Int
    let avatar:String
    let vip:Bool
    let name:String
    let date:String
    
    var isFollowed:Bool
    
    let text:String
    let images:[String]
    
    var commentCount:Int
    var likeCount:Int
    var isLiked:Bool
    }

extension Post {
    var avatarImage:Image{
        return loadImage(name: avatar)
    }
    var commentCountText:String {
        if commentCount<=0 { return "评论" }
        if commentCount<=1000 { return "\(commentCount)" }
        return String(format: "%.1fk", Double(commentCount) / 1000)
    }
    var likeCountText:String {
        if likeCount<=0 {return "点赞" }
        if likeCount<=1000 { return "\(likeCount)"}
        return String(format: "%.1fk", Double(likeCount)/1000)
    }
}

let postList = loadPostListData("PostListData_recommend_1.json")

func loadPostListData(_ fileName:String) -> PostList {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("..")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("...")
    }
    guard let list = try? JSONDecoder().decode(PostList.self, from: data) else {
        fatalError("....")
    }
    return list
}

func loadImage(name:String) -> Image{
    return Image(uiImage: UIImage(named: name)!)
}
