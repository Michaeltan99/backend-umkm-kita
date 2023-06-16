import express from 'express';
import {
  getUMKM,
  getUMKMById,
  createUMKM,
  updateUMKM,
  deleteUMKM,
} from '../controllers/UMKM.js';

const router = express.Router();

router.get('/umkm', getUMKM);
router.get('/umkm/:id', getUMKMById);
router.post('/umkm', createUMKM);
router.put('/umkm/:id', updateUMKM);
router.delete('/umkm/:id', deleteUMKM);

export default router;
