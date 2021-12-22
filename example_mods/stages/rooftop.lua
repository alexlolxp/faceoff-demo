local xx = 420.95;
local yy = 313;
local xx2 = 952.9;
local yy2 = 550;
local ofs = 35;
local followchars = true;
function onCreate()
	makeLuaSprite('bg', 'futuristic/bg', -600, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('buildings', 'futuristic/buildingback', -600, -300);
	setLuaSpriteScrollFactor('buildings', 0.9, 0.9);

	makeLuaSprite('buildings1', 'futuristic/buildingmid', -600, -300);
	setLuaSpriteScrollFactor('buildings1', 0.9, 0.9);

	makeLuaSprite('buildings2', 'futuristic/buildingfront', -600, -300);
	setLuaSpriteScrollFactor('buildings2', 0.9, 0.9);

	makeLuaSprite('lights', 'futuristic/lights', -600, -300);
	setLuaSpriteScrollFactor('lights', 0.9, 0.9);

	makeLuaSprite('roof', 'futuristic/roof', -600, -300);

	addLuaSprite('bg', false);
	addLuaSprite('buildings', false);
	addLuaSprite('buildings1', false);
	addLuaSprite('buildings2', false);
	addLuaSprite('lights', false);
	addLuaSprite('roof', false);

	local xx = 420.95;
	local yy = 313;
	local xx2 = 952.9;
	local yy2 = 1500;
	local ofs = 50;
end

function onUpdate()
	if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
			end
			else
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
				triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
	end
end

function goodNoteHit()
	if followchars == true then
		if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
		end
		if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
		end
		if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
		end
		if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
		end
	end
end