//
//  ViewController.swift
//  Zadatak1
//
//  Created by Aleksandar Stojanovic on 8/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    

    let visitsData = VisitsData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nurse = Nurse(plata: 250, pozicija: .nurse)
        nurse.visitData = visitsData
        nurse.printMedicalJob()
        nurse.otkrivamPlatuiPoziciju()
        nurse.visitData?.goesToVisit(pozicija: nurse.pozicija)
        
        let doctor = Doctor(plata: 1000, pozicija: .doctor)
        doctor.visitData = visitsData
        doctor.printSurgeonJob()
        doctor.otkrivamPlatuiPoziciju()
        doctor.visitData?.goesToVisit(pozicija: doctor.pozicija)
    }

  
}

