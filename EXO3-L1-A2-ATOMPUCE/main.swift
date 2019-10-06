//
//  main.swift
//  EXO3-L1-A2-ATOMPUCE
//
//  Created by PlugN on 06/10/2019.
//  Copyright © 2019 Groupe MINASTE. All rights reserved.
//

import Foundation

print("Enter the main quantic number n: ")
let nmax = Int(readLine() ?? "1") ?? 1
var sum = 0
var electrons = Array(repeating: Array(repeating: 0, count: 5), count: 9)
var n = 1
var l = 0
var valueToSubstract = 0
var round = 1
var counter = 1
var newcounter = 1

if nmax >= 1 {
    while sum < nmax {
        
        switch counter {
               case 1:
                   n = 1
                   l = 0
               case 2:
                   n = 2
                   l = 0
               case 3:
                   n = 2
                   l = 1
               case 4:
                   n = 3
                   l = 0
               case 5:
                   n = 3
                   l = 1
               case 6:
                   n = 4
                   l = 0
               case 7:
                   n = 3
                   l = 2
               case 8:
                   n = 4
                   l = 1
               case 9:
                   n = 5
                   l = 0
               case 10:
                   n = 4
                   l = 2
               case 11:
                   n = 5
                   l = 1
               case 12:
                   n = 6
                   l = 0
               case 13:
                   n = 4
                   l = 3
               case 14:
                   n = 5
                   l = 2
               case 15:
                   n = 6
                   l = 1
               case 16:
                   n = 7
                   l = 0
               case 17:
                   n = 5
                   l = 3
               case 18:
                   n = 6
                   l = 2
               case 19:
                   n = 7
                   l = 1
               case 20:
                   n = 8
                   l = 0
               default:
                   n = 0
                   l = 0
               }
               
               counter += 1
        
        switch l {
        case 0:
            valueToSubstract = (2 <= nmax - sum) ? 2 : nmax - sum
        case 1:
            valueToSubstract = (6 <= nmax - sum) ? 6 : nmax - sum
        case 2:
            valueToSubstract = (10 <= nmax - sum) ? 10 : nmax - sum
        case 3:
            valueToSubstract = (18 <= nmax - sum) ? 18 : nmax - sum
        default:
            valueToSubstract = nmax - sum
        }
        electrons[n][l] = valueToSubstract
        sum += valueToSubstract
        
        
        // Switch en fonction du l
        // Vérifier si valueToSubstract (2/6/10/18) est <= nmax - sum
        // Remplir e[n][l] = valueToSubstract
        // sum += valueToSubstract
        // Vérifier si l peut diminuer
        // sinon augmenter n et remettre l à n-1
    }
    
    while newcounter <= counter {
        switch newcounter {
        case 1:
            print((electrons[1][0] != 0) ? ("1s: ", electrons[1][0]) : (""))
        case 2:
            print((electrons[2][0] != 0) ? ("2s: ", electrons[2][0]) : (""))
        case 3:
            print((electrons[2][1] != 0) ? ("2p: ", electrons[2][1]) : (""))
        case 4:
            print((electrons[3][0] != 0) ? ("3s: ", electrons[3][0]) : (""))
        case 5:
            print((electrons[3][1] != 0) ? ("3p: ", electrons[3][1]) : (""))
        case 6:
            print((electrons[4][0] != 0) ? ("4s: ", electrons[4][0]) : (""))
        case 7:
            print((electrons[3][2] != 0) ? ("3d: ", electrons[3][2]) : (""))
        case 8:
            print((electrons[4][1] != 0) ? ("4p: ", electrons[4][1]) : (""))
        case 9:
            print((electrons[5][0] != 0) ? ("5s: ", electrons[5][0]) : (""))
        case 10:
            print((electrons[4][2] != 0) ? ("4d: ", electrons[4][2]) : (""))
        case 11:
            print((electrons[5][1] != 0) ? ("5p: ", electrons[5][1]) : (""))
        case 12:
            print((electrons[6][0] != 0) ? ("6s: ", electrons[6][0]) : (""))
        case 13:
            print((electrons[4][3] != 0) ? ("4f: ", electrons[4][3]) : (""))
        case 14:
            print((electrons[5][2] != 0) ? ("5d: ", electrons[5][2]) : (""))
        case 15:
            print((electrons[6][1] != 0) ? ("6p: ", electrons[6][1]) : (""))
        case 16:
            print((electrons[7][0] != 0) ? ("7s: ", electrons[7][0]) : (""))
        case 17:
            print((electrons[5][3] != 0) ? ("5f: ", electrons[5][3]) : (""))
        case 18:
            print((electrons[6][2] != 0) ? ("6d: ", electrons[6][2]) : (""))
        case 19:
            print((electrons[7][1] != 0) ? ("7p: ", electrons[7][1]) : (""))
        case 20:
            print((electrons[8][0] != 0) ? ("8s: ", electrons[8][0]) : (""))
        default:
            print("")
        }
        
        newcounter += 1
    }
} else {
    print("Sorry, n must be greater than 1.")
}


