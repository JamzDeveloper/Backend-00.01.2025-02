import Stripe from "stripe";
import { request, response } from "express";
const stripeClient = new Stripe(process.env.STRIPE_SECRET_KEY);

const createCustomerStripe = async (req = request, resp = response) => {
  const data = req.body;
  if (!data.name || !data.email) {
    return resp.status(400).json({ message: "name and email is required" });
  }
  const newCustomer = await stripeClient.customers.create({
    name: data.name,
    email: data.email,
  });

  resp.json({ newCustomer });
};

export { createCustomerStripe };
