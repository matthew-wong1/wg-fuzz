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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([0.5, -0.5, 0.5, 0.75, -0.75, 1.0, 0.0, 0.5, -0.25, 0.25, 0.0, -1.0, -0.25, 0.0, 0.75, 0.0, 1.0, -0.25, 1.0, 0.25, -0.5, -0.25, 0.5, -0.25, -0.25, -0.25, 0.0, 0.0, -0.25, 0.75, 0.25, 0.5, -1.0, -0.25, 0.5, -1.0, -0.75, 0.5, 0.0, 0.5, -0.75, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 0.5, 0.5, -0.75, 0.5, 1.0, 0.25, 1.0, 0.5, 0.75, -0.75, 1.0, -0.5, 0.5, 0.25, 0.75, 1.0, -0.25, -0.5, -0.5, -0.5, -0.25, 0.75, -0.75, -0.5, 0.75, 1.0, -0.5, -0.25, -0.5, 0.0, 0.25, -0.75, 0.0, -0.25, 0.75, -1.0, 0.5, 0.0, 1.0, -1.0, 1.0, 0.5, 0.75, -0.25, 0.0, 1.0, 0.75, 1.0, 0.0, 0.0, -0.5, -0.25, ]);
    
    
    
    const array1 = new Float32Array([-0.5, -0.75, 1.0, -0.75, -1.0, -0.5, -0.25, -0.25, -0.5, 0.5, -0.5, 0.25, 0.25, 0.0, 0.75, -0.75, -1.0, 0.25, -1.0, 0.25, -0.75, 0.5, -1.0, 0.5, -0.25, 0.0, -1.0, 0.25, 0.25, 0.0, -1.0, 1.0, -0.5, 1.0, 1.0, -0.5, -0.75, 1.0, 0.5, 0.0, -0.5, 0.0, 0.0, 0.75, 1.0, 0.75, 0.0, 1.0, 0.25, -0.75, -1.0, -0.25, -0.25, -0.75, 0.75, -0.75, 1.0, 0.0, 0.25, -0.5, 0.75, 1.0, 0.25, -0.75, -0.75, 0.25, -1.0, 0.0, 1.0, -0.75, 0.0, 1.0, 0.5, -0.25, -1.0, 1.0, -0.75, -1.0, -0.75, -0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.25, 0.5, 0.0, 0.25, 0.0, -1.0, -0.5, 0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 0.0, 1.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array2 = new Float32Array([0.25, 0.0, 0.75, -0.25, 0.75, -1.0, -0.25, -0.25, -1.0, 0.75, -1.0, 1.0, -0.5, 1.0, -0.5, 0.25, -0.25, 0.25, 0.5, 0.75, 0.0, 0.0, -1.0, -0.25, 1.0, -0.25, 0.75, -0.75, 0.25, -0.75, 0.25, 1.0, -0.25, -0.5, 0.0, 0.5, 1.0, 0.25, 0.0, 1.0, 0.75, 0.0, 0.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.25, 0.25, -0.5, 0.0, 0.0, -0.75, 0.5, 0.5, 0.75, -0.5, -0.25, -1.0, -0.5, -0.5, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, -0.75, 0.25, -0.75, 0.5, -1.0, -0.75, 0.5, 1.0, -0.25, 1.0, -0.25, 0.5, 1.0, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 0.25, -0.5, 0.0, 0.0, 0.0, 0.25, -0.5, -0.25, -0.25, -0.25, -0.75, 1.0, -0.5, ]);
    const array3 = new Float32Array([-0.25, -1.0, 1.0, -0.75, -0.75, 0.0, -0.75, 1.0, -0.25, -1.0, 0.0, 0.5, -0.5, -0.75, -0.25, -1.0, 0.5, -1.0, 0.75, -0.75, -0.75, -0.75, -1.0, -0.25, 0.0, -0.25, 0.5, -0.75, -0.5, 0.5, 0.25, -0.5, 0.25, 0.5, -0.75, 0.25, 0.25, 1.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.75, -1.0, -1.0, -0.75, 0.25, -0.25, 0.5, -0.25, -1.0, 0.25, 1.0, 0.25, 0.25, -0.25, 0.5, -0.25, -0.25, 0.0, -0.25, 1.0, -0.25, 0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -1.0, -0.5, 0.25, -0.5, 0.75, -0.5, 0.5, 0.75, 0.0, 0.0, -1.0, -1.0, 0.25, 0.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.75, -0.25, -0.5, 0.25, 0.0, 0.75, 0.75, 0.25, 0.5, -0.25, 0.0, ]);
    const array4 = new Float32Array([-0.75, 0.5, 0.5, 0.5, -0.5, 0.0, 0.75, 0.75, 1.0, 1.0, 0.5, 0.75, -0.25, -1.0, 0.25, 0.0, -1.0, 0.75, -0.75, -1.0, 0.0, 1.0, 0.25, 0.25, 0.25, -0.5, -0.25, 0.75, 0.0, -0.25, 0.5, 0.5, 0.5, 0.0, -0.5, 0.5, -0.75, -0.5, 0.5, 1.0, -0.25, 0.0, 1.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.75, 0.5, 0.0, 1.0, 0.75, 0.25, 0.0, 0.5, 0.0, 1.0, 0.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.0, 1.0, -0.25, -1.0, -0.25, -0.25, -0.75, 0.5, -1.0, 0.5, 0.75, 1.0, -1.0, -1.0, 1.0, 1.0, -0.5, 1.0, 0.75, 0.5, -0.75, -1.0, -0.5, -0.5, 0.25, 0.25, -0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, 0.5, 1.0, 0.75, ]);
    const array5 = new Float32Array([-0.5, -0.5, -1.0, -0.25, -0.25, 0.75, -0.5, -0.5, 1.0, -0.75, -0.75, -0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.25, 0.25, -0.75, -0.5, -0.5, 0.25, -1.0, 0.75, -0.5, 0.25, -0.75, -0.75, 0.75, -0.75, 0.75, 1.0, 0.75, 0.75, -0.25, 1.0, 0.25, -0.75, 0.25, 0.75, 0.25, 0.5, 0.75, 0.0, 0.5, 0.0, -0.75, -1.0, 0.0, 0.5, -0.75, -0.25, 0.0, -0.75, -0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 0.0, 1.0, 0.25, -1.0, 0.5, -0.25, -0.25, 0.5, -0.25, 1.0, 0.25, 0.75, 0.75, -0.5, 0.25, 0.0, -1.0, 0.75, 1.0, -0.5, 0.5, -0.75, -1.0, 0.5, 0.25, 0.5, -0.75, -0.5, -0.75, -1.0, -0.25, 0.0, 0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.0, ]);
    
    
    const array6 = new Float32Array([0.75, 0.5, 1.0, 0.25, 0.25, 0.25, 0.0, 1.0, -0.75, 0.25, -0.75, -0.75, -1.0, -0.75, -1.0, 0.5, 1.0, 0.5, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -0.75, 0.75, -0.75, 0.0, 0.5, -1.0, 0.75, 1.0, -0.75, -0.25, 1.0, -0.75, 0.5, 0.0, 0.25, 1.0, 1.0, -0.25, -0.75, 1.0, 0.25, 0.5, 0.5, -0.75, 0.5, 1.0, 0.25, 0.0, 0.25, 0.0, 1.0, 0.0, 0.0, 0.5, -0.25, -0.5, 0.25, -0.5, -1.0, -1.0, -0.75, -0.25, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, 0.0, -0.25, 0.5, -0.25, 0.75, 0.25, 1.0, -0.25, 0.75, 0.75, -1.0, 0.0, 0.0, 1.0, 0.75, -0.25, 0.25, 0.75, -0.75, 0.5, -0.75, 0.25, 0.0, 0.75, 0.0, -1.0, -0.5, 1.0, ]);
    
    
    const array7 = new Float32Array([1.0, 0.0, 0.25, 1.0, 0.0, -0.5, -1.0, 0.25, 0.0, -1.0, -0.75, 0.25, -0.25, -0.25, 0.75, 0.75, 0.75, 0.5, -1.0, -0.75, 0.0, -0.25, 0.5, -1.0, -0.25, 0.25, -0.75, 0.0, 0.0, 0.75, -0.25, 1.0, -1.0, -0.25, 0.5, 0.25, 0.0, -0.25, -0.75, -1.0, 0.5, -0.5, -1.0, 0.0, -0.75, 1.0, 1.0, -0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.25, -0.75, -1.0, -0.5, -0.25, -0.5, 0.0, 0.0, 0.75, 0.75, 0.5, 0.75, 0.75, -0.5, -0.5, 0.5, 1.0, -0.75, 0.25, -1.0, 0.75, -1.0, 0.5, 0.75, 0.75, -0.25, 1.0, 0.5, -1.0, -0.25, -0.25, 1.0, -0.25, -1.0, 0.25, 1.0, -0.25, -1.0, 0.75, -0.25, 0.0, 0.25, 0.75, 0.5, 1.0, -0.75, 1.0, ]);
    const array8 = new Float32Array([-0.25, -0.75, -0.75, 0.25, 0.25, -0.5, 0.25, 0.0, -1.0, 1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.5, 0.5, 1.0, -1.0, -0.5, -0.75, -0.5, 0.0, -1.0, -0.5, -0.25, -0.5, -0.25, 1.0, 0.25, 0.0, 1.0, -0.5, -0.75, -1.0, -0.75, 0.25, -0.25, 1.0, 0.0, 0.0, -0.75, -0.5, 0.0, -0.5, -1.0, 1.0, -0.25, 0.25, 0.0, 0.5, 0.75, -0.25, 1.0, 0.0, 1.0, 0.0, 0.75, -0.5, -1.0, 1.0, 0.75, -0.5, -1.0, 0.5, -1.0, -1.0, 0.5, -0.25, -0.25, 1.0, -0.75, 0.75, 0.25, 0.0, 0.5, -0.25, -1.0, 0.0, -1.0, -0.5, -0.25, 0.25, 1.0, 0.0, 0.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.0, -0.5, -0.25, 0.25, 0.75, -0.25, -0.25, 1.0, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array9 = new Float32Array([0.0, 0.5, -0.25, 0.0, 0.75, 0.75, -0.25, 0.25, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, 1.0, -0.25, 1.0, 0.0, -0.5, 0.75, -0.25, 0.25, -1.0, 0.0, 0.25, -0.5, -1.0, 0.0, 0.5, 0.0, -0.5, -0.75, 0.75, -0.75, -0.5, -0.75, 0.5, -0.75, 0.5, 1.0, -0.25, 0.0, 0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 0.25, -1.0, -0.75, 0.25, 0.75, 0.0, -1.0, 0.25, -0.5, -0.25, 0.0, 0.75, -0.5, -0.5, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, -0.75, -1.0, 1.0, 0.0, -0.5, -0.75, 0.25, -0.25, -0.5, -0.25, -1.0, 0.5, 0.25, -0.5, -1.0, -1.0, -0.75, 0.0, -0.75, -1.0, -0.5, -0.75, 1.0, 0.25, -1.0, -1.0, 0.75, 1.0, 0.75, 0.25, 0.5, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array10 = new Float32Array([-0.75, -0.5, 0.0, -0.5, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, -0.25, -0.25, -0.75, 1.0, -1.0, 1.0, 0.5, -0.25, -0.75, 0.0, -1.0, 0.25, 1.0, 0.0, -1.0, -1.0, -0.25, 0.75, 0.0, -1.0, 0.5, 1.0, -0.75, -0.75, -0.75, 1.0, -1.0, 0.0, -1.0, -0.75, 1.0, -0.75, -1.0, 1.0, 0.0, 1.0, 0.5, -0.75, 0.5, 0.5, 0.0, -0.75, 0.25, 0.25, 1.0, -0.5, -0.75, 0.25, -0.5, 0.25, 1.0, 0.25, -0.75, 0.0, -0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 1.0, -1.0, 0.5, -1.0, -0.5, 0.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.25, 0.75, -0.75, 0.25, -0.75, -0.25, 1.0, 0.25, 0.25, 0.75, 0.75, 0.5, -0.25, -0.75, 0.0, 0.75, -1.0, -0.5, -0.75, ]);
    
    
    
    const array11 = new Float32Array([1.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.25, 0.75, 0.0, 1.0, -0.5, -0.5, 0.75, -1.0, 0.75, 0.0, 0.0, 0.25, -0.5, -0.5, -0.5, 0.0, 0.75, -0.75, -0.75, -0.75, 0.25, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, -1.0, 0.75, 0.25, 0.25, -0.25, -1.0, -0.5, -0.75, 0.5, 0.0, -0.25, 0.25, -0.25, -0.25, -0.25, -1.0, 0.75, -0.25, -0.5, -0.25, -0.75, -0.75, 0.75, -0.25, -0.25, -0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 0.0, 0.0, -0.25, -0.75, 0.75, 0.5, -0.75, -1.0, 1.0, -0.25, 1.0, 0.75, -0.75, 0.0, 0.5, 0.75, 0.5, -0.5, 1.0, 0.25, -0.75, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.0, 0.25, 1.0, 0.0, 0.25, 0.75, 1.0, -0.25, 0.25, ]);
    const array12 = new Float32Array([1.0, 0.75, 1.0, -1.0, 1.0, 0.75, 0.5, 0.0, 0.0, 1.0, -1.0, 0.25, 0.25, 0.25, 0.0, 1.0, -0.25, -0.25, 0.75, -0.25, -1.0, 0.0, -0.25, 0.0, -0.75, 0.0, -1.0, 0.5, 0.75, -0.25, 1.0, -0.75, -0.5, 0.75, 0.25, -0.25, 0.5, -0.25, 0.0, 0.25, 0.5, 0.25, -0.25, 0.0, -0.25, 0.0, 0.0, -0.5, 0.25, 0.0, -0.25, -1.0, 0.75, 0.25, 0.25, -0.75, 0.5, -0.25, 0.25, 0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, -0.25, 0.5, 1.0, -1.0, 0.5, 0.25, -1.0, 1.0, 0.75, 0.75, 0.25, 0.0, 0.75, 0.5, -0.5, 0.75, -0.75, 1.0, -0.25, 0.0, -0.75, 1.0, -0.75, -0.5, 0.0, 0.5, -0.25, 1.0, 0.0, ]);
    const array13 = new Float32Array([-0.75, 0.5, 0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 0.75, -1.0, -0.5, -0.25, 0.5, -0.5, -1.0, 0.5, 0.5, -1.0, 1.0, 0.0, -0.5, 0.5, 0.25, -0.25, -0.5, -0.75, 0.5, 0.25, 0.25, -1.0, -0.5, 0.75, 0.25, -0.25, 0.0, -0.5, -0.75, -0.25, 0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 0.5, 0.25, -1.0, -0.75, 1.0, -0.5, 0.25, 1.0, -1.0, 0.5, 0.5, -0.75, 0.25, 0.75, 0.5, -0.25, -0.75, 0.25, -0.25, -0.75, -0.5, -1.0, 0.5, 1.0, 0.0, -1.0, 0.25, -0.75, 1.0, -0.75, 0.25, -0.25, 0.25, 0.0, -0.75, 0.5, -0.25, 0.5, -0.5, 0.25, -1.0, 0.0, 0.75, 0.75, -0.25, -0.75, 1.0, 0.5, 0.5, -1.0, 0.75, 0.75, 0.0, -0.25, -0.5, 0.25, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.destroy();
    
    const array14 = new Float32Array([0.5, 0.75, -0.25, -0.25, -1.0, 0.5, 0.75, 0.75, -1.0, -0.5, 0.75, -0.75, -0.5, 0.5, -1.0, -0.25, 0.75, 0.75, -0.25, -0.75, -0.5, -0.25, 0.75, 1.0, 0.5, -0.5, 0.25, -0.25, 0.0, -0.75, -0.25, 0.5, -1.0, -0.25, 1.0, -1.0, -0.25, -0.25, 0.75, 1.0, 0.75, 0.75, 0.75, -0.75, 0.5, 1.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.5, 0.75, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, -0.5, 0.5, -1.0, 0.75, 0.0, -1.0, -0.5, 0.25, 0.25, 0.0, -1.0, -0.5, -0.5, -0.5, 1.0, -1.0, 1.0, 0.75, -0.25, 0.5, 0.75, -0.75, 0.5, 0.25, -0.5, -1.0, -0.75, 0.25, -0.25, 0.75, -0.5, 1.0, 0.75, -1.0, 0.25, -0.5, -1.0, 0.75, 0.5, -1.0, 0.0, ]);
    const array15 = new Float32Array([0.75, -0.25, 0.0, -0.25, -0.5, 0.25, -0.5, 0.75, -1.0, 0.5, 0.5, 1.0, -0.5, -1.0, 1.0, -1.0, -0.75, -0.25, 0.25, -0.75, 0.75, -0.75, -0.5, -0.5, 0.75, 0.0, 0.5, -0.5, 0.75, 1.0, 0.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.75, -0.5, 1.0, -0.5, -0.25, -0.75, -0.25, 1.0, 1.0, 0.5, -0.5, -0.25, -0.5, 0.5, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, -0.25, -0.75, 0.75, 0.0, 0.75, -1.0, -0.5, 0.0, -0.5, -1.0, -0.25, 1.0, 1.0, 0.75, -0.25, 0.25, 0.75, 1.0, -0.5, -0.75, 1.0, 0.5, 0.75, -0.5, 0.75, -0.75, -0.25, -0.5, -0.75, 0.0, 1.0, 0.75, 0.5, -1.0, 0.5, 0.25, 0.5, -0.5, 0.75, -1.0, 1.0, -0.75, ]);
    
    const array16 = new Float32Array([0.0, -1.0, 1.0, 0.0, -0.75, 0.0, 1.0, -0.75, -0.25, -0.5, -1.0, 0.0, -0.75, 0.75, -0.75, -0.75, 0.5, 0.75, -0.5, 0.75, 0.0, -0.5, -0.25, 0.25, -0.75, 0.5, 1.0, -1.0, -1.0, -0.5, -0.75, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, -0.25, -1.0, -0.25, 1.0, 0.25, 0.25, -1.0, -0.5, 0.5, -0.75, -0.25, -1.0, 0.25, 0.75, -0.5, 0.5, -0.75, -1.0, 0.25, 0.0, 0.75, -0.25, -1.0, 1.0, -0.75, 0.5, -0.5, 0.5, 0.25, 0.5, 0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 1.0, 0.25, -0.5, 0.5, -0.25, -0.75, 0.0, 0.5, -0.5, -0.75, 0.25, -0.75, 0.75, -1.0, 1.0, 0.25, 1.0, -0.75, 0.25, 0.5, -0.5, 0.75, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array17 = new Float32Array([0.5, -0.25, 0.75, -0.25, 0.0, 0.0, -0.5, 0.25, -1.0, 0.0, 0.75, -0.25, -0.25, 0.25, 0.75, 0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0.25, 0.25, -1.0, -1.0, 0.75, 1.0, -0.75, 0.5, 0.0, -0.25, 0.75, 0.5, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, -1.0, 0.5, 0.0, -0.5, 1.0, -0.5, 0.0, 0.0, 0.5, -0.25, 0.0, -0.25, -1.0, -0.5, 0.25, -1.0, 0.5, 1.0, 0.0, -1.0, 0.5, -0.25, 0.75, 0.75, 1.0, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, -0.25, -0.75, -0.25, 1.0, -0.75, 1.0, 0.0, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, 0.25, -0.5, 0.25, -1.0, 0.5, 1.0, -0.5, 0.0, 0.5, -0.5, ]);
    
    const array18 = new Float32Array([0.75, -0.75, 0.0, 0.5, -0.25, 0.0, 1.0, -1.0, 0.75, 0.5, -0.5, 0.5, 0.5, -0.5, 1.0, -0.25, 0.75, -1.0, -0.25, 0.0, -0.5, 0.0, 0.75, 0.0, 0.25, -1.0, 0.0, -0.75, -0.75, 0.5, 0.25, -0.5, -0.5, -0.25, 1.0, 1.0, 0.5, -0.25, -0.5, 0.0, -0.25, 0.0, 0.75, 0.25, -0.75, 0.5, -0.75, 0.0, -0.25, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.25, 0.0, -0.25, 0.5, -0.75, 0.75, 0.25, -1.0, -0.75, 1.0, -0.25, 0.75, 1.0, -1.0, 0.5, -0.75, -0.5, 0.25, 0.75, 0.0, 0.75, -1.0, -1.0, -0.5, 0.0, 0.75, 0.25, 0.25, 1.0, -0.5, 0.25, -0.5, -1.0, -0.75, -0.75, 0.5, -1.0, 0.0, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, -0.75, ]);
    
    const array19 = new Float32Array([-0.5, 1.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.25, -0.25, -0.75, -1.0, -0.5, -0.5, 1.0, 0.75, 1.0, 0.75, 0.25, 1.0, 1.0, -0.5, 0.0, 0.25, -1.0, -0.5, -0.5, 0.25, 0.75, 0.0, -0.25, -1.0, -0.25, -1.0, -0.5, 0.0, 0.25, 0.75, -0.25, 0.75, -0.5, 0.0, -0.25, -0.75, 0.25, 0.75, 0.5, 0.5, 0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 0.0, -1.0, -0.25, -0.25, -1.0, -0.5, -1.0, 0.75, -0.5, -0.5, 0.5, 0.5, -0.5, -0.5, 1.0, -1.0, 0.5, -0.5, 0.75, -0.25, -1.0, 0.75, 1.0, 0.75, -1.0, 0.75, 0.0, 0.75, -0.25, 0.5, -0.75, -1.0, 1.0, 1.0, 1.0, 0.5, -0.25, 0.0, 0.0, 0.25, -1.0, -0.25, -1.0, -1.0, -0.5, 0.25, 1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array20 = new Float32Array([0.25, 0.75, -0.5, 0.0, -0.75, -0.5, 1.0, -0.75, 1.0, 0.0, 0.25, 1.0, 0.75, 0.0, 0.5, 0.0, -1.0, -0.5, 0.5, -0.5, 0.25, -0.5, -0.75, 0.25, 0.0, 0.25, 0.25, 0.0, 0.75, -0.25, -1.0, 0.25, 0.5, 0.25, 0.25, 0.25, -1.0, 0.0, 1.0, 0.0, -0.75, 0.0, 0.25, -1.0, -1.0, -0.25, 0.0, -0.5, -0.5, 0.75, -0.75, -0.75, -0.5, -0.75, -0.75, 0.75, -0.75, -0.25, 1.0, 0.0, -0.5, 0.75, -0.25, 1.0, -0.25, -1.0, -0.5, -0.5, 0.5, 0.0, 0.75, 0.25, 0.0, 1.0, 0.75, 0.25, -0.5, -0.75, 0.0, 0.75, -0.75, -0.75, 1.0, 0.0, 0.75, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, -0.75, -1.0, 0.5, 0.5, 0.5, -0.5, -0.5, 0.5, -1.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.pushErrorScope("out-of-memory");
    
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    
    const array21 = new Float32Array([0.5, 0.0, 0.0, 0.0, -0.5, 0.5, 0.75, 0.5, 0.5, -0.25, 1.0, -0.75, 0.0, 1.0, 0.0, -0.75, -1.0, -0.5, -0.25, 0.75, 1.0, 0.25, 0.75, -1.0, -0.25, 1.0, -0.25, 1.0, 0.5, -1.0, 0.75, -0.75, 0.5, 0.75, -0.75, 1.0, 0.25, 0.75, -0.5, -1.0, 0.25, 0.75, 0.5, -0.5, 0.5, -0.25, -0.25, 0.5, 1.0, -0.75, 1.0, 0.75, 0.5, 0.0, -0.25, 0.25, 0.75, 0.5, 0.5, 0.5, 1.0, -1.0, -0.25, -0.75, 0.0, -0.5, 0.75, 0.0, 0.75, 0.75, -0.5, 0.0, 0.5, 0.75, 0.75, 1.0, 0.75, 0.5, 0.0, 0.5, 0.25, 0.5, 0.5, -0.5, 1.0, -1.0, 0.5, -0.5, -0.25, 1.0, 0.75, -0.5, 0.75, 0.75, -0.25, -0.75, 0.5, -0.75, -0.75, 0.5, ]);
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("internal");
    
    const array22 = new Float32Array([-1.0, -0.5, -0.25, 0.25, 0.0, -0.25, 1.0, 0.75, -0.25, -0.75, 0.25, 0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.25, -0.5, 0.5, -0.5, 0.25, -0.75, 0.25, -1.0, -0.5, 1.0, -0.25, -0.25, 1.0, 0.5, 1.0, -1.0, -1.0, -1.0, -1.0, 0.75, -0.25, -0.25, -0.75, -0.5, -0.25, -1.0, -0.25, 1.0, 0.75, 0.5, -0.75, 0.25, -1.0, 0.5, 0.0, -0.25, 0.25, 0.0, 1.0, -1.0, 0.25, 0.25, -1.0, 1.0, 1.0, 0.25, -0.25, 0.75, 0.5, -1.0, -0.5, 0.5, -0.5, -0.75, -0.25, -0.75, 1.0, -0.5, 0.0, 1.0, -0.75, -0.25, -0.25, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, -1.0, 1.0, 0.75, -0.25, -0.5, -0.75, 0.75, 1.0, -1.0, -0.75, -0.75, -0.75, ]);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture500.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer400.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device50.queue.writeBuffer(buffer501, 0, array20, 0, array20.length);
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device30.pushErrorScope("validation");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    device50.queue.writeBuffer(buffer501, 0, array22, 0, array22.length);
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer500.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder501.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder501.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    texture300.destroy();
    command_encoder501.insertDebugMarker("mymarker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array20, 0, array20.length);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const command_buffer400 = command_encoder400.finish();
    device70.destroy();
    device50.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    command_encoder502.pushDebugGroup("mygroupmarker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array20, 0, array20.length);
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device50.queue.writeBuffer(buffer501, 0, array22, 0, array22.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    device50.queue.writeBuffer(buffer501, 0, array21, 0, array21.length);
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device50.queue.writeBuffer(buffer501, 0, array20, 0, array20.length);
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    device50.queue.writeBuffer(buffer501, 0, array22, 0, array22.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    
    
    command_encoder501.insertDebugMarker("mymarker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer501, 0, array19, 0, array19.length);
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device50.queue.writeBuffer(buffer501, 0, array15, 0, array15.length);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer501, 0, array22, 0, array22.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array23 = new Float32Array([0.0, 0.5, 0.0, 0.75, -1.0, 1.0, -0.75, 1.0, 0.25, -0.5, -1.0, 0.0, 0.25, 1.0, 0.5, 1.0, -1.0, 0.25, -0.75, -0.75, -0.25, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, 0.0, -1.0, -0.25, -1.0, -1.0, -0.25, -0.5, -0.25, 0.75, 0.75, 1.0, -0.75, 0.75, -0.75, -0.75, 0.25, 0.5, 0.0, -0.5, 0.75, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, 0.5, 0.75, 0.75, 1.0, 0.0, -0.75, 0.25, 0.75, 0.25, 0.0, 1.0, -1.0, -1.0, -1.0, -0.25, -0.25, -0.75, 0.0, -0.25, -0.25, -0.5, 0.0, 0.5, -0.75, -0.25, 0.0, 0.5, 1.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.0, 1.0, 0.5, 0.25, 0.5, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.75, 0.5, 1.0, ]);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder5000.popDebugGroup()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device50.queue.writeBuffer(buffer501, 0, array19, 0, array19.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer501, 0, array21, 0, array21.length);
    device50.queue.writeBuffer(buffer501, 0, array20, 0, array20.length);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("internal");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const array24 = new Float32Array([-0.75, 0.75, -0.5, 1.0, 0.75, -1.0, -0.75, -0.75, 0.25, 1.0, 0.0, -0.5, 0.0, 1.0, 0.25, 0.75, -0.75, -0.5, 0.25, 0.0, -0.5, 0.5, 0.5, -0.5, 0.5, 0.25, 1.0, 0.5, -0.5, 0.75, -1.0, 0.5, 0.25, 0.0, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.75, 0.75, 1.0, 0.75, 0.0, -0.5, 1.0, -0.25, 0.5, 0.25, 0.75, -1.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.25, -0.75, -1.0, -0.75, -0.25, 0.5, 0.0, -0.25, -0.75, -0.75, -0.25, 0.75, -0.5, -0.5, 1.0, 0.25, -0.25, 0.75, 0.25, 1.0, 0.75, 0.75, -0.75, 1.0, -0.75, 0.0, 0.75, 0.25, -1.0, 0.5, 0.75, 0.25, 1.0, -0.75, -0.75, 0.75, -0.5, 0.0, 0.5, -0.75, 0.5, -1.0, -0.5, ]);
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device50.queue.writeBuffer(buffer501, 0, array19, 0, array19.length);
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    
    
    device50.queue.writeBuffer(buffer501, 0, array24, 0, array24.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer501, 0, array18, 0, array18.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device50.queue.writeBuffer(buffer501, 0, array15, 0, array15.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array15, 0, array15.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    buffer502.destroy()
    buffer300.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    texture501.destroy();
    const array25 = new Float32Array([0.75, 0.75, 0.0, 0.75, -0.75, 0.5, -0.5, -1.0, 0.75, -1.0, 0.25, 0.5, 1.0, -0.75, -0.25, -0.25, 0.0, -0.25, -0.25, 0.5, -1.0, 0.0, -0.75, 0.25, -0.5, -0.75, 0.75, -0.5, 1.0, 0.0, -0.75, -0.5, -0.75, 0.25, 0.5, 0.25, 0.75, 0.75, 0.25, 0.5, 0.5, -1.0, 0.0, 0.25, 0.75, 0.75, 1.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.75, -0.75, 1.0, 0.0, -0.25, 0.0, 0.75, 1.0, 0.75, 1.0, 0.0, -0.75, 0.25, 0.5, -0.5, -0.5, -0.75, -0.75, 0.0, 1.0, 0.75, -0.75, -0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.25, 0.75, -0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 0.25, -0.5, -0.25, -0.25, 0.5, -0.25, -0.75, 0.75, -0.5, 0.5, 1.0, 0.75, ]);
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    texture301.destroy();
    device50.queue.writeBuffer(buffer501, 0, array24, 0, array24.length);
    buffer501.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    device40.pushErrorScope("validation");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module501,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    texture401.destroy();
    
    
    texture502.destroy();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    compute_pass_encoder4010.popDebugGroup()
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer401.destroy()
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    command_encoder503.pushDebugGroup("mygroupmarker")
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout505]
    });
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder501.setPipeline(render_pipeline502);
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout502]
    });
    command_encoder501.insertDebugMarker("mymarker");
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    buffer506.destroy()
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout506]
    });
    
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout503]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const bind_group_layout507 = device50.createBindGroupLayout({ 
        label: "bind_group_layout507",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module500,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module500,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder502.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module500,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module500,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer402.destroy()
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout5015 = device50.createPipelineLayout({ 
        label: "pipeline_layout5015",
        bindGroupLayouts: [bind_group_layout500]
    });
    const bind_group_layout508 = device50.createBindGroupLayout({ 
        label: "bind_group_layout508",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    buffer505.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    device40.queue.writeBuffer(buffer403, 0, array8, 0, array8.length);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer404.destroy()
    
    render_bundle_encoder501.setVertexBuffer(0, buffer502);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    device40.queue.writeBuffer(buffer403, 0, array23, 0, array23.length);
    device40.queue.writeBuffer(buffer403, 0, array9, 0, array9.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module401,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    texture302.destroy();
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device30.queue.writeBuffer(buffer301, 0, array17, 0, array17.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const pipeline_layout5016 = device50.createPipelineLayout({ 
        label: "pipeline_layout5016",
        bindGroupLayouts: [bind_group_layout506]
    });
    
    const pipeline_layout5017 = device50.createPipelineLayout({ 
        label: "pipeline_layout5017",
        bindGroupLayouts: [bind_group_layout502]
    });
    device30.queue.writeBuffer(buffer301, 0, array14, 0, array14.length);
    device30.queue.writeBuffer(buffer301, 0, array13, 0, array13.length);
    device30.queue.writeBuffer(buffer301, 0, array21, 0, array21.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder502.popDebugGroup()
    
    device30.queue.writeBuffer(buffer301, 0, array12, 0, array12.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout5018 = device50.createPipelineLayout({ 
        label: "pipeline_layout5018",
        bindGroupLayouts: [bind_group_layout503]
    });
    device60.pushErrorScope("out-of-memory");
    const array26 = new Float32Array([-1.0, 0.25, 0.75, -0.75, -1.0, 0.25, 0.75, 0.0, 0.0, 1.0, 0.0, 0.75, 1.0, 0.25, 0.5, -1.0, -0.25, -0.5, 0.25, -1.0, 0.75, -0.5, -0.25, -0.75, 1.0, -0.75, 0.5, 0.25, -0.25, -0.5, 0.5, -0.25, 1.0, -0.75, -0.75, 0.0, 1.0, 0.25, -0.75, -0.75, 0.75, 0.0, -0.25, 0.75, -0.5, 0.25, 1.0, 1.0, 0.75, 0.0, 0.0, -0.75, -0.25, 0.25, -0.25, 0.0, 0.25, -0.5, -0.5, 0.5, 0.5, 0.75, 1.0, -0.75, -0.75, 0.5, 0.25, 0.5, 0.0, -1.0, -0.5, -0.25, -1.0, -1.0, 1.0, 0.75, 0.25, 0.5, 0.75, -0.75, -0.75, 1.0, 0.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.5, -0.5, 1.0, -0.25, -0.5, 0.25, 0.25, 0.25, 0.25, -0.5, 0.0, -0.75, ]);
    render_bundle_encoder401.setPipeline(render_pipeline405);
    
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout5019 = device50.createPipelineLayout({ 
        label: "pipeline_layout5019",
        bindGroupLayouts: [bind_group_layout506]
    });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module502,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module502,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer406.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder502.insertDebugMarker("mymarker");
    
    render_bundle_encoder502.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array11, 0, array11.length);
    buffer504.destroy()
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer403, 0, array25, 0, array25.length);
    
    
    
    
    compute_pass_encoder3020.popDebugGroup()
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    buffer407.destroy()
    compute_pass_encoder5000.popDebugGroup()
    
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    compute_pass_encoder3000.popDebugGroup()
    buffer507.destroy()
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    const bind_group_layout509 = device50.createBindGroupLayout({ 
        label: "bind_group_layout509",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout603]
    });
    const command_buffer402 = command_encoder402.finish();
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder600.insertDebugMarker("mymarker");
    const pipeline_layout5020 = device50.createPipelineLayout({ 
        label: "pipeline_layout5020",
        bindGroupLayouts: [bind_group_layout505]
    });
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder600.insertDebugMarker("mymarker");
    
    device30.queue.writeBuffer(buffer301, 0, array25, 0, array25.length);
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    device60.queue.submit([command_buffer601, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}