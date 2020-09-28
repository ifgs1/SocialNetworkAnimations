//
//  LandScape.swift
//  SocialNetwork
//
//  Created by Ivan F Garcia S on 25/09/20.
//  Copyright © 2020 Ivan F Garcia S. All rights reserved.
//

import Foundation
import SwiftUI

struct LandScape : Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
}

let ladandScapeMock: [LandScape] = [
    LandScape(title: "One of the best pictures in the world", image: "Photo4", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Montes nascetur ridiculus mus mauris vitae. Nulla malesuada pellentesque elit eget gravida. Consectetur adipiscing elit ut aliquam purus sit amet. Porttitor leo a diam sollicitudin tempor. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Massa enim nec dui nunc mattis enim ut. Elementum sagittis vitae et leo duis. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Pretium viverra suspendisse potenti nullam ac tortor vitae. Eget felis eget nunc lobortis mattis. Diam quis enim lobortis scelerisque fermentum dui faucibus. Pellentesque nec nam aliquam sem et. Nam libero justo laoreet sit amet cursus sit. Mauris cursus mattis molestie a iaculis. Tortor posuere ac ut consequat."),
    LandScape(title: "Amazing Image from a photography expert", image: "photo3", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Montes nascetur ridiculus mus mauris vitae. Nulla malesuada pellentesque elit eget gravida. Consectetur adipiscing elit ut aliquam purus sit amet. Porttitor leo a diam sollicitudin tempor. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Massa enim nec dui nunc mattis enim ut. Elementum sagittis vitae et leo duis. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Pretium viverra suspendisse potenti nullam ac tortor vitae. Eget felis eget nunc lobortis mattis. Diam quis enim lobortis scelerisque fermentum dui faucibus. Pellentesque nec nam aliquam sem et. Nam libero justo laoreet sit amet cursus sit. Mauris cursus mattis molestie a iaculis. Tortor posuere ac ut consequat."),
    LandScape(title: "This image is pure art!", image: "photo2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Montes nascetur ridiculus mus mauris vitae. Nulla malesuada pellentesque elit eget gravida. Consectetur adipiscing elit ut aliquam purus sit amet. Porttitor leo a diam sollicitudin tempor. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Massa enim nec dui nunc mattis enim ut. Elementum sagittis vitae et leo duis. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Pretium viverra suspendisse potenti nullam ac tortor vitae. Eget felis eget nunc lobortis mattis. Diam quis enim lobortis scelerisque fermentum dui faucibus. Pellentesque nec nam aliquam sem et. Nam libero justo laoreet sit amet cursus sit. Mauris cursus mattis molestie a iaculis. Tortor posuere ac ut consequat."),
    LandScape(title: "Impressive photo", image: "photo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Montes nascetur ridiculus mus mauris vitae. Nulla malesuada pellentesque elit eget gravida. Consectetur adipiscing elit ut aliquam purus sit amet. Porttitor leo a diam sollicitudin tempor. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Massa enim nec dui nunc mattis enim ut. Elementum sagittis vitae et leo duis. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Pretium viverra suspendisse potenti nullam ac tortor vitae. Eget felis eget nunc lobortis mattis. Diam quis enim lobortis scelerisque fermentum dui faucibus. Pellentesque nec nam aliquam sem et. Nam libero justo laoreet sit amet cursus sit. Mauris cursus mattis molestie a iaculis. Tortor posuere ac ut consequat.")
]
