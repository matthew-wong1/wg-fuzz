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
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    
    
    
    
    
    const array0 = new Float32Array([-0.75, -1.0, -0.25, -0.25, 0.75, 0.5, 1.0, -0.25, 0.25, -1.0, 0.0, 0.0, -0.5, -0.25, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, 0.75, 0.0, 0.25, -0.75, 1.0, 0.75, 0.0, -1.0, -0.25, -1.0, -0.25, -0.75, -1.0, -0.5, -1.0, 1.0, -0.25, 0.75, 0.5, 0.0, 0.5, 0.0, 0.5, -1.0, 0.25, -0.75, -1.0, -1.0, 0.5, -0.5, 0.75, 0.25, -0.5, -1.0, 0.75, -0.5, 1.0, 0.25, -0.5, 0.75, 0.75, 0.0, 0.75, -0.25, -0.25, 0.25, -0.25, 1.0, 0.75, 0.0, -1.0, 1.0, 0.75, -1.0, 0.0, -0.5, -0.5, -1.0, -0.25, 0.75, -0.25, 0.5, 0.5, -0.5, -1.0, 1.0, -1.0, -0.5, 1.0, -1.0, -0.75, -0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 0.75, -0.75, -0.25, ]);
    
    const array1 = new Float32Array([-1.0, -0.5, 0.5, -0.25, -0.75, 0.5, 0.75, 1.0, 1.0, 0.5, 1.0, -1.0, -0.25, 0.5, 0.25, 0.75, -0.25, -0.25, 0.75, -1.0, 0.75, 0.5, 0.0, -0.25, 0.0, 0.75, -0.75, 0.25, 0.5, -0.5, 0.5, -1.0, 0.0, 0.75, -0.25, -0.5, 0.5, -0.5, 0.5, 1.0, 0.0, -0.5, -1.0, 1.0, -0.5, 0.25, 0.75, -0.5, -1.0, 0.0, -0.5, -1.0, 0.25, 0.0, -1.0, 0.75, 0.0, 0.5, 0.0, 0.0, -0.25, 0.75, -1.0, 0.25, 1.0, 0.75, 0.0, 0.25, 1.0, -0.25, 0.0, -0.75, 0.75, -1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, 0.5, 0.5, 1.0, 0.75, 0.0, 1.0, 0.25, 1.0, -0.75, 0.75, 1.0, 0.25, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    
    const array2 = new Float32Array([0.25, 0.5, -1.0, -0.25, 0.0, 0.75, 0.75, 0.75, 0.75, 0.0, 0.0, 0.75, 0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 0.75, -0.75, -0.75, 0.5, -1.0, -0.25, 0.5, -1.0, -0.75, 0.0, 1.0, -0.5, 1.0, 0.0, 0.75, -0.75, -0.5, 0.25, -0.25, 1.0, 0.0, 0.5, -0.75, 0.75, 0.0, 0.5, -0.25, -0.25, -0.75, -0.5, 0.75, 0.5, -0.75, -0.25, 0.75, 0.5, 0.75, -0.75, -1.0, 0.75, -0.75, -1.0, -0.25, 0.25, 0.25, 0.25, 0.25, -0.25, -0.75, 1.0, -0.25, 0.75, -0.5, 1.0, 0.5, -1.0, 0.75, 0.5, -1.0, -1.0, 1.0, -1.0, 0.75, -0.75, -1.0, 1.0, 0.5, -0.25, -0.75, -0.75, 0.25, 0.5, 1.0, -0.75, 0.5, 0.5, 0.5, 0.25, -0.25, 0.25, 0.75, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.0, 0.5, -1.0, 0.5, 0.5, 0.75, 1.0, -1.0, 0.75, -0.25, 0.5, 0.0, -1.0, 0.0, 1.0, 0.5, -0.25, -0.25, 0.5, 0.25, -0.25, 0.25, 0.75, 0.75, 0.5, -0.5, 1.0, -1.0, 0.75, -1.0, 0.5, -0.25, -0.5, -0.75, -0.5, 1.0, 0.0, 0.75, -1.0, -0.25, 1.0, -1.0, 0.75, -0.75, 0.75, 0.75, 0.75, -0.25, -0.25, -1.0, -0.75, -1.0, 0.75, -1.0, 0.75, -1.0, -0.5, -0.75, -1.0, 0.0, 0.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.5, -0.75, 1.0, -0.75, 1.0, -0.5, 0.25, -0.5, 0.0, -1.0, -0.25, -0.5, -0.5, 0.75, -0.75, 1.0, -0.5, -0.5, 0.25, 1.0, 0.5, 1.0, -0.5, 0.25, -0.75, -0.5, 0.0, -1.0, 0.5, 0.25, 0.25, 0.75, 0.25, -0.25, ]);
    const array4 = new Float32Array([0.25, -0.75, -1.0, 1.0, 0.75, 0.5, -1.0, -0.25, 0.5, 0.0, 0.5, 0.25, 0.5, 0.5, 0.0, 0.25, -0.25, 0.25, -0.5, -0.75, 0.5, -0.75, -0.5, -0.5, -1.0, 0.25, 0.0, 0.75, 0.25, -0.25, -1.0, -1.0, -0.25, 0.75, -0.5, 0.5, -1.0, -0.75, -1.0, -0.25, 0.0, 0.25, -1.0, 0.5, -1.0, -0.5, 0.0, 0.0, 0.75, -0.5, -1.0, 0.75, -0.75, -0.5, -0.5, 1.0, -1.0, -1.0, -1.0, 0.75, 1.0, 1.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.25, 0.5, -0.25, -1.0, -0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 0.0, 0.25, 1.0, 1.0, 0.0, 0.5, 1.0, -1.0, 0.75, 1.0, -1.0, 0.25, 0.5, -0.5, -1.0, 0.5, 0.75, 0.75, 0.25, -1.0, 1.0, -0.75, 1.0, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array5 = new Float32Array([0.5, -0.5, -0.75, -0.5, -0.75, -0.25, 1.0, 0.0, 0.25, -0.25, 0.25, 0.5, 0.0, -0.75, 0.5, -0.75, 0.75, -0.25, -1.0, 0.0, 0.25, 1.0, 0.25, -0.25, -0.5, -0.25, -1.0, 0.0, 0.75, 1.0, 0.0, 0.5, -0.25, 1.0, -0.5, 0.25, -1.0, 0.0, -0.5, -0.75, -0.25, -0.25, 0.5, 0.25, 0.5, -1.0, -0.25, 0.25, -0.5, 0.5, -1.0, -0.25, 0.75, 0.75, -1.0, -0.5, 0.0, 0.0, -1.0, 0.25, 0.0, 0.75, 0.25, 0.25, 0.25, 1.0, 0.0, 0.75, -0.25, 0.5, -0.25, -1.0, -0.75, -0.75, 0.0, -1.0, 1.0, -0.75, -1.0, 0.25, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.5, 0.75, -0.25, -0.5, 1.0, 0.5, -0.75, -0.25, -1.0, -0.75, 0.75, 0.5, 0.0, 0.75, ]);
    const array6 = new Float32Array([-0.25, -0.25, -0.25, -0.5, -0.75, 0.25, 0.5, 0.5, -0.75, -0.75, -0.25, -0.25, 0.75, 0.25, 0.5, 1.0, 0.0, 0.5, -0.5, 0.25, 0.0, 0.5, 1.0, 0.0, -0.25, -0.75, 0.75, 0.75, -0.75, -0.75, 0.25, -0.75, 0.75, -0.5, -0.5, 0.0, -1.0, -0.25, 0.25, -0.25, 0.0, -0.75, 0.25, 0.25, 1.0, 0.25, 0.75, -1.0, 0.5, 1.0, 1.0, 0.0, -0.75, -0.75, 0.75, -1.0, 0.0, 1.0, 0.75, -0.5, 0.0, -0.5, -0.75, -1.0, -0.75, -0.75, 0.5, -0.25, 1.0, 1.0, -0.75, -0.75, 0.5, 1.0, 0.5, 0.5, 0.75, -0.75, 0.5, 0.0, -0.75, -0.25, -1.0, -0.75, -0.75, 0.25, 0.25, 0.25, 1.0, 0.25, 0.25, 0.0, 1.0, -0.5, 0.25, -0.5, -0.5, 0.25, -1.0, 0.25, ]);
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array7 = new Float32Array([0.0, -0.5, -0.25, 0.75, -1.0, 0.5, 0.0, 0.25, 0.75, 1.0, 1.0, 0.5, 0.25, -1.0, 0.0, 1.0, -0.75, -1.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.25, 0.5, 0.75, -0.75, -0.25, -1.0, 0.75, -0.75, 0.0, -0.75, 0.0, 0.5, -0.25, -1.0, 1.0, 0.5, 0.0, 0.0, -0.75, 0.75, 0.5, 0.25, -0.75, 0.0, -1.0, -0.25, 0.5, -0.75, 1.0, -1.0, -0.75, -0.25, 1.0, -0.5, -1.0, -1.0, 0.0, 0.0, -0.75, -0.75, 0.5, 0.25, -0.25, -0.25, 0.5, 0.0, 1.0, 0.25, -0.75, 0.25, -1.0, -0.5, 0.0, 0.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.0, -0.25, -0.25, -0.75, -1.0, 0.75, -0.5, 0.25, 0.5, -0.25, -0.5, -0.5, -0.75, -0.25, -0.75, -0.75, 0.75, -0.75, ]);
    texture100.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const array8 = new Float32Array([-1.0, 1.0, -0.5, -0.25, -1.0, 0.25, -0.5, -1.0, -0.25, 0.75, 0.5, 0.75, 0.5, -0.5, -0.75, 0.75, 0.25, 0.75, -0.25, 0.25, 1.0, 1.0, 0.25, 1.0, 0.5, 1.0, -0.25, 0.75, -0.75, 0.5, 0.5, 0.0, -0.5, 0.25, 0.25, 0.25, -0.75, 0.5, 1.0, -0.75, -0.5, 1.0, 0.25, -0.75, -1.0, -0.25, 1.0, 1.0, 0.25, 0.0, 1.0, -0.25, -0.5, -0.25, -0.25, 0.5, -0.75, -0.5, -1.0, 0.0, -0.5, 0.25, 0.75, 0.0, 1.0, 1.0, 0.0, -0.75, 0.75, -0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.5, -0.25, -1.0, 0.0, 1.0, -0.75, -1.0, 0.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.25, -0.75, 0.5, -0.25, 1.0, -0.75, -0.5, -0.25, 0.75, 1.0, 0.0, 0.5, ]);
    
    
    
    
    
    
    
    
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
    
    
    
    
    const array9 = new Float32Array([-1.0, -1.0, 0.0, 0.5, 1.0, 0.5, 1.0, 0.75, 1.0, 0.0, -1.0, 0.25, 1.0, -0.5, 1.0, -0.75, 0.75, 1.0, 0.75, 1.0, 0.25, 1.0, 0.0, -1.0, -1.0, -1.0, 1.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.75, -0.25, 0.5, -0.25, -0.25, 0.0, 0.75, -0.25, -0.5, 1.0, 0.0, 0.75, 0.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.5, 0.25, 1.0, 0.25, 0.75, 0.75, -0.25, -0.5, -0.5, 0.0, -0.25, 0.75, -1.0, 0.5, -0.25, 0.0, 0.5, -0.75, 0.25, -0.5, 1.0, 0.75, 0.25, 0.5, -0.75, -1.0, -0.25, -0.5, 0.75, -0.25, 0.25, -0.25, 0.75, 0.25, -1.0, -1.0, 0.25, 0.0, 0.5, 0.5, 0.0, -0.25, 1.0, 0.0, 0.5, 1.0, -0.75, -0.75, 0.25, -0.5, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array10 = new Float32Array([-0.25, 1.0, 0.5, -0.25, -1.0, 0.5, -1.0, 0.0, 0.25, -0.75, -0.75, 0.25, -1.0, 1.0, 0.5, -0.25, -0.5, -0.75, -0.75, 0.75, 1.0, 0.5, 1.0, 0.5, -0.5, -0.25, 0.25, 0.0, 1.0, -0.75, -0.75, 0.75, 0.75, 0.75, -0.25, -0.75, -0.25, 1.0, 0.75, 0.75, -0.75, 0.0, -0.5, 0.0, -0.25, 0.25, -1.0, -0.25, 0.25, -1.0, -0.75, -0.25, 0.5, 1.0, -0.5, -0.25, 0.25, -1.0, 0.25, 0.75, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, -0.25, 0.25, -0.5, 0.5, -0.75, 0.25, 0.75, 0.75, 1.0, 0.25, 0.25, -0.25, 0.5, -1.0, 0.5, -0.75, 0.0, -0.25, -0.5, 1.0, -0.75, -0.25, -0.75, -0.75, 0.0, -0.5, 1.0, -0.25, 1.0, -0.75, -0.25, -0.5, 0.75, 1.0, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array11 = new Float32Array([0.0, -0.5, 0.25, 0.0, 0.75, -0.25, -0.25, 0.75, 0.5, 0.25, 0.0, -1.0, 0.75, 0.0, 1.0, 0.5, 1.0, 0.0, -0.25, 1.0, 0.0, 0.5, 0.75, -1.0, -0.75, 0.5, -1.0, -0.5, 0.75, 1.0, 0.25, 1.0, 0.0, 1.0, -0.25, 0.25, 0.25, 0.25, 0.5, -0.25, 0.0, -0.75, 0.25, -0.5, -0.75, 0.25, -0.5, -1.0, 0.25, 0.5, 0.0, 1.0, 0.5, -1.0, -0.5, -0.5, 0.0, 1.0, -0.5, 0.5, 0.5, 0.5, -0.75, 0.25, -0.25, 0.5, -0.25, 0.5, -1.0, -0.25, -1.0, 0.0, -1.0, 0.75, 1.0, 1.0, -0.25, 0.75, 0.25, 0.25, 1.0, -0.5, -0.5, -1.0, 1.0, 1.0, -0.5, 0.75, 0.5, 0.75, -1.0, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -1.0, -1.0, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
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
    
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_buffer400 = command_encoder400.finish();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
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
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4010.executeBundles([render_bundle_encoder400, ])
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    texture401.destroy();
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    texture400.destroy();
    render_pass_encoder4010.executeBundles([])
    const array12 = new Float32Array([0.0, 1.0, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, -0.25, 0.5, -0.25, 0.75, -0.5, 0.75, 0.5, -0.75, 1.0, 0.0, -0.5, 0.5, -0.5, 1.0, -0.25, 0.0, -0.25, -1.0, 0.25, -0.5, 0.0, -0.75, 1.0, 1.0, -0.5, 1.0, 0.0, 0.25, 0.5, 1.0, -1.0, 0.25, -0.25, -0.75, 0.5, -0.5, 1.0, 1.0, 0.5, -0.5, -0.75, 0.0, -0.5, -1.0, -0.5, -0.75, -0.5, -0.75, 0.25, -0.75, -0.5, 0.0, 1.0, 0.75, -1.0, -0.5, -0.75, 0.0, -0.5, 1.0, 0.5, -0.5, -0.25, 1.0, -0.75, 0.0, 0.0, 0.75, -1.0, 0.75, -0.25, -0.75, -0.25, -0.75, 0.0, 0.75, 0.5, 1.0, 1.0, 0.0, 1.0, 0.75, -0.75, 0.5, -1.0, 0.5, 0.5, -0.75, -0.5, -0.25, -1.0, -0.75, ]);
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    
    render_pass_encoder4010.executeBundles([])
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    device40.pushErrorScope("validation");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder401.popDebugGroup();
    device50.pushErrorScope("internal");
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
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
    compute_pass_encoder4010.popDebugGroup()
    device40.pushErrorScope("validation");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    command_encoder401.popDebugGroup()
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    device50.pushErrorScope("internal");
    device60.pushErrorScope("out-of-memory");
    device50.queue.submit([]);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder4010.insertDebugMarker("marker")
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
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
    render_pass_encoder4010.executeBundles([])
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    query400.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.executeBundles([])
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    
    const array13 = new Float32Array([0.25, 0.5, -0.25, 0.25, 1.0, -0.25, -1.0, 0.5, 1.0, -0.25, -0.5, -1.0, 0.25, 0.0, -0.75, 0.75, -0.75, 0.75, 0.5, -0.5, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.75, -1.0, -0.75, -0.25, 0.75, 0.25, 0.25, -1.0, 1.0, -0.75, 0.0, 0.5, -0.25, -0.5, 0.75, 0.75, 0.25, -0.5, 1.0, 1.0, -0.75, -0.75, -0.75, 0.5, -1.0, 1.0, 0.75, 0.5, -0.75, 0.0, 0.75, 1.0, -1.0, -0.25, 0.5, -0.75, 0.5, 0.0, 1.0, -0.75, 1.0, 0.0, -1.0, 0.75, -1.0, 1.0, 0.5, -0.25, 0.5, 0.5, -1.0, 1.0, 1.0, 1.0, -1.0, 0.5, -1.0, -1.0, 0.75, 0.25, -1.0, 0.25, 0.75, 1.0, 0.5, 1.0, 0.25, -1.0, 0.25, 0.0, -0.75, 0.5, ]);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    command_encoder403.pushDebugGroup("mygroupmarker")
    const command_buffer600 = command_encoder600.finish();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const array14 = new Float32Array([-1.0, 1.0, 0.5, -0.25, 0.0, -0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.25, 0.5, 1.0, -1.0, -0.75, 0.25, -0.25, -0.25, 1.0, 0.75, -0.5, 0.0, 0.75, -1.0, 1.0, 1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 1.0, 0.5, 0.5, -0.75, 1.0, -0.75, 0.5, 1.0, -1.0, -0.75, 1.0, 0.5, -0.5, -1.0, 1.0, -0.5, 0.25, 0.0, -0.25, 0.75, -1.0, -0.5, -0.5, 0.5, -0.25, -0.25, -0.5, 0.25, -0.5, -0.5, -0.5, 1.0, 1.0, 0.0, 1.0, 0.75, 0.5, 0.5, -0.75, 0.75, -0.25, 0.25, 1.0, 1.0, 0.75, 0.0, -0.25, 0.75, -0.75, 0.0, 1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 0.25, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 0.5, 0.75, -0.5, -0.5, -1.0, ]);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const array15 = new Float32Array([-0.75, 1.0, 0.0, 0.5, 0.75, -0.75, 0.25, -0.5, -1.0, 0.25, 0.5, 0.25, 0.5, -1.0, 1.0, 0.0, 1.0, -0.25, -0.25, -0.25, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, -0.5, -0.5, -0.5, 0.25, -1.0, 1.0, 0.5, -0.5, 1.0, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, 0.0, 0.5, -1.0, 1.0, 0.0, 1.0, -0.25, -0.5, 1.0, -0.5, -0.5, -0.5, -0.5, 0.5, -1.0, -0.5, 0.5, -0.75, -0.75, -0.5, 0.0, 0.0, -0.75, -0.5, -0.25, 0.5, 0.25, 0.75, 0.25, 0.5, 0.0, -0.75, -1.0, 0.0, 0.0, 0.0, 0.25, -0.5, 0.5, -0.5, 0.5, 0.75, 1.0, 0.75, -1.0, -0.75, 0.0, 0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -0.75, -0.5, 0.25, 0.75, 0.5, 0.0, ]);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
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
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    device30.pushErrorScope("out-of-memory");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
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
    render_pass_encoder4020.setPipeline(render_pipeline400);
    
    buffer600.destroy()
    
    
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    device40.queue.writeBuffer(buffer402, 0, array14, 0, array14.length);
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder4040.insertDebugMarker("marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_pass_encoder4040.setPipeline(render_pipeline401);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer400.destroy()
    render_pass_encoder4030.setPipeline(render_pipeline400);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const array16 = new Float32Array([-0.25, 0.25, 1.0, 0.0, 0.0, 0.0, 0.5, 0.5, 1.0, 1.0, -0.75, -0.75, 1.0, 0.75, -0.75, 0.0, 0.0, 0.5, 0.0, -0.5, -0.75, 1.0, 0.5, 0.0, -0.75, 0.5, -0.5, -0.5, 0.0, -0.5, 0.25, -1.0, 0.75, 0.75, 0.5, 0.5, -0.5, -0.75, 0.0, -0.25, 0.75, 1.0, 1.0, 0.25, -0.5, -0.5, -0.5, 1.0, -1.0, -0.25, 1.0, 0.0, -0.5, -0.25, 0.75, -0.25, 0.25, -0.5, -1.0, 0.0, -0.75, 1.0, 0.0, 0.25, -0.25, -0.25, 1.0, -0.25, 1.0, 0.25, -0.25, 0.5, 0.0, -1.0, -1.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.25, 0.25, -1.0, 0.75, 0.75, -0.5, 0.5, -0.75, -0.75, 0.5, -1.0, 0.5, -0.75, 1.0, 0.5, -1.0, -0.25, 0.25, 0.25, -0.25, ]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device50.queue.writeBuffer(buffer500, 0, array15, 0, array15.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("out-of-memory");
    device60.queue.submit([command_buffer600, ]);
    device10.queue.writeBuffer(buffer101, 0, array12, 0, array12.length);
    device40.queue.writeBuffer(buffer402, 0, array13, 0, array13.length);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_pass_encoder4030.insertDebugMarker("marker");
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
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

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer403, 0, array14, 0, array14.length);
    
    device40.queue.writeBuffer(buffer401, 0, array13, 0, array13.length);
    
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    device50.queue.writeBuffer(buffer500, 0, array14, 0, array14.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder4020.setStencilReference(1);
    
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    buffer403.destroy()
    render_pass_encoder4030.setVertexBuffer(0, buffer406);
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_pass_encoder4020.setStencilReference(1);
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer404, 0, array12, 0, array12.length);
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    query400.destroy()
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
    render_pass_encoder4011.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    buffer500.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder600.popDebugGroup();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer602.destroy()
    
    render_pass_encoder4020.setVertexBuffer(0, buffer401);
    command_encoder602.insertDebugMarker("mymarker");
    buffer405.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query400.destroy()
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    query400.destroy()
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
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
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    buffer403.destroy()
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
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

    render_bundle_encoder400.setBindGroup(0, bind_group403);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder403.popDebugGroup()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    
    command_encoder401.insertDebugMarker("mymarker");
    query500.destroy()
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    
    device50.queue.writeBuffer(buffer502, 0, array13, 0, array13.length);
    
    
    buffer406.destroy()
    
    render_pass_encoder4030.setIndexBuffer(buffer403, "uint16");
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    
    render_pass_encoder4030.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer404, 0, array15, 0, array15.length);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4011.setStencilReference(1);
    
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4030.drawIndexed(3);
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    device40.pushErrorScope("validation");
    
    render_bundle_encoder402.setPipeline(render_pipeline401);
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_pass_encoder4011.setStencilReference(1);
    
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    device50.queue.writeBuffer(buffer502, 0, array15, 0, array15.length);
    
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group404);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    device50.queue.writeBuffer(buffer502, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device40.queue.writeBuffer(buffer4011, 0, array12, 0, array12.length);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    buffer401.destroy()
    texture500.destroy();
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder4011.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    render_pass_encoder4010.setPipeline(render_pipeline404);
    
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder404.insertDebugMarker("mymarker");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    render_pass_encoder4011.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer404, 0, array11, 0, array11.length);
    device50.queue.writeBuffer(buffer501, 0, array15, 0, array15.length);
    command_encoder602.pushDebugGroup("mygroupmarker")
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    buffer502.destroy()
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
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4011.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device50.queue.writeBuffer(buffer501, 0, array15, 0, array15.length);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder200.popDebugGroup()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    command_encoder603.resolveQuerySet(
        query601,
        0,
        32,
        buffer600,
        0
    )
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_pass_encoder4030.end();
    render_pass_encoder4010.popDebugGroup();
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group405);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4020.draw(3);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4011.setPipeline(render_pipeline403);
    device40.queue.submit([command_buffer400, ]);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group406);
    render_pass_encoder4020.end();
    render_pass_encoder4040.setVertexBuffer(0, buffer4014);
    const command_buffer603 = command_encoder603.finish();
    render_pass_encoder4010.setVertexBuffer(0, buffer403);
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    render_pass_encoder4011.setBindGroup(0, bind_group408);
    command_encoder602.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4020.drawIndirect(buffer402, 0);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4011.setVertexBuffer(0, buffer403);
    render_pass_encoder4011.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4011.draw(3);
    render_pass_encoder4040.drawIndirect(buffer401, 0);
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    render_pass_encoder4010.draw(3);
    compute_pass_encoder4020.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4040.popDebugGroup();
    device60.queue.submit([command_buffer603, ]);
    const command_buffer602 = command_encoder602.finish();
    const command_buffer403 = command_encoder403.finish();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4023, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4023, 0);
    render_pass_encoder4011.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder4040.drawIndirect(buffer4023, 0);
    render_pass_encoder4040.end();
    render_pass_encoder4010.end();
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    device50.queue.submit([]);
    render_pass_encoder4040.end();
    render_pass_encoder4020.drawIndirect(buffer4017, 0);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder4011.end();
    const command_buffer601 = command_encoder601.finish();
    device40.queue.submit([command_buffer402, ]);
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder4011.drawIndexedIndirect(buffer4013, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4010.end();
    render_pass_encoder4010.drawIndirect(buffer4023, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder4011.setIndexBuffer(buffer4012, "uint16");
    device60.queue.submit([command_buffer601, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder4030.drawIndirect(buffer4023, 0);
    render_pass_encoder4010.setIndexBuffer(buffer402, "uint16");
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4010);
    device60.queue.submit([command_buffer601, ]);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder4040.end();
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    render_pass_encoder4030.setIndexBuffer(buffer4025, "uint16");
    render_pass_encoder4040.drawIndirect(buffer409, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4023, 0);
    device50.queue.submit([]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4040.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4030.drawIndexedIndirect(buffer4023, 0);
    render_pass_encoder4040.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4010.drawIndexedIndirect(buffer4016, 0);
    render_pass_encoder4010.end();
    render_pass_encoder4010.drawIndirect(buffer4022, 0);
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4011);
    render_pass_encoder4020.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4011.drawIndirect(buffer4022, 0);
    render_pass_encoder4011.drawIndexedIndirect(buffer4023, 0);
    const command_buffer200 = command_encoder200.finish();
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4012);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4011.setIndexBuffer(buffer4014, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4011.drawIndirect(buffer4026, 0);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    render_pass_encoder4040.drawIndirect(buffer4023, 0);
    device40.queue.submit([command_buffer404, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4020.setIndexBuffer(buffer4026, "uint16");
    render_pass_encoder4030.setIndexBuffer(buffer4016, "uint16");
    device60.queue.submit([]);
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4014);
    device10.queue.submit([]);
    render_pass_encoder4030.end();
    render_pass_encoder4011.drawIndirect(buffer4023, 0);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4040.drawIndirect(buffer4030, 0);
    render_pass_encoder4040.drawIndexed(3);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4020.end();
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4040.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4020.end();
    render_pass_encoder4010.drawIndirect(buffer4023, 0);
    render_pass_encoder4040.drawIndirect(buffer404, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4040.setIndexBuffer(buffer4028, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4034, 0);
    render_pass_encoder4010.end();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4010.end();
    render_pass_encoder4040.drawIndirect(buffer4012, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer409, 0);
}