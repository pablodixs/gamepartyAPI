-- CreateTable
CREATE TABLE "games" (
    "idGame" TEXT NOT NULL,
    "nameGame" TEXT NOT NULL PRIMARY KEY,
    "logoGame" TEXT NOT NULL,
    "coverGame" TEXT NOT NULL,
    "addedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
