//
//  TextBlock.swift
//  Fekra
//
//  Created by Omar Khodr on 2/6/21.
//

import Foundation

struct TextBlock: Hashable, Identifiable {
    let id: UUID = UUID()
    let text: String
    
    static let data: [TextBlock] = [
        TextBlock(text: "I'm meant to be writing at this moment. What I mean is, I'm meant to be writing something else at this moment. The document I'm meant to be writing is, of course, open in another program on my computer and is patiently awaiting my attention. Yet here I am plonking down senseless sentiments in this paragraph because it's easier to do than to work on anything particularly meaningful. I am grateful for the distraction."),
        TextBlock(text: "Indescribable oppression, which seemed to generate in some unfamiliar part of her consciousness, filled her whole being with a vague anguish. It was like a shadow, like a mist passing across her soul's summer day. It was strange and unfamiliar; it was a mood. She did not sit there inwardly upbraiding her husband, lamenting at Fate, which had directed her footsteps to the path which they had taken. She was just having a good cry all to herself. The mosquitoes made merry over her, biting her firm, round arms and nipping at her bare insteps."),
        TextBlock(text: "The headphones were on. They had been utilized on purpose. She could hear her mom yelling in the background, but couldn't make out exactly what the yelling was about. That was exactly why she had put them on. She knew her mom would enter her room at any minute, and she could pretend that she hadn't heard any of the previous yelling.")
//        TextBlock(text: "This is a test"),
//        TextBlock(text: "This is a test"),
//        TextBlock(text: "This is a test")
    ]
}
