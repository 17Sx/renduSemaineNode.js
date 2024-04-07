import express from 'express';
import { GetUsers } from '../controllers/UserController.js';

const router = express.Router();


router.get('/', GetUsers);

export default router;