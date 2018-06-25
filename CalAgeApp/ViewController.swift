import UIKit

class ViewController: UIViewController  , UIPickerViewDelegate , UIPickerViewDataSource{
    
    var gender = ["Meal","Femal"]
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var Result: UITextField!
    @IBOutlet weak var genderPicer: UIPickerView!
    @IBOutlet weak var selectgender: UILabel!
    var selectgen = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    genderPicer.dataSource = self
    genderPicer.delegate = self
        }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectgen  = row
        return gender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectgender.text = gender[row]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BestWeight(_ sender: UIButton) {
        let age:Int = Int(ageText.text!)!
        let hieght:Int = Int(heightText.text!)!
        var result  = hieght*10 - (age/5)
        if selectgen == 0 {
            result += 10
        }else{
            result -= 10
        }
        Result.text = "the best weight is \(result)"
        
        
    }
    
}

