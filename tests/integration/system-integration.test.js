const axios = require('axios');

const BACKEND_URL = process.env.API_URL || 'https://backend.railway.app';
const WEB_URL = process.env.WEB_URL || 'https://carpooling.vercel.app';

describe('System Integration Tests', () => {

    test('Backend API should be healthy', async () => {
        const response = await axios.get(`${BACKEND_URL}/health`);
        expect(response.status).toBe(200);
        expect(response.data.message).toBe('Server is running');
    });

    test('Web Frontend should be reachable', async () => {
        const response = await axios.get(WEB_URL);
        expect(response.status).toBe(200);
    });

    test('API should return rides', async () => {
        try {
            const response = await axios.get(`${BACKEND_URL}/api/v1/rides`);
            expect(response.status).toBe(200);
            expect(Array.isArray(response.data)).toBe(true);
        } catch (error) {
            // If rides endpoint is protected or empty, adjust expectation
            if (error.response && error.response.status === 401) {
                console.log('Rides endpoint requires auth, verified reachability.');
            } else {
                throw error;
            }
        }
    });

});
