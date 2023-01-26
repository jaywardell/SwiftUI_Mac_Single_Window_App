//
//  ContentView.swift
//  SwiftUI_Mac_Single_Window_App
//
//  Created by Joseph Wardell on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    
    let title = "This is a single-window app."
    let explanation =
"""
Its File Menu has no menu item for creating a New Window.

Also, its Window menu doesn't include a list of windows because the app only has the one window.

If you close this window, the app quits immediately.

This isn't done with hacks.  It's actually a feature of SwiftUI on macOS.

You get all of this behavior for free when you use the Window scene instead of WindowGroup.

You can read all about it at the following blog post.
"""
    
    // TODO: put up a real blog post and update this URL
    let blogpostURL = URL(string: "https://jaywardell.me")!
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.bottom)

            Text(explanation)
                .font(.body)
            
            Link(destination: blogpostURL) {
                Text(blogpostURL.description)
            }
        }
        .fixedSize()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
