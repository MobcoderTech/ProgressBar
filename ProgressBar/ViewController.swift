//
//  ViewController.swift
//  ProgressBar
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var progressBar:UIProgressView!

    var progressTimer:Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //-- Few Configurable properties of progress bar
        progressBar.progressTintColor = .green
        progressBar.trackTintColor = .blue

        //progressBar.progressImage = // Some UIImage you can pass here
        //progressBar.trackImage = //Some UIImage you can pass

        self.progressTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateProgressBar), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateProgressBar(){
        self.progressBar.progress += 0.1
        if(self.progressBar.progress == 1.0)
        {
            self.progressBar.removeFromSuperview()
        }

    }
}

