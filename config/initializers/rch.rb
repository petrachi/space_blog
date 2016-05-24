RKit.load :utilities, :active_record_utilities, :backtrace, :css, :decoration, :grid, :pagination, :dsl, :struct, :override, :frame, :parser

Cluster.configure sections: %i{Article Ressource Doc About}

# articles (blog)
# tool-box (groups of links to other ressources)
# documentation (rkit)
# about (cv)

# articles
# one item is an article

# ressources
# one item is a list of links (to web ressources) for a particular point (ex: "design patterns", or "rails books")
# and maybe with a little content on-top

# docs
# one item is the full doc about one "service" of rkit (ex: "decoration", or "dsl")

# abouts
# one item is the information about one author of articles OR rkit (ex "thomas petrachi")
# including CV, git profile, twitter ...







# Hydrogen.seed
Hydrogen.seed update: true
# Hydrogen.seed reset: true

# Hydrogen.seed update: true ,reset: true#, logger: {level: :debug}
