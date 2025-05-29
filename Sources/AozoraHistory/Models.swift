import Foundation

/// Represents a work available on Aozora Bunko.
public struct AozoraWork: Codable {
    public let id: String
    public let title: String
    public let titleKana: String
    public let authorLastName: String
    public let authorFirstName: String
    public let firstPublicationYear: Int?
}

/// Represents a historical edition of a work.
public struct HistoricalEdition: Codable {
    public let id: String
    public let workId: String
    public let editionName: String
    public let publisher: String
    public let publicationYear: Int
    public let typographyId: String
    public let historicalContext: String
    public let publishingInfo: String
    public let culturalSignificance: String
}

/// Information about a historical typography used for printing.
public struct HistoricalTypography: Codable {
    public let id: String
    public let name: String
    public let foundryName: String
    public let period: String
    public let pointSize: Double
    public let characteristics: String
    public let modernFontEquivalent: String
}
