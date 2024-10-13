//
//  String+Extensions.swift
//  Reference_SwiftUI
//
//  Created by 변상필 on 10/13/24.
//

import Foundation

extension String {
  // MARK: - 휴대폰 번호 검증 로직
  public func validatePhone(number: String) -> Bool {
    let regex = "^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$"
    return NSPredicate(format: "SELF MATCHES %@", regex)
      .evaluate(with: number)
  }
    
    // MARK: - 휴대폰 번호 하이픈 추가
    public var withHypen: String {
      var stringWithHypen: String = self
      
      stringWithHypen.insert("-", at: stringWithHypen.index(stringWithHypen.startIndex, offsetBy: 3))
      stringWithHypen.insert("-", at: stringWithHypen.index(stringWithHypen.endIndex, offsetBy: -4))
      
      return stringWithHypen
    }
}
