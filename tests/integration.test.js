const axios = require('axios');

const BACKEND_URL = process.env.BACKEND_URL || 'https://backend.railway.app';
const WEB_URL = process.env.WEB_URL || 'https://carpooling.vercel.app';

describe('System Integration Tests', () => {
    test('Backend Health Check', async () => {
        const response = await axios.get(`${BACKEND_URL}/health`);
        expect(response.status).toBe(200);
        expect(response.data).toHaveProperty('status', 'ok');
    });

    test('Web Frontend Accessibility', async () => {
        const response = await axios.get(WEB_URL);
        expect(response.status).toBe(200);
    });

    // Add more specific API flow tests here (e.g. Register -> Login -> Create Ride)
});
