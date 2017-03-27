// Level: 7kyu
// Instructions
// Hero wants to go to his school by bus, and he has only 2$, but he wants to save as much as he can out of them.
// But he also can't be late to school, so he decided to play a game.
// Given the buses he can wait without being late, you should tell him which to take.
// Notes:
// Not all buses are going to Hero's school.
// There are two kinds of buses: "blue" -> which costs 2$, "red" -> which costs 1$ (cheaper, right?)
// Hero MUST take one of those buses, even if he will pay 2$.
// Hero should take the first bus that goes to his school and costs less than others, i.e. if he can take a red bus, he will take the first one, if he can't, he should take the first blue one.

function whichBusToTake(busesColors, goingToSchool) {
  let selectedBus;
  let selectedColor;
  for (let i = 0; i < busesColors.length; i++) {
    if (goingToSchool[i] && busesColors[i] == 'red') return i;
    if (goingToSchool[i] && selectedBus == null) {
        selectedBus = i;
        selectedColor = busesColors[i];
    }
  }
  return selectedBus;
}
