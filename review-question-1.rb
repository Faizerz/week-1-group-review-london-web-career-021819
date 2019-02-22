## QUESTION 1
require 'pry'
pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
def bulbasaur_ability(name, pokemon)
  pokemon.each do |pokemon_hash|
    if pokemon_hash[:name] == name
      pokemon_hash[:abilities].each do |ability_hash|
        return ability_hash[:ability][:url]
      end
    end
  end
end

# puts bulbasaur_ability('bulbasaur', pokemon)


# How would you return the first pokemon with base experience over 40?
def find_fourty(pokemon)
  pokemon.find do |pokemon|
    pokemon[:base_experience] > 40
  end
end
#
# puts find_fourty(pokemon)




# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def find_fourty(pokemon)
  pokemon.select do |pokemon|
    pokemon[:base_experience] > 40
  end
end

# puts find_fourty(pokemon)



# How would you return an array of all of the pokemon's names?
def poke_names(pokemon)
  pokemon.map do |poke|
    poke[:name]
  end
end

#
# puts poke_names(pokemon)




# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
def poke_weight(pokemon)
  pokemon.each do |pokemon_hash|
    return pokemon_hash[:weight]>60 ? true : false
  end
end
#
# puts poke_weight(pokemon)



#  whatever method you use should return true if there are any such pokemon, false if not.
