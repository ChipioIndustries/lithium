export type Config = {
	throwErrors: boolean?;
	doYield: boolean?;
	yieldMin: number?;
	yieldMax: number?;
}

local defaultConfig: Config = {
	throwErrors = false;
	doYield = true;
	yieldMin = 0.2;
	yieldMax = 0.5;
}

return defaultConfig