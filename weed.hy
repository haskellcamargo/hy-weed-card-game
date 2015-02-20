; Import stuff
(import [__future__ [division]]
        [random     [shuffle]]
        math
        os
        easygui [*])

; ---------------- Game settings --------------
; Humans amount
(setv humans 4)
; Bots amount
(setv bots 0)

; Decks Generator, return as array, totalplayers = number of players + 
; number of bots
(defn create-deck [total-players]
  (do
    ; Creates the list "deck"
    (setv deck [])
    
    ; Creates the dictionary "deckset"
    ; Defines cards types and how many you have in one deck with the
    ; dictionary "deckset".
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
    ; Generates 1 extra deck every 4 totalplayers.
    (setv ndecks (.ceil math (/ total-players 4)))
    ; Iterates each card type in deckset dictionary
    (for [cardname amount (.iteritems deckset)] (
        ; And add an amount of them to the deck array
        (.extend deck (* amount [cardname]))))
    ; Multiplies the deck array for each deck we are gonna use
    (setv deck (* ndeck deck))))