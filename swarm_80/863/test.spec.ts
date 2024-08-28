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
    
    
    const array0 = new Float32Array([0.75, 1.0, -1.0, -0.25, -1.0, 1.0, 0.25, -0.5, -1.0, 0.0, -0.25, 0.0, 0.25, 0.5, 0.5, 0.25, 0.5, 0.25, -0.25, -0.75, 0.25, 1.0, -1.0, 0.5, 1.0, -1.0, 1.0, -0.25, 0.75, 1.0, 1.0, -0.5, 0.5, 0.75, 1.0, -0.5, 0.0, 0.75, 0.0, 0.25, -1.0, 1.0, 0.75, 0.0, -0.25, -0.5, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, 1.0, 0.75, -0.5, 1.0, -0.25, -1.0, 0.5, 0.5, -1.0, -1.0, 1.0, -0.75, 0.75, 0.25, -0.5, -1.0, -0.75, -0.25, 0.75, 0.75, 0.75, 1.0, -0.25, 0.75, 0.0, -1.0, -0.5, 0.25, -0.25, 0.25, 0.25, 0.0, -0.5, 0.75, -0.5, 0.0, 0.5, 1.0, -1.0, 1.0, -1.0, 1.0, 0.75, -0.25, -0.75, 0.5, 0.0, -0.75, ]);
    const array1 = new Float32Array([0.5, -0.5, -0.25, -0.75, 0.75, -1.0, 0.5, 0.5, 0.25, 0.25, 0.0, -0.75, -0.75, 1.0, 0.25, -0.5, 0.0, 1.0, -0.25, -0.75, 0.0, -0.5, -0.75, 0.0, 0.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.75, -0.5, -0.5, 0.0, 0.75, -1.0, 1.0, -0.5, 0.75, -0.5, 0.5, -1.0, 0.5, 0.25, 0.25, -0.25, -0.5, -0.5, -0.5, 0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 0.25, 0.25, -0.75, 0.75, 1.0, -1.0, -0.25, 0.25, 1.0, -1.0, -0.5, 0.25, 0.75, 0.25, 0.5, 0.75, -1.0, 0.25, 0.25, 0.5, -0.5, 0.0, -0.75, -0.75, 1.0, -0.25, -0.75, 0.25, 0.75, -1.0, 0.25, 1.0, 0.25, -1.0, 1.0, 0.25, -0.75, 0.0, -1.0, -1.0, -0.25, 0.75, -0.5, -1.0, 0.25, ]);
    
    const array2 = new Float32Array([-1.0, 0.5, -0.5, -0.25, -0.25, 0.5, 0.25, 1.0, -0.25, 0.75, 0.75, -0.25, -0.25, -0.25, 0.5, 0.75, -1.0, -0.25, 0.5, -0.5, 0.0, 0.5, -1.0, -0.5, 0.0, -0.25, 0.25, 0.75, 0.5, -0.25, -0.25, 0.25, 0.25, 0.25, 0.25, 0.0, -0.75, 0.25, -0.5, -1.0, -0.5, -0.25, 1.0, -1.0, -0.25, 0.5, -0.5, 0.0, -0.5, 0.5, 0.75, 1.0, 0.0, -0.5, 0.0, 0.25, 0.5, -0.5, 0.0, -0.25, 0.75, 0.5, 0.0, -0.25, 0.0, 1.0, 0.0, -1.0, -0.25, 0.5, 1.0, -1.0, -0.25, 0.5, 0.0, -0.5, -1.0, 0.75, 0.0, -0.5, -1.0, -0.75, -0.25, 0.0, 1.0, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, -0.75, -1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.75, 0.25, ]);
    const array3 = new Float32Array([-0.5, 0.5, 0.25, -0.75, 1.0, -1.0, -0.25, 0.5, 0.25, -0.5, 0.5, 0.5, 0.75, 1.0, -0.25, 0.75, -0.75, -1.0, -0.5, 0.0, 0.25, 1.0, 1.0, -0.75, 0.75, 0.75, 0.0, 0.25, 0.25, 0.75, 0.0, -0.5, 0.5, 1.0, -0.25, 0.75, 0.25, -0.5, 0.5, 0.75, 0.5, 0.25, -1.0, 0.75, 0.75, 0.75, 0.5, -0.25, -0.25, 0.5, 1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 0.5, 0.25, 1.0, 0.0, 0.75, 1.0, 0.0, 0.75, -0.5, 1.0, 1.0, 0.75, 1.0, -0.5, 0.0, -1.0, 0.75, -0.75, 0.75, -0.25, -0.5, 0.25, -0.25, 0.0, -1.0, 1.0, -1.0, -1.0, 0.25, -1.0, -0.5, 0.25, 1.0, 0.75, 0.75, 0.5, -0.5, 0.25, 0.0, 0.5, 0.0, 0.25, 0.25, -0.5, ]);
    const array4 = new Float32Array([0.25, 0.75, 0.25, -0.75, 0.25, -0.5, -0.5, -0.5, -1.0, 0.5, -0.75, -1.0, 0.0, -0.5, 0.0, -0.25, 1.0, -0.25, 0.75, -0.75, 0.0, 1.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.25, -0.5, -1.0, 0.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.75, -1.0, -0.75, -1.0, -1.0, -0.5, -0.25, 0.5, 0.0, 1.0, 0.5, -0.75, -0.75, -0.25, 0.25, -0.25, 0.75, -1.0, -1.0, -0.5, -0.75, 0.25, 0.25, -0.5, 0.5, 0.5, 1.0, -0.25, -0.5, -0.75, 0.5, -0.25, -0.75, -0.5, 1.0, 0.0, 0.25, -0.5, 0.75, -0.25, -0.75, 0.75, 0.25, -0.5, 1.0, -1.0, 0.25, 0.0, 0.5, 0.5, 0.0, -0.5, -0.5, 0.5, 0.5, 0.0, 0.75, -0.25, 0.25, 0.5, -1.0, 0.25, 1.0, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    const array5 = new Float32Array([1.0, -0.5, -0.25, 1.0, 0.5, 0.75, 0.5, 0.0, 0.75, -0.5, 1.0, 0.5, -1.0, 1.0, -0.75, -0.25, -1.0, -0.75, -0.75, 0.5, -0.75, 1.0, -1.0, 0.25, -0.75, 0.25, -1.0, -1.0, -0.75, -0.75, 1.0, 0.5, -0.75, 0.75, 0.75, 0.5, 1.0, 0.75, 0.25, -0.25, 0.5, 0.25, 0.5, -0.25, 0.25, 1.0, -1.0, -0.25, -0.75, 0.5, 0.0, 0.5, 0.0, 0.75, 0.0, 0.25, 0.75, -0.25, -0.5, -0.25, 0.25, -1.0, -0.25, 0.25, -0.5, 1.0, 0.5, 1.0, -0.75, -0.5, 0.25, 1.0, 0.0, 0.25, -0.75, -1.0, 0.5, 0.25, 1.0, -0.75, 0.25, -0.5, 0.0, -1.0, 0.75, -0.25, 0.5, 0.25, -0.5, -0.75, 0.0, 1.0, -0.25, 0.25, -1.0, 1.0, -0.5, -0.25, 0.25, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array6 = new Float32Array([-0.25, 1.0, -1.0, -0.75, 0.5, 0.25, -0.25, -0.75, -1.0, 0.0, 0.5, 0.0, 0.0, -1.0, 1.0, 0.25, 0.75, -0.5, -0.5, -1.0, 1.0, -1.0, 0.75, 0.75, 0.25, 1.0, 1.0, 0.25, -0.25, 0.0, 0.75, 0.5, 0.0, 0.25, 1.0, 0.5, 0.0, 0.0, 0.75, -0.5, 0.5, 0.5, 0.75, 0.75, -0.5, -0.75, -0.25, 0.25, -1.0, 1.0, 0.75, -1.0, -0.25, 1.0, 0.75, 0.25, 0.5, 0.5, -0.25, -0.25, -0.5, -0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 0.5, 1.0, -0.25, 0.5, -1.0, -1.0, -0.75, -0.75, -0.25, -1.0, 0.5, 0.5, -0.25, -0.25, 0.5, 1.0, 0.25, -0.25, -0.5, 0.25, 0.0, -0.25, -0.75, 1.0, -0.5, -0.75, -1.0, 0.75, 0.0, 0.5, -0.75, -1.0, -0.25, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array7 = new Float32Array([-1.0, 1.0, -1.0, -1.0, -0.75, 0.5, 0.0, -0.5, 1.0, 0.75, -0.25, 0.0, 0.75, 0.25, 0.5, 0.5, 0.0, 0.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.5, -0.25, 0.5, -0.25, 1.0, 0.0, 0.75, 0.0, -0.5, 1.0, -0.25, -1.0, -0.75, 0.5, -0.25, 0.25, -0.75, 0.75, 1.0, 0.25, 0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -0.25, 0.5, 1.0, -0.25, 0.25, -1.0, 0.5, -0.75, 0.5, -0.25, -0.5, 0.5, -1.0, 0.25, 0.75, 0.25, 0.75, 1.0, 0.0, -0.75, 0.5, -0.5, 0.25, 0.5, -0.25, 0.75, 0.25, -0.75, -0.75, 0.0, 0.5, -0.75, -0.75, -0.5, -0.25, -0.25, 0.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.75, 0.75, -1.0, 1.0, 0.25, 1.0, -0.5, 1.0, ]);
    
    
    device10.destroy();
    
    
    
    const array8 = new Float32Array([-0.5, 1.0, -1.0, -1.0, 1.0, -0.5, -0.5, -0.5, 0.25, 0.75, 1.0, 0.0, -0.5, 0.5, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, -1.0, -0.5, 0.5, -0.25, -0.75, 0.75, -0.75, -0.25, 0.5, 0.5, -0.5, 0.5, 1.0, 0.5, -0.75, -0.75, 0.25, 0.75, 0.75, -0.75, 0.75, -0.25, -0.5, -1.0, 1.0, -0.75, 0.0, 0.5, -0.75, 0.75, 1.0, -0.5, 0.25, 0.0, -1.0, 0.0, 1.0, -0.75, 0.25, 0.0, 0.25, 1.0, 0.25, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, 1.0, 0.5, 0.25, 0.25, -0.25, 0.25, -0.25, -0.5, 0.0, 1.0, -0.5, -0.25, 0.25, -0.75, 0.5, -1.0, 1.0, 0.5, 1.0, 0.75, -1.0, -0.5, -1.0, 1.0, 1.0, -0.25, 0.25, 0.25, 1.0, 1.0, -0.75, ]);
    const array9 = new Float32Array([0.75, -0.75, 0.75, -0.5, -0.75, -0.25, -0.25, 0.75, 0.75, -0.25, 0.0, 1.0, 1.0, -0.25, -0.5, -0.25, 0.5, 0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0, 0.75, -0.75, 0.5, 1.0, -0.25, 0.25, 1.0, 0.0, 0.25, 1.0, 0.0, -0.25, -0.5, -1.0, 1.0, 1.0, -0.25, 0.25, -1.0, 0.5, 0.75, -0.5, 1.0, -0.25, -0.75, 0.75, -0.25, -1.0, -0.5, -1.0, -0.75, 0.5, -1.0, 1.0, 0.75, 0.5, 0.5, 0.5, 0.75, -1.0, 1.0, -0.75, 0.0, 0.5, -0.25, -0.5, 0.75, -0.5, -0.5, 0.75, 0.25, 0.75, 0.25, 0.25, 0.75, -1.0, -0.5, 0.75, -0.75, 0.25, 0.25, 1.0, 0.75, 0.0, -0.25, 0.75, 1.0, -1.0, -0.75, 0.75, 0.75, ]);
    const array10 = new Float32Array([-0.25, -0.25, 0.75, 1.0, -1.0, 0.5, 0.75, -0.75, 0.25, -1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -0.5, -0.75, -1.0, 0.75, 0.25, 0.0, -0.25, -1.0, 0.5, 0.0, 0.5, 0.5, -0.75, 0.75, 0.25, -0.25, -0.75, 1.0, -1.0, 0.0, 0.5, -0.75, 0.25, 1.0, 0.25, -1.0, -0.75, -0.75, -0.25, 1.0, 0.0, 0.25, 0.75, 0.75, -1.0, -0.25, -0.75, -0.75, -0.25, -0.5, -0.25, -0.25, 0.25, 0.25, 0.25, 0.25, -0.75, -0.75, -0.25, 0.75, -1.0, -0.5, -1.0, 1.0, -0.25, -0.25, -1.0, 0.75, -0.25, 0.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.5, 0.75, -1.0, 0.0, 0.0, -1.0, -1.0, 0.75, 0.75, 0.25, 0.75, -0.5, 0.75, -0.75, -0.75, 0.0, -1.0, 0.25, 0.25, -0.25, ]);
    const array11 = new Float32Array([-0.25, 0.0, -0.25, -0.25, -0.75, 0.25, 1.0, -0.5, -0.75, -0.75, -0.5, 0.75, -1.0, -0.25, 0.5, -0.5, 0.75, 0.0, 0.25, -0.25, -0.75, -1.0, 0.75, 0.0, 1.0, -1.0, 0.5, 0.25, 0.5, 0.25, -0.25, -0.5, -1.0, 0.0, 0.5, 0.75, 0.0, 0.0, 0.0, 1.0, -0.75, 0.75, 0.0, -0.5, -0.75, 0.75, 1.0, 0.0, -0.25, 0.25, 0.75, 0.75, -1.0, 0.0, 0.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.5, -0.25, -0.25, -0.75, -0.5, 0.5, -0.75, -1.0, -0.5, 0.0, -0.5, 1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 0.5, -0.5, -1.0, -0.25, 0.25, -0.25, 0.25, -0.5, -1.0, -0.75, 0.75, -0.5, 0.5, 1.0, 1.0, -0.75, -0.25, -0.75, 0.0, -1.0, 0.25, -0.75, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array12 = new Float32Array([0.5, 0.75, 0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 0.75, -1.0, -0.25, -0.5, 0.0, 0.25, 0.0, 0.75, -0.75, 0.25, 1.0, -0.25, -0.75, -0.25, -0.5, -1.0, 0.5, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, -0.75, -0.5, -0.75, 0.75, -0.5, 0.25, -0.75, 0.75, -0.75, -0.5, 0.0, 0.25, -1.0, -0.25, 0.0, -0.5, -1.0, -1.0, -1.0, -0.5, 0.0, -0.75, -0.25, -0.25, 0.25, 0.75, 0.75, -0.5, -0.5, 1.0, 0.25, -1.0, 0.0, -0.5, -1.0, 1.0, 0.5, 0.75, 0.5, 0.25, 0.75, -0.5, 0.0, -0.25, -0.75, 0.75, 0.5, 0.75, 0.5, -0.25, 0.5, 0.0, -1.0, 0.5, 1.0, 1.0, 0.5, 0.0, 0.5, -0.5, -0.5, 0.75, -0.25, 0.25, -0.75, -1.0, 1.0, 0.75, -0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.destroy();
    
    
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.destroy();
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device30.destroy();
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const array13 = new Float32Array([0.75, 0.0, -0.5, -1.0, 0.5, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, 0.25, 0.25, 0.0, 0.0, 0.25, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, -1.0, -0.5, 0.0, -0.5, 0.0, 0.25, 1.0, -0.5, -0.25, -0.25, -1.0, 0.75, 1.0, -0.25, 0.5, 0.25, -0.75, -0.5, -0.25, -1.0, 1.0, -0.5, 1.0, 0.0, 0.75, -0.5, 0.5, 0.75, -0.25, 0.75, 0.75, -0.5, 0.0, 0.75, -0.75, -0.25, 0.5, 0.0, -1.0, 0.0, -0.75, -0.25, 1.0, 0.75, 0.5, -0.5, -0.5, 0.0, -1.0, 0.75, 0.25, 0.75, 0.25, 0.25, 0.25, -0.5, -0.5, 0.25, -0.5, -0.25, -0.75, 0.0, 0.75, -0.5, 0.25, -1.0, 0.0, 0.5, -1.0, 0.25, -0.5, -0.5, -0.75, 0.5, -0.5, 0.25, -0.25, 0.0, ]);
    
    const array14 = new Float32Array([-1.0, 0.75, 0.25, 1.0, 0.5, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, -0.5, -0.25, 0.25, 0.75, 0.5, -1.0, 0.25, 0.25, 0.0, 0.5, 0.25, -1.0, -0.5, -0.5, -0.25, -1.0, -1.0, 0.25, 0.25, 0.5, 0.25, 0.25, -1.0, -0.75, 1.0, 0.75, 1.0, -0.5, 0.25, -0.5, -1.0, 0.75, -0.25, -0.25, -0.25, 0.0, 1.0, 0.75, 0.0, 0.75, -0.5, -0.75, -0.25, 0.25, 1.0, -0.25, 0.25, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, 0.25, 0.0, 0.5, 1.0, 0.0, -0.25, 1.0, 0.75, -0.75, 0.75, 0.5, 0.75, 0.75, 0.25, 0.75, 0.5, 1.0, -1.0, 0.0, 0.5, -0.5, -0.5, 1.0, 0.5, -0.75, -0.5, 0.75, -0.25, -0.5, 0.5, 0.75, 0.75, -0.75, 1.0, -0.75, 0.0, ]);
    const array15 = new Float32Array([0.5, -0.25, 0.5, -0.75, -0.5, -1.0, 0.5, -0.75, 0.75, 0.0, 0.75, 0.0, 0.75, -0.5, 0.25, -0.25, -0.25, 0.25, 0.25, -0.75, -0.25, -0.5, 1.0, 0.75, -0.5, 0.25, 0.0, -1.0, 0.75, -0.25, 0.75, 0.5, 0.0, 0.0, -1.0, -0.75, -0.25, -0.25, -1.0, -0.5, -1.0, -0.75, 0.0, -1.0, -0.5, -0.5, -0.75, -1.0, -0.25, 1.0, -0.75, -0.5, -0.75, -0.5, 0.25, -0.5, 0.75, -0.75, 0.75, 1.0, 0.0, -0.5, -1.0, 0.0, -0.75, -1.0, 0.25, 0.5, 0.0, -0.5, 0.5, 0.75, 0.25, -0.75, 0.0, 1.0, 0.5, 0.25, 0.75, 0.5, -0.75, 0.0, 0.25, 0.0, 0.5, 1.0, -1.0, 0.25, -0.5, -0.5, 0.5, 0.75, -1.0, -0.75, 0.75, 0.5, -0.25, 1.0, -0.5, -0.5, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    device60.pushErrorScope("out-of-memory");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer500.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query600.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array16 = new Float32Array([-0.25, -0.75, -0.5, 0.75, 0.5, -0.75, 0.0, 0.0, 0.5, 0.0, 0.25, 0.5, 0.0, -1.0, 0.75, -0.25, 0.0, 0.25, 0.0, 0.5, -0.25, 0.5, -1.0, -0.25, 0.25, -0.75, -0.25, -0.75, 0.0, -0.75, -0.75, -0.5, 0.25, 0.0, 0.25, -0.5, 0.0, 0.25, 0.25, -0.25, -0.25, 0.75, 0.5, 1.0, 1.0, -1.0, 0.5, 1.0, 0.5, -0.75, -1.0, 1.0, 0.25, 0.25, -1.0, 0.0, 0.75, 0.75, 0.0, -0.75, -0.25, -1.0, 0.25, 0.25, 0.25, 0.5, 0.0, 0.25, 0.0, -0.5, 1.0, 0.75, 0.5, -0.25, -0.5, -0.75, -0.25, 0.25, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 1.0, -0.25, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, 1.0, -0.5, -0.25, -0.75, 0.5, 0.75, 0.75, 1.0, ]);
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    buffer601.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    query600.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device50.destroy();
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
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
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    buffer600.destroy()
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device70.pushErrorScope("out-of-memory");
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    query700.destroy()
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer602.destroy()
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    
    buffer700.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
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
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    
    
    
    
    device70.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    buffer604.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.destroy();
    
    
    device80.pushErrorScope("out-of-memory");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const array17 = new Float32Array([-1.0, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.25, 0.5, 0.0, 0.25, -0.25, 1.0, 0.0, 0.5, 0.75, 1.0, -0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 1.0, -0.5, 0.0, -0.5, 1.0, -1.0, 0.0, -0.5, 0.0, -0.75, 1.0, 0.75, 0.25, -1.0, -0.25, -1.0, 0.5, 1.0, 0.0, -1.0, 1.0, 0.0, -0.5, -0.25, 0.0, -0.25, 0.75, -0.75, -1.0, 0.25, 0.25, -0.5, -0.75, 0.75, 0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 0.0, 0.75, 0.25, -1.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.25, 0.75, -0.75, 0.25, 0.0, 0.25, 1.0, 1.0, -0.75, 0.25, 0.25, -1.0, 0.25, 1.0, -0.75, -0.75, 0.0, -1.0, 0.5, -0.5, -0.25, 0.0, 0.25, -1.0, ]);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    buffer800.destroy()
    render_bundle_encoder800.setPipeline(render_pipeline800);
    render_bundle_encoder801.setPipeline(render_pipeline800);
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    device80.pushErrorScope("out-of-memory");
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder802.setPipeline(render_pipeline800);
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder802.insertDebugMarker("marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer802,
                },
            },
        ],
    });

    render_bundle_encoder802.setBindGroup(0, bind_group800);
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer803,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer804,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group801);
    
    
    
    
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    buffer802.destroy()
    
    
    render_bundle_encoder801.popDebugGroup();
    
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/shader_module806.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const array18 = new Float32Array([1.0, -1.0, -0.25, 0.5, 0.0, 1.0, -1.0, -1.0, 0.25, 0.0, -0.25, 1.0, 0.0, 0.75, -0.25, -0.25, 1.0, -0.75, -0.5, -0.75, 0.25, -0.75, -0.5, 0.75, 1.0, 0.75, 0.0, -1.0, -0.75, -0.5, 0.5, 1.0, 1.0, -0.5, 0.25, -0.5, -1.0, 1.0, -1.0, -0.25, 0.5, -0.5, 1.0, -0.5, 0.5, 0.75, -0.25, 0.25, -1.0, 0.5, 0.25, -0.5, -0.5, -0.25, 0.5, -0.75, -1.0, 1.0, -1.0, -0.5, 0.75, -0.25, -0.75, 0.75, -1.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, -0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 1.0, 0.25, 0.25, 0.5, -0.75, -1.0, -0.75, -0.25, -0.75, 0.0, -0.25, 0.0, 0.75, 0.0, 0.75, 0.0, 1.0, 1.0, 0.0, ]);
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer805,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer806,
                },
            },
        ],
    });

    render_bundle_encoder801.setBindGroup(0, bind_group802);
    buffer806.destroy()
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile(__dirname + '/shader_module807.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device90.destroy();
    render_bundle_encoder802.insertDebugMarker("marker");
    
    var shader_module808_code = "";
    try {
        shader_module808_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module808 = await device80.createShaderModule({ label: "shader_module808", code: shader_module808_code })
    
    
    
    device80.destroy();
    const array19 = new Float32Array([-0.25, 0.5, 0.25, 0.75, -0.25, 1.0, 0.0, -1.0, -0.75, -0.25, 1.0, 0.0, -0.25, -0.5, 0.0, 0.75, 0.75, 0.0, -0.25, -1.0, -0.5, -1.0, 1.0, 0.25, -0.5, 0.75, -0.75, 0.25, -0.75, 1.0, 0.75, -0.25, -0.25, 1.0, 0.25, 0.75, -0.5, -1.0, 0.75, -0.75, 0.0, -0.75, 1.0, 0.0, 0.75, 0.5, 0.25, 1.0, -0.5, 0.5, 0.75, -1.0, -0.75, 0.75, -0.75, -1.0, -0.5, -0.75, -0.25, 0.0, 1.0, 0.25, 0.5, -1.0, -0.25, 0.0, -0.25, -0.25, -0.25, -0.75, -0.75, -1.0, -0.5, -0.5, -0.5, -0.5, -0.75, 0.0, 0.0, -0.5, -0.75, 0.0, 0.0, 1.0, 0.25, 0.75, -0.75, 1.0, -0.5, 0.75, -0.5, -0.75, -0.25, -0.5, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, ]);
    
    
    
    const array20 = new Float32Array([1.0, 0.75, 0.0, 1.0, 0.5, 0.25, 0.75, 0.75, -0.25, -1.0, 0.5, -0.5, 1.0, 0.75, 0.0, -0.5, 1.0, -0.25, 1.0, -0.25, 0.75, -0.75, 1.0, 1.0, 0.25, 0.0, 0.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.0, 0.5, -0.25, -0.5, 0.25, -0.5, -0.75, 1.0, 0.25, 0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 0.5, 0.0, 0.25, -0.25, -0.75, 0.25, 0.75, -0.75, 0.0, 0.5, 1.0, -0.75, -0.25, 1.0, -0.5, 0.5, -0.5, -0.75, -0.75, 0.5, 0.0, -1.0, 0.5, 1.0, 0.5, 0.25, -0.25, -0.25, 0.0, 0.75, -0.75, 0.75, 0.5, 0.75, 1.0, 0.0, 0.0, 0.0, 0.75, 0.5, -0.25, 0.5, -0.75, 1.0, 0.5, -0.75, 1.0, 0.0, 0.5, -1.0, 0.0, 1.0, 1.0, ]);
    
    
    
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device100.pushErrorScope("validation");
    
    
    
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    
    
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    query1000.destroy()
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    
    
    
    
    
    query1000.destroy()
    
    
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    
    const array21 = new Float32Array([-0.25, 0.25, 0.0, 0.25, -0.5, -1.0, -0.75, -0.5, 0.5, 1.0, -0.5, 0.0, -0.25, -0.5, -0.25, 0.75, 1.0, 0.75, 0.5, -1.0, -0.25, 1.0, -1.0, -1.0, 0.0, -0.75, -0.25, 0.25, -0.25, -1.0, 0.25, 0.0, -0.75, 0.25, 0.75, -0.75, 1.0, -0.5, 1.0, -0.25, 0.0, 0.25, -0.75, -0.75, -0.25, -0.25, 0.0, -1.0, 1.0, 0.0, 0.25, 0.25, 0.0, 1.0, -1.0, -0.5, 0.75, 1.0, 1.0, 0.5, -0.75, -0.5, 0.75, -0.75, 1.0, 1.0, 0.0, 0.0, 0.5, 0.75, -0.5, 1.0, 0.0, 0.75, 0.25, -0.75, 0.75, -0.75, 0.25, -0.5, -0.5, -0.5, -0.5, 0.0, 1.0, -0.75, 0.5, 1.0, -0.25, 0.5, 0.75, 0.0, -0.75, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, 0.75, ]);
    const array22 = new Float32Array([0.0, 0.0, -0.75, 0.75, 0.5, -0.75, 0.25, 0.0, 0.25, -0.75, 0.25, 1.0, -1.0, 1.0, 0.75, -0.25, 0.0, 0.0, 0.5, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, 0.75, 0.25, 1.0, -1.0, 1.0, -0.75, 0.5, -0.5, -0.5, -1.0, 0.0, 0.0, -1.0, 0.75, 0.25, 1.0, -0.5, 0.75, -0.5, -0.75, 0.75, -0.75, 0.0, 0.75, 0.25, -0.5, 0.25, -1.0, -0.75, 0.75, -0.25, 0.0, 0.75, 0.0, 0.25, -0.25, -0.75, 1.0, -0.25, -0.5, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, -0.25, 0.0, -0.75, 0.5, 0.0, 0.5, 0.5, -1.0, -0.5, 0.0, 0.5, -0.25, -0.5, -0.75, 1.0, -0.5, -0.25, -0.5, -0.25, 0.75, -0.5, -1.0, 0.25, 0.75, 0.5, -0.75, 0.5, -0.25, -0.5, ]);
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    const array23 = new Float32Array([0.75, -0.75, 0.5, 0.75, -1.0, -0.75, -0.25, 0.5, 0.0, 0.25, -0.25, 0.0, -0.5, -0.25, -0.75, -0.25, 0.5, -0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.5, 1.0, 1.0, 0.0, -0.75, -0.75, -1.0, -0.5, 0.5, 0.0, 0.25, 0.5, 0.0, -0.25, 0.5, 1.0, -0.5, -1.0, -0.25, -0.25, -0.75, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, -0.25, 0.25, -0.75, -0.5, 1.0, 0.0, 0.75, 0.0, 0.5, 0.25, 1.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.25, 0.5, 0.25, 0.0, 0.0, 1.0, -0.75, -0.25, 0.25, 0.5, 0.0, 0.5, 0.25, -0.5, 0.5, -0.25, 0.75, 0.0, 1.0, 0.25, -1.0, -0.25, 0.5, 0.75, 0.75, -0.5, -0.75, -0.5, -0.75, 1.0, 0.75, -0.5, 0.25, -0.25, ]);
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler1003 = device100.createSampler( { label: "sampler1003" } );
    
    query1000.destroy()
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    buffer1000.destroy()
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1003,
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
            module: shader_module1003,
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
    const array24 = new Float32Array([-0.5, -0.5, -0.75, -0.5, -0.75, -0.5, 0.25, -0.5, -1.0, 0.75, 0.0, -1.0, 0.25, 0.25, -1.0, 0.75, 0.5, -0.75, 0.0, 0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.75, 1.0, 0.5, 0.0, 0.0, -0.5, -0.5, 1.0, -0.5, -0.5, 0.5, -0.25, -0.75, -1.0, 0.25, 0.5, 0.75, -0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, 0.5, -0.75, 0.25, 0.75, -1.0, 0.75, 0.25, -0.5, -1.0, -1.0, -0.75, -0.5, -0.25, -0.75, 1.0, 0.25, 0.25, 0.25, 0.5, 0.75, 0.0, 0.5, 0.5, -0.5, -0.25, -0.75, 1.0, -0.5, -0.25, -0.25, 0.5, -0.5, 0.0, -0.5, 0.75, -1.0, -0.75, 0.75, 0.25, 0.75, -0.25, -1.0, 0.0, 0.0, 0.25, 0.75, 0.0, -0.25, ]);
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    
    
    
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1003,
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
            module: shader_module1003,
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
    buffer1002.destroy()
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    
    const texture_view10002 = texture1000.createView({ label: "texture_view10002" });
    render_bundle_encoder1000.setPipeline(render_pipeline1001);
    render_bundle_encoder1000.insertDebugMarker("marker");
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    render_bundle_encoder1000.insertDebugMarker("marker");
    const sampler1004 = device100.createSampler( { label: "sampler1004" } );
    query1001.destroy()
    
    
    
    device100.pushErrorScope("validation");
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    
    render_bundle_encoder1001.setPipeline(render_pipeline1000);
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    
    
    
    
    
    
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.pushErrorScope("internal");
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}