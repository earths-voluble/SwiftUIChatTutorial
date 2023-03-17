//
//  ImageUploader.swift
//  SwiftUIChatTutorial
//
//  Created by 이보한 on 2023/03/12.
//

import FirebaseStorage
import UIKit

struct ImageUploader {
    
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error {
                print("DEBUG: \(error.localizedDescription)에러로 이미지를 업로드하는 데 실패했습니다.")
                return
            }
            
            print("DEBUG: FIREBASE에 성공적으로 이미지 업로드 완료")
            
            ref.downloadURL { url, _ in
                guard let imageUrl = url?.absoluteString else { return }
                completion(imageUrl)
            }
        }

    }
    
}
