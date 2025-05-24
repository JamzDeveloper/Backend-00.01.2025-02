import { Router } from "express";
import {  createCustomerStripe} from "./controller.js";

const stripeRoutes = Router();

stripeRoutes.post("/", createCustomerStripe);
// stripeRoutes.patch("/:stripeId", validateJwt, updatestripe);

export default stripeRoutes;
