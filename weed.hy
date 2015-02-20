(import [__future__ [division]]
        [random     [shuffle]]
        math
        os
        easygui [*])

(setv humans 4)
(setv bots 0)

(defn create-deck [total-players]
  (do
    (setv deck [])
    (setv deck-set {:Weed1 10
                    :Weed2 10
                    :Weed3 6
                    :Weed4 3
                    :Steal 5
                    :WeedKiller 5
                    :Dandelion 5
                    :Hippie 3
                    :Busted 2
                    :Potzilla 1})
    (setv ndecks (.ceil math (/ total-players 4)))
    (for [cardname amount (.iteritems deckset)] (
        (.extend deck (* amount [cardname]))))
    ))