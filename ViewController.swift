import UIKit

class ViewController: UIViewController {

@IBOutlet var slider: UISlider!
//create a variable that can hold the value of the slider
var currentValue: Int = 0
  
//create a variable to hold the target value
  var targetValue: Int = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    
    currentValue = lroundf(slider.value)
    
    //call startNewRound
    startNewRound()
    
    
    }


  }
@IBAction func myGuessButtonPressed(_ sender: Any) {
  //1. create alert view
  let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)
  
  //2. button that user taps to dismiss view controller
  let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
  
  //3. add the button to the alertview
  alert.addAction(action)
  
  //4. present alertview on the screen
  present(alert, animated: true, completion: nil)
  
  startNewRound()
  
@IBAction func myGuessButtonPressed(_ sender: Any) {
  //5. New variable message that displays a message that includes currentValue
  let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
}
  @IBAction func sliderHasMoved(_ sender:Any) {
  
  print("The value of the slider is:\(slider.value)")
  currentValue = lroundf(slider.value)
  
  func startNewRound() {
    targetValue = Int.random(in: 0...100)
    currentValue = lroundf(slider.value)
    
  }
}
  
  
