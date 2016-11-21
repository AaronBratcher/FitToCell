//
//  ViewController.swift
//  FitToCell
//
//  Created by Aaron Bratcher on 11/21/16.
//  Copyright © 2016 AT&T. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
	var widgetViews = [WidgetView]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView?.registerReusableCell(WidgetCell.self)
		
		widgetViews.append(WidgetView.loadedWidgetView(WidgetType1.self))
		widgetViews.append(WidgetView.loadedWidgetView(WidgetType2.self))
		widgetViews.append(WidgetView.loadedWidgetView(WidgetType2.self))
		widgetViews.append(WidgetView.loadedWidgetView(WidgetType1.self))
		widgetViews.append(WidgetView.loadedWidgetView(WidgetType1.self))
	}

	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return widgetViews.count
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let widgetView = widgetViews[indexPath.row]
		let widgetCell = collectionView.dequeueReusableCell(for: indexPath, cellType: WidgetCell.self)
		widgetCell.widgetView = widgetView
		
		return widgetCell
	}
}

