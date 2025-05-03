import { Router } from "express";
import { createUser, updateUser } from "./controllers.js";
import validateJwt from "../../middleware/validate-jwt.js";

const userRoutes = Router();

userRoutes.post("/", createUser);
userRoutes.patch("/:userId", validateJwt, updateUser);

export default userRoutes;
