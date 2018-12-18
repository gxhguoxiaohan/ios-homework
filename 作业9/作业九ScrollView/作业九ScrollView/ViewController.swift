//
//  ViewController.swift
//  作业九ScrollView
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 郭小寒. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...4 {
            let imageView = UIImageView(image: UIImage(named: "\(i)"))
            imageView.contentMode = .scaleAspectFit
            imageView.frame = CGRect(x: CGFloat(i-1) * scrollView.bounds.width, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
            scrollView.addSubview(imageView)
            scrollView.isPagingEnabled = true
        }
        
        
        scrollView.contentSize = CGSize(width: 4 * scrollView.bounds.width, height: scrollView.bounds.height)
        //scrollView.minimumZoomScale = 0.2
        //scrollView.maximumZoomScale = 5
        scrollView.delegate = self
        pageControl.numberOfPages = 4
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
    }
   // func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        //return scrollView.subviews.first
   // }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = scrollView.contentOffset.x / scrollView.bounds.width
        pageControl.currentPage = Int(currentPage)
    }

    @IBAction func pageControlClicked(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        let rect = CGRect(x: CGFloat(currentPage) * scrollView.bounds.width, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
        scrollView.scrollRectToVisible(rect, animated: true)
    }
    
}

