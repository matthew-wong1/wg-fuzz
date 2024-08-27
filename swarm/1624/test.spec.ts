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
    const array0 = new Float32Array([-1.0, 0.75, -0.25, -0.75, 0.0, 0.5, 0.75, 1.0, 0.0, 0.25, -1.0, -0.5, 1.0, 1.0, 0.5, 0.5, -1.0, 0.0, 1.0, -0.5, -1.0, -0.75, -0.5, 0.0, 1.0, 0.25, 1.0, 0.5, 0.5, -0.5, 0.0, -1.0, 0.75, 1.0, 0.0, 0.25, -1.0, 0.75, -0.75, -0.5, 0.5, 1.0, -1.0, -0.75, -0.25, 0.25, 0.75, -0.25, 1.0, -1.0, 0.25, -1.0, -0.25, -0.75, -0.5, 0.5, 0.5, -0.5, -0.75, -0.75, 0.75, -0.25, -0.25, -0.25, 0.75, 0.75, -0.75, 1.0, -0.25, 1.0, 1.0, -0.75, -0.5, 0.75, 0.5, -0.5, -1.0, 1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.25, -0.75, 0.75, 0.5, -0.25, 0.5, 1.0, 1.0, -0.5, 1.0, -0.5, 0.0, -0.5, 0.75, 1.0, 1.0, 0.0, ]);
    const array1 = new Float32Array([-1.0, 0.25, 0.75, -0.75, 0.75, -0.75, -0.75, 0.25, -0.5, -1.0, 0.75, 0.75, 0.5, -0.75, 0.0, 0.75, -0.75, -1.0, -1.0, -0.25, 0.75, -0.75, -1.0, 0.0, 0.5, 0.25, 0.0, 0.5, 0.75, 0.0, -1.0, -0.75, -0.25, 0.75, 0.5, -0.75, 0.75, 0.5, 0.0, 0.0, -0.5, -1.0, 0.5, 0.0, 0.0, -0.75, 1.0, -0.75, -0.5, -0.25, -0.75, -0.25, 0.25, -0.5, -0.25, -0.25, 0.0, 1.0, -0.75, 1.0, 0.0, -0.5, -0.25, -0.25, 1.0, 0.0, 0.0, -0.75, -1.0, 1.0, -0.75, -0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 0.25, -0.75, -0.5, -0.25, -0.5, 0.5, 0.25, 0.75, 1.0, -0.75, 0.75, 0.75, -0.25, -1.0, 0.0, -0.75, -0.5, 0.0, 0.75, -1.0, -0.75, 0.75, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const array2 = new Float32Array([-1.0, -1.0, 0.0, 0.0, 0.25, -0.25, -0.25, 0.5, -0.5, 0.75, 0.5, 0.25, -0.75, -0.75, 0.5, -0.25, -0.75, -1.0, -0.25, -0.25, -0.75, 0.25, -0.5, -0.5, 0.25, 0.0, -1.0, 0.75, 0.75, -0.5, 0.5, -0.75, -0.5, 0.25, -0.5, 0.0, -0.75, 0.5, -0.75, 0.75, 0.25, 0.5, 0.25, 1.0, 1.0, -0.25, -0.75, 0.75, 0.75, 0.75, -1.0, -0.5, 0.0, 0.25, -1.0, 0.5, 0.25, 0.75, -1.0, 0.0, 0.0, 0.0, -0.5, 0.0, 1.0, -0.75, 0.5, -0.5, -0.25, 0.0, 0.5, 0.25, 0.5, -0.25, -0.5, 1.0, -1.0, 1.0, -0.25, 0.5, -0.75, -0.75, 0.5, 0.0, 0.5, 0.75, -0.5, -1.0, 0.75, 0.75, -1.0, -0.5, 1.0, 1.0, 0.25, 0.5, 0.5, -1.0, 0.75, 1.0, ]);
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array3 = new Float32Array([1.0, 0.25, -0.75, -0.75, 0.75, 0.75, -0.5, 0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.25, 0.0, 0.25, 0.5, -0.75, -0.5, 1.0, -0.25, -0.5, 0.25, 1.0, 1.0, 0.75, -0.25, 0.75, -0.25, 1.0, -0.5, -0.5, -1.0, 0.5, 0.25, -0.25, -0.5, -0.75, -0.75, 0.0, -0.75, 0.25, -0.75, -1.0, 1.0, 0.25, 0.25, 0.25, 0.25, -0.25, 0.25, -0.25, -0.25, -0.25, -0.25, 0.5, 0.25, 1.0, 1.0, -0.25, -0.75, -1.0, -1.0, -1.0, 1.0, 0.0, 0.25, 1.0, 1.0, -0.75, -1.0, -0.5, 0.5, -1.0, 0.0, -0.75, 0.5, 0.75, 0.75, 0.0, -0.5, 1.0, 0.5, 0.25, -0.25, 0.5, -1.0, 0.0, 0.75, 0.75, 0.75, 0.0, -0.5, 0.25, -0.75, -1.0, -1.0, 1.0, 0.5, -0.75, ]);
    
    
    const array4 = new Float32Array([0.5, -0.25, -0.75, 0.0, 0.25, -0.5, 0.5, -0.25, 0.5, 0.75, -0.5, 1.0, 0.75, 1.0, -0.25, -0.75, -0.5, 0.75, -0.75, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, -0.5, -0.25, 0.75, -0.5, -0.75, 1.0, -1.0, 0.25, 0.0, 0.5, -1.0, 0.75, -0.75, -0.25, 0.75, 0.5, 1.0, 0.0, -0.75, 0.5, 0.5, 1.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.25, 0.25, 0.0, 0.5, -1.0, 0.5, 0.25, 0.5, -1.0, -0.75, 0.75, -0.25, -0.5, 0.0, 0.25, 1.0, 0.25, 0.75, -0.5, -0.25, -0.5, -0.75, 0.75, -1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 1.0, 0.25, 0.25, 0.0, 0.0, 0.25, 0.25, 0.5, 0.75, 0.5, 0.5, -0.5, 0.75, -1.0, 1.0, -1.0, 0.75, 0.75, 1.0, ]);
    const array5 = new Float32Array([-0.75, 1.0, 0.5, 0.0, -0.25, 0.75, 0.25, 0.5, -0.75, 0.0, -1.0, -0.75, -1.0, -0.5, -1.0, -0.25, 1.0, 0.25, 0.25, -0.75, -1.0, 1.0, -0.75, 0.0, 0.0, -1.0, 0.75, 0.0, -0.75, 1.0, -0.5, 0.5, -1.0, -0.75, 0.75, -0.75, 1.0, 0.5, -0.25, 0.25, 0.5, 0.0, -0.25, 0.0, 0.0, 0.25, -0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.75, -0.75, -0.75, 0.25, -0.75, -1.0, -0.5, 0.25, -0.5, 0.75, -0.75, -0.75, -0.25, -1.0, 0.75, 0.75, 1.0, 0.75, 0.5, 0.25, -0.75, -1.0, -0.75, -0.25, -0.5, -0.75, 0.0, -1.0, -0.75, -0.25, 0.25, -1.0, 1.0, 0.25, 0.5, 0.25, -0.5, 0.5, 0.5, -0.5, 0.25, -0.75, 0.0, 0.75, -1.0, 1.0, -0.25, -1.0, ]);
    const array6 = new Float32Array([1.0, 0.75, 1.0, 0.0, 1.0, 0.75, -1.0, -1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 0.5, -0.25, 0.75, -1.0, 0.5, 0.0, -0.75, -0.75, -0.75, -0.25, 0.25, 0.5, 1.0, -0.75, -1.0, -0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -1.0, 0.25, -1.0, 1.0, -0.25, 0.25, 0.5, 1.0, -0.75, -0.5, -1.0, -0.25, -0.25, 0.5, -1.0, -0.5, 0.25, 0.25, -1.0, 0.0, 0.75, 1.0, 0.0, -0.5, -0.75, 0.0, 1.0, 0.25, 0.5, 1.0, 0.5, -0.5, -1.0, -0.25, 0.0, 0.5, -0.75, -0.25, -0.75, 0.75, -1.0, -0.25, 1.0, 0.0, -0.5, -1.0, 0.0, 1.0, 0.75, 0.5, 0.75, 0.5, -1.0, 1.0, 0.25, -1.0, -0.75, -0.75, 0.75, -0.75, 0.5, 0.0, -0.5, -0.25, -0.75, 0.5, ]);
    const array7 = new Float32Array([0.5, 0.0, -0.75, -0.5, 0.0, 0.0, -0.25, 0.75, 0.75, 0.25, 0.75, 0.75, 0.25, 1.0, -1.0, 0.0, 0.25, 0.0, -0.5, -0.75, 0.5, -0.5, 0.25, -0.75, -0.25, -0.5, -1.0, 0.0, -1.0, -0.5, 0.5, -0.25, 0.0, 0.75, 0.25, 0.75, 1.0, 0.5, 0.0, -1.0, -0.75, -0.25, -0.75, 0.25, 0.5, -0.25, 0.0, 1.0, -1.0, 1.0, -1.0, -0.5, -0.25, 0.25, 0.75, 1.0, -1.0, 0.25, -1.0, -1.0, 0.75, -0.75, 0.5, 1.0, -0.75, -1.0, -0.75, 1.0, 0.75, 1.0, 1.0, 0.25, 0.75, 0.25, -0.75, -1.0, 1.0, 0.0, -0.25, 1.0, 0.25, 0.5, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.0, 0.5, -0.5, -0.75, -0.5, -0.25, -0.25, -0.5, 0.0, 0.75, 0.5, ]);
    
    
    const array8 = new Float32Array([-1.0, 0.25, -1.0, 0.0, -1.0, 0.0, -1.0, -1.0, -1.0, -0.75, 1.0, 0.25, 0.75, 1.0, 0.5, 1.0, 1.0, 0.0, -1.0, 1.0, 0.0, -1.0, 0.0, -0.25, -0.25, 0.75, -0.75, 0.25, 0.5, -0.75, 0.75, 1.0, -0.75, -0.25, -0.75, -0.5, -0.25, 0.75, 1.0, 1.0, -0.25, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -1.0, -0.25, 0.25, 0.5, 0.75, -0.75, 1.0, -0.25, 0.75, -0.5, 0.0, 0.75, -0.25, 0.5, 0.25, -0.75, 1.0, 0.0, 1.0, 0.0, -1.0, 1.0, 1.0, -1.0, -1.0, 0.75, 0.0, 1.0, 0.0, -1.0, 0.75, -0.75, 1.0, 1.0, 1.0, -0.25, 0.0, -0.5, -0.25, -0.25, -1.0, 1.0, 0.75, 0.5, 0.0, -1.0, -0.5, 1.0, 0.25, -0.5, -0.25, 0.75, -1.0, ]);
    
    
    
    
    
    
    
    
    
    
    
    const array9 = new Float32Array([-1.0, 0.75, 0.75, 1.0, 0.0, 0.0, 0.0, 1.0, -1.0, -0.5, 0.75, -0.75, -1.0, -1.0, -1.0, 0.25, 1.0, 0.0, 0.25, 1.0, -0.5, -0.75, 0.25, -0.5, 0.5, -0.75, 0.75, 0.75, -0.25, 0.25, 0.5, 0.0, -0.75, -0.25, 0.75, -0.25, 1.0, -1.0, 0.5, 0.5, 1.0, 0.5, 0.0, 0.25, -0.25, 0.0, -0.75, 1.0, -1.0, -0.25, 0.25, -1.0, 0.5, -0.75, -1.0, -0.75, 1.0, -0.25, -0.25, -0.5, -0.75, -0.25, 0.5, -1.0, -0.25, 0.25, 0.25, 0.0, 0.5, 0.25, 0.0, -0.75, 0.5, -0.75, -0.25, 0.5, 0.5, 0.25, 0.25, -0.75, 0.5, -0.25, 0.0, -1.0, -0.25, 0.0, 0.0, 0.0, -0.25, 1.0, 0.75, -1.0, 0.5, 0.0, 0.75, 0.5, 0.75, -1.0, 1.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array10 = new Float32Array([0.5, -0.5, 0.25, -1.0, -0.5, 1.0, 0.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.75, 0.25, -0.25, -0.75, -0.5, -0.75, 0.75, -1.0, 0.25, 0.5, 1.0, 0.0, -0.25, -0.25, -1.0, 1.0, -0.5, -1.0, -0.75, 0.5, -0.75, 0.75, -1.0, 0.0, -0.75, -1.0, -0.75, 1.0, 0.75, -0.5, -1.0, -0.75, 0.0, -0.25, -0.25, 0.5, -1.0, 1.0, 0.25, 0.75, -1.0, 0.75, 0.25, 1.0, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.5, -0.75, 0.75, 0.5, -0.75, 0.25, 0.25, -0.75, 1.0, 0.25, -0.25, -0.5, -0.25, -0.75, 0.5, -0.25, 0.75, -0.5, -0.75, 0.5, -1.0, 0.5, 0.75, -0.5, -0.25, -0.5, -0.5, -1.0, 1.0, 0.25, 1.0, -0.5, 0.25, 1.0, 0.5, -0.25, -1.0, -0.25, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.pushErrorScope("out-of-memory");
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array11 = new Float32Array([-0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 0.0, 0.25, -0.75, 1.0, -0.5, 1.0, -0.75, -0.25, -0.75, -0.25, 0.75, 1.0, 0.25, 0.75, 0.75, 0.25, 1.0, -0.5, 0.0, 0.5, -0.5, -0.75, 0.75, -0.25, 0.75, 1.0, 0.75, -1.0, -0.25, 0.75, -0.25, -1.0, -0.5, 0.25, 0.75, 0.0, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 0.75, 0.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.0, -0.25, -0.75, -0.5, -0.25, 0.25, -0.75, -0.75, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, 0.75, 0.25, -0.25, -0.5, 0.75, 1.0, 0.25, -0.25, 0.25, 0.25, -0.5, -1.0, 0.0, -0.25, 0.25, -0.75, -1.0, 1.0, -1.0, 1.0, 0.0, -1.0, 0.25, -0.75, 0.25, -0.25, 0.5, -0.5, -0.25, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
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
    texture201.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array12 = new Float32Array([-0.5, 0.25, 0.25, -1.0, 0.5, 0.75, -0.25, 1.0, 0.25, 0.0, 0.75, -0.25, 0.25, -0.25, 0.0, 0.0, -0.5, -1.0, -0.75, 0.25, 0.5, 1.0, 0.25, -0.25, -0.25, 0.5, -0.25, -0.5, -0.5, 0.0, -0.5, 0.25, 0.0, 1.0, 0.75, 0.25, 0.75, -0.75, 0.75, 0.5, 0.75, 0.0, -1.0, 1.0, 1.0, -0.75, -0.5, 0.25, 0.25, -0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.5, -0.75, -0.5, 0.5, 0.75, -0.25, 0.5, 0.75, 0.75, -1.0, -0.5, -0.75, 0.75, -1.0, 0.25, 0.25, 0.75, 0.5, 0.75, 0.25, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, 0.0, 0.25, 1.0, -0.25, 0.5, -1.0, -0.25, 0.5, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, -0.25, 0.5, 0.25, -0.5, -1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer301.destroy()
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    
    
    device10.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    buffer302.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.pushErrorScope("validation");
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer100.destroy()
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
    
    device40.destroy();
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture302.destroy();
    
    const array13 = new Float32Array([0.0, -0.75, 0.75, 0.25, -0.25, 0.0, -1.0, -0.5, 0.75, -0.5, -0.75, 0.75, -0.75, -0.25, 0.75, 0.0, 1.0, 0.75, 0.5, -0.5, 1.0, -0.75, -0.75, -0.75, 0.0, -0.75, -0.75, 0.0, 0.25, 1.0, 0.5, 1.0, -0.5, 1.0, 0.75, 0.75, -0.5, 0.25, -0.5, -1.0, -0.5, 0.0, 0.75, 0.25, 1.0, -0.25, -0.5, -0.5, 1.0, -0.5, 1.0, 0.75, 1.0, 0.25, -0.5, 1.0, -0.75, -1.0, 1.0, -0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.0, 0.25, -0.75, -0.5, 0.5, 0.75, -0.25, -0.75, -0.5, -0.25, -0.25, 1.0, 0.5, 0.0, 0.0, 0.75, -0.75, -0.5, 0.75, 0.25, 0.25, 1.0, -0.5, 0.0, 0.75, -1.0, 0.0, 0.75, -0.5, -0.75, -1.0, 0.5, -0.5, 1.0, 0.75, ]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer303.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture303.destroy();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query300.destroy()
    
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture501.destroy();
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture304.destroy();
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    device50.queue.writeTexture({ texture: texture502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder303.popDebugGroup();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    texture502.destroy();
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
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
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.pushErrorScope("internal");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    device30.queue.writeTexture({ texture: texture303 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer501.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
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
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    const array14 = new Float32Array([0.75, 0.25, -1.0, 0.25, -0.75, 0.25, 1.0, 1.0, 0.0, -0.5, 1.0, -0.25, -0.75, 0.75, -0.5, -0.75, 0.25, 0.75, -1.0, -0.25, -0.25, 0.5, -0.75, 0.0, -0.75, 0.75, 1.0, 0.75, 0.0, -1.0, -0.75, 1.0, -0.75, 0.5, 0.0, 1.0, -0.25, -1.0, -1.0, -0.5, 0.25, -0.25, 0.25, -1.0, -1.0, 0.0, 0.75, 1.0, 0.5, 0.5, 0.75, -0.5, 0.5, 0.75, -0.75, 0.75, -0.75, 0.5, 0.0, -0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.5, 0.25, -0.5, 0.5, -0.25, -0.75, -0.25, 0.75, -1.0, 0.5, 0.0, 0.75, -1.0, 0.75, -0.25, -0.25, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, -1.0, -0.75, -0.5, -1.0, 0.75, -0.5, -1.0, -0.5, -1.0, -0.5, 0.0, -0.25, 0.0, ]);
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder303.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer503.destroy()
    
    device50.pushErrorScope("internal");
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    texture301.destroy();
    render_bundle_encoder303.pushDebugGroup("group_marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device50.queue.submit([]);
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const array15 = new Float32Array([0.5, 1.0, 0.75, -0.75, -0.75, 0.25, -0.75, 0.25, 0.25, -1.0, 0.0, -0.75, -1.0, 0.5, 0.25, -0.5, -1.0, -0.75, 0.75, 0.0, -1.0, 0.0, 0.5, 0.5, 1.0, -0.75, 0.25, 0.25, -1.0, 0.5, -0.75, 0.5, 1.0, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, -0.25, 0.5, -0.75, -0.5, 0.5, 0.25, -1.0, 0.5, 0.5, 1.0, -0.25, -1.0, 1.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, 0.25, -1.0, -0.25, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, -0.75, 0.75, -0.25, -1.0, 0.0, 0.75, 1.0, -1.0, -0.5, -0.5, -0.25, 0.25, 1.0, 0.0, 0.75, 1.0, 1.0, 0.75, -0.5, 0.5, -0.5, -0.25, 0.75, -0.5, -0.75, 0.5, 0.75, 0.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device50.queue.writeTexture({ texture: texture504 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device50.queue.writeTexture({ texture: texture504 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder303.popDebugGroup();
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder303.popDebugGroup();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    query501.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    texture504.destroy();
    render_bundle_encoder202.popDebugGroup();
    
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_bundle_encoder303.pushDebugGroup("group_marker");
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder303.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device20.pushErrorScope("out-of-memory");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    device60.destroy();
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture502 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder303.pushDebugGroup("group_marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder303.popDebugGroup();
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    
    device50.queue.writeTexture({ texture: texture503 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder304 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder304",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query500.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array13, 0, array13.length);
    
    device50.queue.writeBuffer(buffer502, 0, array15, 0, array15.length);
    
    buffer501.destroy()
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
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    
    texture304.destroy();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    query500.destroy()
    render_bundle_encoder300.popDebugGroup();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("out-of-memory");
    
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer502.destroy()
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
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
    
    texture300.destroy();
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder304.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture303 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    texture303.destroy();
    device50.queue.writeTexture({ texture: texture505 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer504.destroy()
    query500.destroy()
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder303.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout503]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout503]
    });
    device30.queue.writeTexture({ texture: texture304 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
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
    
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query301.destroy()
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    render_bundle_encoder303.popDebugGroup();
    
    
    query300.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const array16 = new Float32Array([-1.0, 0.75, 0.75, -1.0, 0.5, -0.25, 0.25, 0.75, 0.75, 1.0, 0.5, -0.25, 0.5, 0.75, 0.5, 0.75, 0.5, -0.75, -0.75, -1.0, -1.0, 0.75, -0.75, 1.0, -1.0, 0.75, 0.75, -0.25, -0.25, -0.25, 0.25, 0.5, 1.0, -0.5, 0.0, -0.25, -1.0, 0.25, -0.5, -1.0, -0.25, -1.0, -1.0, 0.5, 1.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.25, 0.75, 0.0, 0.75, -0.25, 1.0, 0.75, 0.25, -0.25, 0.25, 0.25, 0.0, -1.0, -0.75, -0.5, -1.0, -0.5, -0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 1.0, 0.75, 0.25, 0.0, 0.0, -0.75, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.75, 0.25, -0.75, 0.75, 0.75, 0.5, -0.25, 0.75, -0.5, ]);
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array17 = new Float32Array([-0.5, -0.5, 0.25, -0.75, -1.0, 0.75, -0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 0.25, -0.75, 0.25, -1.0, 0.75, -0.25, -0.25, 1.0, 0.5, -0.5, 0.0, -1.0, -0.5, 0.75, 1.0, -0.25, -0.25, 0.0, -1.0, 0.0, 0.75, -0.25, 0.25, 0.0, 1.0, 0.75, -0.75, 1.0, -0.5, 0.5, 0.25, -0.25, -0.25, 0.0, -0.75, 0.5, 0.0, -1.0, -1.0, 1.0, 0.25, 0.25, 0.75, 0.0, 0.0, -0.75, 0.5, 1.0, -1.0, 1.0, -0.5, -1.0, 0.5, 0.25, 0.5, -0.75, 0.25, 0.5, 1.0, -1.0, 0.0, 0.75, -1.0, 0.75, -0.5, 1.0, -0.5, 0.5, 0.5, -0.75, -0.75, 0.5, -1.0, -0.5, -0.25, 0.0, 0.25, -0.75, -1.0, 0.5, 0.5, -0.75, -0.5, -0.75, 1.0, 0.25, -0.25, -1.0, ]);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    buffer503.destroy()
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
}