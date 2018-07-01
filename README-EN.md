# Let's make app in an hour
## Counter App

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/sample.png" width="50%" height="50%"/></div>

##  Meetup
  http://www.meetup.com/ios-dev-in-namba/

## Tutor
  http://learning-ios-dev.esy.es/

## Contact Us
  http://geelive-inc.com

## Development Environment
  Xcode 9.4 / Swift 4.1

  ・<a href="https://github.com/learn-co-students/reading-ios-intro-to-xcode-qa-public-001">What is Xcode?</a>

## Full procedure

## 0, Create Project

> 0-1. Open Xcode
>
> 0-2. Select "Create a new Xcode project"
>
> 0-3. Select "Single View Application" and then tap "Next"
>
> 0-4. Fill "Product name" and then tap "Next"
>
> 0-5. Select the place for saving your project and then tap "Create"


## 1, Design App
#### 🗂 Main.storyboard

1-1. Let's add UIButton（plus button, minus button）
> <details><summary>details</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/1.gif" /></div><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/2.gif" /></div></details>

1-2. Let's add UILabel（for display a number）
> <details><summary>details</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/3.gif" /></div></details>

## 2, Connect class to storyboard

#### 🗂 Main.storyboard -> ViewController.swift

2-1. Connect class to storyboard （UIButton connection:action）

★ Drag while pressing control
> <details><summary>details</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/4.gif" /></div></details>

2-2. Connect class to storyboard （UILabel connection:Outlet）

★ Drag while pressing control
> <details><summary>details</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/5.gif" /></div></details>

## 3, Add logic

You complete the UI. Great job! Last section is coding part for adding logic.

#### 🗂 ViewController.swift


```Swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(_ sender: UIButton) {
        let iNum: Int = Int(num.text!)!
        let iNumPlus: Int = iNum + 1
        num.text = "\(iNumPlus)"
    }

    @IBAction func minus(_ sender: UIButton) {
        let iNum: Int = Int(num.text!)!
        let iNumMinus: Int = iNum - 1
        num.text = "\(iNumMinus)"
    }
}
```

## 4, Additional work

> 4-1. Let's Add Reset Button(To change the number to 0)

