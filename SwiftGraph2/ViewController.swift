//
//  ViewController.swift
//  SwiftGraph2
//
//  Created by Marcelo Sampaio on 25/01/19.
//  Copyright © 2019 EIG Mercados. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    
    // MARK: - Outlets
    @IBOutlet weak var lineChartView: LineChartView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - UI Actions
    @IBAction func lineChartAction(_ sender: Any) {
        lineChartData()
    }
    
    private func lineChartData() {
        let count = 20
        var values = [ChartDataEntry]()
        
        
        for i in 1...count {
            let x : Double = Double(i) * 1.3
            let y : Double = (Double(i) * 3) * 3.4
            
            let value = ChartDataEntry(x: x, y: y)
            values.append(value)
            
        }
        
        
        
//        let values = (0..<count).map { (i) -> ChartDataEntry in
//            let val = Double(arc4random_uniform(UInt32(count)) + 3)
//            return ChartDataEntry(x: Double(i), y: val)
//        }
        let set1 = LineChartDataSet(values: values, label: "DS1")
        let data = LineChartData(dataSet: set1)
        
        self.lineChartView.data = data
        
    }
}

