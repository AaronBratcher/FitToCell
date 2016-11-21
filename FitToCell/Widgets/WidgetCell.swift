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

			contentView.addSubview(widgetView)
			let views = ["view": widgetView as Any]
			var constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[view]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: views)
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[view]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: views))

			contentView.addConstraints(constraints)
		}
	}
}
