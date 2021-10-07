//
//  LoadingView .swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text("Fetching Trivia Questions")
        }
    }
}

struct LoadingView__Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
