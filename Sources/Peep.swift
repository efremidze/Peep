//
//  Peep.swift
//  Peep
//
//  Created by Lasha Efremidze on 9/11/17.
//  Copyright © 2017 Lasha Efremidze. All rights reserved.
//

import Foundation
import AudioToolbox
import AVFoundation

public protocol Peepable {
    func play()
}

public struct Peep {
    public static func play(sound: Peepable?) {
        try? AVAudioSession.sharedInstance().setCategory(.ambient, mode: .default, options: .mixWithOthers)
        sound?.play()
    }
}

public enum AlertTone: UInt32 {
    case note = 1375
    case aurora = 1366
    case bamboo = 1361
    case chord = 1312
    case circles = 1368
    case complete = 1362
    case hello = 1363
    case input = 1369
    case keys = 1367
    case popcorn = 1364
    case pulse = 1120
    case synth = 1365
    case alert = 1005
    case anticipate = 1020
    case bell = 1013
    case bloom = 1021
    case calypso = 1022
    case chime = 1008
    case choochoo = 1023
    case descent = 1024
    case ding = 1000
    case electronic = 1014
    case fanfare = 1025
    case glass = 1009
    case horn = 1010
    case ladder = 1026
    case minuet = 1027
    case newsflash = 1028
    case noir = 1029
    case sherwoodforest = 1030
    case spell = 1031
    case suspence = 1032
    case swish = 1018
    case swoosh = 1001
    case telegraph = 1033
    case tiptoes = 1034
    case tritone = 1002
    case tweet = 1016
    case typewriters = 1035
    case update = 1036
}

extension AlertTone: Peepable {
    public func play() {
        AudioServicesPlaySystemSound(rawValue)
    }
}

public enum KeyPress: UInt32 {
    case tap = 1104
}

extension KeyPress: Peepable {
    public func play() {
        AudioServicesPlaySystemSound(rawValue)
    }
}

public enum HapticFeedback: UInt32 {
    case impact = 1520
    case notification = 1521
    case selection = 1519
}

extension HapticFeedback: Peepable {
    public func play() {
        AudioServicesPlaySystemSound(rawValue)
    }
}

extension URL: Peepable {
    public func play() {
        let player = AVQueuePlayer.shared
        player.removeAllItems()
        let item = AVPlayerItem(url: self)
        player.insert(item, after: nil)
        player.play()
    }
}

extension AVQueuePlayer {
    static let shared = AVQueuePlayer()
}
