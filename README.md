# AozoraHistory

This repository provides a prototype implementation for the "AozoraHistory" project. The goal is to recreate Aozora Bunko works with historical fonts and layout on iOS. This package contains basic data models and simple fetchers using Swift concurrency. The `AozoraHistoryApp` executable demonstrates fetching data from the Aozora Bunko API.

## Building

```
swift build
```

## Running the demo

```
swift run AozoraHistoryApp
```

The demo only prints the list of works fetched from Aozora Bunko. Networking may fail in environments without Internet access.
