<!-- gf-brief source=bb57b450a4be06bfb1f6d94977d2423089294c5fe7f34ac1373933ecdd079a7d written=2026-11-18T14:19:28+03:00 -->
# Tiger Trails

## What it is

“Tiger Trails” is a tap-to-fill coloring book for people who enjoy coloring tigers and other wildlife. It comes with 100 illustrated pages and turns a photo you choose or take into a page with fillable shapes.

## Launch and onboarding

1. A cold launch opens “Tiger Trails” directly to the collection in light appearance. There is no first-run tutorial, welcome sheet, or permission prompt.
2. On first launch, the featured button reads “OPEN FIELD PAGE” with “Bengal tiger” below it. Tap it to open that page, or tap a row under “Species index” to choose another.
3. The initial filter is “All animals,” the empty search field says “Find an animal,” and the count reads “100 pages.” On later cold launches, the collection still opens first, and “OPEN FIELD PAGE” shows the most recently opened page.

## Screens

### “Tiger Trails”

A forest banner displays the app title. The collection scrolls vertically and has no tab bar.

- “OPEN FIELD PAGE” opens the page named on the button. It starts with “Bengal tiger” and updates whenever a page is opened.
- The photo-plus icon, labeled “Create a photo page” for accessibility, opens “Make a coloring page.”
- “Species index” shows the number of results as “1 page” or a number followed by “pages,” such as “100 pages” or “0 pages.”
- “Find an animal” filters the list as you type. It matches any part of a page’s title or subtitle, ignoring case. The keyboard uses the system Search action. The clear icon, labeled “Clear search” for accessibility, appears when there is text and clears it. Scrolling can dismiss the keyboard.
- The segmented control, labeled “Collection” for accessibility, offers “All animals,” “Tigers,” and “My pages.” “All animals” includes built-in and imported pages. “Tigers” includes pages with “tiger” anywhere in the title. “My pages” includes every imported page and each built-in page with at least one current color fill. The search text continues to apply when you switch filters.
- Each row is a button with a circular preview of the page in its current state, a title, an uppercase subtitle, and a chevron. Tap it to open that page for coloring. The built-in row titles and subtitles are listed under “Starter content and resume.” Imported rows are titled “Photo study 1,” “Photo study 2,” and so on, with the subtitle “FROM YOUR PHOTOS.”

### “Make a coloring page”

The sheet says “Choose a photo with a clear subject. The book turns its light and dark areas into shapes you can fill.”

- “Photo library” opens the system photo picker for one image. Selecting a photo starts conversion. Dismissing the picker without choosing an image returns to the sheet.
- “Camera” opens the full-screen system camera if available and allowed. Use the shutter to take a photo, then “Use Photo” to accept it or “Retake” to take another. Canceling returns to the sheet. The system supplies the camera and photo picker controls and localizes their labels.
- “Cancel” closes the sheet. The sheet also has a visible drag handle and can be dismissed by swiping down.
- While a photo is processing, a spinner is labeled “Loading photo” for accessibility. A successful import closes the sheet, adds the next numbered “Photo study” to the collection, and opens it for coloring.
- “Camera and photos” is the title of the import and camera alerts. “OK” dismisses the alert. When camera access has been denied, “Open Settings” opens the app’s system settings.

### Coloring page

The navigation title is the page name, for example “Bengal tiger.” The system back chevron returns to the collection. The page shows its uppercase subtitle and a count such as “0 filled” or “1 filled.”

- “FIELD PALETTE” displays the currently selected color name. The swatches are labeled for accessibility, in order, “Marigold,” “Tangerine,” “Brick,” “Rose,” “Lilac,” “Cobalt,” “Sky,” “Teal,” “Fern,” “Pear,” “Sand,” “Umber,” “Charcoal,” and “Paper.” Tapping a swatch selects it and moves the checkmark to it. The initial selection is “Tangerine.” “Paper” removes the fill from any colored shape you tap.
- The artwork is labeled “Coloring canvas” for accessibility. Tap a shape to fill or recolor it with the selected swatch. The instruction beneath it reads “Choose a swatch, then tap a shape.”
- The curved-arrow icons are labeled “Undo” and “Redo” for accessibility. They move backward and forward through that page’s fill and clear actions.
- “Zoom” enlarges the canvas to 2.5 times its fitted size. Drag the enlarged canvas to see other areas. “Fit” restores the full-page view.
- The reset icon is labeled “Clear page” for accessibility. It asks “Clear the colors on this page?” Tap “Clear page” to remove the fills or “Cancel” to keep them. The clear can be undone.
- The export icon is labeled “Export.” “Save PNG to Files” opens the system save dialog with the page title as the suggested name. “Save to Photos” adds the PNG to Photos if permission allows it. Both export the artwork at its current state, including an uncolored or partially colored page, as a square 1800 × 1800 PNG.
- Export feedback appears under “Export artwork” with “OK” to dismiss it. The messages are “Your artwork was saved to Photos.”, “Allow access in Settings or choose Save PNG to Files.”, “Couldn’t create the PNG.”, “Couldn’t save your artwork to Photos.”, and “Couldn’t save the PNG.”

## Features

- “Species index” with searchable wildlife titles and scene subtitles, current artwork previews, and the “All animals,” “Tigers,” and “My pages” filters.
- “OPEN FIELD PAGE” for reopening the most recently visited page.
- “FIELD PALETTE” with 14 swatches, tap-to-fill coloring, recoloring, the “Paper” swatch for removing individual fills, and a live “filled” count.
- “Undo,” “Redo,” “Clear page,” and “Zoom” / “Fit” on each page.
- “Make a coloring page” from an image selected with “Photo library” or taken with “Camera.”
- “Export” with “Save PNG to Files” and “Save to Photos.”
- Automatic saving of imported pages, coloring progress, and per-page undo and redo history. The selected swatch is remembered across pages and launches.

## Behaviours that can look like bugs

- An untouched “My pages” collection reads “Your colored and imported pages will appear here.” Fill a built-in shape with any swatch other than “Paper,” or import a photo. Clearing or undoing all fills removes a built-in page from “My pages.” Imported pages stay there when blank. Use “All animals” to find a built-in page again.
- A search with no results reads “No matching animals.” Tap “Clear search,” change “Find an animal,” or choose “All animals” to broaden the results. Switching filters keeps the query.
- “Undo” starts disabled until there is an edit. “Redo” is enabled only after undoing something and becomes unavailable if you make a new edit from that point. “Clear page” is disabled when no fills remain.
- The “filled” count tracks currently colored shapes. Recoloring a shape leaves the count the same, tapping a shape with its current swatch does nothing, and using “Paper” on a colored shape lowers the count. If a tap falls outside a fillable shape, tap inside a shape or use “Zoom” for a closer view.
- “Photo library” and “Camera” are disabled while “Loading photo” is in progress. A successful import immediately opens the new page and appends another numbered “Photo study” to the collection. Canceling the camera returns to “Make a coloring page.”
- If “Camera and photos” says “A camera is unavailable on this device. Choose a picture from your photo library.”, dismiss with “OK” and use “Photo library.” For “Camera access is turned off. You can still choose a picture from your photo library.”, use “Photo library” or enable camera access in Settings. “Open Settings” is offered when access was denied.
- If “Camera and photos” says “This photo could not be opened. Try another image.”, dismiss with “OK” and pick a different image. If it says “The photo could not be saved. Please try again.”, dismiss with “OK” and retry the capture.
- If “Export artwork” says “Allow access in Settings or choose Save PNG to Files.”, dismiss with “OK,” then enable Photos access in Settings or use “Save PNG to Files.” Canceling the system Files save dialog leaves you on the coloring page without an error.
- If “Coloring book” says “Your changes could not be saved. Check the available space on this device.”, dismiss with “OK,” free up device space, and repeat the edit. A failed save leaves the last saved coloring in place.

## Starter content and resume

The app includes 100 uncolored pages, in the order below. “My pages” starts empty. Unfinished work is saved after each edit. Reopen any page from “Species index” or “My pages,” or use “OPEN FIELD PAGE” for the last page visited. The fills, undo and redo history, and selected swatch are still available after relaunch. The collection starts back on “All animals” with a blank search, and a reopened canvas starts fitted.

| Page title | Subtitle |
| --- | --- |
| “Bengal tiger” | “BAMBOO GROVE” |
| “Asian elephant” | “RIVER BEND” |
| “Mangrove tiger” | “TIDAL CHANNELS” |
| “Tiger cub chase” | “MEADOW PLAY” |
| “Rock-hopping tiger” | “MOUNTAIN STREAM” |
| “Red panda” | “FOREST CANOPY” |
| “Frost-whiskered tiger” | “WINTER PORTRAIT” |
| “Listening tiger” | “FOREST SOUNDS” |
| “Horned owl” | “MOONLIT PINES” |
| “Clouded leopard” | “RAINFOREST BRANCH” |
| “Tiger in the grasses” | “GOLDEN SAVANNA” |
| “Tiger cub” | “LOTUS POND” |
| “Raccoon at the creek” | “CREEK BANK” |
| “Lotus tiger” | “FLOATING GARDEN” |
| “Yawning tiger cub” | “MORNING DEN” |
| “Sea turtle” | “CORAL GARDEN” |
| “Tiger scent mark” | “OLD SAL TREE” |
| “Tiger in fresh snow” | “SNOWDRIFTS” |
| “Woodland deer” | “WILDFLOWER MEADOW” |
| “Tiger paw wash” | “QUIET CLEARING” |
| “Red-crowned parakeet” | “FOREST FRUIT” |
| “Forest rabbit” | “MUSHROOM HOLLOW” |
| “Tiger in a fig tree” | “FOREST PERCH” |
| “Arctic fox” | “TUNDRA DEN” |
| “Riverside tiger” | “DRINKING POOL” |
| “Cascade tiger” | “WATERFALL LEDGE” |
| “Tiger cub and moth” | “NIGHT GARDEN” |
| “Climbing tiger” | “FORKED TRUNK” |
| “Winter tiger” | “SNOWY PINES” |
| “Tiger at the ice hole” | “FROZEN RIVER” |
| “Sunbathing tiger” | “WARM BOULDER” |
| “Snow leopard” | “ALPINE ROCKS” |
| “Indian gaur” | “WOODLAND GRAZING” |
| “Tiger on black sand” | “COASTAL FOREST” |
| “Prairie bison” | “TALLGRASS PLAINS” |
| “Binturong” | “NIGHT CANOPY” |
| “Pebble beach tiger” | “ROCKY SHORE” |
| “Giant panda” | “BAMBOO GROVE” |
| “Tiger grooming time” | “FAMILY LIFE” |
| “Tiger tracks” | “SANDY PATH” |
| “Snow cave tiger” | “WINTER SHELTER” |
| “Diving kingfisher” | “RIVERBANK” |
| “Tiger scratching bark” | “CLAW MARKS” |
| “Sambar stag” | “MARSH FRINGE” |
| “Sumatran tiger” | “FERN FOREST” |
| “Orchard tiger” | “FRUIT TREES” |
| “Pika among rocks” | “ALPINE MEADOW” |
| “Tiger and cub” | “FAMILY PORTRAIT” |
| “Reed bed tiger” | “MARSH EDGE” |
| “Tiger cub tug” | “FALLEN VINE” |
| “Rhinoceros” | “ACACIA SHADE” |
| “Ridge trail tiger” | “OPEN HIGHLANDS” |
| “Tiger on the birch trail” | “BIRCH WOODLAND” |
| “Tail-chasing tiger” | “CUB MEADOW” |
| “Orangutan” | “RAINFOREST CANOPY” |
| “Smooth-coated otters” | “RIVER FAMILY” |
| “Tiger at sunrise” | “HILLTOP DAWN” |
| “Forest tapir” | “LEAFY HOLLOW” |
| “Crowned horned lizard” | “DESERT WASH” |
| “Driftwood tiger” | “RIVER CROSSING” |
| “Fruit-tree hornbill” | “TROPICAL CANOPY” |
| “Tiger swimming lesson” | “FOREST POOL” |
| “Tiger at the cave” | “ROCK SHELTER” |
| “Tiger and snowflakes” | “FIRST SNOWFALL” |
| “Blossom tiger” | “JUNGLE FLOWERS” |
| “Tiger at dusk” | “FIREFLY GLADE” |
| “Golden langur” | “CANOPY LEAP” |
| “Fishing cat” | “WETLAND REEDS” |
| “Tiger at the salt lick” | “MINERAL SPRING” |
| “Blackbuck antelope” | “OPEN PLAIN” |
| “Hanging sloth” | “EMERALD CANOPY” |
| “Reflection tiger” | “STILL WATER” |
| “Tiger cub hideout” | “GNARLED ROOTS” |
| “Tropical toucan” | “FOREST BRANCHES” |
| “Tiger grass tunnel” | “ELEPHANT GRASS” |
| “Tiger on a frozen log” | “ICE AND TIMBER” |
| “Windblown tiger” | “GUSTY GRASSLAND” |
| “Capybara” | “LILY POND” |
| “Malayan sun bear” | “HONEY TREE” |
| “Tiger in the bamboo rain” | “BAMBOO THICKET” |
| “Spotted jaguar” | “RIVER FOREST” |
| “Monsoon tiger” | “RAIN SHOWER” |
| “Tumbling tiger cub” | “LEAF LITTER” |
| “Sleeping tiger” | “SUNLIT ROCKS” |
| “Tiger on the scree” | “LOOSE STONES” |
| “Taiga tiger pair” | “PINE FOREST” |
| “Floating otter” | “QUIET WATER” |
| “Tiger in banyan roots” | “FOREST GIANT” |
| “Indian peafowl” | “FOREST FLOOR” |
| “Curled pangolin” | “FOREST BURROW” |
| “Marsh crane” | “WET MEADOW” |
| “Sandbar tiger” | “RIVER ISLAND” |
| “Tiger cub lookout” | “LOW STUMP” |
| “Howling wolf” | “PINE CLEARING” |
| “Tiger under an arch” | “STONE ARCH” |
| “Tiger at thaw” | “MELTING ICE” |
| “Woodland lynx” | “FALLEN TIMBER” |
| “Watchful tiger” | “RAVINE RIM” |
| “Water buffalo” | “FLOODPLAIN” |
| “Lakeside moose” | “NORTHERN MEADOW” |

## Permissions

- **Camera.** Tapping “Camera” in “Make a coloring page” requests permission the first time, if the device has a camera. The usage description is “Photograph an animal or another subject to make a coloring page.”
- **Add to Photos.** Choosing “Save to Photos” from “Export” requests permission to add artwork to Photos. The usage description is “Save your finished coloring page to Photos.”
- “Photo library” uses the system picker to receive just the image the user selects, with no separate request for library-wide access. “Save PNG to Files” uses the system save dialog. No permission is requested on launch.

## Absent

Login or accounts, in-app purchases, ads, analytics, an account deletion flow, and an App Tracking Transparency prompt are absent. Users create private artwork by coloring pages and importing photos. There is no in-app publishing, public gallery, or community content.

## Data and support

Photo conversion runs on the device. The app keeps imported coloring pages, artwork edits, the selected swatch, and the last opened page on that device. It has no app-operated upload or sync. Exporting places a copy in Photos or in the location chosen in Files, where the destination’s own sync settings may apply. There is no on-screen “Contact” or “Support” control and no in-app settings screen.

## Scanning and health

None.

## Platform

- iPhone and iPad, with a minimum of iOS 17.0.
- iPhone supports portrait. iPad supports portrait, upside-down portrait, and landscape in both directions.
- App-authored screens are in English. System-provided screens and controls follow the device language. No region-specific content, feature gates, or region selector appear in the native app.

## Category

Graphics & Design.
