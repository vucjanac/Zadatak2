//
//  Medical.swift
//  Zadatak1
//
//  Created by Aleksandar Stojanovic on 8/23/21.
//

import Foundation

enum Pozicija: String {
    case doctor = "Doktor"
    case nurse = "Medicinska sestra"
    case janitor = "Domar"
}


protocol Staff  {
    var plata: Double { get }
    var pozicija: Pozicija { get }
    
    func otkrivamPlatuiPoziciju()
    
}

protocol Surgeon {
    func printSurgeonJob()
}

protocol MedicalStaff {
    
    func printMedicalJob()
    
}

protocol VisitDuty {
    func goesToVisit(pozicija: Pozicija)
}

class HospitalStaff: Staff {
    var plata: Double
    
    var pozicija: Pozicija
    
    var visitData: VisitDuty?
    
    
    init(plata: Double = 0, pozicija: Pozicija = .nurse) {
        self.plata = plata
        self.pozicija = pozicija
        
        
    }
    
    func otkrivamPlatuiPoziciju() {
        print("Moja pozicija je \(pozicija.rawValue) i moja plata je \(plata)")
    }
}

class Doctor: HospitalStaff, Surgeon {
    func printSurgeonJob() {
        print("Moj posao je da operisem" )
    }
}
class Nurse: HospitalStaff, MedicalStaff {
    func printMedicalJob() {
        print("Moj posao je da dajem injekcije")
    }
}


class VisitsData: VisitDuty {
    func goesToVisit(pozicija: Pozicija) {
        switch pozicija {
        case .doctor:
            print("Ja obilazim pacijente koji su operisani")
        case .nurse:
            print("Ja obilazim pacijente na intenzivnoj")
        case .janitor:
            print("Mene bole uvo zapacijente, ja samo ribam pod")
        }
    }
    
}
