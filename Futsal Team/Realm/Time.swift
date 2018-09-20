//
//  Time.swift
//  Futsal Team
//
//  Created by Rodrigo Baroni on 20/09/2018.
//  Copyright © 2018 Rodrigo. All rights reserved.
//

import UIKit
import RealmSwift
import SwiftyJSON

class Time: Object {

    @objc dynamic var nomeTime: String? = nil
    @objc dynamic var fundacao: String? = nil
    @objc dynamic var tecnico: String? = nil
    
    override static func primaryKey() -> String? {
        return "PerfilTime"
    }
    
    static func createOrUpdate(json: JSON, realm: Realm) -> Time? {
        
        // {"produto": {"nome": "coca", "_id": "68767d8686s6sd"}}
        // Garantir que possuímos um objeto com ID
        guard let identifier = json["name"].string else { return nil }
        // Resgatar o objeto local do disco
        if let objetoLocal = realm.object(ofType: Time.self, forPrimaryKey: identifier) {
            // Atualizar os dados do objeto e retorná-lo
            objetoLocal.update(json: json, realm: realm)
            //
            return objetoLocal
        } else {
            // Se o objeto não existir no DB local, criamos e atualziamos
            let objeto = Time()
            // Atualizar os dados
            objeto.update(json: json, realm: realm)
            // Salvar no disco
            realm.add(objeto)
            //
            return objeto
        }
    }
    
    func update(json: JSON, realm: Realm) {
        if let nomeTime = json["name"].string {
            self.nomeTime = nomeTime
        }
        
        if let fundacao = json["fundacao"].string {
            self.fundacao = fundacao
        }
        
        if let tecnico = json["tecnico"].string {
            self.tecnico = tecnico
        }

    }
    
}
