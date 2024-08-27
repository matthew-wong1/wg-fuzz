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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array0 = new Float32Array([0.75, -0.75, -0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.0, 0.25, 0.0, 1.0, 1.0, -1.0, 0.25, 0.0, -0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 1.0, 0.0, 0.5, 0.0, -0.25, -0.5, -0.25, 1.0, -0.5, -0.75, 1.0, 0.0, 0.0, -0.5, -1.0, 0.75, 0.75, 0.0, 0.5, -0.75, -0.5, -0.5, 0.75, -0.25, -0.75, -0.5, -0.75, 0.25, 1.0, 0.25, 0.75, 0.5, 0.25, 0.0, -0.5, 0.0, -1.0, 0.25, -0.75, 0.0, -0.5, 1.0, -0.25, -0.75, 0.5, 0.0, 0.0, -0.5, 0.5, -0.75, 0.5, 0.75, -1.0, -0.25, -0.75, 1.0, 1.0, 0.0, 1.0, 1.0, 0.75, -0.5, -0.5, -1.0, -1.0, 0.25, -0.5, 0.75, 0.25, 0.0, -1.0, 0.75, 0.0, -0.25, -1.0, 0.0, -0.5, -0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array1 = new Float32Array([0.25, 0.25, -0.25, 0.75, 0.5, -0.5, 0.75, 0.25, 1.0, 0.0, -1.0, 1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 1.0, -0.75, -0.5, -0.25, -0.25, 1.0, -0.75, -0.25, -0.75, -1.0, 0.75, -0.5, 0.25, 0.0, 1.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 0.25, -0.25, -0.75, 0.5, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, -1.0, -0.25, 0.75, 0.25, -0.5, -0.5, -1.0, 0.75, -0.25, 1.0, 0.5, 0.5, 0.0, 0.0, -0.5, -0.75, 1.0, -1.0, -0.75, 0.75, -0.75, 1.0, -0.25, -0.75, -0.75, 0.0, -0.25, -0.5, -1.0, 0.75, 0.0, 0.25, -0.75, 0.75, 1.0, -0.5, -0.5, -1.0, 0.5, -0.5, -1.0, 0.0, 0.5, 0.5, 1.0, 0.25, 1.0, 0.5, 0.0, 0.75, 0.25, -0.5, ]);
    device00.destroy();
    const array2 = new Float32Array([0.0, 0.0, -0.75, 0.25, -0.5, 0.0, 0.0, -0.5, -0.5, -0.25, 0.5, 0.75, 0.0, 0.0, 1.0, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, 1.0, 1.0, -0.5, 0.0, -0.5, -0.25, -1.0, -1.0, 1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 1.0, 0.25, -0.75, -0.25, -0.5, 0.25, 0.0, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.0, 1.0, -0.25, -0.75, 0.5, -0.75, 0.5, 0.5, -0.5, 0.0, 0.75, -0.75, 1.0, 1.0, -1.0, 0.25, 0.0, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, 0.25, 0.5, 1.0, -0.25, 0.75, 1.0, -1.0, 0.0, -0.5, 0.0, -0.25, -0.25, 0.5, 0.75, -0.25, -0.5, 0.25, -0.75, -0.75, 0.75, -1.0, 1.0, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array3 = new Float32Array([0.25, 0.25, -0.5, 0.25, -1.0, -0.25, 0.5, -0.25, -0.25, -0.25, -0.25, 0.75, -0.5, -0.75, 0.25, 0.5, 0.5, -1.0, 0.0, -0.75, -1.0, -0.5, -1.0, 0.75, -0.25, -0.25, -0.25, -0.25, -1.0, 1.0, -0.5, 0.25, -1.0, 0.5, 0.5, 0.5, -0.25, 1.0, 0.75, -0.75, 0.5, 0.0, 0.75, -0.5, 0.0, -1.0, -1.0, 0.25, 0.5, -0.25, -1.0, 0.5, -0.75, 0.25, -0.75, 0.75, 0.75, -1.0, -0.75, 1.0, -0.75, 0.0, 0.25, 0.0, 0.5, -0.25, 0.5, 0.25, 0.75, -0.25, 0.0, 0.0, -1.0, 0.75, 0.0, -0.5, 0.75, 0.0, 0.0, 0.25, 0.75, -0.5, 0.0, 0.75, -0.75, -0.75, 1.0, -0.25, 0.0, -0.5, -0.25, 0.5, -0.5, -0.5, 1.0, 0.0, -0.25, 0.0, 0.25, 0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const array4 = new Float32Array([-0.75, -0.25, -0.25, -0.25, 1.0, 0.25, -0.75, -0.75, 0.25, -0.25, 0.75, 1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.25, -0.25, 0.5, 1.0, -1.0, -0.5, -1.0, 0.5, 1.0, -0.25, 1.0, 0.5, -1.0, 1.0, 0.5, 0.5, 0.0, 0.25, -0.25, -0.75, -0.75, 0.75, 0.0, 0.25, -1.0, -0.5, 0.75, 0.0, -1.0, -0.25, 1.0, -0.5, 1.0, -0.75, 0.0, -1.0, 0.5, 0.5, 0.5, -0.75, -0.5, -0.25, 0.5, -0.25, 1.0, -0.5, 1.0, -0.75, 0.75, 0.75, -1.0, 0.25, 0.0, -1.0, -0.75, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, 0.0, 0.25, -1.0, -0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 0.5, -1.0, -1.0, -0.5, 0.5, -0.5, -1.0, -0.25, -1.0, -0.75, -0.25, 0.0, -0.75, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const array5 = new Float32Array([-1.0, -0.25, 1.0, 0.25, 0.75, 0.75, -0.25, 0.25, -1.0, 0.75, 0.5, -0.25, -0.5, -0.25, 0.25, 0.5, 1.0, -1.0, 0.25, 0.75, -0.25, 0.25, -0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 1.0, -0.75, 0.0, 0.75, -0.75, -0.75, 0.75, -0.25, 0.75, 0.25, -0.25, -0.25, 0.5, 0.0, 0.5, -1.0, -0.25, 0.75, -1.0, 0.75, 1.0, -0.25, -0.75, 1.0, 0.75, -1.0, -1.0, -0.75, 0.5, -0.5, 0.75, 0.5, 1.0, -0.5, 0.0, 0.25, 0.0, -0.25, 1.0, -1.0, -0.25, 0.0, 0.25, -1.0, 0.25, -1.0, 0.0, -0.25, -1.0, 0.25, 0.25, 0.25, -1.0, 0.25, -0.5, -0.75, -0.75, -1.0, -1.0, -1.0, 1.0, 0.5, 1.0, -1.0, 0.75, -0.25, 0.25, -0.75, -0.5, 0.5, 0.25, -1.0, ]);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    device20.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    
    texture102.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    buffer100.destroy()
    
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array6 = new Float32Array([0.0, 0.0, -0.5, -0.25, -0.75, 0.5, 0.5, 0.5, -1.0, 0.5, 0.25, -0.25, -0.75, -1.0, 1.0, 0.5, 0.5, -0.25, -0.25, 0.0, -0.5, 0.75, 0.0, 0.25, 0.0, 0.25, -1.0, 0.25, -0.25, -0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -1.0, -1.0, 0.75, 0.5, -0.25, 1.0, 0.75, 0.75, 0.5, -1.0, 0.5, -0.5, -0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.25, 0.75, -1.0, 0.0, 0.0, 0.5, -1.0, -1.0, -0.75, -1.0, 0.25, 0.5, 0.0, 0.0, -0.25, 0.25, -0.25, -1.0, -0.5, -0.25, 0.25, 1.0, 0.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 0.5, 0.25, 0.0, 0.0, -0.25, -0.25, 1.0, -0.25, -0.25, 0.0, 0.25, -1.0, 1.0, 0.0, 1.0, ]);
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array7 = new Float32Array([-0.5, 0.5, -0.25, 0.5, 1.0, -1.0, -0.25, -1.0, 0.25, 1.0, 1.0, 0.0, -0.75, 0.25, 0.25, 0.75, 1.0, 1.0, 0.75, 1.0, 0.75, 0.75, 1.0, 1.0, -0.25, 0.5, -0.75, -0.25, 0.75, 0.0, 0.5, -0.75, 1.0, -0.75, 0.5, -0.25, -0.5, 0.25, 0.75, 0.25, -0.5, 0.25, -0.75, -0.75, 0.5, -1.0, -1.0, 0.5, -0.75, -0.25, 1.0, 0.25, 0.75, 0.5, -0.75, 0.25, -0.5, -0.25, 0.5, -0.75, -0.75, 0.0, 0.0, -0.25, 0.25, 0.75, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, 0.75, -0.75, -0.25, -1.0, 0.0, -0.75, -0.25, 0.0, -0.5, 1.0, 0.25, 0.5, -0.5, -0.5, -0.25, -1.0, -0.25, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -1.0, -0.75, -0.5, 0.0, 1.0, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device30.destroy();
    
    
    
    const array8 = new Float32Array([0.5, 1.0, -0.25, 0.5, -0.25, 0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, 0.0, 0.5, 0.5, 0.75, 1.0, 0.5, -0.75, 0.0, -0.5, 0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 0.75, 0.75, 0.5, 1.0, 0.5, -0.5, -1.0, 0.0, 0.25, 0.25, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, 0.75, -1.0, 0.25, -0.25, 0.25, 0.75, -0.75, 0.25, 1.0, 0.0, -0.5, -0.75, -0.75, -0.5, 0.0, 0.0, -0.5, -0.75, 0.0, -0.75, -0.25, 0.75, -1.0, -1.0, 0.5, 0.5, 1.0, 1.0, 0.5, 0.0, 0.5, 1.0, -0.5, -0.25, -1.0, -0.75, -0.5, 0.25, -0.75, -0.25, -0.75, 0.25, -0.75, 0.25, -0.5, -1.0, -0.75, -0.75, 0.0, -1.0, -0.25, 0.5, -1.0, 0.5, 0.0, -0.25, 0.0, ]);
    const array9 = new Float32Array([-1.0, 0.75, -0.75, -1.0, 1.0, 1.0, 0.0, -0.25, 0.0, -0.25, 0.25, -0.25, 0.25, 0.5, -1.0, 1.0, 0.25, 0.25, -1.0, -1.0, 1.0, 0.25, 0.75, 0.25, -1.0, 0.75, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, -0.25, 0.75, -0.5, 0.75, -0.5, -0.75, 0.5, 0.0, -0.75, 0.5, 0.5, 0.25, 0.25, -0.75, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, -0.75, -0.75, -0.75, 1.0, -0.5, -1.0, 1.0, -0.75, -1.0, -0.5, 0.25, 1.0, -0.5, 1.0, -0.25, -0.25, -0.5, 1.0, -0.5, -1.0, -0.75, -0.5, -1.0, 0.25, 0.0, -1.0, -1.0, 0.0, 1.0, 0.75, -0.25, 0.0, 0.0, -0.5, 0.0, 0.25, -1.0, 1.0, -0.5, -0.5, -0.5, -1.0, -0.5, ]);
    const array10 = new Float32Array([-0.25, -0.25, 1.0, 0.25, -1.0, -0.75, 0.0, 0.75, -0.75, 0.75, 0.25, -1.0, -0.75, 0.75, 1.0, -0.5, 0.0, 1.0, -0.5, 0.0, -1.0, -0.25, 0.0, -0.5, 0.5, -0.5, 1.0, 0.75, 0.25, -0.75, -0.25, -0.75, 0.5, 1.0, 1.0, -0.75, -0.75, 0.75, -1.0, 1.0, 0.75, -0.25, -0.25, 0.0, 0.0, -1.0, -0.75, 0.0, -1.0, 0.5, -1.0, -1.0, 0.25, 0.0, -0.25, -0.5, 0.0, -1.0, -1.0, -1.0, 0.25, 0.5, 0.5, -1.0, 0.0, 1.0, 0.25, 1.0, 0.5, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -1.0, 0.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.25, -0.75, -0.5, 0.75, 0.0, 0.75, 0.25, -0.25, -0.25, 0.25, -1.0, 0.5, 0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array11 = new Float32Array([-0.25, -0.5, 0.75, 0.75, 0.25, 0.75, -0.5, -0.5, -0.75, 1.0, 0.25, -0.5, -0.25, 0.25, 0.5, 0.5, 0.75, -0.75, 0.0, 0.5, 0.25, 1.0, 0.0, 0.0, 0.25, 0.0, 0.25, -0.5, -0.5, 0.25, -0.5, 0.5, 0.0, 0.75, 0.25, 1.0, -1.0, -0.5, -1.0, 1.0, 0.0, -0.25, -0.75, 0.75, 0.75, 1.0, -0.5, 0.5, 0.75, 0.75, 1.0, 0.5, -0.5, 0.25, 0.5, 1.0, -0.25, 0.75, 0.0, 0.25, -0.5, 0.25, -0.5, -0.25, 1.0, -1.0, 0.0, -0.75, 0.75, 0.0, 0.75, 0.5, 1.0, 0.5, 0.25, 1.0, -0.5, 0.75, 0.75, 0.75, 0.75, 0.75, -1.0, -1.0, 1.0, 0.25, 0.75, -0.5, -0.25, -0.75, 0.75, -0.25, 1.0, 1.0, 0.0, 0.0, -1.0, 0.5, -1.0, 0.5, ]);
    const array12 = new Float32Array([-1.0, 0.75, 0.0, 0.0, 0.25, 0.5, 0.0, 0.5, 0.25, -0.5, -1.0, 0.0, 0.75, 1.0, 0.25, 1.0, 0.25, 1.0, -0.25, 0.75, 1.0, 0.75, -0.75, 0.75, 0.75, 1.0, -0.75, -0.5, -0.5, -0.75, -0.25, 0.5, -0.5, 1.0, -0.75, -1.0, 0.75, -0.5, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, -0.75, 1.0, -0.5, -0.25, 1.0, -0.5, -0.5, -0.5, 0.5, -0.5, -0.25, 0.75, 0.25, -0.75, 0.75, -0.75, 1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 0.75, 0.0, -0.25, 0.0, 1.0, -0.25, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 1.0, 0.75, 1.0, -0.25, -0.25, 1.0, -1.0, 0.75, 1.0, 0.5, 0.5, 0.0, -0.75, 0.25, -1.0, -0.25, -0.25, 0.75, -1.0, 0.5, -0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const array13 = new Float32Array([1.0, -1.0, 0.75, -1.0, -0.5, 0.5, 0.0, 0.5, 0.0, 0.25, -0.5, 0.25, -0.75, 0.5, 0.0, 0.0, -0.75, 0.5, -0.25, 1.0, 0.5, 1.0, -0.75, 0.75, 0.5, -0.5, 0.0, -0.5, -0.5, 0.75, -1.0, 1.0, 0.75, -0.75, -0.25, 0.25, 0.25, -0.5, 0.25, 0.25, 0.75, -0.25, -1.0, 0.25, -1.0, 0.25, 0.5, -0.5, 0.75, -0.25, -0.25, -1.0, -0.25, 0.5, 0.75, 0.25, -0.5, -0.5, -0.75, 1.0, -0.75, 0.75, 0.0, -0.5, -0.25, 0.25, -0.25, -0.75, 0.75, -0.5, 0.75, -0.5, -0.5, 0.0, 1.0, -0.5, 0.25, 1.0, -0.75, -0.5, -1.0, -0.25, 0.75, 0.75, 0.25, -0.5, 1.0, 0.75, 0.25, 0.0, -1.0, -0.5, 0.5, -1.0, -1.0, 0.75, -0.75, -0.75, 0.25, -0.25, ]);
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.pushErrorScope("internal");
    const array14 = new Float32Array([-0.75, 1.0, -0.25, -0.5, -0.25, -0.5, 0.0, -1.0, 0.5, 0.5, 0.0, 0.0, 1.0, 1.0, -0.5, 0.75, -1.0, 0.0, -0.5, 0.5, 1.0, -0.5, -0.25, 0.25, -1.0, 0.75, -1.0, 0.75, -0.75, 0.0, -1.0, -0.5, -0.5, -0.75, 0.0, -0.75, 0.0, -0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 0.0, -0.5, 0.25, 0.0, 1.0, -0.5, 0.0, -0.75, -1.0, -0.75, -0.5, -1.0, 0.0, 0.5, 0.5, 1.0, 0.75, -0.75, -0.25, 0.75, 0.75, -0.25, -1.0, 0.75, -1.0, -0.75, 1.0, -0.5, -0.5, -1.0, -1.0, 0.0, -0.5, 0.5, -0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.75, -1.0, -0.75, 0.25, -1.0, 0.0, 1.0, 0.5, 0.75, -1.0, 0.5, 0.5, 0.75, -0.25, 0.5, 0.0, -0.5, ]);
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device40.queue.writeBuffer(buffer400, 0, array13, 0, array13.length);
    
    
    texture400.destroy();
    device40.queue.writeBuffer(buffer400, 0, array13, 0, array13.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const array15 = new Float32Array([-0.25, -0.5, 0.25, 0.75, 0.5, -0.5, 1.0, 0.5, 1.0, -0.25, -0.5, -0.25, 0.5, 0.5, 0.5, 0.5, -0.25, 0.5, 0.0, -0.25, -0.25, -0.5, 0.5, 0.25, 0.5, -0.25, 1.0, 0.5, 1.0, -0.25, -0.25, -0.5, -1.0, 0.25, 0.0, 0.25, -0.75, -0.75, -1.0, -0.75, 0.75, 0.0, -0.25, 0.5, 0.0, 0.0, 0.25, 0.75, -0.25, 0.75, -0.5, 0.5, 0.0, 0.0, -0.5, 1.0, -1.0, 0.0, 1.0, 1.0, -0.25, 0.25, 1.0, -0.5, 0.75, 0.5, -0.25, -0.25, -0.75, 0.75, 0.5, 0.75, 0.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.25, 0.0, -0.25, -1.0, 0.0, 0.0, 0.0, 1.0, -0.75, 0.0, -0.25, 0.5, 0.75, 1.0, -0.25, 1.0, 1.0, 0.75, -0.5, 0.75, 1.0, -1.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    command_encoder400.insertDebugMarker("mymarker");
    const array16 = new Float32Array([-0.25, -0.25, 0.5, -0.5, 0.0, 0.0, 0.5, -0.75, -0.75, -0.25, -0.75, 0.25, 0.75, -0.75, 0.75, 0.25, 0.0, 0.0, 0.5, 0.25, 1.0, 0.25, 0.75, -0.75, 0.0, -0.25, 1.0, -0.75, 0.25, 0.25, -0.75, 1.0, 0.0, 1.0, -0.75, -0.5, 0.75, -0.5, 1.0, 1.0, 0.5, 0.25, -0.75, 0.75, 0.25, 0.25, 0.0, 0.75, 0.0, -1.0, -0.75, -1.0, 0.0, -0.25, -0.25, 0.5, -1.0, -0.75, 1.0, 0.25, 0.75, 1.0, 0.5, 1.0, 0.5, -0.5, -0.5, -1.0, -1.0, -0.5, 0.25, -0.75, -0.25, -0.25, 0.75, 0.0, -0.25, -0.75, -1.0, -0.75, 1.0, -0.75, 0.25, 0.75, 1.0, 0.5, 0.75, -0.5, 0.75, -0.75, 0.25, -0.75, -0.75, -0.5, -0.25, 0.75, 0.75, 0.0, -0.25, -0.5, ]);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    
    device70.destroy();
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.clearBuffer(buffer400);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.queue.writeBuffer(buffer400, 0, array14, 0, array14.length);
    
    render_pass_encoder4000.insertDebugMarker("marker");
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.executeBundles([])
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer500 = command_encoder500.finish();
    query400.destroy()
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array15, 0, array15.length);
    
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    command_encoder501.pushDebugGroup("mygroupmarker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    
    texture401.destroy();
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder4010.beginOcclusionQuery(0)
    query400.destroy()
    device40.queue.writeBuffer(buffer400, 0, array13, 0, array13.length);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder4010.executeBundles([])
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array14, 0, array14.length);
    
    texture600.destroy();
    
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.executeBundles([])
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    buffer400.destroy()
    const array17 = new Float32Array([0.25, 0.75, 0.5, -0.5, -0.5, 0.5, 1.0, -0.25, 0.0, 0.75, -0.25, 0.0, -0.75, 0.5, -0.75, 0.75, 1.0, 0.25, -0.5, -1.0, -0.25, -0.25, 0.75, 0.75, -1.0, -0.25, -0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -0.75, 0.0, 1.0, 1.0, 0.5, -0.25, -0.5, -0.25, -0.75, 0.0, -1.0, 0.25, 0.25, 0.5, 0.25, -0.5, 0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 0.5, -0.5, 0.5, -1.0, 0.5, -0.25, -0.5, -0.5, -1.0, 0.75, 1.0, 0.75, -0.75, -0.25, -0.75, 0.25, -0.75, -1.0, 0.75, -1.0, 1.0, 0.25, 0.5, -0.5, 0.75, -0.75, -0.25, -0.5, -0.75, -0.5, 1.0, -0.25, 0.75, 0.0, 0.75, 0.5, 0.25, -0.5, -0.5, 0.5, -0.75, 0.25, 1.0, 0.25, 0.5, -0.5, ]);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4000.executeBundles([])
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    texture500.destroy();
    render_pass_encoder4010.endOcclusionQuery()
    device60.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4000.insertDebugMarker("marker");
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder501.clearBuffer(buffer500);
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    device50.queue.writeBuffer(buffer500, 0, array16, 0, array16.length);
    
    
    buffer500.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder4000.executeBundles([])
    
    
    texture402.destroy();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    texture800.destroy();
    query800.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer501, 0, array17, 0, array17.length);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    query800.destroy()
    
    command_encoder502.clearBuffer(buffer501);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    command_encoder502.clearBuffer(buffer501);
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder403.insertDebugMarker("mymarker");
    device50.queue.writeBuffer(buffer501, 0, array16, 0, array16.length);
    
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    command_encoder503.pushDebugGroup("mygroupmarker")
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder4040.insertDebugMarker("marker");
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    command_encoder501.clearBuffer(buffer501);
    
    const command_buffer800 = command_encoder800.finish();
    command_encoder504.clearBuffer(buffer501);
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    device80.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    
    command_encoder505.pushDebugGroup("mygroupmarker")
    query500.destroy()
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    command_encoder502.clearBuffer(buffer501);
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    command_encoder504.pushDebugGroup("mygroupmarker")
    buffer502.destroy()
    command_encoder504.clearBuffer(buffer501);
    render_pass_encoder4000.popDebugGroup();
    buffer403.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder4030.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    render_pass_encoder4040.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer402, 0, array12, 0, array12.length);
    command_encoder502.clearBuffer(buffer501);
    query402.destroy()
    buffer402.destroy()
    
    
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4000.pushDebugGroup("group_marker");
    command_encoder405.resolveQuerySet(
        query402,
        0,
        32,
        buffer403,
        0
    )
    const command_buffer502 = command_encoder502.finish();
    
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: query401
    });
    
    buffer401.destroy()
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array18 = new Float32Array([0.5, -0.25, -0.5, 0.5, 1.0, -0.25, 0.0, 1.0, 1.0, -0.75, 0.0, 1.0, -0.5, 1.0, -0.75, 0.0, -0.5, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, -0.5, -0.25, 0.0, 0.75, -1.0, -0.25, 0.25, 1.0, -0.25, 0.0, 1.0, -1.0, 0.25, 0.5, -0.75, -0.5, -0.75, -0.75, -0.5, -0.25, 0.25, 0.25, 1.0, -0.25, 0.25, -0.75, -0.25, -0.25, 0.75, -0.5, 0.0, -1.0, -0.5, -0.25, 1.0, 0.25, -0.5, 0.25, 0.0, 0.0, -1.0, 0.0, 0.0, -0.25, 0.25, 0.5, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 0.75, -1.0, -1.0, 0.75, -0.5, -0.75, -1.0, 0.5, -0.5, 0.75, -0.75, 0.25, -0.25, 0.25, 1.0, -1.0, -1.0, 0.75, -0.5, -0.25, 1.0, 0.5, ]);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    render_pass_encoder4020.executeBundles([])
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    command_encoder504.insertDebugMarker("mymarker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    
    query502.destroy()
    
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    query402.destroy()
    render_pass_encoder4010.executeBundles([])
    render_pass_encoder4010.beginOcclusionQuery(0)
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4040.insertDebugMarker("marker");
    render_pass_encoder4030.insertDebugMarker("marker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer501.destroy()
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer404, 0, array15, 0, array15.length);
    
    texture403.destroy();
    texture404.destroy();
    render_pass_encoder4020.executeBundles([])
    
    render_pass_encoder4010.executeBundles([])
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_pass_encoder4040.executeBundles([])
    render_pass_encoder4010.executeBundles([])
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder505.insertDebugMarker("mymarker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer404, 0, array13, 0, array13.length);
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer503.destroy()
    
    const command_buffer506 = command_encoder506.finish();
    
    device40.queue.writeBuffer(buffer404, 0, array14, 0, array14.length);
    const array19 = new Float32Array([0.25, -0.25, -0.75, 0.25, 0.5, 0.25, 0.5, 0.25, 0.25, 1.0, -0.75, 0.25, -0.25, 0.25, -0.5, -1.0, -1.0, 0.0, 0.0, -0.25, 0.75, 0.0, -0.75, 0.5, 0.75, -0.5, 0.5, -0.25, -0.25, 0.5, 0.5, -1.0, -0.75, -0.75, 1.0, 0.25, 0.0, -1.0, -1.0, 0.75, 0.25, 0.0, 0.0, -1.0, -0.25, -0.75, 0.5, 0.25, 0.0, -0.5, 1.0, -0.5, 1.0, 0.25, 1.0, -0.5, 1.0, 0.75, 1.0, -1.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.0, -0.5, -1.0, 0.0, 0.5, -0.75, 1.0, 1.0, -1.0, 0.5, 0.75, 0.0, -0.25, 0.0, 0.0, -0.75, -0.25, 0.75, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, -0.5, 1.0, -1.0, -0.75, -0.5, -1.0, -1.0, -1.0, 0.25, -1.0, 0.75, ]);
    command_encoder503.insertDebugMarker("mymarker");
    query502.destroy()
    render_pass_encoder4000.popDebugGroup();
    
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    
    query502.destroy()
    
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    render_pass_encoder4050.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    
    device40.queue.writeBuffer(buffer404, 0, array15, 0, array15.length);
    device80.pushErrorScope("internal");
    
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.insertDebugMarker("marker");
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder4020.popDebugGroup();
    query403.destroy()
    const command_buffer900 = command_encoder900.finish();
    
    device100.pushErrorScope("validation");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query400.destroy()
    
    {
        await buffer404.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer404.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer404.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder4000.executeBundles([])
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1001.destroy()
    query403.destroy()
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    buffer1002.destroy()
    
    render_pass_encoder4050.executeBundles([])
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    device40.queue.writeBuffer(buffer404, 0, array18, 0, array18.length);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    texture1000.destroy();
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    render_pass_encoder4050.executeBundles([])
    const command_buffer406 = command_encoder406.finish();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4010.endOcclusionQuery()
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer506, ]);
    device90.queue.submit([command_buffer900, ]);
    const command_buffer507 = command_encoder507.finish();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([command_buffer406, ]);
    render_pass_encoder4040.popDebugGroup();
}