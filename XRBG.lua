screenshotsFolder = SCRIPT_DIRECTORY .. "XRGB/"

photos = {}
i = 0

for photo in io.popen('dir "'.. screenshotsFolder ..'" /b'):lines() do
    i = i + 1
    photos[i] = photo
end

math.randomseed(os.time())
rand = math.random(#photos)
print(rand)
file = screenshotsFolder .. photos[math.floor(rand)]

backgroundPath = string.gsub(SCRIPT_DIRECTORY, "plugins/FlyWithLua/Scripts/", "bitmaps/interface11/image_background_screenshot_for_stack.png")

print(file)
print(backgroundPath)
os.execute("powershell copy '" .. file .. "' '" .. backgroundPath .. "'")