/*
 * Crea un programa que calcule quien gana más partidas al piedra,
 * papel, tijera, lagarto, spock.
 * - El resultado puede ser: "Player 1", "Player 2", "Tie" (empate)
 * - La función recibe un listado que contiene pares, representando cada jugada.
 * - El par puede contener combinaciones de "🗿" (piedra), "📄" (papel),
 *   "✂️" (tijera), "🦎" (lagarto) o "🖖" (spock).
 * - Ejemplo. Entrada: [("🗿","✂️"), ("✂️","🗿"), ("📄","✂️")]. Resultado: "Player 2".
 * - Debes buscar información sobre cómo se juega con estas 5 posibilidades.
*/

const RULES = {
  '🗿': ['✂️', '🦎'],
  '📄': ['🗿', '🖖'],
  '✂️': ['📄', '🦎'],
  '🦎': ['🖖', '📄'],
  '🖖': ['✂️', '🗿']
};

type PosiblePlays = '🗿' | '📄' | '✂️' | '🦎' | '🖖';

type PlayTuple = [PosiblePlays, PosiblePlays];

type ResultType = 'Player 2' | 'Player 1' | 'Tie';

function calcResult(plays: PlayTuple[]): ResultType {
  let score1 = 0;
  let score2 = 0;
  plays.forEach(play=> {
    if(RULES[play[0]].includes(play[1])) {
      score1++;
    } else if(play[0] !== play[1]){
      score2++;
    }
  })
  const player = score1 > score2 ? 1 : 2;
  return score1 === score2 ? 'Tie' : `Player ${player}`;
}

console.log(calcResult([["🗿","✂️"], ["✂️","🗿"], ["📄","✂️"]]));
