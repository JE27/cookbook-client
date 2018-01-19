require 'unirest'

response = Unirest.post(
                        "http://localhost:3000/recipes",
                        parameters: {
                                      title: "ice cubes",
                                      chef: "beaker",
                                      ingredients: "water",
                                      directions: "freeze the water"
                                    }
                        )

recipe_data = response.body

puts JSON.pretty_generate(recipe_data)