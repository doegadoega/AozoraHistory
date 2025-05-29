import AozoraHistory
import Foundation

@main
struct AozoraHistoryDemo {
    static func main() async {
        let fetcher = AozoraDirectFetcher()
        do {
            let works = try await fetcher.fetchWorksIndex()
            print("Fetched works: \(works.prefix(5))")
        } catch {
            print("Failed to fetch works: \(error)")
        }
    }
}
