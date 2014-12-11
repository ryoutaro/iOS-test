//
//  ViewController.swift
//  jkGAME
//
//  Created by pd−正城 on 2014/12/08.
//  Copyright (c) 2014年 pd−正城. All rights reserved.
//

import UIKit

let gu_img=UIImage(named: "gu.png")
let tyo_img=UIImage(named: "tyo.png")
let pa_img=UIImage(named: "pa.png")

let kati_img=UIImage(named: "kati.png")
let aiko_img=UIImage(named: "aiko.png")
let make_img=UIImage(named: "make.png")

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.btn_again.hidden=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lbl_msg: UILabel!
    @IBOutlet weak var lbl_aite: UILabel!
    @IBOutlet weak var lbl_kekka: UILabel!

    @IBOutlet weak var btn_gu: UIButton!
    @IBOutlet weak var btn_tyoki: UIButton!
    @IBOutlet weak var btn_pa: UIButton!
    @IBOutlet weak var btn_again: UIButton!
    @IBOutlet weak var view_aite: UIImageView!
    @IBOutlet weak var view_kekka: UIImageView!
    
    @IBAction func btn_gu_dwn(sender: AnyObject) {
        lbl_msg.text="ジャンケン...ポン"
        self.btn_tyoki.hidden=true
        self.btn_pa.hidden=true
        
        let num=arc4random()
        let jyanken=num%3
        
        if(jyanken==0){
            self.lbl_aite.text="グー"
            self.view_aite.image=gu_img
            self.view_kekka.image=aiko_img
            self.lbl_kekka.text="アイコ"
        }
        if(jyanken==1){
            self.lbl_aite.text="チョキ"
            self.view_aite.image=tyo_img
            self.view_kekka.image=kati_img
            self.lbl_kekka.text="勝利"
        }
        if(jyanken==2){
            self.lbl_aite.text="パー"
            self.view_aite.image=pa_img
            self.view_kekka.image=make_img
            self.lbl_kekka.text="敗北"
        }
        self.btn_again.hidden=false
        self.view_aite.hidden=false
        self.view_kekka.hidden=false
    }
    @IBAction func btn_tyoki_dwn(sender: AnyObject) {
        lbl_msg.text="ジャンケン...ポン"
        self.btn_gu.hidden=true
        self.btn_pa.hidden=true
        
        let num=arc4random()
        let jyanken=num%3
        
        if(jyanken==0){
            self.lbl_aite.text="グ-"
            self.view_aite.image=gu_img
            self.view_kekka.image=make_img
            self.lbl_kekka.text="敗北"
        }
        if(jyanken==1){
            self.lbl_aite.text="チョキ"
            self.view_aite.image=tyo_img
            self.view_kekka.image=aiko_img
            self.lbl_kekka.text="アイコ"
        }
        if(jyanken==2){
            self.lbl_aite.text="パー"
            self.view_aite.image=pa_img
            self.view_kekka.image=kati_img
            self.lbl_kekka.text="勝利"
        }
        self.btn_again.hidden=false
        self.view_aite.hidden=false
        self.view_kekka.hidden=false
    }
    @IBAction func btn_pa_dwn(sender: AnyObject) {
        lbl_msg.text="ジャンケン...ポン"
        self.btn_gu.hidden=true
        self.btn_tyoki.hidden=true
        
        let num=arc4random()
        let jyanken=num%3
        
        if(jyanken==0){
            self.lbl_aite.text="グー"
            self.view_aite.image=gu_img
            self.view_kekka.image=kati_img
            self.lbl_kekka.text="勝利"
        }
        if(jyanken==1){
            self.lbl_aite.text="チョキ"
            self.view_aite.image=tyo_img
            self.view_kekka.image=make_img
            self.lbl_kekka.text="敗北"
        }
        if(jyanken==2){
            self.lbl_aite.text="パー"
            self.view_aite.image=pa_img
            self.view_kekka.image=aiko_img
            self.lbl_kekka.text="アイコ"
        }
        self.btn_again.hidden=false
        self.view_aite.hidden=false
        self.view_kekka.hidden=false
    }
    @IBAction func btn_again_dwn(sender: AnyObject) {
        lbl_msg.text="ジャンケン..."
        lbl_aite.text="相手"
        lbl_kekka.text="結果"
        self.btn_gu.hidden=false
        self.btn_tyoki.hidden=false
        self.btn_pa.hidden=false
        self.btn_again.hidden=true
        self.view_aite.hidden=true
        self.view_kekka.hidden=true
    }
}

