import { request, response } from "express";
import UserModel from "./entity.js";
import bcryptjs from "bcryptjs";
const createUser = async (req = request, resp = response) => {
  const { firstName, lastName, password, email, role, username } = req.body;
  if (!firstName || !lastName || !password || !email || !username) {
    return resp.status(400).json({ message: "se requiere datos" });
  }

  console.log("creating user");

  const salt = await bcryptjs.genSalt(10);

  const newPassword = await bcryptjs.hash(password, salt);

  const newUser = await UserModel.create({
    firstName,
    lastName,
    password: newPassword,
    email,
    username,
    role: role ?? "usuario",
  });

  await newUser.save();

  return resp.json(newUser);
};

const updateUser = async (req = request, resp = response) => {
  const {password,...rest} = req.body;
};
export { createUser, updateUser };
