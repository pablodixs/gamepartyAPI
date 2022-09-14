import express from 'express';
import { PrismaClient } from '@prisma/client';

const app = express();
const prisma = new PrismaClient();

app.use(express.json())

app.get('/games', async (request, response) => {
  const gamesList = await prisma.game.findMany()

  return response.json(gamesList);
});

app.listen('3333', () => console.log('Server running at port 3333 🚀'));