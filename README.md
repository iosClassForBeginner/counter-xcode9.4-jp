# 第23回: １時間でiPhoneアプリを作ろう
## カウンターアプリ

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/sample.png" width="50%" height="50%"/></div>

  当アカウントへ訪れていただき、誠にありがとうございます。第23回アプリ教室では、カウンターアプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。

## アプリ教室に興味ある方、歓迎します。
  Meetup
  http://www.meetup.com/ios-dev-in-namba/

## 別途アプリ教室(有料)も開いております
  http://learning-ios-dev.esy.es/

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com

## 開発環境
  Xcode 9.4 / Swift 4.1

  ・<a href="https://github.com/learn-co-students/reading-ios-intro-to-xcode-qa-public-001">What is Xcode?</a>

## アプリ作成手順

## 0, プロジェクト作成

> 0-1. Xcodeを起動。
>
> 0-2. "Create a new Xcode project"を選択。
>
> 0-3. "Single View Application"を選択して"Next"をクリック。
>
> 0-4. "Product name"を適当に入力して"Next"をクリック。
>
> 0-5. プロジェクトの場所を指定して"Create"をクリック。

## 1, アプリをデザインする。
#### 🗂 Main.storyboard

1-1. UIButton を storyboad に追加（プラスボタン、マイナスボタン）
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/1.gif" /></div><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/2.gif" /></div></details>

1-2. UILabel を storyboad に追加（数値を表示する為のラベル）
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/3.gif" /></div></details>

## 2, UILabel を "ViewController.swift" に紐付ける

#### 🗂 Main.storyboard -> ViewController.swift

2-1. UIButton を "ViewController.swift" に紐付ける（connection を actionにする）

★ controlを押しながらドラッグ
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/4.gif" /></div></details>

2-2. UILabel を "ViewController.swift" に紐付ける（connection を Outlet にする）

★ controlを押しながらドラッグ
> <details><summary>詳細画像をみる</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/counter-xcode9.4-jp/blob/master/Assets/5.gif" /></div></details>

## 3, 下記のコードを"ViewController.swift"に追加

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

## 4, 追加課題

> 4-1. 数値を0に戻すリセットボタンを追加してみよう

