export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    const array0 = new Float32Array([0.25, -1.0, 1.0, -0.25, -0.75, -0.5, 0.25, 0.75, 0.5, 0.75, -0.5, -0.5, -0.25, 1.0, 1.0, -0.25, 0.75, 0.75, 0.75, 0.25, 1.0, -0.5, 0.25, -1.0, -1.0, -0.25, 0.0, 0.75, -0.25, 0.5, 0.0, -0.25, -0.5, -0.5, 0.75, 1.0, -1.0, -0.75, -0.25, 0.25, 0.5, 0.75, 0.0, 0.75, 1.0, -1.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.5, -0.75, -0.5, -0.25, -0.5, 0.0, -0.25, 0.25, 0.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.5, -0.75, -0.75, 0.0, 1.0, 0.5, -0.25, -1.0, 0.75, 0.25, -0.25, -0.75, 1.0, 0.0, 1.0, 0.75, 1.0, 0.0, 0.25, 1.0, -1.0, 1.0, -0.5, 0.75, -1.0, 0.75, 0.5, 0.5, -0.5, 0.75, -0.75, 0.75, 0.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.5, 1.0, 0.25, -0.75, 0.25, 0.0, 0.25, 0.0, -1.0, 0.25, -0.5, 0.75, 0.0, 0.25, -0.25, -0.5, -0.25, -0.25, 0.5, 0.5, 0.75, -0.5, 0.0, 0.5, 0.5, 0.0, 0.75, -0.25, 0.25, -1.0, -0.25, 0.75, 0.5, -0.75, 0.0, 1.0, -0.75, 1.0, -0.75, -0.5, -1.0, 0.75, -0.25, 0.75, 0.75, -1.0, 0.0, 0.25, 0.5, 0.5, -0.75, 0.25, -0.25, -0.25, -1.0, 0.0, -1.0, -1.0, -1.0, 0.0, 0.5, 0.5, 0.75, -0.25, -1.0, 0.75, -0.75, -1.0, -1.0, 0.5, -1.0, 1.0, -0.75, 0.25, -0.75, 0.75, 0.5, 0.25, -0.5, 0.5, 0.25, 0.0, -0.25, 0.75, -1.0, -0.5, -0.5, -1.0, -0.25, -0.25, 0.75, 0.5, 0.75, -0.25, 0.75, 0.0, 0.75, 1.0, 1.0, 0.5, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, -0.25, -1.0, 0.5, -0.5, 0.5, 0.25, 0.5, 0.0, -1.0, -1.0, 0.75, -0.75, -0.25, -1.0, 0.0, -0.75, -0.75, 0.5, -0.25, -0.25, 0.0, 1.0, 0.75, -0.5, -1.0, 0.5, 1.0, -1.0, 0.25, -1.0, 0.75, -0.25, -0.25, 0.25, -0.25, 0.5, 0.25, 1.0, -0.25, -0.25, -0.75, -0.5, -0.5, 0.25, -0.75, -0.25, 1.0, -0.5, -0.5, -0.75, -0.75, 0.75, -0.25, -0.5, 1.0, 0.75, 0.25, 0.25, -1.0, 1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 1.0, -1.0, 0.0, 0.75, -1.0, 0.25, 0.5, 1.0, -0.25, 0.5, 0.25, -0.75, 0.25, -0.5, -0.25, -0.25, -0.25, -0.75, 0.5, 0.75, -0.75, -0.5, 1.0, 0.0, -0.25, 0.75, -0.75, 0.0, ]);
    
    
    
    
    
    
    
    
    
    
    const array3 = new Float32Array([-0.75, 0.0, 0.0, -0.75, -1.0, 0.25, 0.75, -1.0, 0.75, 0.5, 0.0, 0.0, 0.0, -1.0, 0.75, 1.0, -1.0, -1.0, 0.0, 0.25, -0.75, -0.5, 1.0, -0.75, -0.75, -0.75, 0.25, -0.75, 1.0, 0.0, -0.5, 0.75, -0.25, 0.75, 1.0, 0.25, 0.75, 0.75, 0.25, 0.75, 0.0, -1.0, -0.5, 0.25, 0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.0, -1.0, -0.75, 1.0, -0.75, -0.25, 0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 0.25, 1.0, 1.0, 1.0, 0.75, 0.5, 0.0, 1.0, 0.25, -1.0, -0.5, -0.5, -0.25, 0.5, 0.75, -1.0, 0.0, -0.5, 0.0, 0.25, -0.25, -0.5, 0.0, 0.75, -0.25, -0.75, 0.0, 0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 1.0, -1.0, -0.25, -0.25, 0.0, ]);
    const array4 = new Float32Array([0.0, -0.25, 0.75, -0.75, -1.0, -0.25, -0.75, -0.75, -0.25, 0.0, 1.0, 0.75, 0.5, 1.0, 0.5, 0.5, 0.0, -0.5, 0.75, 0.75, -0.75, -0.5, -0.75, 0.5, -0.25, -0.75, 0.5, -0.25, -1.0, -0.25, -1.0, 0.25, -1.0, 0.75, -0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 0.5, 0.5, -1.0, -0.75, -0.5, -0.75, 0.0, 0.5, 0.75, 1.0, 1.0, -1.0, 0.25, 0.0, -1.0, 0.5, 0.0, 0.25, -0.75, 0.0, -1.0, 0.75, -0.75, 1.0, -0.75, 0.75, -0.5, 1.0, 0.0, 0.75, -0.5, -0.5, 0.0, 0.25, -1.0, 0.5, -0.75, 0.75, -0.25, 0.75, 1.0, -1.0, -0.75, 1.0, 0.75, 0.25, 0.0, -1.0, 0.75, 0.0, -1.0, 0.75, 0.0, 0.25, 0.0, 0.25, -0.25, 0.75, 0.25, 0.25, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array5 = new Float32Array([-0.25, 0.25, 0.75, -0.25, -0.5, 0.5, 0.25, -0.25, 0.5, 0.75, 0.75, -0.5, 0.5, 0.0, 0.75, 0.0, 0.75, 0.75, -0.25, 0.5, -0.5, -1.0, 0.0, -0.25, 0.0, 1.0, -1.0, 0.0, 0.75, -0.25, -0.25, -0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 0.75, 0.75, 1.0, 0.25, -1.0, 0.25, -0.5, -0.25, 1.0, -0.25, -0.25, 0.75, -0.75, 0.0, -1.0, 0.25, 0.0, 0.75, -0.25, 0.0, -0.5, 0.5, -0.25, 0.75, 1.0, -1.0, 0.5, 0.0, 1.0, -0.25, 0.25, -1.0, 0.5, 0.25, -1.0, 0.25, 0.25, 1.0, -1.0, -0.25, 0.75, -0.5, 0.0, 0.75, 0.5, 0.25, 0.5, -0.5, -0.75, -0.25, -0.75, -0.5, 0.0, 0.5, -0.5, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, -0.5, -0.75, ]);
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    const array6 = new Float32Array([0.5, 1.0, -0.25, -1.0, 0.25, -0.75, -1.0, 0.0, -1.0, 0.75, -0.25, 0.0, 0.5, -0.5, 1.0, 0.0, -1.0, -1.0, -0.25, 0.5, -1.0, -1.0, -0.5, -0.25, 0.0, -1.0, 0.5, -0.5, -1.0, -0.25, -0.5, 0.75, -0.5, 0.25, -0.5, 0.0, 1.0, 1.0, 0.5, -1.0, -0.25, -0.25, -0.75, 0.75, -0.25, -1.0, 1.0, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, -0.75, 0.75, 0.5, 0.25, -1.0, 0.75, -0.75, -1.0, -1.0, 0.0, -0.5, -0.25, -0.25, -0.5, 0.25, -0.25, -0.75, 0.25, -0.75, 0.25, 0.5, -0.25, -0.25, 0.0, -0.5, 0.0, 0.5, -0.5, -1.0, 0.25, -0.75, -0.5, 0.25, 0.25, 0.25, 1.0, 1.0, 0.75, 0.5, 0.0, -0.75, 0.25, -0.5, -0.75, -0.5, 0.5, 0.5, ]);
    const array7 = new Float32Array([-0.75, 0.75, 0.0, 0.25, -0.5, 0.75, 0.0, 0.5, -0.5, -0.5, 1.0, -1.0, -1.0, -0.5, 0.0, -0.75, -1.0, 0.0, -0.75, -1.0, 1.0, 0.0, -0.5, 0.0, 0.25, 1.0, -0.5, -1.0, -0.5, 0.25, 0.0, -0.25, 1.0, -0.5, -0.75, -0.25, -0.25, 0.25, 1.0, 0.25, 0.5, -0.25, 0.25, 0.0, 1.0, -1.0, 0.5, -1.0, -0.25, 0.0, 0.25, 0.5, 0.25, 1.0, 0.75, 0.5, 0.0, 0.25, -0.5, 0.0, 0.5, 0.5, 0.25, -0.5, 1.0, 0.75, 0.5, 0.0, 0.25, 0.5, -0.25, 0.75, -1.0, -0.5, -0.5, 0.0, -0.25, 1.0, -0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -1.0, 0.25, 0.75, 1.0, 0.25, 0.0, -0.25, -0.75, 0.0, 0.0, 0.5, -0.75, -0.25, -0.75, 0.5, 1.0, ]);
    
    const array8 = new Float32Array([-0.75, -1.0, -0.5, 0.5, -0.5, -0.25, 0.25, 0.0, 0.0, 0.5, 0.25, -1.0, -1.0, 0.25, -0.25, -0.25, 0.5, -0.75, 0.25, -0.25, -0.75, 1.0, 0.75, 0.5, 1.0, 1.0, 0.25, 0.25, -0.75, -1.0, 0.0, 0.75, -0.5, -0.5, 0.25, 0.25, 0.25, -0.75, 0.75, 1.0, 0.25, 0.5, 0.5, 0.25, -0.75, -0.5, -1.0, 0.5, -0.75, 0.0, 1.0, 0.5, 0.0, -0.75, 0.0, -0.5, 0.75, 0.75, -0.5, 0.75, -0.25, -0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.0, 0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 0.0, -0.75, -0.75, 0.25, -0.5, 0.5, -0.25, 1.0, -0.75, 0.0, -0.5, 0.25, -0.25, -0.5, 0.75, -0.25, -0.25, 1.0, 1.0, -1.0, 0.5, -1.0, 0.25, -0.25, 0.5, -0.5, ]);
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array9 = new Float32Array([0.75, -0.5, 0.75, -1.0, 0.5, -0.25, 0.5, 0.0, -0.75, 1.0, -0.25, 0.75, -0.25, -0.75, -0.5, 0.75, 0.5, 0.0, 0.75, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, -0.5, 0.75, 1.0, 0.5, 0.0, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, 0.25, -0.25, -1.0, -0.25, 1.0, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, 0.0, -1.0, -0.75, -0.75, -1.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.75, 1.0, 1.0, 1.0, -0.75, -0.5, 0.25, -0.5, -0.25, 0.0, 0.25, 1.0, -0.75, 0.75, 0.0, -0.25, 0.25, 0.0, -0.5, 1.0, 1.0, 1.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.25, 1.0, -0.75, 0.75, 0.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.5, -0.75, 1.0, 0.25, -0.5, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array10 = new Float32Array([1.0, 0.25, 0.75, 0.5, -1.0, 1.0, 0.5, -0.75, 1.0, 0.25, -0.25, 0.75, -1.0, 0.0, 0.75, -0.75, -0.75, 0.0, -1.0, 0.5, 0.75, 0.5, 0.0, 1.0, 0.25, 0.0, -0.25, -1.0, 0.0, -0.75, -0.5, -0.5, 0.0, 1.0, 0.75, 0.25, -1.0, 0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 0.25, 0.75, 0.75, -1.0, 0.25, 0.25, 0.5, 1.0, -0.75, -1.0, -1.0, -0.25, 0.75, 0.25, 0.25, -1.0, 1.0, -0.5, 1.0, 1.0, 0.0, 0.5, 0.0, -1.0, -0.25, 0.75, 1.0, -0.5, 0.75, 1.0, -0.75, -0.25, 1.0, 0.75, 0.5, -0.25, 0.0, 0.0, 1.0, -0.5, 0.5, -0.25, 1.0, 0.0, 0.75, 0.5, 0.0, 1.0, -1.0, 0.5, -0.5, 0.75, 0.25, 0.75, -0.5, 1.0, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array11 = new Float32Array([-1.0, 0.75, 0.5, -1.0, 0.75, 0.25, 0.0, -1.0, 0.0, 1.0, 1.0, 0.25, 0.25, 0.0, -0.5, -0.5, 0.75, -0.25, 0.25, -0.25, 1.0, -1.0, -0.5, 1.0, -1.0, 0.0, 1.0, -1.0, -0.25, 1.0, 0.0, -0.25, 0.5, -0.75, -0.5, -1.0, -0.5, -0.5, -0.5, -0.5, -1.0, 0.75, 1.0, -0.25, -0.5, -1.0, -1.0, 0.25, 0.5, 0.25, -0.75, 0.5, 0.5, 0.5, 0.25, -1.0, -0.75, 0.0, -1.0, -0.25, 0.5, 0.5, -1.0, -0.25, 0.25, 0.5, -0.75, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, -0.75, -0.5, 0.25, 1.0, 1.0, 0.5, -0.75, 0.0, 0.75, -1.0, 0.25, 0.5, -0.5, 0.25, 0.0, 0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 0.75, 1.0, -0.25, -0.25, -0.75, -0.75, ]);
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([-0.75, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, 1.0, 0.25, 1.0, 0.5, -0.5, 0.5, 0.5, 0.25, 1.0, 0.0, 0.5, 0.25, -0.75, 0.5, -0.5, 0.5, 0.5, 0.5, 0.0, 1.0, 1.0, -0.75, -1.0, 0.25, -1.0, 0.5, 0.75, -1.0, 0.5, -0.25, 0.5, 1.0, 0.75, 1.0, 0.75, 1.0, -0.5, -0.5, -0.25, -0.5, -0.75, -0.75, 0.5, -0.25, 1.0, 0.75, 0.75, -1.0, 0.5, 0.75, 0.25, -1.0, -1.0, -1.0, 0.0, -1.0, 0.25, 0.0, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, 0.5, -1.0, -0.5, 0.5, 1.0, -0.25, 0.5, -0.5, 0.0, -0.25, -0.5, -1.0, -0.75, -0.5, 1.0, 0.0, 1.0, 1.0, -1.0, 0.25, 0.25, 0.5, 0.25, 0.75, 0.75, -1.0, -0.5, 1.0, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array13 = new Float32Array([1.0, -0.5, -0.75, 0.5, -0.5, -0.25, -0.5, -0.75, -0.25, 0.5, 0.0, -0.25, -0.75, 0.5, -0.25, 0.0, 0.0, -0.75, -0.75, -1.0, -0.75, 0.75, 1.0, -1.0, -0.25, 0.25, -1.0, 0.25, 0.0, -0.25, 0.0, 0.25, 0.0, 1.0, 0.25, -0.75, -0.75, 0.25, -0.5, 0.25, 0.5, 0.5, 0.0, 0.75, 1.0, -0.25, -1.0, 0.0, -0.75, -0.75, 0.75, -0.25, -0.75, -1.0, 0.25, 1.0, 0.0, 0.0, -0.75, -0.25, -1.0, -0.75, -0.75, -0.25, 0.0, -0.5, 0.25, -1.0, -1.0, 0.0, 0.75, 0.75, -0.75, 0.25, 1.0, 1.0, 0.25, 0.25, 0.25, -1.0, 0.75, -1.0, 0.0, 1.0, 0.5, -0.5, 0.5, -0.25, -0.75, -1.0, 0.25, 0.5, -1.0, 0.25, -1.0, 1.0, -0.75, 0.0, -0.75, 0.75, ]);
    
    
    
    
    
    
    const array14 = new Float32Array([0.25, 0.25, 0.0, -0.5, 0.25, 1.0, 0.0, 1.0, -0.75, 1.0, 0.5, 1.0, 0.75, 1.0, 1.0, 1.0, 1.0, 0.0, 0.5, 0.25, -0.5, -0.25, 1.0, -0.75, 0.5, 1.0, -0.5, -0.75, -0.5, 0.0, 0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 1.0, -0.5, 0.25, 0.0, 0.25, -0.25, 0.75, 0.75, 0.25, 0.5, -0.5, -0.25, -0.25, 0.25, 1.0, 0.5, 1.0, -0.25, 0.0, 1.0, -0.25, 0.75, -0.75, 0.0, 0.25, 0.0, 0.75, 0.75, -0.25, 0.75, 1.0, -0.25, 0.25, 0.5, -0.75, -1.0, -1.0, -1.0, 1.0, 0.25, 0.75, 1.0, 1.0, -0.25, -0.5, 0.5, -0.75, 0.0, 0.25, 0.25, 0.0, -0.25, 1.0, -1.0, 0.5, -0.25, -1.0, -1.0, 1.0, 1.0, -0.5, -0.75, -0.25, 0.0, ]);
    
    
    
    
    
    const array15 = new Float32Array([-0.75, -1.0, -0.75, 0.75, -0.75, 1.0, -0.75, 1.0, 1.0, 0.5, -0.5, 0.25, 0.75, -0.25, 0.5, 0.75, -0.75, -0.5, -0.25, -0.75, 1.0, -0.25, -0.25, 0.5, 0.0, -0.25, 0.75, 0.0, 0.0, -0.25, -0.25, 0.75, 0.75, 0.0, -0.5, -0.25, 0.75, 0.0, -1.0, -0.25, 0.0, 0.0, -0.75, 0.75, 0.5, -0.75, 1.0, 1.0, 0.25, 0.0, 0.25, 0.25, -0.5, 0.25, -0.5, -0.25, -1.0, -0.75, -0.75, -1.0, 0.5, 0.0, -1.0, -0.75, 0.5, 0.0, 0.75, 0.0, 0.75, -1.0, -0.5, -1.0, -0.5, -0.5, 0.25, -0.25, 0.5, 0.0, -0.25, 0.0, -0.75, 1.0, -0.75, -0.75, -0.75, 0.75, -0.75, -0.5, -0.25, 0.75, 1.0, 1.0, -0.5, 0.0, 0.0, -0.75, 0.5, 0.0, -0.25, 0.0, ]);
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array16 = new Float32Array([-0.5, 0.5, -0.25, -0.25, -0.25, 0.25, 0.5, -0.25, 0.0, -0.75, -0.5, 1.0, -0.5, 0.75, -1.0, -0.25, -0.5, -0.5, 0.25, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, 0.5, 0.0, -0.25, 0.5, 0.0, 0.25, 0.75, 0.5, 0.5, 1.0, -1.0, 0.75, -0.75, -0.5, -0.25, -0.75, 0.75, -0.25, -1.0, 0.0, 1.0, -0.75, -1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 1.0, -0.5, -0.75, -1.0, 0.25, 0.0, -0.25, -1.0, 0.5, -0.5, 0.5, 0.25, 1.0, 0.5, 0.0, -0.5, -0.25, 0.25, -0.5, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, 1.0, 0.25, 0.25, 0.0, 0.75, 1.0, -0.75, 0.0, 0.75, 0.0, 0.75, -0.25, -0.75, -0.25, -0.5, -0.5, -1.0, 0.5, -0.5, 1.0, 0.75, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array17 = new Float32Array([0.0, 0.5, 1.0, -1.0, -0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 0.0, -1.0, 0.25, -0.5, -1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.25, 0.75, -1.0, 0.75, 0.25, 0.0, 0.5, 0.5, 0.5, 0.25, -0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 0.0, 0.25, 0.25, -1.0, -1.0, 0.0, -1.0, -0.75, 0.75, -1.0, -0.5, -0.75, 0.5, 0.75, 1.0, 0.75, 0.25, 1.0, 0.25, -0.5, 0.75, 0.5, 0.0, 0.5, 0.75, 0.25, 0.0, 0.5, -0.5, -0.25, -1.0, 0.0, 0.75, 0.0, -0.5, -0.5, -0.25, -1.0, 1.0, -0.75, 1.0, 0.5, -0.75, 1.0, -0.25, 0.0, -0.5, -0.25, 0.75, 0.25, 0.25, 0.75, -0.5, -0.5, 0.75, -0.25, -0.25, 1.0, -0.5, 0.75, -0.25, -0.75, -0.25, 0.0, ]);
    
    const array18 = new Float32Array([-0.75, -1.0, 0.0, 1.0, -0.5, 0.5, -0.25, 0.0, -0.75, -0.5, 0.25, -0.75, 0.25, 1.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.5, -0.75, -1.0, 1.0, 0.0, -0.25, -0.25, 0.75, -0.75, 0.75, 0.25, 1.0, -0.25, 0.25, 0.75, 0.75, -0.75, 0.75, -0.5, 0.0, -1.0, 1.0, 1.0, 0.75, 0.75, -0.25, 0.25, -0.25, -0.5, -0.25, 0.5, -0.5, 0.0, 0.5, 0.5, -0.75, -1.0, 0.0, 0.25, -1.0, -1.0, -0.25, 0.75, -0.75, -0.25, 0.75, -0.5, 0.0, -0.75, 1.0, -0.5, -0.25, -0.5, 0.5, 0.0, 0.25, 0.0, 0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.0, -0.25, 1.0, 0.5, -0.25, -0.25, 0.25, 0.25, 0.25, -1.0, 0.25, 0.75, 0.0, -0.25, 1.0, 0.5, -0.75, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array19 = new Float32Array([-0.5, 0.5, 0.0, -0.75, 1.0, 1.0, -0.25, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 0.0, 1.0, -0.25, -0.5, 0.25, 0.0, 1.0, -0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 1.0, -0.25, 0.25, 0.0, 0.75, 0.25, 0.5, 0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 0.5, 0.5, 0.75, -1.0, 0.25, 0.25, -0.5, -0.25, -0.75, -0.75, 0.25, 0.25, 1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.75, 0.0, -0.5, -0.75, 0.75, 0.75, -1.0, -1.0, 0.5, 1.0, 0.5, -1.0, 1.0, 0.75, 0.0, -1.0, 0.25, 0.25, -0.75, 0.5, 0.75, -0.25, -1.0, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, -0.75, 1.0, 0.75, 0.5, -1.0, -0.5, 0.5, 0.0, -0.25, 0.75, -0.75, -1.0, -0.5, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    const array20 = new Float32Array([0.75, 0.5, 1.0, 1.0, -0.25, 0.0, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, -0.5, -0.25, -0.75, -0.25, -0.75, 0.25, -0.5, 0.5, 0.5, -0.75, 1.0, 0.0, -0.25, 0.25, -1.0, -0.25, 1.0, -0.25, 0.5, -0.75, 0.75, -0.75, 0.25, -0.75, -1.0, 0.25, 0.25, -0.75, 0.25, 0.0, 0.25, 0.75, -0.5, 1.0, 0.0, -0.75, -0.75, -0.75, -0.25, 0.75, 0.0, -0.75, -0.5, 0.75, -0.75, 0.5, 0.5, -0.75, -0.25, 1.0, 1.0, 1.0, -0.25, -1.0, -1.0, 0.25, -0.5, -0.75, -0.5, 1.0, -0.25, -0.25, -0.75, -0.25, -0.25, 0.0, -0.5, -0.5, -0.25, 1.0, -0.5, -1.0, -0.75, 1.0, -0.5, -0.75, -0.5, -0.25, -0.75, -0.75, -1.0, 0.25, 1.0, 0.25, -0.75, -0.75, 0.75, 0.5, ]);
    
    
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array21 = new Float32Array([-0.75, 1.0, -0.75, 1.0, 1.0, -1.0, -0.25, 0.5, 0.5, -0.25, -0.25, -0.75, -1.0, -0.75, 0.0, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, -0.5, 1.0, 0.75, 0.25, 0.25, -1.0, 0.25, 0.5, -1.0, 0.75, -0.75, 0.75, 0.75, 1.0, -0.5, -1.0, -0.5, -1.0, 0.75, -0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 0.0, 1.0, -1.0, -0.75, 0.5, 0.25, 0.5, -0.75, 1.0, 1.0, 1.0, 0.0, -0.75, 0.25, 0.75, 0.5, -0.75, -0.5, 0.0, -1.0, 0.25, 0.5, 1.0, 0.75, 1.0, -0.5, 0.25, 0.25, 1.0, 0.0, 0.25, -0.5, 0.5, 0.5, -0.5, -0.25, 0.75, -0.25, -0.5, 0.0, 0.5, -0.5, 0.0, 1.0, 0.75, 1.0, 0.75, 0.0, 1.0, -0.75, 0.25, -0.5, 0.25, 0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array22 = new Float32Array([-0.75, 1.0, -0.25, -0.5, -1.0, 0.0, -1.0, 0.75, 0.75, -0.25, -0.25, -0.75, 0.0, -0.25, 1.0, -0.75, -0.75, 0.5, -0.25, 0.0, -1.0, -0.75, 0.75, 1.0, -0.25, 0.75, 1.0, -0.25, -0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.5, -0.75, 0.75, -1.0, 0.5, -0.75, 0.75, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, 0.25, -1.0, -1.0, -0.75, -1.0, 0.25, 1.0, 0.25, 0.5, 0.0, 1.0, -1.0, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, -1.0, -0.75, -0.25, -0.5, -0.25, -0.25, 0.0, 0.75, -0.5, 0.0, -0.75, 0.25, -0.25, -0.5, 1.0, 0.0, 0.0, -0.75, 0.75, -0.25, 0.5, -1.0, -0.75, -0.25, -0.75, -1.0, 0.75, -0.25, ]);
    
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array23 = new Float32Array([0.0, 0.5, -0.75, -0.75, 0.75, -0.5, 0.5, -0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.75, 0.25, 1.0, 0.5, -0.75, 1.0, -0.5, 1.0, 1.0, -0.5, -1.0, -0.5, 0.5, -0.25, 0.25, 0.75, -0.5, 0.0, -0.5, -0.75, -0.5, 1.0, 0.0, -0.5, -0.5, -0.5, -1.0, -0.25, 0.75, 1.0, 0.0, 1.0, 0.5, 0.75, 1.0, 0.0, -0.25, -0.5, 0.5, -0.25, -0.5, 0.5, -1.0, 1.0, -0.5, -0.75, 0.0, 0.0, 0.25, -0.5, 0.5, 0.0, -0.75, 0.5, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, 0.25, 0.0, 0.25, 0.25, 0.5, 0.5, -0.25, -0.5, -1.0, 0.0, 0.5, 0.0, -0.75, -1.0, -0.75, 1.0, 0.0, -0.75, 0.5, 0.0, 1.0, 0.5, -0.25, 0.25, 0.25, -0.5, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter26 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array24 = new Float32Array([-0.5, -1.0, 0.25, -0.75, -0.5, 1.0, -0.25, 0.75, 0.75, -0.75, 0.0, -0.25, -0.75, 0.75, -0.25, -1.0, 0.25, -0.5, 0.5, 0.0, 0.25, -0.75, -1.0, -1.0, -1.0, -1.0, -0.5, 0.75, 0.5, -0.25, -0.75, 0.75, 1.0, 0.0, 1.0, 0.75, 0.75, -0.5, 0.5, -0.5, 0.0, -0.5, 1.0, -0.5, -0.25, 1.0, -0.25, 0.0, 0.25, 0.25, -0.25, 0.0, 0.25, -0.25, 0.0, -0.75, -0.75, -1.0, -0.75, 0.25, 0.75, 0.75, -0.25, 0.0, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.0, -1.0, -0.5, -0.5, -1.0, 0.75, 1.0, 0.75, -0.5, -0.75, -0.5, -1.0, 0.0, 0.25, -0.75, 0.0, -0.75, -1.0, -0.5, -0.75, 0.75, 0.5, 0.25, -0.25, 0.5, 0.5, -0.5, 0.0, 0.75, -0.25, ]);
    
    const array25 = new Float32Array([1.0, -0.5, 1.0, -0.25, 0.25, 0.25, 0.25, -0.5, 0.0, -0.5, 0.25, 0.5, -0.75, 0.25, 0.0, -0.75, 0.75, -0.25, 0.0, 0.0, 0.25, 0.5, -1.0, 0.75, -0.75, 0.25, -0.25, 0.75, -0.75, -0.5, -1.0, 0.5, 0.75, 1.0, 1.0, 0.5, 0.75, 0.5, -0.5, 1.0, 0.75, -0.25, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 1.0, 0.5, 1.0, -1.0, 0.25, -0.5, -0.75, -0.25, -0.5, -0.5, 0.25, 1.0, -0.25, 0.75, 0.25, -0.75, -1.0, 1.0, 0.5, 1.0, -0.25, 0.5, 0.75, -1.0, -0.25, -0.25, -0.25, 0.5, 0.25, 1.0, -1.0, 0.75, -0.75, -0.25, 0.25, -0.5, -1.0, -1.0, 0.25, -1.0, 0.25, 0.25, 0.5, -0.5, 0.0, 0.5, 0.5, 0.75, 1.0, 0.25, -0.5, 0.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter27 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter28 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
}