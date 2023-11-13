//
//  ErrorScreen.swift
//  ErrorScreens
//
//  Created by Yunus Emre Taşdemir on 13.11.2023.
//

import SwiftUI

struct ErrorScreen: View {
    var errorType: ErrorType
    var buttonText: String
    var action: () -> ()
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Image(errorType.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(getTitle())
                    .font(.custom("AmericanTypewriter", size: 24))
                    .bold()
                    .padding(.top, 30)
                
                Text(getCaption())
                    .font(.custom("AmericanTypewriter", size: 18))
                    .opacity(0.5)
                    .padding([.leading, .trailing], 50)
                
                Spacer()
                
                Button(action: {
                    action()
                }, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .overlay {
                            Text(buttonText)
                                .font(.custom("AmericanTypewriter", size: 18))
                                .foregroundColor(.white)
                        }
                })
                .frame(height: 70)
                .padding([.leading, .trailing], 20)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    private func getTitle() -> String {
        switch(errorType) {
        case .ConnectionFailed:
            return connectionFailedTitle
        case .BrokenLink:
            return brokenLinkTitle
        case .NoResult:
            return noResultTitle
        case .NotEnoughSpace:
            return notEnoughSpaceTitle
        case .Opps:
            return oppsTitle
        case .PageNotFound:
            return pageNotFoundTitle
        }
    }
    
    private func getCaption() -> String {
        switch(errorType) {
        case .ConnectionFailed:
            return connectionFailedCaption
        case .BrokenLink:
            return brokenLinkCaption
        case .NoResult:
            return noResultCaption
        case .NotEnoughSpace:
            return notEnoughSpaceCaption
        case .Opps:
            return oppsCaption
        case .PageNotFound:
            return pageNotFoundCaption
        }
    }
}

#Preview {
    ErrorScreen(errorType: .PageNotFound, buttonText: "Go Back") {
                
    }
}
