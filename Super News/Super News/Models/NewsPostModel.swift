//
//  NewsPostModel.swift
//  Super News
//
//  Created by Jeffrey Ip on 26/10/2021.
//

import Foundation
import UIKit
import SDWebImage

struct NewsPostModel {
    let author : String = "Oscar Ces"
    let title : String = "Department found that Professor Joao has a micro dick"
    let description : String = "Last Wednesday while Oscar Ces was peeing he saw Joao's super tiny penis and called an ambulance for him. The department is now under scrutiny for hiring such a professor."
    let content : String = """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a pellentesque purus. Fusce malesuada nec ex commodo dapibus. In sed porttitor enim, eget vulputate leo. Nulla sagittis nulla eros, in tincidunt erat posuere non. Nulla quis velit finibus, cursus augue vitae, laoreet dui. Ut pellentesque nunc non facilisis maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla odio mi, at tempus ante luctus a. Mauris dui mi, gravida varius mi a, eleifend malesuada augue. Donec non tortor nisi. Praesent risus purus, tempus id diam sit amet, suscipit venenatis ex. Nunc convallis magna et euismod convallis. Aliquam vel varius lorem. Aliquam hendrerit magna at ullamcorper pharetra. Duis et erat et metus rhoncus consequat.
    
    Nunc eleifend congue nibh id volutpat. Maecenas interdum purus eu eros cursus auctor. Nunc porta neque velit. Aliquam erat volutpat. Phasellus non erat id augue tempus pharetra at quis tortor. Integer finibus arcu sit amet est lobortis maximus. Praesent libero metus, aliquam cursus ante eget, luctus varius augue. Ut eu bibendum lacus, id aliquet tortor. Nam ullamcorper placerat ultricies. Sed tincidunt, eros tempor porta mattis, arcu ligula gravida sapien, at convallis nisl risus non eros.

    In in augue at turpis lobortis mattis. Aenean dapibus viverra purus quis vulputate. Quisque in molestie erat. In aliquet, ante ac volutpat convallis, ligula dui auctor enim, nec maximus arcu justo nec nunc. Suspendisse maximus auctor felis, a aliquet purus consequat vel. Morbi id faucibus magna, mollis placerat nibh. Cras vel orci in nulla sagittis volutpat eu et nunc.

    Mauris nec condimentum ex. Vivamus sed tincidunt lectus. Etiam sodales, velit ac tincidunt ultricies, magna purus fringilla tortor, vel lobortis enim lorem vel sapien. Sed lobortis lacinia neque nec sodales. Integer sagittis leo lectus, in mattis dui volutpat eget. Aenean interdum turpis mauris, id convallis lorem vehicula et. Morbi in lorem id lorem vulputate feugiat in a odio. Cras tristique auctor mi non aliquam. Nulla non lectus sapien. Donec rutrum ornare facilisis. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse ac turpis non tortor eleifend mattis in vel risus. Duis accumsan lobortis orci et porta. Quisque bibendum nec sem in laoreet.

    Cras molestie molestie enim, in pellentesque nulla mattis quis. Vivamus nec hendrerit tortor. Proin laoreet porttitor sem ut faucibus. Morbi lacus neque, porta a velit in, dignissim vehicula dui. Quisque id metus iaculis, euismod justo sit amet, feugiat leo. Ut nulla massa, tempus ac auctor nec, mattis in mauris. Integer ultricies pellentesque eros, a sollicitudin nulla dictum id. Quisque cursus rutrum risus, at ultricies felis iaculis et. Integer sed tincidunt risus. Cras finibus quis turpis vitae lobortis. Nulla facilisi. Praesent tincidunt a purus ac maximus. Aliquam erat volutpat. Aenean accumsan ornare risus, vel feugiat libero fringilla vitae. Maecenas cursus porttitor elit at facilisis.
"""
    let thumbnailURL : String = "https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/amp_blog_image_large/public/blog/csm-blog/breaking-news-blog-1138x658-1.jpg"
    let thumbnailImageView : UIImageView?
    let publishedAt : Date = Date()
}
