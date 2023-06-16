/* eslint-disable consistent-return */
import path from "path";
import fs from "fs";
import UMKM from "../models/UMKMModel.js";
import { requestResponse } from "../message.js";

export const getUMKM = async (req, res) => {
  try {
    let response;
    response = await UMKM.findAll({
      attributes: ["umkmName", "image", "category", "description"],
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
      attributes: ["umkmName", "image", "category", "description"],
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
  if (req.files === null)
    return res
      .status(400)
      .json(requestResponse.failed("Tidak ada file yang di tambahkan"));

  const file = req.files.image;
  const fileSize = file.data.length;
  const ext = path.extname(file.name);
  const fileName = file.name;
  // const url = `${req.protocol}://${req.get("host")}/images/${fileName}`;
  const allowedType = [".png", ".jpg", ".jpeg"];

  if (!allowedType.includes(ext.toLowerCase()))
    return res.status(422).json(requestResponse.failed("Invalid Image"));

  if (fileSize > 6000000)
    return res
      .status(422)
      .json(requestResponse.failed("Gambar harus lebih kecil dari 5 mb"));

  file.mv(`./static/images/${fileName}`, async (err) => {
    if (err) return res.status(500).json(requestResponse.failed(err.message));
    const { umkmName, category, description } = req.body;
    try {
      await UMKM.create({
        umkmName,
        image: fileName,
        category,
        description,
      });
      res
        .status(201)
        .json(requestResponse.success("UMKM berhasil ditambahkan"));
    } catch (error) {
      res.status(500).json(requestResponse.serverError(error.message));
    }
  });
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

    let fileName = "";

    if (req.files === null) {
      fileName = umkm.image;
    } else {
      const file = req.files.image;
      const fileSize = file.data.length;
      const ext = path.extname(file.name);
      fileName = file.name;
      const allowedType = [".png", ".jpg", ".jpeg"];

      if (!allowedType.includes(ext.toLowerCase()))
        return res.status(422).json(requestResponse.failed("Invalid Image"));

      if (fileSize > 5000000)
        return res
          .status(422)
          .json(requestResponse.failed("Gambar harus lebih kecil dari 5 mb"));

      const filePath = `./static/images/${UMKM.image}`;
      fs.unlinkSync(filePath);

      file.mv(`./static/images/${fileName}`, (err) => {
        if (err)
          return res.status(500).json(requestResponse.failed(err.message));
      });
    }

    const url = `${req.protocol}://${req.get("host")}/images/${fileName}`;
    const { umkmName, category, description } = req.body;

    await UMKM.update(
      {
        umkmName,
        image: fileName,
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
        .json(requestResponse.failed("Produk tidak ditemukan"));

    const filePath = `./static/images/${umkm.image}`;
    fs.unlinkSync(filePath);

    await UMKM.destroy({
      where: {
        id: umkm.id,
      },
    });
    res.status(200).json(requestResponse.success("Produk Berhasil di hapus"));
  } catch (error) {
    res.status(500).json(requestResponse.serverError(error.message));
  }
};
