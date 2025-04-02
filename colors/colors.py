from colour import Color

colors = [
    Color("#8fbcbb"),
    Color("#88c0d0"),
    Color("#81a1c1"),
    Color("#7b9cc4"),

    Color("#bf616a"),
    Color("#d08770"),
    Color("#ebcb8b"),
    Color("#a3be8c"),
    Color("#b48ead"),
]


for color in colors:
    color.luminance = color.luminance * 1.1
    color.saturation = color.saturation * 1.3
    # print(color.luminance)

with open("output.txt", "w") as file:
    for color in colors:
        file.write(color.hex)
        file.write("\n")
