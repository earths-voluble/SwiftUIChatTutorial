//
//  RegistrationView.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/02/18.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            
            NavigationLink(
                destination: ProfilePhotoSelectorView(),
                isActive: $viewModel.didAuthenticateUser,
                label: { })
            
            VStack(alignment: .leading, spacing: 10) {
                HStack { Spacer() }
                
                Text("계정을 만들어서")
                    .font(.largeTitle)
                    .bold()
//                        .shadow(color: .gray, radius: 10, x: 0.0, y: 10)
                
                Text("소통을 시작하세요.")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                    .padding(.bottom, 32)
//                        .shadow(color: .gray, radius: 10,x: 0.0, y: 10)
                
                VStack(spacing: 40) {
                    CustomTextField(imageName: "envelope",
                                    placeholderText: "이메일",
                                    isSecureField: false,
                                    text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    CustomTextField(imageName: "lock",
                                    placeholderText: "비밀번호",
                                    isSecureField: true,
                                    text: $password)

                    CustomTextField(imageName: "person",
                                    placeholderText: "이름",
                                    isSecureField: false,
                                    text: $fullname)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    CustomTextField(imageName: "person",
                                    placeholderText: "닉네임",
                                    isSecureField: false,
                                    text: $username)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()

                }
                .padding([.top, .horizontal], 32)
            }
            .padding(.leading)
            
            Button(action: {
                viewModel.register(withEmail: email,
                                   password: password,
                                   fullname: fullname,
                                   username: username)
            }, label: {
                Text("가입하기")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            })
            .padding(.top, 24)
            .shadow(color: .gray, radius: 10, x: 0.0, y:10)
            
            Spacer()
            
            Button(action: { mode.wrappedValue.dismiss() }, label: {
                HStack {
                    Text("이미 계정이 있으신가요?")
                        .font(.system(size: 14))
                    Text("로그인하세요.")
                        .font(.system(size: 14, weight: .semibold))
                }
            })
            .padding(.bottom, 32)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
