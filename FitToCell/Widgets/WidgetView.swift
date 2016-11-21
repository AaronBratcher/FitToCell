//
//  WidgetView.swift
//  FitToCell
//
//  Created by Aaron Bratcher on 11/21/16.
//  Copyright © 2016 AT&T. All rights reserved.
//

import Foundation
import UIKit

class WidgetView: UIView, NibReusable {
	
	class func loadedWidgetView<T: WidgetView>(_ widgetView: T.Type) -> T where T: NibLoadable {
		return widgetView.loadFromNib()
	}
}
