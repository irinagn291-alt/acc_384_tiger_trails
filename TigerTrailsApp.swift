import SwiftUI

// MARK: - TigerTrailsApp

@main struct TigerTrailsApp: App {
    @StateObject private var book = AnimalBook(wildlifePages)

    var body: some Scene {
        WindowGroup {
            BookShelf(book: book).preferredColorScheme(.light).tint(.jungle)
                .alert("Coloring book", isPresented: Binding(get: { book.errorMessage != nil }, set: { if !$0 { book.errorMessage = nil } })) {
                    Button("OK", role: .cancel) {}
                } message: { Text(book.errorMessage ?? "") }
        }
    }
}

// MARK: - ColoringBook

let wildlifePages = [
    AnimalPage("bengal", "Bengal tiger", "Bamboo grove"),
    AnimalPage("elephant", "Asian elephant", "River bend"),
    AnimalPage("artMangroveTiger", "Mangrove tiger", "Tidal channels"),
    AnimalPage("artTigerCubChase", "Tiger cub chase", "Meadow play"),
    AnimalPage("artRockHoppingTiger", "Rock-hopping tiger", "Mountain stream"),
    AnimalPage("panda", "Red panda", "Forest canopy"),
    AnimalPage("artFrostWhiskeredTiger", "Frost-whiskered tiger", "Winter portrait"),
    AnimalPage("artListeningTiger", "Listening tiger", "Forest sounds"),
    AnimalPage("owl", "Horned owl", "Moonlit pines"),
    AnimalPage("artCloudedLeopard", "Clouded leopard", "Rainforest branch"),
    AnimalPage("artTigerInTheGrasses", "Tiger in the grasses", "Golden savanna"),
    AnimalPage("cub", "Tiger cub", "Lotus pond"),
    AnimalPage("artRaccoonAtTheCreek", "Raccoon at the creek", "Creek bank"),
    AnimalPage("artLotusTiger", "Lotus tiger", "Floating garden"),
    AnimalPage("artYawningTigerCub", "Yawning tiger cub", "Morning den"),
    AnimalPage("turtle", "Sea turtle", "Coral garden"),
    AnimalPage("artTigerScentMark", "Tiger scent mark", "Old sal tree"),
    AnimalPage("artTigerInFreshSnow", "Tiger in fresh snow", "Snowdrifts"),
    AnimalPage("deer", "Woodland deer", "Wildflower meadow"),
    AnimalPage("artTigerPawWash", "Tiger paw wash", "Quiet clearing"),
    AnimalPage("artRedCrownedParakeet", "Red-crowned parakeet", "Forest fruit"),
    AnimalPage("rabbit", "Forest rabbit", "Mushroom hollow"),
    AnimalPage("artTigerInAFigTree", "Tiger in a fig tree", "Forest perch"),
    AnimalPage("artArcticFox", "Arctic fox", "Tundra den"),
    AnimalPage("riverTiger", "Riverside tiger", "Drinking pool"),
    AnimalPage("artCascadeTiger", "Cascade tiger", "Waterfall ledge"),
    AnimalPage("artTigerCubAndMoth", "Tiger cub and moth", "Night garden"),
    AnimalPage("artClimbingTiger", "Climbing tiger", "Forked trunk"),
    AnimalPage("winterTiger", "Winter tiger", "Snowy pines"),
    AnimalPage("artTigerAtTheIceHole", "Tiger at the ice hole", "Frozen river"),
    AnimalPage("artSunbathingTiger", "Sunbathing tiger", "Warm boulder"),
    AnimalPage("snowLeopard", "Snow leopard", "Alpine rocks"),
    AnimalPage("artIndianGaur", "Indian gaur", "Woodland grazing"),
    AnimalPage("artTigerOnBlackSand", "Tiger on black sand", "Coastal forest"),
    AnimalPage("bison", "Prairie bison", "Tallgrass plains"),
    AnimalPage("artBinturong", "Binturong", "Night canopy"),
    AnimalPage("artPebbleBeachTiger", "Pebble beach tiger", "Rocky shore"),
    AnimalPage("giantPanda", "Giant panda", "Bamboo grove"),
    AnimalPage("artTigerGroomingTime", "Tiger grooming time", "Family life"),
    AnimalPage("artTigerTracks", "Tiger tracks", "Sandy path"),
    AnimalPage("artSnowCaveTiger", "Snow cave tiger", "Winter shelter"),
    AnimalPage("kingfisher", "Diving kingfisher", "Riverbank"),
    AnimalPage("artTigerScratchingBark", "Tiger scratching bark", "Claw marks"),
    AnimalPage("artSambarStag", "Sambar stag", "Marsh fringe"),
    AnimalPage("sumatranTiger", "Sumatran tiger", "Fern forest"),
    AnimalPage("artTigerBesideOrchids", "Orchard tiger", "Fruit trees"),
    AnimalPage("artPikaAmongRocks", "Pika among rocks", "Alpine meadow"),
    AnimalPage("tigerFamily", "Tiger and cub", "Family portrait"),
    AnimalPage("artReedBedTiger", "Reed bed tiger", "Marsh edge"),
    AnimalPage("artTigerCubTug", "Tiger cub tug", "Fallen vine"),
    AnimalPage("rhino", "Rhinoceros", "Acacia shade"),
    AnimalPage("artRidgeTrailTiger", "Ridge trail tiger", "Open highlands"),
    AnimalPage("artTigerOnTheBirchTrail", "Tiger on the birch trail", "Birch woodland"),
    AnimalPage("artTailChasingTiger", "Tail-chasing tiger", "Cub meadow"),
    AnimalPage("orangutan", "Orangutan", "Rainforest canopy"),
    AnimalPage("artSmoothCoatedOtters", "Smooth-coated otters", "River family"),
    AnimalPage("artTigerAtSunrise", "Tiger at sunrise", "Hilltop dawn"),
    AnimalPage("tapir", "Forest tapir", "Leafy hollow"),
    AnimalPage("artCrownedHornedLizard", "Crowned horned lizard", "Desert wash"),
    AnimalPage("artDriftwoodTiger", "Driftwood tiger", "River crossing"),
    AnimalPage("hornbill", "Fruit-tree hornbill", "Tropical canopy"),
    AnimalPage("artTigerSwimmingLesson", "Tiger swimming lesson", "Forest pool"),
    AnimalPage("artTigerAtTheCave", "Tiger at the cave", "Rock shelter"),
    AnimalPage("artTigerAndSnowflakes", "Tiger and snowflakes", "First snowfall"),
    AnimalPage("jungleTiger", "Blossom tiger", "Jungle flowers"),
    AnimalPage("artTigerAtDusk", "Tiger at dusk", "Firefly glade"),
    AnimalPage("artGoldenLangur", "Golden langur", "Canopy leap"),
    AnimalPage("fishingCat", "Fishing cat", "Wetland reeds"),
    AnimalPage("artTigerAtTheSaltLick", "Tiger at the salt lick", "Mineral spring"),
    AnimalPage("artBlackbuckAntelope", "Blackbuck antelope", "Open plain"),
    AnimalPage("sloth", "Hanging sloth", "Emerald canopy"),
    AnimalPage("artReflectionTiger", "Reflection tiger", "Still water"),
    AnimalPage("artTigerCubHideout", "Tiger cub hideout", "Gnarled roots"),
    AnimalPage("toucan", "Tropical toucan", "Forest branches"),
    AnimalPage("artTigerGrassTunnel", "Tiger grass tunnel", "Elephant grass"),
    AnimalPage("artTigerOnAFrozenLog", "Tiger on a frozen log", "Ice and timber"),
    AnimalPage("artWindblownTiger", "Windblown tiger", "Gusty grassland"),
    AnimalPage("capybara", "Capybara", "Lily pond"),
    AnimalPage("artMalayanSunBear", "Malayan sun bear", "Honey tree"),
    AnimalPage("artTigerInTheBambooRain", "Tiger in the bamboo rain", "Bamboo thicket"),
    AnimalPage("jaguar", "Spotted jaguar", "River forest"),
    AnimalPage("artMonsoonTiger", "Monsoon tiger", "Rain shower"),
    AnimalPage("artTumblingTigerCub", "Tumbling tiger cub", "Leaf litter"),
    AnimalPage("restingTiger", "Sleeping tiger", "Sunlit rocks"),
    AnimalPage("artTigerOnTheScree", "Tiger on the scree", "Loose stones"),
    AnimalPage("artTaigaTigerPair", "Taiga tiger pair", "Pine forest"),
    AnimalPage("otter", "Floating otter", "Quiet water"),
    AnimalPage("artTigerInBanyanRoots", "Tiger in banyan roots", "Forest giant"),
    AnimalPage("artIndianPeafowl", "Indian peafowl", "Forest floor"),
    AnimalPage("artCurledPangolin", "Curled pangolin", "Forest burrow"),
    AnimalPage("marshCrane", "Marsh crane", "Wet meadow"),
    AnimalPage("artSandbarTiger", "Sandbar tiger", "River island"),
    AnimalPage("artTigerCubLookout", "Tiger cub lookout", "Low stump"),
    AnimalPage("wolf", "Howling wolf", "Pine clearing"),
    AnimalPage("artTigerUnderAnArch", "Tiger under an arch", "Stone arch"),
    AnimalPage("artTigerAtThaw", "Tiger at thaw", "Melting ice"),
    AnimalPage("lynx", "Woodland lynx", "Fallen timber"),
    AnimalPage("artWatchfulTiger", "Watchful tiger", "Ravine rim"),
    AnimalPage("artWaterBuffalo", "Water buffalo", "Floodplain"),
    AnimalPage("moose", "Lakeside moose", "Northern meadow")
]

extension Color {
    static let jungle = Color.ink(0x15382E)
    static let moss = Color.ink(0x4A6354)
    static let vellum = Color.ink(0xF7F4E9)
}
struct FieldLabel: View {
    let text: String
    var body: some View { Text(text.uppercased()).font(.system(.caption2, design: .monospaced, weight: .bold)).tracking(1.5) }
}

// MARK: - BookShelf

struct BookShelf: View {
    @ObservedObject var book: AnimalBook
    @State private var path: [AnimalPage] = []
    @State private var showPhotos = false
    @State private var query = ""
    @State private var filter = "All animals"
    private var matches: [AnimalPage] {
        book.pages.filter { page in
            let includesText = query.isEmpty || (page.title + " " + page.subtitle).localizedCaseInsensitiveContains(query)
            let inGroup = filter == "All animals" || (filter == "Tigers" && page.title.localizedCaseInsensitiveContains("tiger"))
                || (filter == "My pages" && (book.custom.contains(page.id) || !(book.works[page.id]?.fills.isEmpty ?? true)))
            return includesText && inGroup
        }
    }
    @AppStorage("coloring.lastPage") private var lastPage = "bengal"

    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    ZStack(alignment: .bottomLeading) {
                        Rectangle().fill(Color.jungle)
                            .overlay { Image("Forest").resizable().scaledToFill() }.clipped()
                        LinearGradient(colors: [.clear, Color.black.opacity(0.78)], startPoint: .center, endPoint: .bottom)
                        Text("Tiger Trails").font(.system(size: 44, weight: .bold, design: .serif))
                            .foregroundStyle(.white).padding(18)
                    }.frame(height: 188)
                    HStack(spacing: 12) {
                        let feature = book.pages.first { $0.id == lastPage } ?? book.originals[0]
                        Button { path.append(feature) } label: {
                            HStack {
                                Image(systemName: "bookmark.fill")
                                VStack(alignment: .leading, spacing: 3) {
                                    FieldLabel(text: "Open field page")
                                    Text(feature.title).font(.system(.headline, design: .serif))
                                }
                                Spacer()
                                Image(systemName: "arrow.right")
                            }.padding(12).foregroundStyle(Color.vellum).background(Color.jungle)
                        }.accessibilityIdentifier("featured")
                        Button { showPhotos = true } label: {
                            Image(systemName: "photo.badge.plus").frame(width: 50, height: 52)
                                .overlay(Rectangle().strokeBorder(Color.moss))
                        }.accessibilityLabel("Create a photo page").accessibilityIdentifier("import")
                    }.buttonStyle(.plain)
                    HStack(alignment: .firstTextBaseline) {
                        Text("Species index").font(.system(.title2, design: .serif, weight: .bold))
                        Spacer()
                        Text(matches.count == 1 ? "1 page" : "\(matches.count) pages")
                            .font(.caption.monospacedDigit()).foregroundStyle(Color.moss)
                            .accessibilityIdentifier("collectionCount")
                    }
                    HStack {
                        Image(systemName: "magnifyingglass").foregroundStyle(Color.moss)
                        TextField("Find an animal", text: $query).autocorrectionDisabled().submitLabel(.search)
                        if !query.isEmpty { Button { query = "" } label: { Image(systemName: "xmark.circle.fill") }.accessibilityLabel("Clear search") }
                    }.padding(10).background(.white, in: RoundedRectangle(cornerRadius: 8))
                    Picker("Collection", selection: $filter) {
                        ForEach(["All animals", "Tigers", "My pages"], id: \.self) { Text($0) }
                    }.pickerStyle(.segmented)
                    if matches.isEmpty {
                        Text(filter == "My pages" && query.isEmpty ? "Your colored and imported pages will appear here." : "No matching animals.")
                            .font(.callout).foregroundStyle(Color.moss)
                    }
                    LazyVStack(spacing: 0) {
                        ForEach(matches) { page in
                            Divider().overlay(Color.moss.opacity(0.4))
                            Button { path.append(page) } label: {
                                HStack(spacing: 18) {
                                    if let sheet = book.sheet(page.id) {
                                        AnimalCanvas(sheet: sheet, painting: book.works[page.id] ?? Painting())
                                            .frame(width: 68, height: 68).clipShape(Circle())
                                            .overlay(Circle().strokeBorder(Color.moss.opacity(0.4)))
                                    }
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(page.title).font(.system(.title3, design: .serif, weight: .semibold))
                                        FieldLabel(text: page.subtitle).foregroundStyle(Color.moss)
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right").font(.caption)
                                }.padding(.vertical, 9).contentShape(Rectangle())
                            }.buttonStyle(.plain).accessibilityIdentifier("page-" + page.id)
                        }
                    }
                }.padding(.horizontal, 20).padding(.bottom, 20).frame(maxWidth: 650).frame(maxWidth: .infinity)
            }.scrollDismissesKeyboard(.interactively).foregroundStyle(Color.jungle).background(Color.vellum)
            .toolbar(.hidden, for: .navigationBar)
            .navigationDestination(for: AnimalPage.self) { page in
                FillStudio(book: book, page: page).onAppear { lastPage = page.id }
            }
            .sheet(isPresented: $showPhotos) {
                VStack(alignment: .leading, spacing: 18) {
                    Text("Make a coloring page").font(.system(.title, design: .serif, weight: .bold))
                    Text("Choose a photo with a clear subject. The book turns its light and dark areas into shapes you can fill.")
                    PhotoInput { data in
                        let page = try await book.importPhoto(data)
                        showPhotos = false; path.append(page)
                    }
                    Button("Cancel") { showPhotos = false }
                }.padding(24).presentationDetents([.medium]).presentationDragIndicator(.visible)
            }
        }
    }
}

// MARK: - FillStudio

struct FillStudio: View {
    @ObservedObject var book: AnimalBook
    let page: AnimalPage
    @AppStorage("coloring.ink") private var ink = 0xe87332
    @State private var zoom = false
    @State private var clearing = false

    private var work: Painting { book.works[page.id] ?? Painting() }
    var body: some View {
        ScrollView {
            if let sheet = book.sheet(page.id) {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        FieldLabel(text: page.subtitle)
                        Spacer()
                        Text("\(work.fills.count) filled").font(.caption.monospacedDigit()).accessibilityIdentifier("filled")
                    }.foregroundStyle(Color.moss)
                    InksPanel(ink: $ink)
                    GeometryReader { geo in
                        let side = geo.size.width
                        ScrollView([.horizontal, .vertical]) {
                            let canvasSide = zoom ? side * 2.5 : side
                            AnimalCanvas(sheet: sheet, painting: work)
                                .frame(width: canvasSide, height: canvasSide).contentShape(Rectangle())
                                .onTapGesture(coordinateSpace: .local) { location in
                                    let region = sheet.region(CGPoint(x: location.x / canvasSide, y: location.y / canvasSide))
                                    guard (work.fills[region] ?? 0xffffff) != ink else { return }
                                    book.change(page.id) { $0.append(.fill(region, ink)) }
                                }.accessibilityElement(children: .ignore)
                                .accessibilityLabel("Coloring canvas").accessibilityIdentifier("canvas")
                        }.defaultScrollAnchor(.center).scrollDisabled(!zoom).scrollIndicators(.hidden)
                    }.aspectRatio(1, contentMode: .fit)
                    .padding(10).background(.white)
                    .overlay(Rectangle().strokeBorder(Color.moss.opacity(0.45)))
                    .shadow(color: Color.jungle.opacity(0.15), radius: 3, y: 2)
                    HStack(spacing: 20) {
                        Button { book.change(page.id) { $0.cursor -= 1 } } label: { Image(systemName: "arrow.uturn.backward") }
                            .disabled(work.cursor == 0).accessibilityLabel("Undo")
                        Button { book.change(page.id) { $0.cursor += 1 } } label: { Image(systemName: "arrow.uturn.forward") }
                            .disabled(work.cursor >= work.edits.count).accessibilityLabel("Redo")
                        Spacer()
                        Button { zoom.toggle() } label: { Label(zoom ? "Fit" : "Zoom", systemImage: zoom ? "minus.magnifyingglass" : "plus.magnifyingglass") }
                        Button { clearing = true } label: { Image(systemName: "arrow.counterclockwise") }
                            .disabled(work.fills.isEmpty).accessibilityLabel("Clear page")
                    }.font(.headline).padding(.vertical, 6)
                    Text("Choose a swatch, then tap a shape.").font(.system(.callout, design: .serif)).italic()
                }.padding(.horizontal, 18).padding(.vertical, 10).frame(maxWidth: 590).frame(maxWidth: .infinity)
            }
        }.background(Color.vellum).foregroundStyle(Color.jungle)
        .navigationTitle(page.title).navigationBarTitleDisplayMode(.inline)
        .toolbar(.visible, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal) { Text(page.title).font(.headline) }
            ToolbarItem(placement: .topBarTrailing) {
                if let sheet = book.sheet(page.id) {
                    ExportArt(name: page.title) { AnimalCanvas(sheet: sheet, painting: work) }
                }
            }
        }
        .confirmationDialog("Clear the colors on this page?", isPresented: $clearing, titleVisibility: .visible) {
            Button("Clear page", role: .destructive) { book.change(page.id) { $0.append(.clear) } }
            Button("Cancel", role: .cancel) {}
        }
    }
}
