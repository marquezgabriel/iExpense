//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Gabriel Marquez on 2022-06-19.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currencyCode ?? "USD")
    }
}
