//
//  ViewController.swift
//  ReviewTest
//
//  Created by Eunchan Kim on 2023/06/26.
//

import UIKit
import StoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    @IBAction func btn(_ sender: Any) {
        showReviewPopup()
    }
    
    func showReviewPopup() {
        let alertController = UIAlertController(title: "Rate the App", message: "Enjoying the app? Please rate us on the App Store!", preferredStyle: .alert)
        
        let starAction = UIAlertAction(title: "Tap to give us 5 stars", style: .default) { _ in
            // 별표를 탭한 후 실행할 동작
            // 여기에 별표를 탭한 경우의 로직을 추가하세요
            self.sendReview()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(starAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func sendReview() {
        let appId = "1667770546"
        let url = "itms-apps://itunes.apple.com/app/" + appId;
        if let url = URL(string: url), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
        // 리뷰를 보내는 로직을 구현
        // 예를 들어 앱스토어 링크로 리다이렉션할 수 있습니다.
//        guard let writeReviewURL = URL(string: "https://apps.apple.com/app/idcom.kec.MaginotLine?action=write-review") else { return }
//        UIApplication.shared.open(writeReviewURL)
    }
}



