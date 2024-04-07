import express from 'express';
import agents from './routes/AgentRoutes.js';
import AuthRoutes from './routes/AuthRoutes.js';
import UserRoutes from './routes/UserRoutes.js';


const router = express.Router();


router.use('/agents', agents);
router.use('/auth', AuthRoutes);
router.use('/users', UserRoutes);



export default router;