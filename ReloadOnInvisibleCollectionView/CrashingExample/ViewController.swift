import UIKit

class ViewController: UICollectionViewController {

    static var items =  ["1","2","3"]

    @IBAction func reload(_ sender: Any) {
        ViewController.items = ["3","2","1"]
        collectionViews.forEach { view in
            //            view.performBatchUpdates({
            view.reloadData()
            //            }, completion: nil)
        }

    }
    @IBAction func insert(_ sender: Any) {

        ViewController.items.append("\(ViewController.items.count + 1)")
        let insertedRow = ViewController.items.count - 1

        collectionViews.forEach { view in
            //            view.performBatchUpdates({
            view.insertItems(at: [IndexPath(row: insertedRow, section: 0)])
            //            }, completion: nil)
        }

    }


    // MARK: - Helpers
    fileprivate var collectionViews: [UICollectionView] {
        return [collectionView, previousCollectionView].flatMap { $0 }
    }


    /// Returns collection view, previous in the navigation stack
    fileprivate var previousCollectionView: UICollectionView? {
        // Insert dataa in previoues
        guard let first = (navigationController?.viewControllers.first as? ViewController), first !== self else {
            return nil
        }
        return first.collectionView
    }


    // MARK: - DataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ViewController.items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Item", for: indexPath)
        let label = (cell.viewWithTag(123) as? UILabel)
        label?.text = ViewController.items[indexPath.row]
        return cell
    }

    // MARK: - View Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setToolbarHidden(false, animated: animated)
    }

}

