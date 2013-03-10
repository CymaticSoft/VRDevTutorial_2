class HydraGamePlayerController extends GamePlayerController;

var sixense TheSixense;

simulated event PostBeginPlay()
{
super.PostBeginPlay();
TheSixense = new class'Sixense';
TheSixense.sixenseInit();
TheSixense.sixenseGetAllNewestData(TheSixense.TheControllerData);
}

simulated event PlayerTick(float DeltaTime)
{
super.Tick(DeltaTime);
TheSixense.sixenseGetAllNewestData(TheSixense.TheControllerData);
}

defaultproperties

{
InputClass=class'HydraGame.HydraGamePlayerInput'
}