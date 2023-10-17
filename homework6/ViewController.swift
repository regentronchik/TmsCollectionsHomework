//
//  ViewController.swift
//  homework6
//
//  Created by Алексей Козел on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var someArray = ["one", "tw", "sevenel", "fi ve", "max symbols string eleme nt", " medi um string el", "1s"]
        var emptyArray = [String]()
        var i = 0
        var counter = 0
        var eachElementCounter = 0
        
        //first task via cycle for - high level functions below
        for character in someArray{
            eachElementCounter = 0
            for character in someArray[i]{
                counter += 1
                print("Number of symbol - \(counter), symbol: \(character)")
                eachElementCounter += 1
            }
            if eachElementCounter < 5 {
                
            }else if eachElementCounter > 10 {
                emptyArray.append(someArray[i])
            }
            i += 1
        }
        print("\n Total number is \(counter)\n ")
        print("\n Symbols > 10 in \(emptyArray.count) elements")
        let sortD = someArray.sorted() { $0.count < $1.count } // сортировка первоначального массива
        print("\n Sorted array:",sortD)
        let maxEl = someArray.max() { $0.count < $1.count} // максимальный элемент в первоначальном массиве
        print("\n String element with the biggest symbol: \(maxEl)")
        print("Array without spaces:", someArray.description.replacingOccurrences(of: " ", with: ""))
        print("\n\n")
        
        //task via high func
        let arrayFunc = someArray.reduce(0) { $0 + $1.count }
        print("Total number version 2 :",arrayFunc)
        let ar = someArray.filter { $0.count > 5 } //вернул все эл. которые больше 5,т.e выбросил<5
        print("Quantity > 10 - \(ar.filter { $0.count > 10 }.count) \n Max symbols - \(ar.max() { $0.count < $1.count}) \n Sorted array without 'spaces' - \(ar.sorted() { $0.count < $1.count }.description.replacingOccurrences(of: " ", with: "")) ")
        
    }
    
}
