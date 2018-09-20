//
//  Cadastro_VC.swift
//  Rochdale FC
//
//  Created by Rodrigo Baroni on 18/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import UIKit

class Cadastro_VC: ModelViewController {

    @IBOutlet weak var imgViewLogo: UIImageView!
    @IBOutlet weak var btnAddLogo: UIButton!
    
    @IBOutlet weak var lblNomeTime: UILabel!
    @IBOutlet weak var txtFieldNomeTime: UITextField!
    
    @IBOutlet weak var lblFundacao: UILabel!
    @IBOutlet weak var txtFieldFundacaoTime: UITextField!
    
    @IBOutlet weak var lblTecnicoTime: UILabel!
    @IBOutlet weak var textFieldTecnicoTime: UITextField!
    
    @IBOutlet weak var btnSalvar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupLayout(screenName: "Cadastro")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func setupLayout(screenName: String) {
        self.hideKeyboardWhenTappedAround()
        
        self.imgViewLogo.setupImgView()
        self.btnAddLogo.setupButton(hasCorner: true, backColor: .darkGray)
        self.btnAddLogo.setTitle("Escolher Foto", for: .normal)
        self.lblNomeTime.text = "Nome do time:"
        self.lblFundacao.text = "Data de fundação:"
        self.lblTecnicoTime.text = "Nome do técnico:"
        self.btnSalvar.setupButton(hasCorner: false, backColor: .darkGray)
        
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
