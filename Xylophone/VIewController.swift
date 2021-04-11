import UIKit
import AVFoundation

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var player: AVAudioPlayer!

    @IBAction func notePressed(_ sender: UIButton) {
        
        let wavName = "note\(sender.tag)"
        
        let url = Bundle.main.url(forResource: wavName, withExtension: "wav")
        
        do{
        player = try AVAudioPlayer(contentsOf: url!)
            player.play()
        }catch{
            print(error)
        }
    }
    
}

