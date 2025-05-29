import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

/// Fetches data directly from Aozora Bunko.
public struct AozoraDirectFetcher {
    public init() {}

    /// Fetch the index of works. Returns an array of `AozoraWork`.
    public func fetchWorksIndex() async throws -> [AozoraWork] {
        let url = URL(string: "https://www.aozora.gr.jp/index_pages/list_person_all_extended_utf8.csv")!
        let (data, _) = try await URLSession.shared.data(from: url)
        guard let text = String(data: data, encoding: .utf8) else { return [] }
        return parseCSV(text)
    }

    /// Parse CSV text into an array of works.
    private func parseCSV(_ text: String) -> [AozoraWork] {
        var results: [AozoraWork] = []
        let lines = text.split(separator: "\n")
        for line in lines {
            let components = line.split(separator: ",")
            guard components.count > 5 else { continue }
            let year = Int(components[5])
            let work = AozoraWork(
                id: String(components[0]),
                title: String(components[1]),
                titleKana: String(components[2]),
                authorLastName: String(components[3]),
                authorFirstName: String(components[4]),
                firstPublicationYear: year
            )
            results.append(work)
        }
        return results
    }
}
