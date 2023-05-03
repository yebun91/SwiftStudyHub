//
//  TipDataBrain.swift
//  Tipsy
//
//  Created by rgorithm_mactest on 2023/05/03.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

struct TipDataBrain {
    var tipData: TipData?
    var result : Float = 0.0
    
    mutating func calculate (bill: Float, select: Float, ct: Int) {
        tipData = TipData(billAmount: bill, selectedPct: select, count: ct)
        result = (tipData?.billAmount ?? 0) * (tipData?.selectedPct ?? 0) / Float(tipData?.count ?? 0)
    }
    
    func getResult() -> String {
        return String(format: "%.2f", result)
    }
    
    func getTipData() -> TipData{
        return tipData!
    }
}
