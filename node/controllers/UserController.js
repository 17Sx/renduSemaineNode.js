import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
import jwt from 'jsonwebtoken'; 


const GetUsers = (req, res) => {
    try {
        const token = req.headers['x-access-token'];
        console.log(token);
        if (!token) return res.status(403).send({auth: false, message: 'No token provided'});
        jwt.verify(token, process.env.JWT_SECRET, async (err, decoded) => { 
            if (err) return res.status(500).send({auth: false, message: err.message});
            try {
                const user = await prisma.user.findUnique({
                    where: {
                        id: decoded.id
                    }
                });
                res.send(user);
            } catch (error) {
                console.log(error);
                res.status(400).send(error);
            }
        }); 
    } catch (error) {
        console.log(error);
        res.status(500).send({ message: "Internal server error" });
    }
}; 

export {
    GetUsers
}