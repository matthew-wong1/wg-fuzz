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
    
    const array0 = new Float32Array([-0.5, 0.0, 0.25, 0.75, 0.0, 1.0, -0.5, -0.5, -0.25, -0.25, 1.0, 0.0, 0.25, -0.5, 0.75, -0.75, -0.25, 1.0, -0.75, -0.5, 0.75, 0.0, -1.0, 0.0, -0.5, -0.25, 0.25, -0.75, 0.75, 1.0, -0.75, 0.5, -1.0, 1.0, -0.25, 0.0, -0.5, 0.5, -1.0, 0.0, 0.5, 1.0, 1.0, -0.25, -0.25, 0.0, -0.75, -0.25, 0.5, 0.25, 0.0, 0.75, -0.75, 0.75, 0.0, 1.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.75, 0.25, 0.25, -0.25, 0.75, 0.25, 0.0, 0.5, -1.0, -1.0, 0.25, 0.25, 0.0, 1.0, -0.5, -0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, -0.5, 0.5, -0.5, 0.0, -0.5, -0.25, -0.75, 0.0, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, -0.75, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, 0.5, -0.25, -0.75, 0.0, -0.75, -0.5, 0.5, 0.5, 0.0, 0.75, 1.0, -0.25, 0.25, -0.25, 0.75, 1.0, 0.25, -0.75, 0.75, 0.5, 0.5, 0.5, 0.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.5, 0.75, -0.25, 0.75, 0.75, -0.75, -0.25, -0.75, 1.0, 0.25, -0.5, -0.5, 1.0, -1.0, -1.0, -1.0, 0.75, -0.75, 1.0, 0.5, -1.0, 0.75, 0.75, -0.75, -0.5, 0.0, -1.0, -0.25, 0.75, 0.75, 0.75, 0.0, 1.0, -0.25, 0.0, 1.0, -0.5, -0.75, -0.75, -0.5, -1.0, -0.25, 0.75, -0.25, 0.0, 0.0, 0.0, 1.0, 0.5, -0.75, 1.0, -0.5, -0.5, 0.0, 1.0, -1.0, 0.0, -1.0, -0.5, 0.75, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, -1.0, 1.0, 0.5, -0.75, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([1.0, -0.75, 0.5, 0.5, -0.75, 0.75, 1.0, -0.5, -0.25, 0.5, 0.75, -0.75, -0.25, 0.0, 0.0, -0.5, 0.5, -0.25, -0.25, 0.0, 1.0, -0.75, 0.0, 1.0, 1.0, 0.5, -0.5, 1.0, -0.75, -0.5, 0.5, -0.5, -0.25, -0.25, 0.75, -0.25, 0.0, 0.75, 0.25, -1.0, 0.75, -1.0, -0.75, -0.25, 1.0, -0.5, -0.75, -0.75, 0.0, -0.5, -1.0, 0.5, -0.75, 0.5, -1.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.25, 0.5, -1.0, -0.5, -0.25, 0.0, 0.0, -0.5, 0.75, 0.5, 1.0, 0.0, -0.5, 0.75, -0.25, 0.25, -0.5, 1.0, 0.75, -0.75, 0.75, -1.0, -0.25, -0.75, -1.0, -0.25, -0.25, -1.0, 0.0, -0.25, -0.5, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 0.0, 0.0, ]);
    
    
    const array3 = new Float32Array([-1.0, -0.5, -0.25, -0.5, -1.0, -1.0, 0.0, 1.0, -0.25, 0.5, 0.25, 1.0, -0.5, -1.0, -0.25, -0.75, 0.25, 0.25, 1.0, 1.0, 0.0, -1.0, 0.25, -0.75, 1.0, 0.0, -0.25, 0.75, 1.0, 1.0, 0.5, -1.0, 0.75, 0.0, 1.0, 0.5, 0.5, 0.0, -0.75, -0.75, -0.75, -1.0, -0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 0.75, -0.25, -0.75, -0.5, 0.75, 0.75, 0.25, 1.0, 0.25, 0.75, -1.0, -0.25, 0.0, 1.0, 0.0, 0.75, 0.25, -0.5, 0.25, -1.0, -1.0, 1.0, 0.0, -0.5, 0.5, -0.75, 0.75, -0.5, -0.75, 0.5, 0.25, 0.75, -0.75, 1.0, 1.0, -0.75, 1.0, -0.75, 0.75, -0.25, -0.25, 0.75, 0.75, -0.25, -0.5, -1.0, -0.25, -1.0, -0.75, 1.0, -0.75, 0.0, ]);
    device10.destroy();
    
    const array4 = new Float32Array([-0.5, 1.0, -1.0, -0.75, 0.25, 1.0, 0.75, -0.75, 0.75, -0.25, 0.75, -0.5, 0.75, -0.25, -1.0, 0.25, 0.25, -0.25, -0.5, 0.0, 0.5, 0.25, -0.5, -0.25, -0.25, -0.25, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, 0.75, -0.25, 0.75, -1.0, 1.0, -0.5, -0.25, 0.25, 0.75, 0.25, -1.0, 0.5, 0.0, 0.75, -0.75, -0.5, -0.25, -0.75, 0.0, -1.0, 1.0, 0.0, 0.25, 0.25, -1.0, 0.25, 0.0, 1.0, 0.0, 0.0, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, -0.5, 0.25, -0.75, 1.0, -0.5, 0.75, -0.25, -0.5, -1.0, 1.0, 0.25, -1.0, 0.25, 0.75, -0.5, -0.5, -0.25, -0.5, 0.75, 0.0, 0.5, -0.75, 0.0, 0.5, -1.0, 1.0, 1.0, -1.0, -0.25, -0.25, -0.75, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array5 = new Float32Array([-1.0, 1.0, 0.25, 0.25, -1.0, -1.0, 1.0, -1.0, 1.0, -0.5, -0.25, -0.25, 0.0, -0.75, -0.5, 0.0, 0.75, 0.75, -1.0, -0.25, 0.5, -0.75, -0.25, 0.5, 0.5, -0.25, 0.25, 1.0, -0.75, 0.0, -0.75, 0.25, -0.5, -0.75, 1.0, 0.25, -0.25, -0.5, 0.0, -1.0, 1.0, -0.75, -0.75, -1.0, -0.75, -1.0, -1.0, 0.0, 0.25, -0.75, 0.75, -1.0, -1.0, 0.5, -0.25, 1.0, -1.0, -1.0, 0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 1.0, 0.0, -0.75, 1.0, 0.0, -1.0, -1.0, 1.0, 1.0, -0.5, 1.0, -0.5, 0.25, -0.75, -0.75, 0.75, -0.75, -0.75, 0.75, -0.25, -0.75, 0.25, -0.75, -0.5, -0.75, -1.0, -0.5, -0.75, -1.0, -1.0, -0.5, 0.75, -1.0, 0.25, 1.0, -0.25, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([-0.75, 1.0, 0.75, 1.0, 0.0, -0.5, 0.75, -0.5, 0.0, 1.0, 0.5, -1.0, 0.25, 0.25, 0.75, -0.75, 0.75, -0.5, 0.25, 0.5, -1.0, 0.5, -0.75, 0.25, 0.0, -0.75, -0.5, 0.0, 0.75, 0.25, -0.75, -0.75, -0.75, -1.0, 0.25, 0.75, -1.0, 0.75, -0.5, 0.75, 0.75, -1.0, 0.25, 0.25, 0.5, -0.5, 0.25, -0.25, -1.0, 1.0, -0.25, -0.5, 0.5, 0.5, 0.5, -0.5, -0.5, 0.25, 0.25, 0.0, -0.75, -1.0, 0.0, 1.0, 0.0, 0.75, 0.0, -0.25, 0.5, 0.25, 0.0, -1.0, -0.75, 1.0, -0.5, -0.25, 1.0, -0.75, 1.0, -0.25, -1.0, -0.25, -0.75, 1.0, 1.0, -0.75, -0.75, -0.5, -0.75, 0.75, 0.0, 1.0, 1.0, 0.25, -0.25, -0.5, -1.0, -0.25, 0.25, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([-0.75, -0.75, 0.75, -1.0, -0.75, 0.75, 0.0, 0.0, -1.0, -0.5, -1.0, 0.75, -0.25, 0.5, 0.5, 0.25, -1.0, 0.5, -0.25, 1.0, -0.25, 0.75, -0.25, -0.75, 0.0, -1.0, 0.0, -0.75, 0.0, 0.0, -0.25, 0.5, 0.5, 0.75, 0.25, 0.5, 0.25, -0.75, 1.0, -0.5, -1.0, 0.25, 0.75, 0.0, 0.25, 0.0, -0.75, 0.25, 0.25, -0.75, -0.25, 0.75, 0.5, -1.0, 0.25, -0.25, -0.25, 1.0, 0.5, -1.0, -0.5, 0.0, 0.5, 0.75, -0.5, 1.0, -0.75, 0.0, -0.25, 0.0, -1.0, -0.75, -0.5, -0.5, -1.0, -1.0, 0.0, 0.5, 1.0, -0.5, 1.0, 1.0, 0.25, 0.25, 0.0, 1.0, 0.75, -0.75, 0.5, 0.0, 0.75, -0.5, -0.75, -0.5, 0.25, -1.0, 0.25, 0.25, 0.25, 0.25, ]);
    
    const array8 = new Float32Array([0.75, -0.5, 0.75, 1.0, 0.5, -1.0, 1.0, -0.75, 1.0, -1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 0.5, 0.0, -0.75, 0.0, 0.0, -1.0, 0.25, -1.0, 0.75, 0.75, -0.75, -1.0, -0.5, 0.75, 1.0, -0.75, -0.75, -0.5, -0.5, 0.25, 0.75, -1.0, 0.0, 0.75, 1.0, 0.75, -0.25, -0.5, 0.0, 0.0, 0.0, 0.75, -0.25, -0.25, -1.0, 1.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, -0.5, 1.0, -0.25, -0.5, 0.0, 0.5, 0.0, 0.5, -0.5, -1.0, -0.75, 0.25, 0.25, 0.0, -0.75, 0.0, 1.0, 0.0, 0.0, 0.25, 0.25, -1.0, 0.75, 0.25, -1.0, -0.5, 0.25, 1.0, -1.0, 0.75, -0.75, 0.5, -1.0, 0.0, 1.0, -0.25, 0.0, 0.5, -1.0, 0.25, -0.75, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const array9 = new Float32Array([-1.0, 0.75, 0.25, -1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.25, -0.75, 0.25, 1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.5, 0.0, -0.5, -0.75, 1.0, -1.0, 0.75, 1.0, -0.5, -1.0, 0.25, 1.0, 0.25, 1.0, 0.25, -1.0, 1.0, -0.25, -0.5, -1.0, -0.75, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, 0.25, 0.0, -1.0, -1.0, 0.0, 1.0, -0.5, -0.25, 0.75, -0.75, 0.5, 1.0, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, -0.75, 1.0, 0.0, 0.5, -0.75, -0.75, -0.5, -0.25, 0.75, 0.25, -0.75, 0.5, 0.75, -0.75, 1.0, -0.75, 0.0, 0.5, -0.75, 0.0, 0.25, -1.0, -1.0, 0.75, -0.25, -0.25, 0.5, 0.25, 0.5, -1.0, 0.5, 0.5, 0.25, 0.0, ]);
    
    const array10 = new Float32Array([-0.5, 0.0, 0.0, -0.25, 1.0, -0.25, 0.25, 0.0, -0.75, 0.0, -0.5, 0.0, -1.0, 0.25, 0.5, 0.25, -0.5, -0.25, 0.75, -0.25, 0.75, 0.25, 0.5, -1.0, -0.75, -0.5, 0.75, 1.0, -0.75, -0.5, 0.75, -0.25, -0.25, 1.0, -0.25, -0.5, -0.5, 0.5, 0.0, 0.75, 0.25, 1.0, -0.5, -0.75, 0.25, 0.25, 0.5, -0.5, 0.0, 0.25, 0.75, 0.25, -0.25, 0.5, -1.0, 0.75, -0.25, -0.5, -0.5, 0.25, -1.0, -1.0, 0.0, 0.25, 1.0, -0.5, -0.75, 0.25, -1.0, 0.5, -1.0, 0.5, 0.25, -0.75, 0.25, 0.25, -0.75, 0.5, -1.0, -0.75, -1.0, -1.0, -1.0, 0.0, 0.5, -1.0, 1.0, -1.0, 0.25, -0.25, -1.0, 0.25, -0.25, 0.25, -0.25, -0.5, 0.5, 0.75, 0.75, 0.25, ]);
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.pushErrorScope("out-of-memory");
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    device40.destroy();
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const array11 = new Float32Array([0.25, 0.75, 0.75, -0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 1.0, 1.0, -0.5, 0.25, -1.0, -0.25, -1.0, 0.0, -1.0, -0.25, -0.75, 0.0, -1.0, 0.0, 0.0, 0.5, -0.75, -0.25, -1.0, 0.0, 0.25, 0.5, -0.25, 0.0, 0.0, -1.0, 0.0, 0.25, -0.25, -1.0, -0.75, 0.0, -0.5, -0.75, -1.0, 0.0, 0.75, 0.5, 0.75, -0.5, 0.5, -0.5, -0.5, -0.75, -0.75, -0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 0.75, -0.75, 0.25, 0.0, -0.5, -0.75, -1.0, -0.25, 1.0, 0.75, 0.0, -0.5, 0.75, 0.25, -0.75, 0.0, 0.75, 0.25, -0.25, -0.5, 0.0, -0.5, -1.0, 1.0, -1.0, 0.25, -0.75, 0.75, 0.0, 1.0, -0.75, 0.5, 0.5, 0.5, 0.25, -0.5, 0.75, 0.0, -0.5, -1.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const array12 = new Float32Array([-0.25, 0.25, 0.25, 0.75, -0.25, 0.25, 0.0, 0.75, -0.25, 1.0, 0.25, 0.25, 0.25, -0.75, -1.0, 0.0, 0.5, 0.25, 0.0, 0.25, 0.5, 0.75, 0.25, -0.25, 0.0, 0.25, 0.25, 0.5, 0.25, 0.25, 0.25, 0.0, 0.25, -0.25, -0.25, 1.0, 0.25, -0.5, 0.75, -1.0, -0.75, 0.5, -0.75, 0.75, 0.5, -0.5, 0.25, -0.5, -0.5, -0.5, 0.5, -1.0, 1.0, -0.75, -0.25, -0.5, 0.5, 1.0, 0.5, -1.0, -0.5, 0.5, 0.75, 0.25, 0.75, -0.75, -1.0, 0.0, -0.25, 0.0, 0.75, 0.0, 0.0, -1.0, 0.0, 0.75, -0.25, -0.25, -0.75, -0.75, -0.5, -0.25, -0.5, -0.5, -0.25, 0.0, 0.0, 0.25, 0.25, -0.5, -0.25, -0.75, 0.25, 0.75, -0.5, 0.75, 0.25, -0.75, -0.75, -0.5, ]);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array13 = new Float32Array([-0.75, -0.75, 0.0, 0.5, 0.5, 0.5, -0.75, 0.25, -0.75, -0.25, 0.25, -0.5, 0.75, -0.5, 0.5, -1.0, -0.5, 0.25, 0.5, 0.25, -1.0, -0.25, -1.0, 1.0, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, 0.5, -0.25, -0.75, 0.5, 0.75, -0.25, -0.5, -0.75, 0.5, 0.0, -1.0, -1.0, -0.25, -1.0, 1.0, -0.25, 0.25, -0.75, -0.75, -0.5, 0.5, 1.0, -0.5, 0.5, 0.25, -0.5, 0.0, 0.5, -0.5, 0.25, -0.5, -0.75, 0.75, 0.25, 0.75, -0.75, 1.0, -0.75, -0.75, -0.5, -0.75, 1.0, -0.25, 0.25, 0.75, 1.0, 0.5, -0.25, 0.0, 0.0, -0.75, -0.5, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, -0.25, -0.25, -0.75, 0.0, 0.0, -0.75, 0.5, -0.25, 0.5, -0.5, 1.0, -0.25, ]);
    
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture_view2014 = texture201.createView({ label: "texture_view2014" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    device50.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    const array14 = new Float32Array([1.0, -0.75, 0.5, -0.75, 0.0, -1.0, -0.25, 0.25, 0.5, -1.0, 0.25, -1.0, 1.0, 0.75, 1.0, -0.75, 1.0, 1.0, 0.0, -0.75, -0.75, 0.0, -0.75, -0.25, -0.5, 0.25, 0.75, 1.0, 0.5, 1.0, -0.25, 0.25, -0.75, 0.25, 0.0, 0.25, -0.5, -0.25, 0.25, 0.75, 1.0, -0.25, -0.75, 0.75, 0.5, 0.25, 0.25, 0.25, 0.25, 0.75, 0.75, -0.25, -1.0, -0.5, -0.5, 1.0, -0.75, 0.5, -1.0, 0.75, 0.25, -0.5, 0.5, 0.0, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, -0.25, 0.75, -0.5, -1.0, -1.0, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, 0.25, 0.25, 0.25, -1.0, -0.25, 1.0, 0.25, 0.0, -1.0, -1.0, 0.25, -1.0, -0.75, 0.25, -0.75, 0.0, -0.5, -0.25, 0.75, ]);
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    const texture_view2024 = texture202.createView({ label: "texture_view2024" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array15 = new Float32Array([-1.0, 0.75, 0.0, -0.75, -0.25, 0.75, 0.75, 1.0, -1.0, -0.75, 0.25, -0.5, 0.25, 1.0, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, 0.5, 0.0, 0.5, 1.0, -1.0, -0.25, 0.75, 1.0, 0.0, -0.25, 0.0, -0.5, -0.25, 0.75, 0.0, 0.0, 0.5, 1.0, 0.5, -1.0, 0.5, 0.75, -0.25, 0.75, 0.25, 0.25, -1.0, -0.75, 0.25, 0.75, -0.75, 0.5, 0.25, -1.0, -0.25, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, -0.75, -0.5, 0.25, -1.0, 1.0, -1.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.75, 0.0, -0.25, 1.0, 1.0, 0.0, 0.25, -1.0, 0.75, 0.75, 0.5, -0.75, -0.25, 1.0, -1.0, 0.0, 0.75, -1.0, -0.5, -0.5, 0.75, 0.25, -0.25, -0.25, 0.5, -0.25, -0.25, ]);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const texture_view2025 = texture202.createView({ label: "texture_view2025" });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const texture_view2015 = texture201.createView({ label: "texture_view2015" });
    const texture_view2016 = texture201.createView({ label: "texture_view2016" });
    const array16 = new Float32Array([0.75, 1.0, -0.75, -0.75, 0.75, -0.75, 0.0, 1.0, -1.0, -0.75, -0.25, -1.0, -0.75, 0.75, 0.25, -1.0, 0.75, -0.75, -1.0, -0.5, -0.75, -0.75, -1.0, -0.25, -1.0, 0.75, -0.75, 0.0, 0.25, -0.75, -0.75, 0.25, -1.0, -0.5, 0.5, 0.0, -1.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.0, -1.0, 1.0, 0.75, -0.75, 0.25, 1.0, 0.25, 0.0, -0.5, 0.0, 0.0, -0.5, 0.5, 0.5, 1.0, -0.75, 0.0, -0.25, 1.0, -0.75, -1.0, -0.5, 1.0, -1.0, -0.25, -1.0, -0.5, -0.25, 0.0, -1.0, 0.0, -0.75, -1.0, 0.0, -0.75, -0.25, -0.75, 0.5, 1.0, 0.5, -0.5, -0.75, 0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.5, 0.5, -0.25, -0.25, -0.75, -0.25, -0.5, -0.75, ]);
    
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const array17 = new Float32Array([1.0, -1.0, -0.5, 0.0, 0.25, -1.0, -0.25, 0.25, 0.25, -0.75, 0.25, -0.25, 1.0, 1.0, -0.25, 0.0, -0.5, -1.0, 0.25, -1.0, 1.0, -0.75, -1.0, -0.75, 0.75, -0.75, 0.25, 1.0, -0.25, -0.75, -0.25, 1.0, 0.0, -0.25, 1.0, 0.0, 1.0, 0.5, -0.25, -1.0, 0.5, -0.5, -0.25, -0.75, -0.75, 0.25, -0.5, 1.0, 1.0, -0.25, 0.75, -0.25, 1.0, 0.25, 0.25, 0.25, -0.5, 0.25, -1.0, -0.25, -1.0, 0.75, 1.0, -0.25, 1.0, 0.25, 0.0, 0.5, -0.5, -0.5, 0.75, 0.25, -1.0, 0.75, 0.5, 1.0, -1.0, 0.5, -0.25, 0.0, 0.5, -0.25, -1.0, -0.5, -0.5, -0.25, 0.25, 0.5, 1.0, -0.75, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, 0.5, 1.0, -0.25, -1.0, ]);
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const texture_view2017 = texture201.createView({ label: "texture_view2017" });
    
    
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("internal");
    const texture_view2026 = texture202.createView({ label: "texture_view2026" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const texture_view0035 = texture003.createView({ label: "texture_view0035" });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    
    
    const texture_view2018 = texture201.createView({ label: "texture_view2018" });
    const texture_view2033 = texture203.createView({ label: "texture_view2033" });
    
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    const texture_view2019 = texture201.createView({ label: "texture_view2019" });
    const texture_view0036 = texture003.createView({ label: "texture_view0036" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const query706 = device70.createQuerySet({
        label: "query706",
        type: "occlusion",
        count: 32,
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const texture_view3015 = texture301.createView({ label: "texture_view3015" });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    const texture_view20110 = texture201.createView({ label: "texture_view20110" });
    
    
    
    device80.destroy();
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    
    
    const texture_view2027 = texture202.createView({ label: "texture_view2027" });
    
    const texture_view3016 = texture301.createView({ label: "texture_view3016" });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    
    
    const texture_view0007 = texture000.createView({ label: "texture_view0007" });
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    
    const array18 = new Float32Array([0.0, -0.5, -0.25, -0.5, 0.25, -0.75, 0.75, 0.25, 0.75, -1.0, -0.75, 0.25, -0.5, 0.75, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, 1.0, -0.5, -0.5, -0.25, -0.25, 0.75, -0.5, 0.0, -1.0, 0.75, -0.5, -0.5, 0.75, -0.25, 0.5, 0.25, 0.5, 1.0, 0.75, -0.75, -0.75, 1.0, 1.0, -0.5, 0.5, -0.25, -0.5, 0.0, 0.0, 0.0, -0.25, 0.25, 0.0, 1.0, -1.0, 0.75, -0.5, -0.75, -0.25, -1.0, -0.25, 0.0, 0.5, -0.75, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, 1.0, -0.25, 0.75, 1.0, -0.25, 1.0, -0.25, -0.25, 0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.25, -1.0, 0.5, 0.0, 0.25, 0.25, -0.25, -0.25, 0.25, -0.5, 0.5, 0.0, 1.0, -0.75, -0.5, -0.5, ]);
    
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    const texture_view2006 = texture200.createView({ label: "texture_view2006" });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    
    
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    device90.destroy();
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    const texture_view3017 = texture301.createView({ label: "texture_view3017" });
    
    const texture_view0037 = texture003.createView({ label: "texture_view0037" });
    
    
    const texture_view0008 = texture000.createView({ label: "texture_view0008" });
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0038 = texture003.createView({ label: "texture_view0038" });
    
    
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    const texture_view6003 = texture600.createView({ label: "texture_view6003" });
    const texture_view7031 = texture703.createView({ label: "texture_view7031" });
    
    
    device60.pushErrorScope("internal");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    const texture_view0016 = texture001.createView({ label: "texture_view0016" });
    
    const texture_view7021 = texture702.createView({ label: "texture_view7021" });
    
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    const texture_view20111 = texture201.createView({ label: "texture_view20111" });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    const array19 = new Float32Array([0.25, 0.25, -0.75, -0.75, 0.75, 0.75, 1.0, 0.5, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, -0.75, 0.0, 0.5, -0.75, 0.25, 0.75, -0.25, -0.5, -0.25, -0.75, -0.5, -0.25, 0.5, -0.5, 1.0, 0.75, -0.75, 0.0, -1.0, -0.5, -1.0, -0.25, 0.75, 1.0, 0.75, 0.5, 1.0, 0.75, 0.5, 0.0, 0.75, 0.75, -0.5, -1.0, 0.0, 0.0, -1.0, -0.75, 0.75, 0.75, 0.25, -0.25, 1.0, 1.0, -0.5, -1.0, 0.25, -0.75, -0.25, 1.0, 0.75, -1.0, -0.75, -1.0, 1.0, -0.75, 0.75, 0.0, 0.25, -0.25, 0.0, 0.25, 0.75, 0.0, 0.0, -1.0, -0.75, 0.25, 0.25, 0.75, -0.75, 1.0, 0.25, -1.0, 1.0, -0.5, 0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.5, ]);
    
    
    
    
    
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2034 = texture203.createView({ label: "texture_view2034" });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const texture_view20112 = texture201.createView({ label: "texture_view20112" });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2028 = texture202.createView({ label: "texture_view2028" });
    
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const texture_view20113 = texture201.createView({ label: "texture_view20113" });
    const texture_view7003 = texture700.createView({ label: "texture_view7003" });
    
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    const texture_view0062 = texture006.createView({ label: "texture_view0062" });
    const texture_view0017 = texture001.createView({ label: "texture_view0017" });
    const texture_view0009 = texture000.createView({ label: "texture_view0009" });
    const texture_view0039 = texture003.createView({ label: "texture_view0039" });
    
    const texture_view0018 = texture001.createView({ label: "texture_view0018" });
    
    
    const query707 = device70.createQuerySet({
        label: "query707",
        type: "occlusion",
        count: 32,
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view6004 = texture600.createView({ label: "texture_view6004" });
    
    const texture_view6005 = texture600.createView({ label: "texture_view6005" });
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    
    const texture_view2029 = texture202.createView({ label: "texture_view2029" });
    
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    const texture_view00010 = texture000.createView({ label: "texture_view00010" });
    const texture_view0025 = texture002.createView({ label: "texture_view0025" });
    const texture_view00011 = texture000.createView({ label: "texture_view00011" });
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0063 = texture006.createView({ label: "texture_view0063" });
    
    
    
    const texture_view2007 = texture200.createView({ label: "texture_view2007" });
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    
    const texture_view0053 = texture005.createView({ label: "texture_view0053" });
    const texture_view6006 = texture600.createView({ label: "texture_view6006" });
    
    
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    const texture_view3018 = texture301.createView({ label: "texture_view3018" });
    
    const texture_view0019 = texture001.createView({ label: "texture_view0019" });
    
    
    
    
    
    
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    const texture_view6007 = texture600.createView({ label: "texture_view6007" });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view0026 = texture002.createView({ label: "texture_view0026" });
    
    const array20 = new Float32Array([-0.5, 0.5, -0.75, 0.5, -0.25, -0.75, -1.0, -0.75, 0.5, -0.75, -0.25, 0.25, -1.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.75, 1.0, 0.25, -0.5, -0.5, 0.75, -1.0, -0.25, -0.25, 1.0, 1.0, 0.5, 0.0, -0.25, 0.5, -0.5, 0.0, 0.25, -0.25, 0.25, -0.75, 1.0, 0.0, 0.0, 0.5, -0.5, 0.5, -0.75, 0.75, 1.0, -1.0, 0.25, -0.25, 0.0, -0.75, -0.5, -1.0, 0.25, 0.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.25, 0.75, 0.75, -0.75, -0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 1.0, 0.25, 0.0, 0.0, 0.25, -0.25, -0.5, 0.0, -0.5, -0.25, -0.5, 0.0, -0.75, -0.25, -0.25, 0.0, -0.25, -1.0, 0.0, -0.5, -0.25, 0.0, 1.0, 1.0, 0.75, -0.25, -0.75, -0.25, ]);
    const texture_view7004 = texture700.createView({ label: "texture_view7004" });
    const texture_view0072 = texture007.createView({ label: "texture_view0072" });
    
    const texture_view7040 = texture704.createView({ label: "texture_view7040" });
    const texture_view2035 = texture203.createView({ label: "texture_view2035" });
    
    
    
    
    const texture_view20114 = texture201.createView({ label: "texture_view20114" });
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    device110.destroy();
    
    const texture_view3019 = texture301.createView({ label: "texture_view3019" });
    const texture_view30110 = texture301.createView({ label: "texture_view30110" });
    const array21 = new Float32Array([-0.25, -0.5, -0.25, -0.75, -0.25, -0.25, -0.25, -0.5, 0.75, -1.0, 0.0, 0.5, 1.0, -0.75, 1.0, -0.5, 0.5, 0.5, 0.25, 0.0, 0.75, -1.0, -0.5, -0.75, -1.0, 0.75, 1.0, -0.5, 0.0, -0.75, 0.5, -0.75, -0.5, -1.0, -0.25, 0.25, 0.25, 0.25, -1.0, 0.0, -0.25, -0.25, 0.25, -0.5, 0.25, 0.25, 1.0, 0.0, 0.5, 0.75, 0.25, -0.5, 0.0, 0.5, -0.5, -0.75, 0.75, -0.75, -0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 1.0, 1.0, 0.25, -1.0, -0.75, -0.25, -0.75, 0.5, 0.25, -0.75, 0.5, 0.5, -1.0, -0.5, 0.5, 1.0, -0.75, 0.25, -0.5, 0.0, -0.25, -0.25, -0.5, 0.5, 0.5, -0.75, -0.75, -0.25, 0.75, 1.0, 0.75, 0.5, -0.75, 1.0, 0.25, 0.75, ]);
    const texture_view00012 = texture000.createView({ label: "texture_view00012" });
    
    
    
    
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    const query0012 = device00.createQuerySet({
        label: "query0012",
        type: "occlusion",
        count: 32,
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    
    
    
    
    const query708 = device70.createQuerySet({
        label: "query708",
        type: "occlusion",
        count: 32,
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const texture_view30111 = texture301.createView({ label: "texture_view30111" });
    const texture_view7032 = texture703.createView({ label: "texture_view7032" });
    const texture_view7033 = texture703.createView({ label: "texture_view7033" });
    const texture_view30112 = texture301.createView({ label: "texture_view30112" });
    const texture_view3042 = texture304.createView({ label: "texture_view3042" });
    const texture_view6022 = texture602.createView({ label: "texture_view6022" });
    
    const array22 = new Float32Array([-0.75, -0.75, 0.0, -0.75, 0.25, 0.25, -0.25, 0.5, -0.5, 0.75, 0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.0, -0.5, -1.0, -0.75, 0.25, 0.5, 0.0, -1.0, -1.0, 0.0, -0.25, -1.0, -1.0, 0.75, 0.0, 0.0, -0.75, 0.5, -1.0, -0.5, -0.5, 0.75, 0.0, -0.25, -0.5, -1.0, 1.0, -0.75, -0.25, 0.0, 1.0, 0.25, 0.0, -0.75, -0.25, 1.0, -1.0, -0.75, -1.0, 0.75, -0.5, -0.75, -0.5, -0.75, 0.5, 0.5, -0.5, -0.75, -0.25, -1.0, 0.5, 0.25, -0.5, -0.5, -0.5, -0.25, -0.75, -0.75, 0.0, 0.5, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, 0.25, 1.0, 0.25, -1.0, -1.0, 0.25, 0.5, -0.5, -0.25, -1.0, 0.5, 0.25, -0.5, -0.25, 0.75, -1.0, -1.0, 0.25, ]);
    
}