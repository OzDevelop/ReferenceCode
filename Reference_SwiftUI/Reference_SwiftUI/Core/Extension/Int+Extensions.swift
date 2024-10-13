//
//  Int+Extensions.swift
//  Reference_SwiftUI
//
//  Created by 변상필 on 10/13/24.
//

import Foundation

extension Int {
    //MARK: - 숫자 천 단위마다 문자열에 콤마(,) 추가하기
  public func toStringWithComma() -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    
      return numberFormatter.string(from: NSNumber(value: self)) ?? "0"

  }
}
