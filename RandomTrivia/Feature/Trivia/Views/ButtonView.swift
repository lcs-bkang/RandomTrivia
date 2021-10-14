//
//  ButtonView.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-14.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var vm = TriviaViewModelImpl(service: TriviaServiceImpl())
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                
                Button(action: {
                    
                }, label: { Text(Trivia.dummyData.results[0].correct_answer)
                        .font(.title2)
                        .bold()
                        .padding(40)
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.purple)
                                .frame(width: 380, height: 110, alignment: .center))
                })
            }
                ZStack {
                    
                    Button(action: {
                        
                    }, label: { Text(Trivia.dummyData.results[0].incorrect_answers[0])
                            .font(.title2)
                            .bold()
                            .padding(40)
                            .foregroundColor(.black)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color.purple)
                                    .frame(width: 380, height: 110, alignment: .center))
                    })
                }
            ZStack {
                
                Button(action: {
                    
                }, label: { Text(Trivia.dummyData.results[0].incorrect_answers[1])
                        .font(.title2)
                        .bold()
                        .padding(40)
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.purple)
                                .frame(width: 380, height: 110, alignment: .center))
                })
            }
            ZStack {
                
                Button(action: {
                    
                }, label: { Text(Trivia.dummyData.results[0].incorrect_answers[2])
                        .font(.title2)
                        .bold()
                        .padding(40)
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.purple)
                                .frame(width: 380, height: 110, alignment: .center))
                })
            }
            }
        }
    }
    
    
    struct ButtonView_Previews: PreviewProvider {
        static var previews: some View {
            ButtonView()
        }
    }
