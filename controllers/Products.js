/* eslint-disable consistent-return */
import { Op } from 'sequelize';
import path from 'path';
import fs from 'fs';
import Product from '../models/ProductModel.js';
import User from '../models/UserModel.js';
import { requestResponse } from '../message.js';

export const getProducts = async (req, res) => {
  try {
    let response;
      response = await Product.findAll({
        attributes: ['umkmName', 'image', 'category', 'description'],
      });
    res.status(200).json(requestResponse.successWithData(response));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};

export const getProductById = async (req, res) => {
  try {
    const product = await Product.findOne({
      where: {
        id: req.params.id,
      },
    });

    if (!product) return res.status(404).json(requestResponse.failed('UMKM tidak ditemukan'));

    let response;
      response = await Product.findOne({
        attributes: ['umkmName', 'image', 'category', 'description'],
        where: {
          id: product.id ,
        },
      });
    res.status(200).json(requestResponse.successWithData(response));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};

export const createProduct = async (req, res) => {
  if (req.files === null) return res.status(400).json(requestResponse.failed('Tidak ada file yang di tambahkan'));

  const file = req.files.image;
  const fileSize = file.data.length;
  const ext = path.extname(file.name);
  const fileName = file.md5 + ext;
  const url = `${req.protocol}://${req.get('host')}/images/${fileName}`;
  const allowedType = ['.png', '.jpg', '.jpeg'];

  if (!allowedType.includes(ext.toLowerCase())) return res.status(422).json(requestResponse.failed('Invalid Image'));

  if (fileSize > 6000000) return res.status(422).json(requestResponse.failed('Gambar harus lebih kecil dari 5 mb'));

  file.mv(`./static/images/${fileName}`, async (err) => {
    if (err) return res.status(500).json(requestResponse.failed(err.message));
    const {
      umkmName, category, description,
    } = req.body;
    try {
      await Product.create({
        umkmName,
        image: fileName,
        category,
        description,
      });
      res.status(201).json(requestResponse.success('UMKM berhasil ditambahkan'));
    } catch (error) {
      res.status(500).json(requestResponse.serverError(error.message));
    }
  });
};

export const updateProduct = async (req, res) => {
  try {
    const product = await Product.findOne({
      where: {
        id: req.params.id,
      },
    });

    if (!product) return res.status(404).json(requestResponse.failed('Produk tidak ditemukan'));

    let fileName = '';

    if (req.files === null) {
      fileName = product.image;
    } else {
      const file = req.files.image;
      const fileSize = file.data.length;
      const ext = path.extname(file.name);
      fileName = file.md5 + ext;
      const allowedType = ['.png', '.jpg', '.jpeg'];

      if (!allowedType.includes(ext.toLowerCase())) return res.status(422).json(requestResponse.failed('Invalid Image'));

      if (fileSize > 5000000) return res.status(422).json(requestResponse.failed('Gambar harus lebih kecil dari 5 mb'));

      const filePath = `./static/images/${product.image}`;
      fs.unlinkSync(filePath);

      file.mv(`./static/images/${fileName}`, (err) => {
        if (err) return res.status(500).json(requestResponse.failed(err.message));
      });
    }

    const url = `${req.protocol}://${req.get('host')}/images/${fileName}`;
    const {
      umkmName,
      category,
      description,
    } = req.body;

      await Product.update({
        umkmName,
        image: fileName,
        category,
        description,
      }, {
        where: {
          id: product.id, 
        },
      });
    res.status(200).json(requestResponse.success('UMKM Berhasil di update'));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};

export const deleteProduct = async (req, res) => {
  try {
    const product = await Product.findOne({
      where: {
        id: req.params.id,
      },
    });

    if (!product) return res.status(404).json(requestResponse.failed('Produk tidak ditemukan'));

    //const filePath = `./static/images/${product.image}`;
    //fs.unlinkSync(filePath);

      await Product.destroy({
        where: {
          id: product.id
        },
      });
    res.status(200).json(requestResponse.success('Produk Berhasil di hapus'));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};
