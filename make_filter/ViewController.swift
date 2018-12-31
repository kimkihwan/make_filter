//
//  ViewController.swift
//  filters
//
//  Created by kihwan kim on 09/12/2018.
//  Copyright © 2018 kihwan kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {//, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var input: UIImageView!
        override func viewDidLoad() {
        super.viewDidLoad()
        filter_on()
    }
    
    func filter_on() {
        let inputCIImage = CIImage(image: input.image!)!
        let outputImage = inputCIImage
//            .applyingFilter(
//                "CIColorClamp",
//                parameters: [
//                    "inputMinComponents": CIVector(x: 0, y: 0, z: 0, w: 0),
//                    "inputMaxComponents": CIVector(x: 1, y: 1, z: 1, w: 1)
//                ])
//            .applyingFilter(
//                "CIColorControls",
//                parameters: [
//                    kCIInputSaturationKey: 0.0,
//                    kCIInputBrightnessKey: 0.0,
//                    kCIInputContrastKey: 0.0
//                ])
//            .applyingFilter(
//                "CIColorMatrix",
//                parameters: [
//                    "inputRVector": CIVector(x: 1, y: 0, z: 0, w: 0),
//                    "inputGVector": CIVector(x: 0, y: 1, z: 0, w: 0),
//                    "inputBVector": CIVector(x: 0, y: 0, z: 1, w: 0),
//                    "inputAVector": CIVector(x: 0, y: 0, z: 0, w: 1),
//                    "inputBiasVector": CIVector(x: 0, y: 0, z: 0, w: 0)
//                ])
//            .applyingFilter(
//                "CIColorPolynomial",
//                parameters: [
//                    "inputRedCoefficients": CIVector(x: 1, y: 0, z: 0, w: 0),
//                    "inputGreenCoefficients": CIVector(x: 0, y: 1, z: 0, w: 0),
//                    "inputBlueCoefficients": CIVector(x: 0, y: 0, z: 1, w: 0),
//                    "inputAlphaCoefficients": CIVector(x: 0, y: 0, z: 0, w: 1)
//                    ])
//            .applyingFilter(
//                "CIExposureAdjust",
//                parameters: [
//                    kCIInputEVKey: 0.0
//                ])
//            .applyingFilter(
//                "CIGammaAdjust",
//                parameters: [
//                    "inputPower": 0.0
//                ])
//            .applyingFilter(
//                "CIHueAdjust",
//                parameters: [
//                    kCIInputAngleKey: 0.0
//                ])
//            .applyingFilter(
//                "CILinearToSRGBToneCurve")
//            .applyingFilter(
//                "CISRGBToneCurveToLinear")
//            .applyingFilter(
//                "CITemperatureAndTint",
//                parameters: [
//                    "inputNeutral": CIVector(x: 6500, y: 0),
//                    "inputTargetNeutral": CIVector(x: 6500, y: 0)
//                ])
//            .applyingFilter(
//                "CIToneCurve",
//                parameters: [
//                    "inputPoint0": CIVector(x: 0, y: 0),
//                    "inputPoint1": CIVector(x: 0.25, y: 0.25),
//                    "inputPoint2": CIVector(x: 0.5, y: 0.5),
//                    "inputPoint3": CIVector(x: 0.75, y: 0.75),
//                    "inputPoint4": CIVector(x: 1, y: 1)
//                ])
//            .applyingFilter(
//                "CIVibrance",
//                parameters: [
//                    "inputAmount": 0
//                ])
//            .applyingFilter(
//                "CIWhitePointAdjust",
//                parameters: [
//                    kCIInputColorKey: CIColor(red: 0, green: 0, blue: 0, alpha: 0)
//                ])
//            .applyingFilter(
//                "CIColorCrossPolynomial",
//                parameters: [
//                    "inputRedCoefficients": CIVector(values: [1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 10),
//                    "inputGreenCoefficients": CIVector(values: [0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 10),
//                    "inputBlueCoefficients": CIVector(values: [0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 10)
//                ])
//            .applyingFilter(
//                "CIPhotoEffectChrome")
//            .applyingFilter(
//                "CIPhotoEffectFade")
//            .applyingFilter(
//                "CIPhotoEffectInstant")
//            .applyingFilter(
//                "CIPhotoEffectProcess")
//            .applyingFilter(
//                "CIPhotoEffectTransfer")
//            .applyingFilter(
//                "CIMaximumComponent")
//            .applyingFilter(
//                "CIMinimumComponent")
//            .applyingFilter(
//                "CIAreaAverage",
//                parameters: [
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4)
//                ])
//            .applyingFilter(
//                "CIAreaHistogram",
//                parameters: [
//                    "inputCount": 64,
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4),
//                    "inputScale": 1
//                ])
//            .applyingFilter(
//                "CIRowAverage",
//                parameters: [
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4)
//                ])
//            .applyingFilter(
//                "CIColumnAverage",
//                parameters: [
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4)
//                ])
//            .applyingFilter(
//                "CIAreaMaximum",
//                parameters: [
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4)
//                ])
//            .applyingFilter(
//                "CIAreaMinimum",
//                parameters: [
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4)
//                ])
//            .applyingFilter(
//                "CIAreaMaximumAlpha",
//                parameters: [
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4)
//                ])
//            .applyingFilter(
//                "CIAreaMinimumAlpha",
//                parameters: [
//                    "inputExtent": CIVector(values: [0.0, 0.0, 0.0, 0.0], count: 4)
//                ])
//            .applyingFilter(
//                "CISharpenLuminance",
//                parameters: [
//                    "inputSharpness": 0.4
//                ])
//            .applyingFilter(
//                "CIUnsharpMask",
//                parameters: [
//                    "inputRadius": 2.5,
//                    "inputIntensity": 0.5
//                ])
//            .applyingFilter(
//                "CIHighlightShadowAdjust",
//                parameters: [
//                    "inputHighlightAmount": 0.0,
//                    "inputShadowAmount": 0.0
//                ])
        
        input.image = UIImage(ciImage: outputImage)
    }
    
    
    
}
