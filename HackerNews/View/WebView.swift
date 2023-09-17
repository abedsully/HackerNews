//
//  WebView.swift
//  HackerNews
//
//  Created by Stefanus Albert Wilson on 9/17/23.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
