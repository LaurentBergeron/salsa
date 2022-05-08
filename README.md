# salsa
Recipe repository


design: 

- I want to search for a recipe giving a list of (Quantity, Ingredient), or just (Ingredient)
- I want to search for a recipe by other parameters too such as author, duration, vegetarian, etc
- I want users to be able to upload recipes
- When searching for ingredients they must auto-complete
- Ingredient substitions


longer term features:
- accounts with the abilty to "star" recipes
- exclude feature
- I want to be able to input personal commentary about a recipe or substitutions that were made


models:

Ingredient:
- Name: str
- GlutenFree: bool
- DairyFree: bool
- Vegetarian: bool
- Vegan: bool


Recipe:
- Ingredients: List[Quantity, Ingredient]
- Substitutions: List[Ingredient, Quantity, Ingredient]
- Author: str
- PrepTime: int
- CookTime: int
- Instructions: text with markup language?
- DateAdded: date
- Image: binary
- Language: Enum[French, English]

Look up https://github.com/MariiaSizova/breakfastapi