//
//  UIview.swift
//  seamdemo
//
//  Created by Chloe Posthuma Coelho on 10/30/22.
//
import UIKit
extension UIView{
   @IBInspectable var cornerRadius: CGFloat{
       get{ return cornerRadius}
       set{
           self.layer.cornerRadius = newValue
       }
       }
    }


