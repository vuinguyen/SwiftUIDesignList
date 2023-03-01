//
//  BundleLoader.swift
//  Bundle extension to make loading assets from a bundle work
//  in a Swift package. This was a bug pre-Xcode 14.
//  Since Xcode 14, the Bundle bug has been fixed, and this class
//  is no longer needed. However, I am keeping this here for now for
//  reference in case it gets broken again ;).
//
//  Created by Vui Nguyen on 9/19/22.
//

import Foundation

/// Sample usage:
///  use wherever Bundle.module doesn't work.
///  For example, do "Bundle.designBundle" instead
private class BundleFinder { }

extension Bundle {
    static var designBundle: Bundle = {
        let bundleName = "SunfishDesign_SunfishDesign"
        let candidates = [
            Bundle.main.resourceURL,
            Bundle(for: BundleFinder.self).resourceURL,
            Bundle.main.bundleURL,
            Bundle(for: BundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent(),
            Bundle(for: BundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent()
        ].compactMap { $0 }

        for candidate in candidates {
            let bundleUrl = candidate.appendingPathComponent(bundleName + ".bundle")
            if let bundle = Bundle(url: bundleUrl) {
                return bundle
            }
        }
        fatalError("Unable to load bundle")
    }()
}
