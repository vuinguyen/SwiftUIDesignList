//
//  BundleLoader.swift
//  Bundle extension to make loading assets from a bundle work
//  in a Swift package
//  Created by Vui Nguyen on 9/19/22.
//

import Foundation

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
