//
//  WidgetCell.swift
//  DigitalLifeUI
//
//  Created by Aaron Bratcher on 11/18/16.
//  Copyright © 2016 AT&T. All rights reserved.
//

import Foundation
import UIKit

class WidgetCell: UICollectionViewCell, Reusable {
	var widgetView: WidgetView! {
		didSet {
			for view in contentView.subviews {
				view.removeFromSuperview()
			}
			
			widgetView.frame = contentView.frame
			contentView.addSubview(widgetView)
		}
	}
}
