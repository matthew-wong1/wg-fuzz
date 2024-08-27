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
    const array0 = new Float32Array([1.0, 0.75, 1.0, -0.75, 0.5, -1.0, 0.5, -0.75, -0.75, 0.5, -1.0, -0.75, 0.0, 0.25, 0.25, 0.0, -0.25, 1.0, 0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.5, -0.25, 0.75, 0.25, -0.5, -0.5, -1.0, 0.0, 1.0, -0.5, -0.5, 0.0, 0.75, 1.0, -0.25, 0.75, 0.0, -1.0, -1.0, -0.75, -0.5, 0.75, -1.0, 0.25, -0.75, 0.25, 0.5, 0.25, 1.0, 0.25, -1.0, 0.75, -0.5, 1.0, -0.5, 0.0, 1.0, -0.25, 0.5, -1.0, -0.25, -0.25, 1.0, 0.0, -0.25, -0.75, -0.5, 0.5, -0.25, -0.5, 1.0, 0.25, 0.5, 0.75, -1.0, -0.5, 0.0, 0.75, 0.25, -0.75, -0.75, -0.5, 0.0, -1.0, 0.0, 1.0, 1.0, -0.25, -0.75, -0.75, 1.0, 1.0, 0.25, 1.0, -0.5, 0.0, ]);
    const array1 = new Float32Array([-0.25, -0.5, 0.5, 1.0, -0.25, -1.0, -0.25, 1.0, -1.0, -0.25, 0.0, -0.25, 0.0, -1.0, 0.0, 0.75, -0.75, 0.25, 0.25, -1.0, -1.0, 0.75, -0.25, -0.5, -0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 0.0, -0.25, 0.5, 0.25, 0.0, 1.0, 0.0, -1.0, 1.0, 1.0, 1.0, 0.0, 0.25, -0.25, -1.0, -0.25, 0.0, 0.5, 0.0, -1.0, 0.5, 0.75, 0.5, 0.5, 1.0, 1.0, 0.0, -0.25, -0.25, 1.0, -0.5, 0.25, 0.5, 0.0, 0.25, 1.0, 0.5, -1.0, 0.25, 0.0, 0.5, -0.5, -1.0, 1.0, 0.75, -1.0, -0.5, -0.25, -1.0, 0.75, -0.25, -1.0, -0.5, 0.25, 0.0, -0.5, 0.0, 0.75, -0.5, 0.0, -0.75, -0.5, -0.5, -0.75, 0.5, 1.0, -1.0, 0.25, -1.0, -0.75, ]);
    
    
    const array2 = new Float32Array([-0.75, 0.0, -0.25, 0.5, -1.0, 0.0, 0.25, 0.75, 0.25, 0.75, 0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 0.0, 0.75, 0.75, -0.5, -0.25, -1.0, 0.0, 0.25, 0.25, 0.5, 0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 1.0, 0.25, -0.5, -0.75, -0.25, 0.5, -1.0, 1.0, 1.0, 0.75, -0.75, 0.25, -0.75, 0.5, -0.75, 0.0, -0.5, -1.0, 1.0, 0.25, -0.75, -0.75, 1.0, -0.25, -0.5, 0.75, -0.75, -1.0, -0.5, 0.0, 0.75, -0.75, 1.0, -0.5, 0.5, 0.5, 0.75, -0.75, -0.25, -0.75, -0.75, 0.25, 1.0, 0.5, -0.5, -1.0, 0.5, -0.25, -0.25, -1.0, 0.5, 0.0, -0.5, -1.0, -0.25, -0.75, 0.25, -0.25, -0.25, -0.25, -0.25, 0.25, -0.75, 0.25, -0.25, 0.75, 0.25, 0.75, ]);
    const array3 = new Float32Array([0.75, 0.5, -1.0, 0.0, 0.75, -0.5, 0.0, 0.75, -0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 0.0, 0.25, 1.0, -0.75, -1.0, 0.75, -0.25, -0.75, 0.0, 1.0, -0.25, -0.25, -0.5, 0.5, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, -0.25, -1.0, -1.0, 0.25, 0.25, -0.75, -0.75, 0.25, 0.5, 0.0, -0.5, 0.75, -1.0, -0.5, 0.75, -0.75, -0.25, -0.75, 1.0, -1.0, 1.0, -0.5, -0.5, -1.0, 0.5, 0.0, 0.25, -1.0, -1.0, 0.75, -0.25, 0.25, -0.75, 1.0, 0.75, 1.0, 0.75, 0.0, -0.5, -0.25, -0.75, -0.5, 0.75, 1.0, 0.0, 0.5, -0.5, -0.5, -0.75, -1.0, 0.0, 0.5, -1.0, -0.75, -0.75, -0.75, 0.5, -0.75, 0.25, -0.5, 1.0, -1.0, -0.5, 0.25, 0.0, -1.0, ]);
    const array4 = new Float32Array([-0.5, 0.5, 0.0, -1.0, 0.5, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, -0.25, -0.5, -0.75, 1.0, -0.75, 0.5, -1.0, 0.5, -0.5, 0.0, 0.5, 0.5, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, -0.5, 0.5, 0.25, 0.25, -0.5, -0.25, 0.75, -0.5, -0.25, 0.25, 1.0, 1.0, -0.75, 0.25, -0.75, -0.75, 0.25, -0.75, -1.0, 1.0, 0.75, 1.0, -1.0, 0.75, -1.0, 0.5, 0.25, 0.5, 1.0, 1.0, 0.75, 0.0, -1.0, -1.0, 1.0, 1.0, 0.5, 0.5, -0.75, 0.0, -1.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.5, 0.0, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, -0.75, -0.75, -1.0, -1.0, 0.5, 1.0, -0.5, -0.5, 0.75, 1.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array5 = new Float32Array([0.75, -0.5, 0.0, -1.0, 0.0, -0.5, -0.75, 0.25, 0.5, -0.5, 0.0, 0.25, -0.75, -0.25, -0.75, 0.5, -0.25, 1.0, -0.5, 0.75, -0.5, 0.25, -1.0, 0.25, -0.5, -1.0, 0.75, -1.0, -0.25, 0.0, 1.0, 0.5, 0.75, -0.5, 0.25, 0.5, -0.5, 0.75, -0.75, -0.5, -0.25, 1.0, 0.5, -0.75, 0.75, 1.0, 0.0, 0.75, -1.0, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, -1.0, 0.25, 1.0, 0.75, -1.0, -0.25, 0.75, 1.0, -0.5, -1.0, 0.75, 0.25, 0.25, -0.75, -1.0, 0.5, -0.75, 0.75, 0.0, -0.75, 0.0, -0.75, -0.75, 0.25, 1.0, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, -0.75, 0.25, 0.25, -0.25, 0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.5, -0.25, 1.0, -1.0, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    device00.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array6 = new Float32Array([0.25, 0.75, -0.5, 0.75, 1.0, 1.0, 0.25, -0.25, 0.0, -0.25, -0.75, -1.0, 0.75, 0.75, 0.75, -0.5, 1.0, 0.0, 1.0, -0.25, 0.25, 0.5, -1.0, -0.5, -0.5, 0.0, 0.75, 0.75, 0.25, -0.25, -0.5, 0.25, -0.25, -0.5, -0.75, -0.25, 0.5, 0.75, -0.5, 0.25, 0.75, 0.25, 0.0, 0.0, -0.75, -0.75, -0.5, -0.5, -0.5, -0.25, -0.75, 0.0, -0.75, 0.5, 0.5, 0.75, -0.5, 0.75, -1.0, -0.75, -0.25, 1.0, 0.25, 0.0, 1.0, 1.0, 1.0, 0.0, -1.0, 1.0, 0.75, 0.0, 0.5, -0.75, 0.75, 0.75, 0.25, 0.0, 1.0, 0.5, 1.0, -0.25, 0.75, -0.5, 0.0, 0.25, -0.75, 0.75, 0.5, -0.75, 0.75, 0.5, 0.5, 0.75, 0.0, 0.75, -1.0, -1.0, -0.75, 0.0, ]);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array7 = new Float32Array([-1.0, 0.5, 0.25, 0.0, 0.75, 0.25, -0.75, -1.0, 0.25, -0.75, -0.75, 0.0, -0.5, 0.75, 0.5, -1.0, 1.0, 1.0, -0.75, 0.5, 1.0, 1.0, 0.25, 0.75, 0.0, 0.5, 0.5, -1.0, 0.0, 0.75, -0.5, -0.25, 0.25, -0.75, -0.75, 1.0, 0.0, -0.25, -1.0, -0.25, -1.0, -0.75, 0.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.75, 0.5, -0.5, -1.0, 0.0, -0.25, 0.5, -1.0, 0.75, 0.75, -1.0, -1.0, 0.0, 0.0, 0.25, 1.0, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, -0.5, -0.25, 0.75, 0.25, 1.0, -0.5, 1.0, 1.0, 0.75, 0.5, -0.25, -0.5, -0.5, 0.0, -1.0, 0.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.0, 0.0, -0.25, 0.5, -0.75, 0.75, -0.5, 0.0, -0.5, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.5, 1.0, 1.0, -0.25, 0.25, 0.5, -1.0, -1.0, 0.0, -0.5, -0.75, -0.75, 0.5, 0.75, 0.5, -0.25, 1.0, 0.0, 1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 0.25, 0.25, -0.25, -0.5, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, -0.75, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, -0.25, 0.75, -0.5, -0.75, 1.0, -0.25, 0.5, 0.75, 0.5, 0.25, 0.0, -0.25, -1.0, 0.5, 0.75, 0.0, 0.25, 0.75, 0.5, 1.0, 0.25, -1.0, 0.25, 0.75, -0.75, 0.25, 0.75, 0.75, -0.25, 0.5, 0.75, 0.5, 1.0, 1.0, 0.25, 0.0, -0.5, 0.5, 0.5, 0.5, -1.0, 1.0, -0.75, -0.75, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array9 = new Float32Array([1.0, 0.0, 0.25, -1.0, 0.5, -1.0, -0.25, -0.5, 1.0, -0.75, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, -0.25, -1.0, -0.25, -0.5, 0.5, -0.75, 0.5, 0.0, 0.0, 1.0, 0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 0.0, 0.75, 1.0, -0.25, 0.25, -1.0, 0.5, 0.0, 0.75, -1.0, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, -1.0, -0.5, 0.0, 0.5, -0.5, 0.75, -0.75, -1.0, 1.0, -0.25, 0.0, -1.0, 1.0, 0.25, 0.0, -0.25, 0.5, -0.75, 0.75, -0.25, 0.25, 0.25, 0.0, 0.0, 0.5, -0.25, 0.5, 1.0, 0.0, 0.75, 0.25, 1.0, 0.75, 0.75, -0.25, -0.75, 0.5, -1.0, 0.5, 1.0, 0.0, 0.0, -0.75, 0.25, 0.5, 0.25, 0.0, 0.0, -1.0, 0.25, 0.5, -1.0, ]);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const array10 = new Float32Array([-0.5, -1.0, 0.5, 0.25, -0.5, 0.0, 0.0, -0.75, -0.75, -0.5, -0.25, -0.5, 0.5, 0.0, -0.5, 0.75, 0.0, -0.75, -1.0, 0.5, 0.25, 1.0, 0.0, -1.0, -0.5, 0.0, -1.0, 0.5, 1.0, 0.0, -0.75, -1.0, -0.25, -0.5, 0.5, -0.25, 0.75, -0.25, 0.5, 0.0, -0.75, 0.75, 0.5, -0.75, -1.0, 0.5, -0.25, -0.5, -0.5, 1.0, 1.0, -0.75, 0.25, 1.0, 0.0, 0.5, 0.75, 0.75, -0.25, -0.25, -0.75, 1.0, 0.5, -1.0, -1.0, 0.75, 0.75, -0.25, -0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -0.75, 0.75, -0.5, -0.75, -0.5, 0.75, -0.25, -1.0, -1.0, 0.0, 0.75, 0.25, 1.0, -0.75, 0.5, -1.0, -0.25, 0.5, -0.5, -0.5, -1.0, 0.25, 0.5, 1.0, -0.5, 0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    device40.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const array11 = new Float32Array([-0.25, -0.5, -0.5, -1.0, 0.75, 0.0, -1.0, 1.0, -1.0, -0.25, -0.25, 0.0, 1.0, 0.0, 0.5, -0.5, -1.0, -0.5, -0.5, 0.5, 0.75, -0.5, 0.0, -1.0, 1.0, 1.0, 0.0, 0.5, -0.75, 0.25, 0.0, 1.0, -0.25, 1.0, -0.25, 0.75, 0.75, 1.0, 0.25, 0.0, 1.0, 0.25, 0.0, -1.0, 0.5, -0.75, 0.0, -0.75, 0.5, -0.25, 0.25, 0.5, -0.75, 0.0, 0.0, -0.25, 0.25, -0.5, 0.0, 0.5, -0.5, -0.5, -0.5, 0.5, 0.75, -0.5, -1.0, -1.0, -0.75, -0.75, 0.0, -0.5, -0.25, -0.5, 0.5, -1.0, 0.0, -1.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.5, -0.75, 0.75, 0.25, -0.75, -0.25, 0.75, 0.25, 0.25, 1.0, -0.25, 1.0, -0.5, 0.25, 0.75, 0.75, -0.5, ]);
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.submit([]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    
    
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array12 = new Float32Array([1.0, -0.75, -0.75, 1.0, 0.0, 0.25, 0.25, -1.0, 0.25, -0.75, 0.75, -1.0, 0.75, 0.0, 0.0, -0.5, -1.0, -1.0, -0.75, -0.75, 0.75, 0.25, -1.0, -0.75, 0.5, -0.5, -1.0, 0.75, 0.25, 0.75, -1.0, 0.25, -0.75, -0.5, -0.75, 0.5, 0.0, -0.75, -0.25, -1.0, -0.5, 1.0, 0.75, -1.0, -0.5, 0.5, -0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -0.25, 1.0, 0.5, 1.0, -0.25, -0.5, 1.0, -0.75, 0.25, 0.75, 0.0, -0.5, 0.5, -0.25, -1.0, -0.75, -0.75, 0.75, -1.0, 0.25, -1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -1.0, 0.75, -0.25, -0.75, 0.5, 0.0, -0.5, 0.0, 0.5, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, 1.0, -0.5, 0.75, -0.5, -1.0, 0.75, ]);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device60.pushErrorScope("validation");
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device60.queue.writeTexture({ texture: texture600 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.submit([]);
    texture600.destroy();
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder601.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    texture500.destroy();
    
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    device60.queue.writeTexture({ texture: texture601 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture601.destroy();
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
    command_encoder601.insertDebugMarker("mymarker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder600.insertDebugMarker("mymarker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.popDebugGroup()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture602.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const command_buffer501 = command_encoder501.finish();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    compute_pass_encoder5000.popDebugGroup()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer602 = command_encoder602.finish();
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
    command_encoder500.copyTextureToTexture(
        {
            texture: texture501
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    device40.pushErrorScope("validation");
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.submit([command_buffer501, ]);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    texture401.destroy();
    query500.destroy()
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
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer600.destroy()
    const array13 = new Float32Array([-0.75, -0.25, 1.0, 0.25, -0.75, -0.5, 0.75, -0.5, -0.25, -0.25, 0.0, -1.0, -0.5, 0.25, -0.5, -0.5, 0.75, -0.5, 1.0, -0.25, 0.0, -0.5, 0.25, 0.25, 0.5, 0.0, -0.25, -0.25, 0.0, 1.0, -0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 1.0, 0.0, 0.75, 0.5, -1.0, 0.5, -0.75, 0.25, 1.0, 0.25, 0.0, 0.25, -0.75, -0.5, -0.5, -1.0, 0.0, -0.75, -0.5, 0.5, 0.75, 0.75, 0.5, 0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 1.0, 0.0, -0.25, 0.5, 0.75, 0.25, 0.5, 0.25, 0.5, -0.5, 0.0, -0.75, 0.5, 0.75, 0.75, 0.0, 0.75, 0.0, -1.0, -0.75, -0.5, 1.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.25, 0.75, 0.0, 0.25, -0.25, -0.5, -0.5, 0.5, ]);
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const compute_pass_encoder6011 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6011" });
    
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([-0.25, 0.25, 0.5, -0.5, 0.75, 0.75, -0.25, -0.5, 0.75, 0.25, 0.0, -1.0, -0.5, 0.0, 0.0, 1.0, 0.25, -1.0, 0.25, 0.0, 0.0, 0.5, -0.75, -0.25, 1.0, -0.25, -0.25, -1.0, -0.5, -0.75, 0.25, -0.25, 0.25, 0.5, 0.75, -0.25, 0.0, -1.0, 1.0, 0.75, 0.0, -1.0, 0.25, -0.5, -0.25, 0.0, -1.0, -1.0, -0.5, -0.25, -0.25, 0.75, -0.25, 0.5, 0.75, 0.75, -0.5, 1.0, 0.25, -0.25, 1.0, -0.75, -0.75, 0.0, 0.0, -0.25, 0.25, 0.5, -0.75, -0.25, 0.75, 0.0, -1.0, -0.5, 0.0, 0.25, 0.5, -0.75, -0.75, 1.0, -0.25, -0.75, -0.75, -0.75, -0.5, -0.75, 0.25, 0.25, 0.75, 0.5, -0.75, 0.25, 1.0, 0.75, 0.0, -0.25, -0.25, 0.0, 0.5, -1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder6000.popDebugGroup()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder502.popDebugGroup();
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    device60.pushErrorScope("out-of-memory");
    
    query500.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeTexture({ texture: texture501 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    texture200.destroy();
    
    device60.queue.submit([command_buffer602, ]);
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    device50.queue.writeTexture({ texture: texture500 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    query500.destroy()
    device60.queue.writeBuffer(buffer602, 0, array11, 0, array11.length);
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6000.popDebugGroup()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    render_bundle_encoder501.popDebugGroup();
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_buffer603 = command_encoder603.finish();
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    texture602.destroy();
    
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture503.destroy();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture502 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    compute_pass_encoder6011.insertDebugMarker("marker")
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder502.setPipeline(render_pipeline500);
    
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.pushErrorScope("validation");
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    compute_pass_encoder6011.pushDebugGroup("group_marker")
    device50.queue.writeTexture({ texture: texture502 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.popDebugGroup();
    query500.destroy()
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    query502.destroy()
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
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
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group600);
    
    compute_pass_encoder6011.setPipeline(compute_pipeline601);
    buffer601.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    query500.destroy()
    
    
    buffer605.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer701, 0, array11, 0, array11.length);
    device50.queue.writeTexture({ texture: texture502 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer601.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder5000.pushDebugGroup("group_marker");
    command_encoder604.copyTextureToBuffer(
        {
            texture: texture601
        },
        {
            buffer: buffer603
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query502.destroy()
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    device70.queue.writeBuffer(buffer702, 0, array0, 0, array0.length);
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6000.insertDebugMarker("marker")
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
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
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    render_pass_encoder5000.setPipeline(render_pipeline503);
    
    
    device70.queue.writeBuffer(buffer701, 0, array9, 0, array9.length);
    
    device60.queue.writeBuffer(buffer604, 0, array9, 0, array9.length);
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer607, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer607, 0);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer607, 0, array4, 0, array4.length);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer607, 0, array6, 0, array6.length);
    
    device60.queue.writeBuffer(buffer606, 0, array4, 0, array4.length);
    const texture_view5013 = texture501.createView({ label: "texture_view5013" });
    buffer700.destroy()
    compute_pass_encoder6010.insertDebugMarker("marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
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
    device60.queue.writeBuffer(buffer603, 0, array11, 0, array11.length);
    device70.queue.writeBuffer(buffer702, 0, array6, 0, array6.length);
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device50.pushErrorScope("validation");
    
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer607, 0, array12, 0, array12.length);
    command_encoder001.insertDebugMarker("mymarker");
    const command_buffer700 = command_encoder700.finish();
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device60.queue.writeBuffer(buffer607, 0, array8, 0, array8.length);
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    
    compute_pass_encoder6011.popDebugGroup()
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
    device60.queue.writeBuffer(buffer607, 0, array4, 0, array4.length);
    command_encoder601.popDebugGroup()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_pass_encoder5020.setPipeline(render_pipeline500);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device60.queue.writeBuffer(buffer606, 0, array9, 0, array9.length);
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder604.clearBuffer(buffer604);
    buffer500.destroy()
    device60.queue.writeBuffer(buffer607, 0, array13, 0, array13.length);
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    command_encoder604.pushDebugGroup("mygroupmarker")
    render_pass_encoder5001.setStencilReference(1);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5001.setPipeline(render_pipeline500);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group501);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6011.setBindGroup(0, bind_group601);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group502);
    device60.queue.submit([command_buffer602, ]);
    const command_buffer604 = command_encoder604.finish();
    render_pass_encoder5020.setVertexBuffer(0, buffer504);
    compute_pass_encoder6011.dispatchWorkgroups(100);
    render_pass_encoder5020.setIndexBuffer(buffer500, "uint16");
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group602);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group503);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer505, 0);
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group504);
    render_pass_encoder5000.setVertexBuffer(0, buffer506);
    render_pass_encoder5000.popDebugGroup();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5012, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5012, 0);
    render_pass_encoder5000.drawIndirect(buffer5012, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5020.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5001.setVertexBuffer(0, buffer505);
    device80.queue.submit([]);
    compute_pass_encoder6010.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5001.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder5001.draw(3);
    render_pass_encoder5001.end();
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder6011.end();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder5000.end();
    render_pass_encoder5001.popDebugGroup();
    compute_pass_encoder6000.end();
    compute_pass_encoder6011.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5013, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5013, 0);
    compute_pass_encoder5000.end();
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group603);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    command_encoder500.popDebugGroup()
    compute_pass_encoder5000.end();
    device70.queue.submit([]);
    render_pass_encoder5001.setIndexBuffer(buffer500, "uint16");
    device60.queue.submit([command_buffer601, command_buffer604, ]);
    compute_pass_encoder6000.end();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5000.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5001.end();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6015, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6015, 0);
    command_encoder600.popDebugGroup()
    render_pass_encoder5000.drawIndirect(buffer5013, 0);
    render_pass_encoder5001.drawIndirect(buffer501, 0);
    compute_pass_encoder6000.end();
    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6017,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group604);
    render_pass_encoder5001.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder5000.drawIndirect(buffer5012, 0);
    render_pass_encoder5000.drawIndirect(buffer508, 0);
    device80.queue.submit([]);
    const command_buffer500 = command_encoder500.finish();
    const command_buffer600 = command_encoder600.finish();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5020.drawIndexedIndirect(buffer503, 0);
    render_pass_encoder5020.end();
    render_pass_encoder5020.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer5012, 0);
    const uint32_6011 = new Uint32Array(3);

    uint32_6011[0] = 100;
    uint32_6011[1] = 1;
    uint32_6011[2] = 1;

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6018, 0, uint32_6011, 0, uint32_6011.length);

    compute_pass_encoder6011.dispatchWorkgroupsIndirect(buffer6018, 0);
    render_pass_encoder5001.draw(3);
    render_pass_encoder5020.drawIndirect(buffer5012, 0);
    device60.queue.submit([command_buffer604, ]);
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group505);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer601, ]);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6019, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6019, 0);
    render_pass_encoder5000.setIndexBuffer(buffer505, "uint16");
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    device60.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder5020.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder5001.drawIndirect(buffer5013, 0);
    device80.queue.submit([]);
    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6021,
                },
            },
        ],
    });

    compute_pass_encoder6011.setBindGroup(0, bind_group605);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.end();
    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6023,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group606);
    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6025,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group607);
    render_pass_encoder5001.drawIndexedIndirect(buffer5015, 0);
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group506);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5020.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder6011.end();
    render_pass_encoder5000.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5000.popDebugGroup();
    compute_pass_encoder6000.end();
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6027 = device60.createBuffer({
        label: "buffer6027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6027,
                },
            },
        ],
    });

    compute_pass_encoder6011.setBindGroup(0, bind_group608);
    render_pass_encoder5020.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer508, 0);
    compute_pass_encoder6010.end();
    render_pass_encoder5000.popDebugGroup();
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6028 = device60.createBuffer({
        label: "buffer6028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6028, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6028, 0);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([command_buffer604, ]);
    const buffer6029 = device60.createBuffer({
        label: "buffer6029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6030 = device60.createBuffer({
        label: "buffer6030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6030,
                },
            },
        ],
    });

    compute_pass_encoder6011.setBindGroup(0, bind_group609);
    render_pass_encoder5020.drawIndexedIndirect(buffer5013, 0);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder5001.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5020.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5001.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder5000.end();
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6031 = device60.createBuffer({
        label: "buffer6031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6031, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6031, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5020.drawIndexed(3);
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder6000.end();
    const buffer6032 = device60.createBuffer({
        label: "buffer6032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6033 = device60.createBuffer({
        label: "buffer6033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6033,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6010);
    const buffer6034 = device60.createBuffer({
        label: "buffer6034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6035 = device60.createBuffer({
        label: "buffer6035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6011 = device60.createBindGroup({
        label: "bind_group6011",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6035,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6011);
    compute_pass_encoder6011.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer600, ]);
    device80.queue.submit([]);
    const uint32_6011 = new Uint32Array(3);

    uint32_6011[0] = 100;
    uint32_6011[1] = 1;
    uint32_6011[2] = 1;

    const buffer6036 = device60.createBuffer({
        label: "buffer6036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6036, 0, uint32_6011, 0, uint32_6011.length);

    compute_pass_encoder6011.dispatchWorkgroupsIndirect(buffer6036, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder5001.drawIndirect(buffer5012, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5020.drawIndexedIndirect(buffer500, 0);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder5020.drawIndexed(3);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder5000.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder6010.popDebugGroup()
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5018, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5018, 0);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device50.queue.submit([command_buffer502, ]);
    device60.queue.submit([]);
    render_pass_encoder5001.end();
    const buffer6037 = device60.createBuffer({
        label: "buffer6037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6038 = device60.createBuffer({
        label: "buffer6038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6012 = device60.createBindGroup({
        label: "bind_group6012",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6038,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6012);
    render_pass_encoder5020.draw(3);
    render_pass_encoder5001.drawIndexedIndirect(buffer5018, 0);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder6011.end();
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder5000.popDebugGroup();
    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5020,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group507);
    device50.queue.submit([command_buffer501, ]);
    device60.queue.submit([command_buffer603, ]);
    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5022,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group508);
    const buffer6039 = device60.createBuffer({
        label: "buffer6039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6040 = device60.createBuffer({
        label: "buffer6040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6013 = device60.createBindGroup({
        label: "bind_group6013",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6040,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6013);
    render_pass_encoder5020.draw(3);
    compute_pass_encoder6000.end();
    render_pass_encoder5000.end();
    render_pass_encoder5001.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5001.drawIndexedIndirect(buffer5012, 0);
    const buffer6041 = device60.createBuffer({
        label: "buffer6041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6042 = device60.createBuffer({
        label: "buffer6042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6014 = device60.createBindGroup({
        label: "bind_group6014",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6042,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6014);
}