# FamilyConnect

A private app for one household: any family member can create a grocery list, a pickup request, a medicine schedule or a reminder, tag the members who should act on it, and set a time. Tagged members are reminded, reply "On it", and mark the task done.

Examples:
- The wife adds a grocery list and tags her husband; he ticks items in the shop.
- A daughter asks for a pickup from college at 4:30 pm and tags her father and brother.
- A grandparent's blood-pressure tablet is scheduled for 8 am and 8 pm; caregivers are alerted if a dose is missed.

## Repository contents

| Path | Contents |
|---|---|
| `prototype/index.html` | Clickable prototype. Open it in any browser; no installation needed. |
| `prototype/app.html` | Source of the prototype page (`./prototype/build.sh` regenerates `index.html`). |
| `docs/PRODUCT_SPEC.md` | Product specification: users, features, data model, technology, milestones. |

## Trying the prototype

Open `prototype/index.html` in a browser. It starts with an example family. Use **Acting as** at the top to switch between members and see what each one receives. Data is stored only in that browser (`localStorage`); there is no server yet, so phones do not sync with each other.

## Next step

Build the real mobile app (Flutter + Firebase recommended; see `docs/PRODUCT_SPEC.md`, section 6) so that family members on different phones share the same data and receive push notifications.
