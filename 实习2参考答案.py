import requests
z = 15
LU_x = 13518000
LU_y = 3638100
RL_x = 13521000
RL_y = 3636000
d = 40075014/(2**int(z))
LU_row = int((20037507-LU_y)/d)
LU_col = int((LU_x-(-20037507))/d)
RL_row = int((20037507-RL_y)/d)
RL_col = int((RL_x-(-20037507))/d)
for row in range(LU_row,RL_row+1):
    for col in range(LU_col,RL_col+1):
        url = f"https://a.tile.openstreetmap.org/{z}/{col}/{row}.png"
        response = requests.get(url)
        f = open(f"c:/tmp20210316/{z}_{col}_{row}.png", "wb")
        f.write(response.content)
        f.close()
        tile_LU_y = 20037507 - (d*row)
        tile_LU_x = (d*col) - 20037507
        x_resolution = d/256
        y_resolution = d/256
        text = f"{x_resolution}\n0\n0\n-{y_resolution}\n{tile_LU_x}\n{tile_LU_y}"
        f = open(f"c:/tmp20210316/{z}_{col}_{row}.pngw", "w")
        f.write(text)
        f.close()
