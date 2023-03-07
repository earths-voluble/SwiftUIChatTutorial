//
//  LoginView.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/02/18.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack { Spacer() }
                    
                    Text("안녕하세요.")
                        .font(.largeTitle)
                        .bold()
//                        .shadow(color: .gray, radius: 10, x: 0.0, y: 10)
                    
                    Text("환영합니다.")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.blue)
                        .padding(.bottom, 32)
//                        .shadow(color: .gray, radius: 10,x: 0.0, y: 10)
                    
                    VStack(spacing: 40) {
                        CustomTextField(imageName: "envelope",
                                        placeholderText: "Email",
                                        isSecureField: false,
                                        text: $email)
                        CustomTextField(imageName: "lock",
                                        placeholderText: "Password",
                                        isSecureField: true,
                                        text: $password)
                    }
                    .padding([.top, .horizontal], 32)
                }
                .padding(.leading)
                
                HStack {
                    Spacer()
                    
                    NavigationLink(
                        destination: Text("Reset Password"),
                        label: {
                            Text("비밀번호 찾기")
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
//                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                }

                Button(action: {
                    print("Handle sign in")
                }, label: {
                    Text("로그인")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y:10)
                
                Spacer()
                
                NavigationLink(
                    destination: RegistrationView()
                        .navigationBarBackButtonHidden(true),
                    label: {
                        HStack {
                            Text("아이디가 없으신가요?")
                                .font(.system(size: 14))
                            Text("가입하기")
                                .font(.system(size: 14, weight: .semibold))
                        }
                    }).padding(.bottom, 32)
            }
        }
        .padding(.top, -56)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
