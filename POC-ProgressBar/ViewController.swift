//
//  ViewController.swift
//  POC-ProgressBar
//
//  Created by Luca Hummel on 25/06/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressView: UIProgressView!
    
    
    var progresso = Progress(totalUnitCount: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progressView.transform = progressView.transform.scaledBy(x: 1, y: 5)
    }

    @IBAction func didTapStartProgress(_ sender: Any) {
        if progresso.isFinished { // reiniciando o progresso
            progressView.progress = 0
            progresso = Progress(totalUnitCount: 10)
        } else {
            self.progresso.completedUnitCount += 1

            let progressFloat = Float(self.progresso.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
        }
        
//        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
//            guard self.progresso.isFinished == false else {
//                timer.invalidate()
//                return
//            }
//
//            self.progresso.completedUnitCount += 1
//
//            let progressFloat = Float(self.progresso.fractionCompleted)
//            self.progressView.setProgress(progressFloat, animated: true)
//
//        }
    }
    
}

