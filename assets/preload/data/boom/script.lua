local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene and dialogueIsStoryMode and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue2/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)
		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)
		setProperty('blackBG.alpha', 0)
		setProperty('inCutscene', true)
		runTimer('startTween', 0.1)
		runTimer('removeSprites3', 1.2)
		allowCountdown = true;
		return Function_Stop;
	elseif not allowCountdown and not seenCutscene and dialogueIsEverywhere and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue2/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)
		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)
		setProperty('blackBG.alpha', 0)
		setProperty('inCutscene', true)
		startDialogue('dialogue')
		runTimer('startTween', 0.1)
		runTimer('removeSprites3', 1.2)
		allowCountdown = true;
		return Function_Stop;
	end
	doTweenAlpha('blackBGTween', 'blackBG', 0, 1.2, 'circout')
	onTweenCompleted('blackBGTween')
	runTimer('removeSprites', 1.2)
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'removeSprites' then
		removeLuaSprite('blackBG')
	end
	if tag == 'removeSprites2' then
		removeLuaSprite('blackBG')
	end
	if tag == 'removeSprites3' then
		removeLuaSprite('blackBG2')
	end
	if tag == 'removeSprites4' then
		removeLuaSprite('blackBG2')
	end
	if tag == 'startTween' then
		startDialogue('dialogue')
		doTweenAlpha('blackBGTween2', 'blackBG', 1, 1, 'circout')
		onTweenCompleted('blackBGTween2')
	end
	if tag == 'startTween2' then
		startDialogue('dialogueEnd')
		doTweenAlpha('blackBGTween3', 'blackBG', 1, 1, 'circout')
		onTweenCompleted('blackBGTween3')
	end
end

function onNextDialogue(count)

end

function onSkipDialogue(count)
	
end

local allowEndShit = false
function onEndSong()
	if not allowEndShit and isStoryMode and not seenCutscene and dialogueIsStoryMode and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue2/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)
		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)
		setProperty('blackBG.alpha', 0)
		setProperty('inCutscene', true)
		startDialogue('dialogueEnd')
		runTimer('startTween2', 0.1)
		runTimer('removeSprites4', 1.2)
		allowEndShit = true;
		return Function_Stop;
	elseif not allowEndShit and dialogueIsEverywhere and dialogueIsDisabled then
		makeLuaSprite('blackBG2', 'dialogue2/black',0,0);
		setObjectCamera('blackBG2','hud')
		addLuaSprite('blackBG2', true)
		makeLuaSprite('blackBG', 'dialogue2/blank',0,0);
		setObjectCamera('blackBG','hud')
		addLuaSprite('blackBG', true)
		setProperty('blackBG.alpha', 0)
		setProperty('inCutscene', true)
		runTimer('startTween2', 0.1)
		runTimer('removeSprites4', 1.2)
		allowEndShit = true;
		return Function_Stop;
	end
	doTweenAlpha('blackBGTween2', 'blackBG', 0, 1.2, 'circout')
	onTweenCompleted('blackBGTween2')
	runTimer('removeSprites2', 1.2)
	return Function_Continue;
end