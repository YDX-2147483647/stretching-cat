// https://www.unicode.org/emoji/proposals.html

#let project(emoji-name: none, submitter: none, date: datetime.today(), body) = {
  let title = "Proposal for Emoji: " + emoji-name
  set document(title: title, author: submitter)

  set text(lang: "en", font: ("New Computer Modern", "Source Han Serif"))

  align(center)[
    #text(size: 2em, weight: "bold", title)
    #v(2em, weak: true)
    / Submitter: #submitter
    / Date: #date.display()
  ]

  show heading.where(level: 1): set heading(numbering: "I.")
  show heading.where(level: 2): set heading(numbering: (..nums, n) => numbering("a.", n))

  show link: set text(fill: blue)
  show link: it => it + super(emoji.chain)

  set table(stroke: none, align: center + horizon)

  body
}

#let emoji-ordering(category, subcategory) = [
  #category #emoji.triangle.r #link(
    "https://www.unicode.org/emoji/charts/emoji-ordering.html#" + subcategory,
    subcategory,
  )
]

#let emoji-inline = box(image("stretching-cat.svg", height: 1em))
#let color-box(fill) = box(fill: fill, height: 0.8em, width: 0.8em, baseline: 0.15em)

#show: project.with(
  emoji-name: "Stretching Cat",
  submitter: "Y.D.X.",
)

= Identification

/ Name: Stretching Cat
/ Keywords: relax, yoga, sport, muscle, wake up
/ Category: #emoji-ordering("Animals & Nature", "animal-mammal") (or #emoji-ordering("People & Body", "person-sport"))

= Images

== Example images

#figure(
  table(
    columns: 3,
    [], table.vline(), [*color*], [*black & white*],
    table.hline(),
    [*72px*],
    image("stretching-cat.svg", width: 72pt),
    image("stretching-cat-black.svg", width: 72pt),
    [*18px*],
    image("stretching-cat.svg", width: 18pt),
    image("stretching-cat-black.svg", width: 18pt),
  ),
)

== License

I certify I am the creator of the images and have appropriate licenses for use by the UTC.

The images are modified from
#link("https://github.com/twitter/twemoji/blob/d94f4cf793e6d5ca592aa00f58a88f6a4229ad43/assets/svg/1f408.svg")[🐈 U+1F408 #smallcaps(lower[CAT]) of Twemoji],
#link("https://github.com/twitter/twemoji/blob/d94f4cf793e6d5ca592aa00f58a88f6a4229ad43/LICENSE-GRAPHICS")[licensed under CC BY 4.0].

= Factors for Inclusion

== Expresses multiple concepts

Stretching is a biological behavior of animals.
Extending out two arms (or feet) is a natural way to stretch, at least for house cats (@fig:stretching-cat), tigers (@fig:stretching-tiger), giraffes (@fig:stretching-giraffe), #link("https://en.wikipedia.org/wiki/File:Young_Red_Fox_stretching.jpg")[foxes], #link("https://commons.wikimedia.org/wiki/File:Stretching_(3779422604).jpg")[wolves] and #link("https://en.wikipedia.org/wiki/File:Coyote_Stretching_(6811853436).jpg")[coyotes].
Stretching represents the following concepts in this sense, all of which a _stretching cat_
inherits.

- to stretch the muscles
- relaxed, comfort, self-indulgent
- safe, trust of others (because stretching positions are often open to attack)

Stretching evolves into a form of physical exercise.
There is a pose in Yoga and Pilates called the _cat stretch_.

- before or after exercise, warm-up
- Yoga and Pilates
- fitness
- graceful

#figure(
  image("img/video-shot.png", width: 20%),
  caption: [
    A house cat is stretching \
    own work
  ],
) <fig:stretching-cat>

#figure(
  image("img/Giraffa_reticulata_64831465.jpg", width: 40%),
  caption: [
    A stretching Reticulated Giraffe (_Giraffa reticulata_) in Kenya \
    #link("https://en.wikipedia.org/wiki/File:Giraffa_reticulata_64831465.jpg")[by William Stephens, licensed under CC BY 4.0]
  ],
) <fig:stretching-giraffe>

== Can be used with other emoji to convey additional concepts

#[
  #show strong: set text(size: 2em, baseline: 0.2em)

  *#emoji-inline 💪 🦵* = stretch arms and legs

  *#emoji-inline/🤸* = prepare / perform

  *⏰ 🛏 #emoji-inline* = wake up

  *😸 #emoji-inline* = express extreme happiness with the whole body

  *👋 #emoji-inline 🫂* = hello & welcome
]

== Breaks new ground

To my best knowledge, the emoji breaks new ground because of the followings.

- #emoji-inline uses an animal to represent a sport or an activity.
  (No need of ♀/♂ or 🏻🏼🏽🏾🏿 here.)

- #emoji-inline conveys the concept of stretching the muscles.

== Is legible and visually distinctive

Typically, #emoji-inline is a cat with its forelimbs or hindlimbs (but not both) stretched out.

It is distinctive from other emojis, even other cats #emoji-inline🐈🐱 or sports #emoji-inline🏃.

== Has a high usage level

Search frequencies of “stretching-cat” are relatively low, because it is not a fixed phrase like _black swan_.
People may describe a stretching cat in a full sentence, which is not covered by the following data.

=== Google Video Search

#figure(
  image("freq/Google Video Search - stretching-cat.png"),
  caption: [
    About 9,430,000 results for
    #link("https://www.google.com/search?tbm=vid&,q=stretching-cat")[stretching-cat]
  ],
)

#figure(
  image("freq/Google Video Search - cat-stretch.png"),
  caption: [
    About 6,160,000 results for
    #link("https://www.google.com/search?tbm=vid&q=cat-stretch")[cat-stretch]
  ],
)

#figure(
  image("freq/Google Video Search - elephant.png"),
  caption: [
    About 78,200,000 results for
    #link("https://www.google.com/search?tbm=vid&q=elephant")[elephant]
  ],
)

#pagebreak()
=== Google Books

#figure(
  image("freq/Google Books Search - stretching-cat.png"),
  caption: [
    About 1,090,000 results for
    #link("https://www.google.com/search?tbm=bks&q=stretching-cat")[stretching-cat]
  ],
)

#figure(
  image("freq/Google Books Search - cat-stretch.png"),
  caption: [
    About 753,000 results for
    #link("https://www.google.com/search?tbm=bks&q=cat-stretch")[cat-stretch]
  ],
)

#figure(
  image("freq/Google Books Search - elephant.png"),
  caption: [
    About 25,600,000 results for
    #link("https://www.google.com/search?tbm=bks&q=elephant")[elephant]
  ],
)

#pagebreak()
=== Google Trends: Web Search

#figure(
  image("freq/Google Web Trends.png"),
  caption: link("https://trends.google.com/trends/explore?date=all&q=elephant,stretching-cat,stretching,muscle&hl=en-US")[elephant, stretching-cat, stretching, muscle],
)

=== Google Trends: Image Search

#figure(
  image("freq/Google Image Trends.png"),
  caption: link("https://trends.google.com/trends/explore?hl=en-US&date=all_2008&gprop=images&q=elephant,stretching-cat,stretching,muscle")[elephant, stretching-cat, stretching, muscle],
)

=== Google Books Ngram Viewer

I replace “cat” with “stretching-cat” because the latter is not indexed.

#figure(
  image("freq/Google Ngram Viewer.png"),
  caption: link("https://books.google.com/ngrams/graph?content=elephant%2Ccat%2Cstretching%2Cmuscle&year_start=1500&year_end=2019&corpus=en-2019&smoothing=3")[elephant, cat, stretching, muscle],
)

== Completes an incomplete category

(Not a compelling reason) Stretching completes the routine of exercise.

== Is needed for compatibility with popular existing systems

N/A

= Factors for Exclusion

== Already represented

No.

Existing closest emojis for stretching:
- ☺ U+263A #smallcaps(lower[WHITE SMILING FACE])
- ↔💪 U+2194 #smallcaps(lower[LEFT RIGHT ARROW]), U+1F4AA #smallcaps(lower[FLEXED BICEPS])
- 🧘 U+1F9D8 #smallcaps(lower[PERSON IN LOTUS POSITION]).
All of them can be misleading when conveying the concept. (e.g. ↔💪 = beat back and forth)

== Overly specific

No. Even a stretching _big_ cat is accepted.

#figure(
  image("img/Siberian_Tiger_by_Malene_Th.jpg", width: 20%),
  caption: [
    A Siberian tiger (_Panthera tigris altaica_) is stretching in a zoo in Denmark \
    #link("https://commons.wikimedia.org/wiki/File:Siberian_Tiger_by_Malene_Th.jpg")[by Malene Thyssen, licensed under CC BY-SA 3.0 Unported]
  ],
) <fig:stretching-tiger>

== Open-ended

No. The cat is chosen because it is an iconic animal that stretches. There is no need to add stretching 🐕🐦🐎🐑🐫🦖🐉.

== Transient

N/A

== Justified by an existing emoji

Justification for encoding the proposed emoji does not depend on analogy with other emoji that were encoded only for compatibility reasons.

= Other information

== Why a stretching _cat_ rather than a stretching _person_?

In human sports, there are numerous types of stretches. It is hard to use one single emoji to represent stretching in general, and many poses can be misinterpreted as injuries #emoji.face.bandage or gymnastics #emoji.gymnastics.

I noticed @fig:stretching-tiger in the summary of #link("https://en.wikipedia.org/w/index.php?title=Stretching&oldid=1235490494")[Stretching - Wikipedia] and realized that the cat stretch is common across species.
Moreover, #emoji-inline is an easy pose that shows healthy legs, removing ambiguities mentioned above.

== Is it the same as non-RGI #link("https://emojipedia.org/ninja-cat")[Ninja Cat in _Segoe Color Emoji_]?

- #emoji-inline is not a mascot. It is not related to any company. (Ninja Cat relates to Microsoft.)
- The cat stretch is a distinct concept that antedates humans. (Ninja Cat and its variants can be represented as emoji sequences, and all of them are artificial.)
