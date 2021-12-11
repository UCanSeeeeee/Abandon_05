//
//  PostListView.swift
//  weiboApp
//
//  Created by 王杰 on 2021/12/10.
//

import SwiftUI


struct PostListView: View {
    init(){
        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
        List{
            ForEach(postList.list,id:\.id) {
            post in PostCell(post: post)
                    
                }
            .listRowInsets(EdgeInsets())
            .buttonStyle(BorderlessButtonStyle())
        }
    }
        
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
