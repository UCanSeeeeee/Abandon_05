//
//  PostVIPBadge.swift
//  weiboApp
//
//  Created by 王杰 on 2021/12/7.
//

import SwiftUI

struct PostVIPBadge: View {
    let vip:Bool
    var body: some View {
        
        Group {
            if vip {
                Text("v")
                    .bold()
                    .font(.system(size: 11))
                    .frame(width:15,height: 15)
                    .foregroundColor(.yellow)
                    .background(Color.red)
                    .clipShape(Circle())
                    .overlay(
                        RoundedRectangle(cornerRadius: 7.5)
                            .stroke(Color.white,lineWidth: 1)
                    )
            }
        }
       
        
           
    }
}

struct PostVIPBadge_Previews: PreviewProvider {
    static var previews: some View {
        PostVIPBadge(vip:true)
    }
}
