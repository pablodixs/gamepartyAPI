/*
  Warnings:

  - You are about to drop the column `updatedAt` on the `games` table. All the data in the column will be lost.
  - Added the required column `genreGame` to the `games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `videoBack` to the `games` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_games" (
    "idGame" TEXT NOT NULL,
    "nameGame" TEXT NOT NULL PRIMARY KEY,
    "logoGame" TEXT NOT NULL,
    "coverGame" TEXT NOT NULL,
    "addedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "videoBack" TEXT NOT NULL,
    "genreGame" TEXT NOT NULL
);
INSERT INTO "new_games" ("addedAt", "coverGame", "idGame", "logoGame", "nameGame") SELECT "addedAt", "coverGame", "idGame", "logoGame", "nameGame" FROM "games";
DROP TABLE "games";
ALTER TABLE "new_games" RENAME TO "games";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
