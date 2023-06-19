/* eslint-disable consistent-return */
import path from "path";
import fs from "fs";
import UMKM from "../models/UMKMModel.js";
import { requestResponse } from "../message.js";

export const getUMKM = async (req, res) => {
  try {
    let response;
    response = await UMKM.findAll({
      attributes: ["umkmId", "umkmName", "alamat", "phone", "image", "rating", "category", "description"],
    });
    res.status(200).json(requestResponse.successWithData(response));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};

export const getUMKMById = async (req, res) => {
  try {
    const umkm = await UMKM.findOne({
      where: {
        id: req.params.id,
      },
    });

    if (!umkm)
      return res
        .status(404)
        .json(requestResponse.failed("UMKM tidak ditemukan"));

    let response;
    response = await UMKM.findOne({
      attributes: ["umkmId", "umkmName", "alamat", "phone", "image", "rating", "category", "description"],
      where: {
        id: umkm.id,
      },
    });
    res.status(200).json(requestResponse.successWithData(response));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};

export const createUMKM = async (req, res) => {
    const { umkmId, umkmName, alamat, phone, image, rating, category, description } = req.body;
    try {
      await UMKM.create({
        umkmId,
        umkmName,
        alamat,
        phone,
        image,
        rating,
        category,
        description,
      });
      res
        .status(201)
        .json(requestResponse.success("UMKM berhasil ditambahkan"));
    } catch (error) {
      res.status(500).json(requestResponse.serverError(error.message));
    }
};

export const updateUMKM = async (req, res) => {
  try {
    const umkm = await UMKM.findOne({
      where: {
        id: req.params.id,
      },
    });

    if (!umkm)
      return res
        .status(404)
        .json(requestResponse.failed("UMKM tidak ditemukan"));

    const { umkmId, umkmName, alamat, phone, image, rating, category, description } = req.body;

    await UMKM.update(
      {
        umkmId,
        umkmName,
        alamat,
        phone,
        image,
        rating,
        category,
        description,
      },
      {
        where: {
          id: umkm.id,
        },
      }
    );
    res.status(200).json(requestResponse.success("UMKM Berhasil di update"));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};

export const deleteUMKM = async (req, res) => {
  try {
    const umkm = await UMKM.findOne({
      where: {
        id: req.params.id,
      },
    });

    if (!umkm)
      return res
        .status(404)
        .json(requestResponse.failed("UMKM tidak ditemukan"));

    await UMKM.destroy({
      where: {
        id: umkm.id,
      },
    });
    res.status(200).json(requestResponse.success("UMKM Berhasil di hapus"));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};
