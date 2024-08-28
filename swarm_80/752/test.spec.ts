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
    const array0 = new Float32Array([-0.5, 0.5, -0.5, -0.25, -0.5, -0.5, -0.5, 0.5, 0.0, 1.0, 0.0, -0.75, 1.0, -0.75, -0.75, -0.75, -0.25, -0.75, -1.0, 0.75, 1.0, -0.25, 0.0, 0.5, 1.0, -0.75, 1.0, 0.75, 0.25, -1.0, 0.25, -0.5, 1.0, 0.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.25, 0.0, 0.75, 0.5, -0.5, -0.5, 0.5, 0.25, -0.5, 0.25, 0.25, 0.75, 1.0, -1.0, 0.5, 1.0, 0.25, 0.75, -0.75, 0.0, 0.75, -0.25, 0.75, 0.75, -0.5, -0.5, 0.5, 0.5, 0.5, -0.5, -0.25, -1.0, -0.25, -0.5, 0.25, -0.5, 1.0, 0.5, -1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 0.5, 0.75, -0.5, -0.75, -0.5, 0.5, -0.5, 1.0, -0.25, 0.25, 0.25, 0.75, 0.0, -0.25, 0.75, -1.0, 1.0, ]);
    
    const array1 = new Float32Array([-0.75, -0.5, 0.0, -1.0, -0.75, 0.0, -0.5, 1.0, 0.5, 0.0, 1.0, -1.0, -0.75, -1.0, 0.25, -0.5, -0.75, -0.5, 0.0, 0.25, -1.0, 0.0, -0.5, 0.75, -0.5, 0.25, -0.5, -0.75, -0.75, 0.0, -1.0, 0.5, -0.25, -0.75, 0.25, 0.75, -0.25, 0.25, 1.0, 0.0, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, 0.0, 0.75, -1.0, 0.5, -1.0, 1.0, 0.25, -1.0, -0.5, -0.25, -0.25, -0.75, 0.75, 0.5, 0.25, -0.25, 1.0, 1.0, -0.25, -0.5, -0.25, 0.75, -0.75, 1.0, -0.5, 0.75, -0.25, 0.5, 0.0, 0.0, 0.5, 0.75, -1.0, 1.0, 1.0, 0.0, -0.75, 0.75, -0.25, 0.25, 0.0, 0.25, -1.0, -0.25, -1.0, 0.25, 1.0, -0.5, -0.25, -0.75, 0.25, 0.5, 1.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([1.0, 0.25, 0.75, -1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 1.0, 0.75, -1.0, 0.25, -1.0, 0.25, -1.0, -1.0, -0.5, -0.5, 0.25, -0.25, -0.5, -1.0, 1.0, -0.75, 0.25, -0.75, -0.75, -0.75, -1.0, 1.0, 0.75, -0.25, -1.0, -0.5, 0.5, 0.25, -1.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.0, -0.25, 0.0, -0.75, -0.25, -0.5, -0.5, 0.0, 0.75, 0.5, 0.5, 0.25, -1.0, 0.5, -0.25, 0.25, 0.5, 0.5, 0.75, 0.5, 0.5, -1.0, -0.25, 0.25, 0.5, 0.25, 1.0, 0.5, 0.75, 1.0, -1.0, 1.0, -1.0, -0.25, 0.75, 0.5, 0.75, -0.75, 0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 1.0, -1.0, -0.5, 0.5, -1.0, 0.0, -0.5, 0.75, -1.0, 0.75, -0.25, 1.0, 0.5, ]);
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
    texture000.destroy();
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([-0.5, -1.0, 0.5, 1.0, 0.25, 0.0, 0.25, 1.0, -0.25, -0.25, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.75, 0.75, -0.75, 0.25, 0.0, 0.75, 0.75, 0.25, 0.0, -0.25, 1.0, 0.5, -1.0, -1.0, 0.25, -0.25, 0.0, 1.0, 0.0, 0.25, -1.0, -0.5, 0.5, -1.0, -0.75, 0.25, 0.0, 0.25, -1.0, 0.25, 1.0, 0.75, -0.25, -0.5, 1.0, 0.5, 0.5, 0.5, -0.75, 0.0, 0.25, 1.0, -1.0, 0.75, -1.0, 0.25, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, -1.0, -0.5, -0.25, 0.25, 0.75, -0.25, 0.25, 1.0, -1.0, 1.0, 0.25, -1.0, 0.5, -0.25, -1.0, 1.0, -0.75, -1.0, -0.25, -0.5, -0.75, -0.25, 0.25, 1.0, -1.0, 0.0, 0.75, -0.25, -0.25, -0.25, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([-1.0, 0.5, 0.25, -0.75, 0.5, 0.25, 0.25, 0.5, 0.5, -0.25, -0.25, 1.0, 0.0, -1.0, -1.0, 0.25, 0.75, 0.75, 0.75, 0.25, 0.0, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, 0.5, -0.25, -0.75, -0.25, -0.25, -0.5, 0.5, 1.0, 0.25, 0.75, 0.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.75, 0.25, 0.0, -0.75, 0.25, 0.0, -0.25, 1.0, 1.0, -0.75, -0.25, 0.25, -0.5, -0.75, -1.0, -1.0, -0.5, -1.0, 1.0, 0.25, -0.5, 0.75, -1.0, 0.75, -0.5, 0.5, 1.0, -0.5, 0.75, 1.0, -0.25, 0.75, 0.75, 0.5, 0.25, 0.25, -0.5, -0.75, 0.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0, -0.25, 1.0, 0.75, 0.75, 0.75, 0.25, 0.0, -1.0, 0.75, -0.75, 0.5, 1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([-0.5, -0.25, -0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 1.0, -0.25, -1.0, 0.75, 1.0, 0.5, -0.5, 0.25, -0.75, 0.25, 0.75, 0.25, 0.0, 0.0, -0.25, 0.75, -0.25, 0.25, 0.0, -0.75, 1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.25, 0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 0.0, 0.5, -0.5, -0.5, -0.25, 0.75, 0.5, 0.5, -0.75, -0.75, -1.0, 0.5, 0.25, 0.0, -0.25, -0.25, 0.25, 1.0, 0.75, -1.0, -1.0, -0.75, -1.0, -0.5, 0.75, 0.25, 0.5, -0.5, 0.75, -1.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.0, -0.75, -0.75, 1.0, -1.0, 0.75, 0.25, -0.75, 0.5, 0.25, -1.0, 0.0, 0.5, 0.5, 0.0, 0.0, 0.5, -0.75, -0.25, 1.0, -0.25, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    
    
    
    const array6 = new Float32Array([0.0, 0.0, -0.75, 0.0, -0.5, -0.5, -0.75, 0.0, 1.0, 0.75, -0.75, 0.25, 0.5, -0.75, -0.5, -0.25, 1.0, -0.25, 0.5, -1.0, 0.25, 1.0, -0.75, 0.25, -1.0, 0.5, 0.5, -0.25, -0.5, -0.25, -0.25, 0.5, 0.75, -0.5, 0.75, 1.0, 0.75, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, -0.75, 1.0, 1.0, 1.0, 0.5, 1.0, 0.25, 0.75, 0.25, 0.0, -0.5, 0.0, -1.0, 1.0, 0.0, 0.5, 0.5, -0.75, 0.0, 1.0, -0.75, 0.75, -0.75, -0.75, 0.75, -1.0, 0.5, -0.5, 0.5, -0.25, -0.25, -1.0, 0.75, 0.75, -0.25, -0.75, 0.25, 1.0, -0.25, 1.0, 0.0, 1.0, -0.75, -0.5, -0.25, 0.0, -0.75, 0.0, -0.25, -0.75, -0.25, -1.0, 0.75, 0.25, -0.25, 1.0, -0.75, ]);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array7 = new Float32Array([-1.0, -0.5, -0.25, -0.5, -0.75, -0.75, 1.0, 0.75, 0.0, -1.0, -0.5, -1.0, -0.5, -0.5, 0.0, -0.5, -0.25, 1.0, -0.5, 0.5, 0.75, -1.0, -0.75, -1.0, -1.0, 0.0, -1.0, -0.75, -0.75, 0.25, 0.5, 0.75, 0.75, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 1.0, 0.25, -1.0, -0.25, 0.25, -0.5, -0.75, 0.5, 0.0, 1.0, 0.25, 0.0, 0.75, -1.0, 0.25, -0.5, 0.0, -0.5, 0.5, -1.0, 1.0, 0.5, 0.25, 0.5, 1.0, 1.0, 0.5, -1.0, 0.25, 0.25, 0.5, 1.0, 0.75, -0.75, 0.5, -0.25, 0.75, 0.5, -1.0, 0.75, -1.0, -0.25, -0.25, -0.75, 1.0, 0.0, 1.0, 0.75, 1.0, 1.0, 0.0, -0.75, 1.0, 0.5, -1.0, 0.5, 0.5, 0.75, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([-0.5, 0.5, -0.25, -0.25, 0.5, 1.0, 0.25, -0.25, -0.25, 1.0, -0.5, 0.75, 0.0, 0.25, 0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 0.25, 1.0, -0.75, -0.75, 0.0, -0.5, 0.75, 0.0, 0.0, 1.0, 0.5, 0.75, 0.75, -0.5, 1.0, 0.5, 0.75, 0.25, 1.0, -0.5, 0.5, -0.25, 1.0, 1.0, 0.0, 0.25, 0.5, 1.0, -0.75, -0.75, -0.25, -0.25, -0.75, -0.5, 1.0, 1.0, 0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 0.0, -0.75, -0.25, 0.0, 0.0, 0.75, -0.25, -0.5, 0.5, -1.0, -0.75, 1.0, 0.0, 1.0, -1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.75, -1.0, 0.25, -0.25, -0.5, 0.25, -0.25, 1.0, -0.75, 0.75, -0.5, 0.25, 0.75, 1.0, 0.0, -0.5, 1.0, -1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    device40.destroy();
    
    
    
    
    
    const array9 = new Float32Array([-0.25, 0.5, -0.75, -0.5, -0.25, 0.5, 0.5, -0.5, -1.0, -1.0, 1.0, 0.75, 0.5, -0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -1.0, -0.25, -0.25, 0.25, -0.75, 1.0, -0.5, -0.5, -0.25, -0.5, -0.25, 0.0, -0.75, 0.25, -0.75, 0.0, 1.0, 0.75, -1.0, -1.0, 0.5, -0.75, 0.5, 1.0, 1.0, -0.5, -0.5, 0.0, 1.0, 0.25, -0.25, -1.0, 0.0, -0.25, 0.0, 0.25, -0.25, -0.25, 1.0, -0.75, 0.75, -0.75, -1.0, 1.0, -0.75, 0.75, 0.25, -0.5, -1.0, -0.25, -0.5, 1.0, -0.75, 0.25, 0.75, -1.0, -0.5, 0.75, -0.25, -0.75, -1.0, -1.0, -0.75, 0.75, 0.0, 0.5, -0.5, 0.75, -0.75, 0.0, -0.5, -0.5, 0.75, 0.5, 0.0, 0.25, 0.0, 0.5, 0.75, 0.5, 0.25, ]);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array10 = new Float32Array([1.0, -0.25, 0.75, 1.0, -1.0, 0.5, -0.5, 0.25, 0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 0.25, 0.0, 0.5, -0.5, 0.5, 1.0, -0.25, 0.0, 0.25, -1.0, 1.0, 0.5, -0.5, -0.25, 0.5, 0.75, 0.0, -0.25, -0.5, -0.75, 0.25, 0.5, -0.75, 0.25, 1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.75, 0.0, 0.25, -0.5, -0.75, -0.75, -1.0, 0.25, 0.75, 0.0, 0.5, -0.75, 0.5, -0.25, -0.75, -0.25, 0.0, -0.75, 0.75, 1.0, 0.5, -0.75, 0.0, -1.0, 0.5, -0.75, -0.25, 0.0, -0.5, 1.0, 1.0, -0.25, 0.25, 0.5, -1.0, -0.25, 0.0, 0.0, 1.0, -0.5, 1.0, 0.75, -1.0, -0.75, 0.0, -0.25, -0.25, 0.25, -1.0, -0.75, 0.75, 1.0, 0.0, 0.25, 0.5, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8uint",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    
    texture300.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    
    texture301.destroy();
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device30.pushErrorScope("validation");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder601.pushDebugGroup("mygroupmarker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder500.insertDebugMarker("mymarker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder500.insertDebugMarker("mymarker");
    device30.pushErrorScope("internal");
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    command_encoder500.insertDebugMarker("mymarker");
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
    
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    query300.destroy()
    texture600.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    device50.pushErrorScope("internal");
    
    texture500.destroy();
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device60.pushErrorScope("internal");
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
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.popDebugGroup()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    buffer300.destroy()
    device60.pushErrorScope("validation");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    query300.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    query500.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
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
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    texture503.destroy();
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder503.insertDebugMarker("mymarker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    render_bundle_encoder500.insertDebugMarker("marker");
    query301.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query301.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer602, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer602, 0);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    texture501.destroy();
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    buffer301.destroy()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder5010.popDebugGroup()
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    device30.pushErrorScope("out-of-memory");
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    query301.destroy()
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query302.destroy()
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    device50.pushErrorScope("out-of-memory");
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device60.queue.writeTexture({ texture: texture601 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer602, 0, array6, 0, array6.length);
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    texture504.destroy();
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder303.pushDebugGroup("mygroupmarker")
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
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5040,
            },
        ],
        occlusionQuerySet: query500
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.executeBundles([])
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query301
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    compute_pass_encoder5000.popDebugGroup()
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_pass_encoder3030.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_pass_encoder5040.insertDebugMarker("marker");
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    render_pass_encoder5040.insertDebugMarker("marker");
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
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
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6010.setPipeline(compute_pipeline602);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    texture601.destroy();
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    query700.destroy()
    
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    render_pass_encoder5020.insertDebugMarker("marker");
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    texture505.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6021,
            },
        ],
        occlusionQuerySet: query600
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    texture502.destroy();
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    query700.destroy()
    
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: query600
    });
    
    render_pass_encoder6030.setStencilReference(1);
    render_pass_encoder6030.setStencilReference(1);
    buffer601.destroy()
    
    buffer603.destroy()
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5040.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    query600.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    render_pass_encoder6030.setStencilReference(1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5020.insertDebugMarker("marker");
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer602, 0, array7, 0, array7.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    
    texture603.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder6020.insertDebugMarker("marker");
    buffer304.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    render_pass_encoder6030.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
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
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view6022 = texture602.createView({ label: "texture_view6022" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder6010.dispatchWorkgroups(100);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer309, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3010, 0);
    compute_pass_encoder3020.end();
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    compute_pass_encoder6000.end();
    command_encoder302.popDebugGroup()
    compute_pass_encoder3010.end();
    compute_pass_encoder3000.end();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.popDebugGroup()
    compute_pass_encoder6010.end();
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer703, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer703, 0);
    command_encoder601.popDebugGroup()
    compute_pass_encoder7000.end();
}