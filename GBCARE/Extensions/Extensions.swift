//
//  Extensions.swift
//  CustomerApp
//
//  Created by webskitters on 9/25/18.
//  Copyright © 2018 webskitters. All rights reserved.
//

import Foundation
import UIKit
//import SDWebImage

extension UIApplication {
    
    //MARK: STATUS BAR VIEW
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
    
}

extension UILabel{
    
    // SET HEIGHT ACCORDING TO TEXT
    func setHeight()-> CGFloat{
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = self.font
        label.text = self.text
        
        label.sizeToFit()
        
        return label.frame.height
    }
    
    
}
extension UIView {
    
    //MARK: FOR SETTING ROUNDED
    func addCornerRadius(){
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.frame.height / 2
        
    }
    
    //MARK: ADD CORNER RADIUS
    func addCornerRadius(value: CGFloat){
        
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.masksToBounds = true
        self.layer.cornerRadius = value
    }
    
    //MARK: ADD CORNER RADIUS WITH COLOR
    func addCornerRadiusWithColor(value: CGFloat, colorCode: String){
        
        self.layer.borderColor = UIColor(hex: "\(colorCode)").cgColor
        self.layer.borderWidth = 0.5
        self.layer.masksToBounds = true
        self.layer.cornerRadius = value
        
        
        self.layer.cornerRadius = value;
        
        // A thin border.
        self.layer.borderColor = UIColor(hex: "\(colorCode)").cgColor
        self.layer.borderWidth = 0.5;
        
        // Drop shadow.
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 1.0;
        self.layer.shadowRadius = 2.0;
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    //MARK: ADD DROP SHADOW
    func addDropShadow(){
        
        self.layer.masksToBounds = false;
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 1.0;
    }
    
    
    //MARK: ADD DROP SHADOW
    func addDropShadowThin(){
        
        self.layer.masksToBounds = false;
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 0.5;
    }
    
    //MARK: ADD RED DROP SHADOW
    func addRedDropShadow(){
        
        self.layer.masksToBounds = false;
        self.layer.shadowColor = UIColor(hex: "AC175C").cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 4.0;
    }
    
    
    //MARK: SET CORNER RADIUS AND SHADOW
    func setCornerRadiusAndShadow(cornerRadiusValue: CGFloat) {
        // Rounded corners.
        self.layer.cornerRadius = cornerRadiusValue;
        
        // A thin border.
        //  self.layer.borderColor = UIColor.gray.cgColor
        //  self.layer.borderWidth = 0.3;
        
        // Drop shadow.
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 1.0;
        self.layer.shadowRadius = 4.0;
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        
    }
    
    
    //MARK: SET QUESTION BACKGROUND VIEW ONLY
    func setBorder(){
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    //MARK: SET BORDER WITH COLOR
    func setBorderWithColor(hexColor: String){
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(hex: hexColor).cgColor
    }
    
    
    //MARK: SET QUESTION BACKGROUND VIEW ONLY
    func setLightGreyBorder(){
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    //MARK: SET QUESTION BACKGROUND VIEW ONLY
    func setBorderForButton(){
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    
    //MARK: SET QUESTION BACKGROUND VIEW ONLY
    func setWhiteBorder(){
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom.cgColor, colorTop.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = bounds
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
extension UIViewController {
    
    //MARK: HIDE KEYBOARD FROM TAP OUT SIDE
    func hideKeyboardOnTapOutside() {
        
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    // Hide Keyboard
    @objc func dismissKeyboard(){
         UIView.animate(withDuration: 0.3) {
            self.view.endEditing(true)
        }
    }

    
}


extension Int {
    
    //MARK: GENERATE RANDOM DIGIT
    func generateRandomDigits(_ digitNumber: Int) -> String {
        var number = ""
        for i in 0..<digitNumber {
            var randomNumber = arc4random_uniform(10)
            while randomNumber == 0 && i == 0 {
                randomNumber = arc4random_uniform(10)
            }
            number += "\(randomNumber)"
        }
        return number
    }
}

extension UIView {
    
    
    func setRounded() {
        self.layer.cornerRadius = (self.frame.width / 2) //instead of let radius = CGRectGetWidth(self.frame) / 2
        self.layer.masksToBounds = true
    }
    
    //MARK: ADD RED SHADOW
    func addRedShadow(){
        
        self.layer.masksToBounds = false;
        self.layer.shadowColor = UIColor(hex: "ed377c").cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 0.7;
        
    }

}

//MARK: DOWNLOAD IMAGE FROM URL OR STRING
/*extension UIImageView {
    
    func asyncronusImageWith( imageView:UIImageView,  url:String?, _ placeHolderImage:UIImage){
        if let imageUrl = url {
            let imgUrl = URL.init(string: imageUrl)
            imageView.sd_setImage(with: imgUrl, placeholderImage: placeHolderImage, options: .highPriority, completed: nil)
            
        }
        else{
            imageView.image = placeHolderImage
        }
    }
    
    
    
    
}*/

extension UIScreen {
    enum SizeType: CGFloat {
        case Unknown = 0.0
        case iPhone4 = 960.0
        case iPhone5 = 1136.0
        case iPhone6 = 667.0
        case iPhone6Plus = 1920.0
    }
    
    var sizeType: SizeType {
        let height = nativeBounds.height
        guard let sizeType = SizeType(rawValue: height) else { return .Unknown }
        return sizeType
    }
}


extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}


extension UIColor {
    
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}

//MARK: Image Processing
extension UIImage {
    
    //MARK: RESIZED WITH PERCENTAGE
    func resized(withPercentage percentage: CGFloat) -> UIImage? {
        let canvasSize = CGSize(width: size.width * percentage, height: size.height * percentage)
        UIGraphicsBeginImageContextWithOptions(canvasSize, false, scale)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: canvasSize))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    //MARK: RESIZED WIDTH
    func resized(toWidth width: CGFloat) -> UIImage? {
        let canvasSize = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
        UIGraphicsBeginImageContextWithOptions(canvasSize, false, scale)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: canvasSize))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    
    //MARK: RESIZED IMAGE TO I 1 MB
    func resizedTo1MB() -> UIImage? {
        guard let imageData = self.pngData() else { return nil }
        
        var resizingImage = self
        var imageSizeKB = Double(imageData.count) / 1024.0
        
        while imageSizeKB > 1024 {
            guard let resizedImage = resizingImage.resized(withPercentage: 0.9),
                let imageData = resizingImage.pngData()
                else { return nil }
            
            resizingImage = resizedImage
            imageSizeKB = Double(imageData.count) / 1024.0
        }
        
        return resizingImage
    }
}

//MARK: DATE FORMATTER
extension DateFormatter {
    
    //MARK: CONVENINECE INIT
    convenience init (format: String) {
        self.init()
        dateFormat = format
        locale = Locale.current
    
    }
    
}


// MARK: STRING
extension String {
    
    //MARK: TO DATE
    func toDate (format: String) -> Date? {
        return DateFormatter(format: format).date(from: self)
    }
    
    //MARK: DATE TO STRING
    func toDateString (inputFormat: String, outputFormat:String) -> String? {
        if let date = toDate(format: inputFormat) {
            return DateFormatter(format: outputFormat).string(from: date)
        }
        return nil
    }
    
}

extension Date {
    
    //MARK: TO STRING
    func toString (format:String) -> String? {
        return DateFormatter(format: format).string(from: self)
    }
}

//MARK: NULL TO NILL
func nullToNil(value : AnyObject?) -> AnyObject? {
    if value is NSNull {
        return nil
    } else {
        return value
    }
}



extension UITextField {
    
    
    //MARK: SET PLACE HOLDER COLOR
    func setPlaceHolderColor(){
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    // MARK: SET LEFT PADDING POINTS
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
}


//MARK: UITEXT FIELD DELEGATE
extension UITextField{
    
    //MARK: PLACE HOLDER COLOR
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
        
    }
    
}

//MARK: APPLY GRADIENT COLOR
extension UIView {
    
    func applyGradient(colours: [UIColor]) -> Void {
      //  self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
      /*  let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)*/
        
    }
    
    
    //MARK: APPLY BUTTON GRADIENT
    func applyBtnGradient() -> Void {
       // self.applyButtonGradient(locations: nil)
    }
    
    //MARK: APPLY BUTTON GRADIENT COLOR
    func applyButtonGradient(locations: [NSNumber]?) -> Void {
        
      /*  //let colors = [UIColor(hex: "EC367B"), UIColor(hex: "DC1A64"),UIColor(hex: "CF0150")]// ce004f
        let colors = [UIColor(hex: "ed377c"),UIColor(hex: "ce004f")]
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.cornerRadius   =   8
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)*/
    }
    
    
    //MARK: APPLY BUTTON GRADIENT
    func applyBtnGradientForGreyColor() -> Void {
      //  self.applyButtonGradientForGreyColor(locations: nil)
    }
    
    //MARK: APPLY BUTTON GRADIENT COLOR
    func applyButtonGradientForGreyColor(locations: [NSNumber]?) -> Void {
        
     /*   //let colors = [UIColor(hex: "EC367B"), UIColor(hex: "DC1A64"),UIColor(hex: "CF0150")]// ce004f
        let colors = [UIColor(hex: "D0D0D0"),UIColor(hex: "9A9A9A")]
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.cornerRadius   =   4
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)*/
    }
}


//MARK: ROUNDED TO PLACES
extension Double {
    
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
}


//MARK: For Device Token
extension Data {
    var hexString: String {
        let hexString = map { String(format: "%02.2hhx", $0) }.joined()
        return hexString
    }
}



extension UIView {
    // Name this function in a way that makes sense to you...
    // slideFromLeft, slideRight, slideLeftToRight, etc. are great alternative names
    func slideInFromLeft(duration: TimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        // Create a CATransition animation
        let slideInFromLeftTransition = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided (if any)
        if let delegate: AnyObject = completionDelegate {
            slideInFromLeftTransition.delegate = (delegate as! CAAnimationDelegate)
        }
        
        // Customize the animation's properties
        slideInFromLeftTransition.type = CATransitionType.push
        slideInFromLeftTransition.subtype = CATransitionSubtype.fromLeft
        slideInFromLeftTransition.duration = duration
        slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        slideInFromLeftTransition.fillMode = CAMediaTimingFillMode.removed
        
        // Add the animation to the View's layer
        self.layer.add(slideInFromLeftTransition, forKey: "slideInFromLeftTransition")
    }
}

//MARK: ENCODING EMOJI
extension String {
    //MARK: ENCODING EMOJI
    var encodeEmoji: String{
        if let encodeStr = NSString(cString: self.cString(using: .nonLossyASCII)!, encoding: String.Encoding.utf8.rawValue){
            return encodeStr as String
        }
        return self
    }
    
    //MARK: DECODE EMOJI
    var decodeEmoji: String{
        let data = self.data(using: String.Encoding.utf8);
        let decodedStr = NSString(data: data!, encoding: String.Encoding.nonLossyASCII.rawValue)
        if let str = decodedStr{
            return str as String
        }
        return self
    }
    
}




