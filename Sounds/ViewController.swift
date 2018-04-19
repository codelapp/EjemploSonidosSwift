import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
     
    }


    @IBAction func botones(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            imagen.image = UIImage(named: "perro")
            sonidos(sonido: "perro")
        case 2:
            imagen.image = UIImage(named: "gato")
            sonidos(sonido: "gato")
        case 3:
            imagen.image = UIImage(named: "elefante")
            sonidos(sonido: "elefante")
        case 4:
            imagen.image = UIImage(named: "avion")
            sonidos(sonido: "avion")
        case 5:
            imagen.image = UIImage(named: "carro")
            sonidos(sonido: "carro")
        case 6:
            imagen.image = UIImage(named: "moto")
            sonidos(sonido: "moto")
        case 7:
            imagen.image = UIImage(named: "tren")
            sonidos(sonido: "train")
        case 8:
            imagen.image = UIImage(named: "gallo")
            sonidos(sonido: "Gallo")
        case 9:
            imagen.image = UIImage(named: "pato")
            sonidos(sonido: "pato")
        default:
            print("no hay mas")
        }
        
    }
    
    func sonidos(sonido: String){
        do {
            let audioPath = Bundle.main.path(forResource: sonido, ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            player.play()
        } catch let error as NSError {
            print("hubo un error", error)
        }
    }
    

}

