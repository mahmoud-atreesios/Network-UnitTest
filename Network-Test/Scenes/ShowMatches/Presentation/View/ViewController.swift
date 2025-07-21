//
//  ViewController.swift
//  Network-Test
//
//  Created by Mahmoud Mohamed Atrees on 20/07/2025.
//

import UIKit

class ViewController: UIViewController {
    
    private var fixturesViewModel: FixturesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fixturesViewModel = FixturesViewModel(fetchFixturesUsecase: FetchFixturesUsecase(fixturesRepo: FixturesRepo(remoteDS: FetchFixturesRemoteDS(networkProvider: NetworkProvider()), mapper: FixturesMapper())))
        fixturesViewModel.fetchFixtures()
    }
    
}

