//setup in-game client messages that will verify Hydra input. Use ini to bind this function to "H”

class HydraGamePlayerInput extends PlayerInput within HydraGamePlayerController;

simulated exec function TestFunction1()
{
ClientMessage("Sixense L button value: "$TheSixense.TheControllerData.controller[0].buttons);
ClientMessage("Sixense L position 0: "$TheSixense.TheControllerData.controller[0].pos[0]);
ClientMessage("Sixense L position 1: "$TheSixense.TheControllerData.controller[0].pos[1]);
ClientMessage("Sixense L position 2: "$TheSixense.TheControllerData.controller[0].pos[2]);

}