local actualSetObjectCamera = setObjectCamera

function setObjectCamera(object,camera)
	if version == '1.0' then
		if camera == "game" then camera = "camGame" end
		if camera == "camgame" then camera = "camGame" end
	
		if camera == "hud" then camera = "camHUD" end
		if camera == "camhud" then camera = "camHUD" end

		if camera == "other" then camera = "camOther" end
		if camera == "camother" then camera = "camOther" end

		if (camera == "camGame") or (camera == "camHUD") or (camera == "camOther") then
			setProperty(object..'.camera',instanceArg(camera),false,true)
		end
	else
		actualSetObjectCamera(object,camera)
	end
end

function onCreate()

    -- default x: -90s
    makeAnimatedLuaSprite("PomniConfused", "pomni", -590, 250, "sparrow")
    addAnimationByPrefix('PomniConfused', 'looppomni', 'pomni', 24, true)
    addLuaSprite("PomniConfused", true)

    setObjectCamera('PomniConfused', 'other', true)
end

function onStepHit()
    if curStep == 48 then
        doTweenX("PomniInnnn", "PomniConfused", -90, 2, "circOut")
    end
    if curStep == 73 then
        --doTweenAlpha("PomniOuttttt", "PomniConfused", 0, 0.6, "circOut")
        doTweenX("PomniInnnn", "PomniConfused", -590, 0.7, "circOut")
    end
end