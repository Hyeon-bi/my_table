//
//  loginPage.swift
//  my_table
//
//  Created by snlcom on 2023/08/12.
//

import SwiftUI

struct loginPage: View {
    
    @State private var email:String = ""
    @State private var password:String = ""
    var body: some View {
        
        VStack{
            Image("logo")
                .resizable()
                .frame(width: 150,height: 150)
                .cornerRadius(100)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.black, lineWidth: 2)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 25, trailing: 0))
            
            Text("Sign in")
            
            
            HStack{
                Image(systemName: "envelope")
                    .resizable()
                    .frame(width: 20, height: 20)
                TextField("ID / E-mail Address" , text:$email)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    .frame(width: 300, height: 70)
            }
            
            HStack{
                Image(systemName: "lock")
                    .resizable()
                    .frame(width: 20, height: 20)
                TextField("Password" , text:$password)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    .frame(width: 300, height: 70)
                
            }
            
            Button("Forgot password?"){}
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 25, trailing: 0))
            
            Button(action:{
                
            },label:{Text("Sign in")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 30)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.blue))
                
            }) .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            Divider()
            Button(action:{
            },label:{Text("Sign up")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 30)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.blue))
                
            })
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
            
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
        
    }
    
}



struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        loginPage()
    }
}
