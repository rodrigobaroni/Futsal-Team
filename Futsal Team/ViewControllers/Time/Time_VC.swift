//
//  Time_VC.swift
//  Rochdale FC
//
//  Created by Rodrigo Baroni on 13/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import UIKit

class Time_VC: ModelViewController {

    
    
    //MARK: - Outlets
    
    @IBOutlet weak var imgLogoTime: UIImageView!
    
    @IBOutlet weak var lblInformativo1: UILabel!
    @IBOutlet weak var lblDescritivo1: UILabel!
    @IBOutlet weak var lblInformativo2: UILabel!
    @IBOutlet weak var lblDescritivo2: UILabel!
    @IBOutlet weak var lblInformativo3: UILabel!
    @IBOutlet weak var lblDescritivo3: UILabel!
    
    @IBOutlet weak var viewPlacarPartida: UIView!
    @IBOutlet weak var lblTituloPlacar: UILabel!
    @IBOutlet weak var lblTime1: UILabel!
    @IBOutlet weak var lblTime2: UILabel!
    @IBOutlet weak var lblPlacarTime1: UILabel!
    @IBOutlet weak var lblPlacarTime2: UILabel!
    
    @IBOutlet weak var btnNovoJogo: UIButton!
    @IBOutlet weak var btnHistoricoPartidas: UIButton!
    
    @IBOutlet weak var lblFundacao: UILabel!
    @IBOutlet weak var lblFundacaoValor: UILabel!
    @IBOutlet weak var lblTecnico: UILabel!
    @IBOutlet weak var lblTecnicoValor: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupLayout(screenName: "Time")
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func setupLayout(screenName: String) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
