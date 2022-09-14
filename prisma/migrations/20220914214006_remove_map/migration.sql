/*
  Warnings:

  - You are about to drop the `games` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "games";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Game" (
    "idGame" TEXT NOT NULL,
    "name" TEXT NOT NULL PRIMARY KEY,
    "logo" TEXT NOT NULL,
    "cover" TEXT NOT NULL,
    "video" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "addedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
