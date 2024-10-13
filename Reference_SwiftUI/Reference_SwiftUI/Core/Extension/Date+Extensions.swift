//
// Swift에서 기본으로 제공하는 날짜를 다루기 위한 Date 구조체 타입
//
import Foundation

extension Date {
  // MARK: - 기본 & 짧은 날짜 표시
  public var basic: String {
    return toString("yyyy년 M월 d일")
  }
  public var summary: String {
    return toString("yyyy-MM-dd")
  }
  
  // MARK: - 요일 포함 날짜 표시
  public var basicWithDay: String {
    return toString("yyyy년 M월 d일 (EEEEE)")
  }
  
  // MARK: - 시간 표시
  public var timeWithoutSecond: String {
    return toString("a h시 m분")
  }
  public var timeWithSecond: String {
    return toString("a h시 m분 s초")
  }
  public var shortTimeWithoutSecond: String {
    return toString("HH:mm")
  }
  public var shortTimeWithSecond: String {
    return toString("HH:mm:ss")
  }
  
  // MARK: - 시간 포함 짧은 날짜 표시
  public var summaryWithTimeWithoutSecond: String {
    return toString("yyyy-MM-dd HH:mm")
  }
  public var summaryWithTimeWithSecond: String {
    return toString("yyyy-MM-dd HH:mm:ss")
  }
  
  // MARK: - 요일 & 시간 포함 기본 날짜 표시
  public var basicWithDayAndTimeWithoutSecond: String {
    return toString("yyyy년 M월 d일 (EEEEE) a h시 m분")
  }
  public var basicWithDayAndTimeWithSecond: String {
    return toString("yyyy년 M월 d일 (EEEEE) a h시 m분 s초")
  }
  
  // MARK: - Date -> String
  public func toString(_ dateFormat: String) -> String {
    return DateFormatter
      .convertToKoKR(dateFormat: dateFormat)
      .string(from: self)
  }
}

extension DateFormatter {
  public static func convertToKoKR(dateFormat: String) -> DateFormatter {
    let dateFormatter = createKoKRFormatter()
    dateFormatter.dateFormat = dateFormat
    return dateFormatter
  }
}

// 한국을 기준으로 지역과 시간대 설정
private func createKoKRFormatter() -> DateFormatter {
  let dateFormatter = DateFormatter()
  dateFormatter.locale = Locale(identifier: "ko_KR")
  dateFormatter.timeZone = TimeZone(abbreviation: "KST")
  return dateFormatter
}
