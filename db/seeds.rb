# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db=>seed (or created alongside the db with db=>setup).
#
# Examples=>
#
#   cities = definition.create([{ name=> 'Chicago' },
#   Mayor.create(name=> 'Emanuel', definition=> cities.first)

require 'json'

states_and_capitals_json = [
  {
    "definition"=> "Augusta",
    "term"=> "Maine",
  },
  {
    "definition"=> "Boston",
    "term"=> "Massachusetts",
  },
  {
    "definition"=> "Providence",
    "term"=> "Rhode Island",
  },
  {
    "definition"=> "Concord",
    "term"=> "New Hampshire",
  },
  {
    "definition"=> "Montpelier",
    "term"=> "Vermont",
  },
  {
    "definition"=> "Hartford",
    "term"=> "Connecticut",
  },
  {
    "definition"=> "Albany",
    "term"=> "New York",
  },
  {
    "definition"=> "Trenton",
    "term"=> "New Jersey",
  },
  {
    "definition"=> "Dover",
    "term"=> "Delaware",
  },
  {
    "definition"=> "Annapolis",
    "term"=> "Maryland",
  },
  {
    "definition"=> "Harrisburg",
    "term"=> "Pennsylvania",
  },
  {
    "definition"=> "Richmond",
    "term"=> "Virginia",
  },
  {
    "definition"=> "Raleigh",
    "term"=> "North Carolina",
  },
  {
    "definition"=> "Columbia",
    "term"=> "South Carolina",
  },
  {
    "definition"=> "Charleston",
    "term"=> "West Virginia",
  },
  {
    "definition"=> "Columbus",
    "term"=> "Ohio",
  },
  {
    "definition"=> "Tallahassee",
    "term"=> "Florida",
  },
  {
    "definition"=> "Atlanta",
    "term"=> "Georgia",
  },
  {
    "definition"=> "Lansing",
    "term"=> "Michigan",
  },
  {
    "definition"=> "Frankfort",
    "term"=> "Kentucky",
  },
  {
    "definition"=> "Indianapolis",
    "term"=> "Indiana",
  },
  {
    "definition"=> "Montgomery",
    "term"=> "Alabama",
  },
  {
    "definition"=> "Nashville",
    "term"=> "Tennessee",
  },
  {
    "definition"=> "Madison",
    "term"=> "Wisconsin",
  },
  {
    "definition"=> "Springfield",
    "term"=> "Illinois",
  },
  {
    "definition"=> "Jackson",
    "term"=> "Mississippi",
  },
  {
    "definition"=> "Baton Rouge",
    "term"=> "Louisiana",
  },
  {
    "definition"=> "Jefferson City",
    "term"=> "Missouri",
  },
  {
    "definition"=> "Little Rock",
    "term"=> "Arkansas",
  },
  {
    "definition"=> "Saint Paul",
    "term"=> "Minnesota",
  },
  {
    "definition"=> "Des Moines",
    "term"=> "Iowa",
  },
  {
    "definition"=> "Topeka",
    "term"=> "Kansas",
  },
  {
    "definition"=> "Lincoln",
    "term"=> "Nebraska",
  },
  {
    "definition"=> "Oklahoma City",
    "term"=> "Oklahoma",
  },
  {
    "definition"=> "Austin",
    "term"=> "Texas",
  },
  {
    "definition"=> "Pierre",
    "term"=> "South Dakota",
  },
  {
    "definition"=> "Bismarck",
    "term"=> "North Dakota",
  },
  {
    "definition"=> "Cheyenne",
    "term"=> "Wyoming",
  },
  {
    "definition"=> "Denver",
    "term"=> "Colorado",
  },
  {
    "definition"=> "Santa Fe",
    "term"=> "New Mexico",
  },
  {
    "definition"=> "Salt Lake City",
    "term"=> "Utah",
  },
  {
    "definition"=> "Helena",
    "term"=> "Montana",
  },
  {
    "definition"=> "Phoenix",
    "term"=> "Arizona",
  },
  {
    "definition"=> "Boise",
    "term"=> "Idaho",
  },
  {
    "definition"=> "Carson City",
    "term"=> "Nevada",
  },
  {
    "definition"=> "Sacramento",
    "term"=> "California",
  },
  {
    "definition"=> "Olympia",
    "term"=> "Washington",
  },
  {
    "definition"=> "Salem",
    "term"=> "Oregon",
  },
  {
    "definition"=> "Juneau",
    "term"=> "Alaska",
  },
  {
    "definition"=> "Honolulu",
    "term"=> "Hawaii"
  }]







one_hundred_common_SAT_words_json = [{"definition" => "abbreviate",
"term" =>  "shorten, abridge"},
{"definition" => "abstinence",
"term" =>  "act of refraining from"},
{"definition" => "adulation",
"term" => "high praise"},
{"definition" => "adversity",
"term" => "misfortune"},
{"definition" => "aesthetic",
"term" => "pertaining to beauty"},
{"definition" => "amicable",
"term" =>  "agreeable"},
{"definition" => "anachronistic",
"term" => "out-of-date"},
{"definition" => "anecdote",
"term" =>  "short account of event"},
{"definition" => "anonymous",
"term" => "nameless"},
{"definition" => "antagonist",
"term" =>  "opponent"},
{"definition" => "arid",
"term" => "extremely dry"},
{"definition" => "assiduous",
"term" => "hard-working"},
{"definition" => "asylum",
"term" =>  "sanctuary"},
{"definition" => "benevolent",
"term" =>  "friendly, helpful"},
{"definition" => "camaraderie",
"term" => "trust among friends"},
{"definition" => "censure",
"term" => "to criticize harshly"},
{"definition" => "circuitous",
"term" =>  "indirect, roundabout"},
{"definition" => "clairvoyant",
"term" => "able to see the future"},
{"definition" => "collaborate",
"term" => "to work together"},
{"definition" => "compassion",
"term" =>  "sympathy, mercy"},
{"definition" => "compromise",
"term" =>  "to settle differences"},
{"definition" => "condescending",
"term" => "patronizing"},
{"definition" => "conditional",
"term" => "provisional, contingent"},
{"definition" => "conformist",
"term" =>  "follower of customs"},
{"definition" => "congregation",
"term" =>  "crowd of people"},
{"definition" => "convergence",
"term" => "joining of parts"},
{"definition" => "deleterious",
"term" => "harmful"},
{"definition" => "demagogue",
"term" => "rabble-rousing leader"},
{"definition" => "digression",
"term" =>  "straying from main point"},
{"definition" => "diligent",
"term" =>  "hard-working"},
{"definition" => "discredit",
"term" => "dishonor, disgrace"},
{"definition" => "disdain",
"term" => "to regard with scorn"},
{"definition" => "divergent",
"term" => "variant, moving apart"},
{"definition" => "empathy",
"term" => "sharing of feelings"},
{"definition" => "emulate",
"term" => "follow an example"},
{"definition" => "enervating",
"term" =>  "tiring, weakening"},
{"definition" => "enhance",
"term" => "improve, augment"},
{"definition" => "ephemeral",
"term" => "momentary, fleeting"},
{"definition" => "evanescent",
"term" =>  "short-lived, as an image"},
{"definition" => "exasperation",
"term" =>  "irritation, frustration"},
{"definition" => "exemplary",
"term" => "outstanding"},
{"definition" => "extenuating",
"term" => "guilt diminishing"},
{"definition" => "florid",
"term" =>  "flushed, ornate"},
{"definition" => "fortuitous",
"term" =>  "lucky"},
{"definition" => "frugal",
"term" =>  "thrifty"},
{"definition" => "hackneyed",
"term" => "overused, cliched"},
{"definition" => "haughty",
"term" => "arrogant, condescending"},
{"definition" => "hedonist",
"term" =>  "pleasure seeker"},
{"definition" => "hypothesis",
"term" =>  "theory requiring proof"},
{"definition" => "impetuous",
"term" => "rash, impulsive"},
{"definition" => "impute",
"term" =>  "to attribute to someone"},
{"definition" => "incompatible",
"term" =>  "unable to work together"},
{"definition" => "inconsequential",
"term" => "trivial"},
{"definition" => "inevitable",
"term" =>  "unavoidable, certain"},
{"definition" => "integrity",
"term" => "honesty, decency"},
{"definition" => "intrepid",
"term" =>  "fearless, adventurous"},
{"definition" => "intuitive",
"term" => "instinctive, untaught"},
{"definition" => "jubilation",
"term" =>  "joy, exultation"},
{"definition" => "lobbyist",
"term" =>  "persuader of legislators"},
{"definition" => "longevity",
"term" => "long life"},
{"definition" => "mundane",
"term" => "ordinary, common"},
{"definition" => "nonchalant",
"term" =>  "calm, casual"},
{"definition" => "novice",
"term" =>  "beginner"},
{"definition" => "opulent",
"term" => "wealthy"},
{"definition" => "orator",
"term" =>  "speaker"},
{"definition" => "ostentatious",
"term" =>  "displaying wealth"},
{"definition" => "parched",
"term" => "dried up"},
{"definition" => "perfidious",
"term" =>  "disloyal"},
{"definition" => "precocious",
"term" =>  "talented beyond ones age"},
{"definition" => "pretentious",
"term" => "pompous, self-important"},
{"definition" => "procrastinate",
"term" => "to delay unnecessarily"},
{"definition" => "prosaic",
"term" => "run-of-the-mill"},
{"definition" => "prosperity",
"term" =>  "wealth, success"},
{"definition" => "provocative",
"term" => "inflammatory"},
{"definition" => "prudent",
"term" => "wise, careful, cautious"},
{"definition" => "querulous",
"term" => "irritable"},
{"definition" => "rancorous",
"term" => "hateful"},
{"definition" => "reclusive",
"term" => "withdrawn, hermit-like"},
{"definition" => "reconciliation",
"term" =>  "agreement after a quarrel"},
{"definition" => "renovation",
"term" =>  "state of being renewed"},
{"definition" => "resilient",
"term" => "quick to recover"},
{"definition" => "restrained",
"term" =>  "controlled, restricted"},
{"definition" => "reverence",
"term" => "profound respect"},
{"definition" => "sagacity",
"term" =>  "wisdom"},
{"definition" => "scrutinize",
"term" =>  "to observe carefully"},
{"definition" => "spontaneity",
"term" => "impulsive action"},
{"definition" => "spurious",
"term" =>  "phony, false"},
{"definition" => "submissive",
"term" =>  "meek"},
{"definition" => "substantiate",
"term" =>  "to verify, confirm"},
{"definition" => "subtle",
"term" =>  "elusive, sly, ambiguous"},
{"definition" => "superficial",
"term" => "lacking in depth"},
{"definition" => "superfluous",
"term" => "more than enough"},
{"definition" => "suppress",
"term" =>  "to end an activity"},
{"definition" => "surreptitious",
"term" => "secret, stealthy"},
{"definition" => "tactful",
"term" => "diplomatic, polite"},
{"definition" => "tenacious",
"term" => "persistent, resolute"},
{"definition" => "transient",
"term" => "temporary, fleeting"},
{"definition" => "venerable",
"term" => "respectable due to age"},
{"definition" => "vindicate",
"term" => "to clear from blame"},
{"definition" => "wary",
"term" => "watchful, alert"}]

IncludedDeck.create(title: "U.S. States and Capitals", term_count: 50, cards: states_and_capitals_json)
IncludedDeck.create(title: "One hundred common SAT words", term_count: 100, cards: one_hundred_common_SAT_words_json)

# Quizlet Set ID's to grab
quizlet_deck_ids = [4173510,443018,5255659]

quizlet_deck_ids.each do |deck_number|


## ACCESS TOKEN FOR NEXT LINE IS NEEDED FOR SEEDING ##
sets = JSON.parse(`curl -H "Authorization: Bearer 3TG7vrEYdYfzNE4yKCa3RM57fVrsgY3T2Qakkh2v" "https://api.quizlet.com/2.0/sets/#{deck_number}"`)
cards =  sets["terms"].map { |hash| {"term" => hash["term"] , "definition"=> hash["definition"]} }
IncludedDeck.create(title: sets["title"], term_count: sets["term_count"], cards: cards)

end


# puts sets["title"]

# p "*"*50
# p sets["terms"]
# p "*"*50



