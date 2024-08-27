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
    
    
    
    
    const array0 = new Float32Array([-0.5, -0.25, 0.5, 0.5, 0.75, -0.5, 0.25, -0.75, 0.5, -0.75, -1.0, -0.5, 0.25, -0.5, 0.5, 0.25, 0.75, 0.75, 0.25, -0.75, 0.5, -1.0, 0.75, 0.75, -0.75, -1.0, -0.75, 0.25, 0.25, 0.75, -0.75, 0.25, 0.75, -0.5, -0.5, -0.25, -0.25, -0.75, 0.5, 0.5, 0.0, -0.25, -0.5, -0.25, 0.0, 0.0, 0.75, 0.75, -0.5, 0.75, -0.5, -0.5, -0.5, -0.25, 1.0, -0.25, 0.75, 1.0, 0.5, -1.0, 0.5, 0.75, -0.5, 1.0, 0.75, 0.75, -0.75, -0.5, 1.0, 1.0, -0.5, 0.0, 0.0, 0.5, 0.0, -0.25, 0.5, -0.75, 0.75, -1.0, -1.0, 0.25, 0.0, 0.75, 0.0, -0.25, 0.5, 0.25, 1.0, -0.5, 1.0, -1.0, 0.5, -0.75, -0.5, -1.0, 0.25, 0.75, 1.0, -0.5, ]);
    const array1 = new Float32Array([-0.25, 0.25, 0.75, 1.0, -0.75, 0.0, 0.25, -0.75, -0.75, 0.5, -0.5, 1.0, -0.5, -0.75, 0.5, -0.5, 0.25, 0.0, -0.25, 0.75, -0.75, 0.25, -0.5, 0.0, 1.0, 1.0, 0.5, 0.25, -1.0, 0.5, 0.5, 0.0, 0.5, 0.25, 0.0, -0.5, 0.5, -0.25, -0.75, -0.75, -0.75, -0.5, -1.0, 0.0, 0.0, -0.75, 0.5, -0.5, -0.5, -0.25, -0.75, -0.25, -1.0, 0.25, 0.0, 0.0, 1.0, 0.0, -0.25, -0.25, -1.0, 0.0, 0.0, -0.25, 0.5, 0.0, 0.25, 0.5, 0.75, -0.75, 1.0, 0.75, 0.75, -0.25, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, -0.5, -0.75, -0.75, -0.75, 1.0, 0.75, -0.5, 0.75, 0.75, 0.25, -0.75, -1.0, 1.0, 0.75, -0.75, 0.5, -0.25, -1.0, 1.0, -0.25, ]);
    const array2 = new Float32Array([-0.25, -1.0, -0.25, 0.5, -1.0, -0.75, -0.25, -0.25, 1.0, -0.25, -0.75, -1.0, 0.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.5, -0.25, 0.5, 1.0, -0.25, 1.0, 0.25, 0.5, -0.5, -0.75, -0.75, -1.0, -1.0, 0.25, 1.0, 0.25, -0.25, 0.75, -1.0, 0.5, 0.75, -0.75, 0.75, -0.75, 0.0, 0.25, 0.5, 0.0, 0.5, 1.0, -0.25, 0.75, -0.5, -0.75, -0.25, 1.0, 1.0, 0.25, -1.0, 0.25, 0.5, 0.25, -0.75, 0.0, 0.25, 0.5, -0.75, 1.0, -0.5, 0.75, -1.0, -1.0, 0.25, -1.0, 0.25, -1.0, 0.25, 0.5, -0.5, -1.0, -0.25, 0.0, -1.0, 0.0, -0.5, -0.25, 0.75, 0.25, 0.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.0, 0.0, -0.5, -0.5, 0.5, -1.0, 0.25, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.75, 0.0, -0.25, 0.25, 1.0, -1.0, 0.0, 0.5, 0.75, -0.5, 0.75, -0.75, -1.0, 0.5, -0.75, 0.5, -1.0, -0.75, -0.75, -1.0, 0.25, 1.0, 0.75, -0.75, -1.0, -0.5, -0.75, 1.0, 1.0, -0.25, 0.25, 0.25, -0.25, 0.5, 0.5, -0.25, 0.75, 1.0, -1.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.25, 0.75, 0.5, 1.0, 0.0, 1.0, 0.0, -0.75, 0.25, 0.25, -1.0, -0.5, -0.75, 1.0, -0.25, -0.75, -0.75, 0.25, -0.75, -0.5, 0.5, -0.25, 0.5, 1.0, -0.75, 0.0, -1.0, 0.75, -0.75, 1.0, -0.25, -0.25, 0.75, 0.25, -1.0, -1.0, 0.0, 0.75, 0.0, -0.5, 0.5, 0.0, 1.0, 1.0, 0.5, 0.25, -1.0, -0.25, 0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 1.0, -0.5, ]);
    const array4 = new Float32Array([-0.75, -0.25, 0.25, 0.25, -0.25, 0.5, -0.25, 0.75, 0.0, 0.5, -0.5, -0.5, 0.0, 0.0, -0.5, 0.75, 0.75, -0.5, 1.0, -0.25, -0.5, 0.75, 0.75, -0.5, -1.0, 0.5, -1.0, 0.5, -0.5, -0.75, -0.75, -1.0, -0.25, 0.0, -0.5, -0.25, 0.5, 0.25, -0.25, 0.25, -0.75, 0.25, 1.0, -1.0, 0.0, 0.0, -0.25, -1.0, 1.0, -0.25, 0.25, 0.5, 0.25, -1.0, -0.25, 0.75, -0.5, -1.0, -1.0, -0.75, 0.75, 0.0, 1.0, 0.75, 0.5, -1.0, 0.75, 0.5, 0.5, -0.5, 0.0, 0.75, -1.0, 0.75, -0.5, -1.0, 0.5, -0.25, -1.0, 0.5, -0.5, -0.25, -0.25, -0.75, -0.25, 0.5, -0.75, -1.0, 0.0, -0.25, 0.25, -0.25, -0.25, 1.0, 0.0, -0.75, -0.25, 0.5, 0.5, -1.0, ]);
    
    const array5 = new Float32Array([-1.0, -0.75, -0.25, -0.5, 0.0, 0.75, -0.5, -0.25, 1.0, -0.25, -0.5, -1.0, 0.0, 1.0, -0.5, -0.5, -0.25, 1.0, 0.5, -0.75, 0.25, -0.75, 1.0, 0.0, -0.25, -0.5, 0.25, 1.0, 1.0, 0.75, -0.25, 0.25, 0.75, -0.25, -0.5, -0.75, -0.5, -1.0, 0.25, -0.5, 0.75, 0.25, -1.0, 0.25, 0.0, 1.0, -1.0, -0.25, -1.0, -0.25, 0.75, 0.25, 0.0, 0.75, 0.5, -1.0, -1.0, -0.5, 0.0, -0.75, -0.75, -0.75, -0.25, -0.5, -0.5, 0.0, 0.0, -0.25, 0.0, 0.5, 0.25, -0.5, 0.75, -1.0, -0.5, 0.25, 0.25, -0.5, 1.0, 0.0, -0.25, 0.75, 0.75, 1.0, -0.5, -1.0, 0.25, -0.25, -0.75, -1.0, 0.5, 1.0, 0.5, 0.75, 0.5, 0.5, 0.75, 1.0, -0.5, 0.0, ]);
    const array6 = new Float32Array([0.25, 0.5, 0.0, -0.75, -0.5, 1.0, -0.75, -1.0, -0.75, -0.75, 1.0, 0.25, 0.0, -0.5, 0.75, 0.0, -0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 1.0, 0.5, 1.0, 0.5, 0.5, -0.5, -0.5, 0.0, 1.0, -0.75, 0.5, -1.0, -0.75, 0.25, -0.5, -0.75, 0.5, 0.75, -0.25, 1.0, 0.5, 1.0, 1.0, -0.75, -0.75, 0.75, 1.0, -0.25, 0.75, 0.5, 1.0, -0.5, 0.25, 1.0, -0.75, -0.25, -1.0, 0.0, -1.0, 0.25, -1.0, -0.25, -0.5, -0.5, -1.0, 0.0, -1.0, -1.0, 1.0, 1.0, -1.0, 0.75, 0.5, -0.25, -0.25, 0.5, -0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 1.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.5, -1.0, -0.75, -0.5, -0.5, 0.75, 0.75, -0.25, 0.25, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query100.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
    device20.destroy();
    const array7 = new Float32Array([-1.0, -0.25, 0.25, 0.75, 0.75, 1.0, 0.5, 1.0, 0.5, -0.25, -0.75, 0.25, 1.0, -0.75, 1.0, -1.0, 1.0, 0.0, -1.0, 0.75, 0.75, 0.25, 0.0, -1.0, -0.5, 0.75, -1.0, 0.0, 0.25, 0.75, 0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 0.25, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -1.0, 0.25, -0.25, -0.25, 0.0, 1.0, 0.0, 0.25, -0.25, 0.0, -0.5, 0.75, 0.5, 0.75, 0.0, -0.5, 0.75, -0.75, -1.0, 0.25, 0.5, 0.0, 1.0, 0.25, -1.0, 0.0, 0.25, 0.75, -0.25, 0.25, -0.75, -0.25, 0.5, -0.5, -1.0, -0.25, 0.5, 0.5, 0.0, 1.0, 0.5, 0.0, 0.25, 0.25, 0.25, 0.25, 1.0, 0.0, -0.5, 0.75, -0.25, ]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const array8 = new Float32Array([0.75, -0.5, 1.0, -1.0, -1.0, -0.25, 0.0, 1.0, 0.0, 0.5, -1.0, -0.25, 0.25, 1.0, 0.75, 0.5, -0.75, -0.5, 0.0, -0.25, 0.0, -0.5, 0.75, 0.5, 0.25, 0.75, 1.0, -0.5, 0.25, -0.5, 0.5, -0.5, 1.0, 1.0, 0.25, 0.25, -0.5, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, -0.25, -0.5, -0.25, 0.0, 0.0, 0.25, -1.0, -0.25, -0.5, -0.25, 0.75, -0.5, -1.0, 1.0, -0.25, 1.0, 0.25, 0.0, 0.25, 0.25, -0.5, 0.75, -0.75, -0.25, 0.0, -0.5, -1.0, -1.0, 1.0, 0.25, 0.5, 0.25, 0.25, -0.5, 1.0, 0.5, -0.25, 0.25, -0.5, 0.0, 0.5, -0.25, 0.0, 0.75, 0.75, -0.25, 0.5, 0.0, -0.25, 0.25, -0.75, 0.5, 0.75, -0.25, 0.25, 0.5, 0.0, ]);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    texture100.destroy();
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query100.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.popDebugGroup();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    device10.destroy();
    
    
    const array9 = new Float32Array([0.0, 0.0, -0.75, 1.0, 0.25, 0.5, 0.0, 0.25, 0.75, -0.75, -1.0, -0.25, 0.75, -0.25, -0.5, 0.0, -0.75, -1.0, 0.75, 1.0, -0.5, 0.75, 1.0, 0.0, -0.5, 0.5, -0.5, -1.0, -0.5, -0.25, -0.25, 0.5, 0.25, 1.0, 0.0, 1.0, -0.75, -0.5, 0.0, -0.75, 0.75, 1.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 0.75, -0.25, 0.0, -0.5, 0.75, -0.25, -0.5, -1.0, -0.25, 0.25, 0.5, 0.25, 0.0, -1.0, -0.75, -0.5, 0.5, -0.75, 0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -0.5, 0.75, 0.25, 0.0, 0.75, 0.0, -1.0, 1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, 0.25, 0.25, -1.0, 0.0, 1.0, -1.0, 0.0, 0.75, 0.25, ]);
    
    
    
    
    
    render_bundle_encoder200.popDebugGroup();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const array10 = new Float32Array([-0.25, -0.75, 0.5, -0.25, -0.25, 1.0, -0.5, -0.25, -0.25, 1.0, 0.75, 1.0, 0.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.25, 1.0, -1.0, -0.5, 0.25, -0.5, 0.5, -0.75, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, -1.0, 0.75, 0.25, -0.5, -0.75, -1.0, 0.5, 0.0, 0.75, 0.75, -1.0, 0.5, -0.25, -0.25, -0.25, 0.5, 0.5, -0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -0.5, 0.5, -0.5, 1.0, -1.0, 0.0, 0.0, -1.0, 0.0, -0.75, 0.5, 0.25, 1.0, 1.0, 0.25, 1.0, -0.25, 0.0, 0.0, 0.25, 1.0, -0.25, 0.75, 1.0, -0.5, 0.25, 0.0, 1.0, -0.75, -0.75, 0.5, -0.25, 0.25, -0.75, 0.25, 0.75, -0.75, -0.5, 0.0, -0.75, 0.5, 0.75, -0.75, 0.25, 1.0, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device20.destroy();
    device00.destroy();
    
    buffer600.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer602.destroy()
    
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device60.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device60.queue.writeTexture({ texture: texture600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device50.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture300.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    buffer601.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device30.destroy();
    texture600.destroy();
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array11 = new Float32Array([1.0, 0.0, 0.5, 0.25, -0.25, 1.0, -0.75, 0.5, 0.75, -1.0, 0.0, -0.5, 1.0, -0.25, -0.5, 0.5, 0.25, -0.75, 0.0, 0.5, -0.5, 0.25, 0.0, 0.0, -0.75, 0.25, 0.5, -0.5, 1.0, 0.75, 0.5, 0.0, 0.5, -0.5, -0.25, 1.0, -0.75, 0.5, 1.0, -0.25, 0.75, 0.75, 0.25, 0.0, -0.5, 0.5, -1.0, 0.0, 0.5, 0.0, 0.75, -1.0, 0.25, 0.25, -0.5, -0.25, 0.25, 0.25, 0.25, -0.5, 0.75, -0.5, -0.5, 0.0, -0.75, 1.0, 0.5, -0.75, -0.5, 0.75, 1.0, 0.5, 0.0, 0.75, 0.5, -0.75, -0.5, -1.0, 1.0, 0.75, -0.25, -0.75, -0.5, -1.0, -1.0, 1.0, -1.0, 0.75, 0.5, 0.25, 0.25, 0.5, 0.0, -1.0, -0.5, 1.0, 0.5, -0.5, 1.0, 0.25, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_bundle_encoder600.popDebugGroup();
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder200.popDebugGroup();
    
    device60.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array12 = new Float32Array([-1.0, 0.0, -0.25, 0.5, 0.5, 0.0, -0.75, 1.0, -1.0, -0.25, -0.5, 0.75, 0.75, 1.0, 0.5, -0.5, -1.0, -0.5, -0.25, 0.25, 0.75, -0.5, 0.25, 1.0, 0.0, -0.5, -0.75, -0.25, 0.0, 0.75, 0.75, 0.5, -0.25, 0.5, 0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 0.75, -0.5, -0.5, 0.5, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, 0.75, 0.25, 0.75, 0.25, -0.75, 0.25, -0.5, 0.5, 1.0, 0.75, 0.75, 0.5, 0.75, -0.5, 0.75, -0.75, -0.75, 0.75, 0.5, 0.75, 0.0, 1.0, -0.25, -0.5, 1.0, 0.0, -0.75, 0.25, 0.75, 0.5, -0.25, 0.25, -0.75, -1.0, 0.75, -0.25, 0.25, 1.0, -0.75, 0.25, -0.75, 0.25, 1.0, 0.75, -0.75, 0.75, 0.0, -0.75, -0.75, 1.0, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    
    
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
    
    
    texture601.destroy();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_buffer800 = command_encoder800.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer800.destroy()
    device80.destroy();
    device50.destroy();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    device70.pushErrorScope("internal");
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const array13 = new Float32Array([-1.0, 0.25, 0.5, 0.5, 0.75, 1.0, 0.75, -0.25, -1.0, -0.25, -0.5, 1.0, 0.5, 0.5, 1.0, -0.25, 0.25, 0.0, 0.0, -0.25, 1.0, 1.0, -0.25, 1.0, 0.5, -0.75, 0.75, 0.0, 0.0, -0.5, 0.25, -1.0, -0.25, 1.0, 0.0, 0.5, -0.5, 1.0, 1.0, -0.75, 0.0, 0.25, 0.5, 0.75, -0.5, -0.5, 0.25, 1.0, 0.75, -0.5, 0.5, 1.0, 0.5, 0.5, 0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 0.5, 0.5, 1.0, 0.75, 0.25, 1.0, -0.25, -0.25, -1.0, 0.5, -0.75, -0.25, 0.0, 0.5, -0.5, -0.5, 0.0, -1.0, -1.0, 0.75, 0.0, 0.5, 0.75, -0.25, -0.75, 1.0, 1.0, 0.25, -0.25, -1.0, 1.0, -0.75, 0.0, 0.5, 0.75, 0.25, -0.25, 1.0, 0.5, 0.25, ]);
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder700.setPipeline(render_pipeline702);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device70.pushErrorScope("out-of-memory");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    query700.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    texture700.destroy();
    
    
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder701.setPipeline(render_pipeline700);
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer700.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer701.destroy()
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    device70.queue.writeBuffer(buffer703, 0, array4, 0, array4.length);
    
    
    
    
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer702.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder701.popDebugGroup();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const array14 = new Float32Array([-1.0, -0.5, 0.25, -0.5, 0.25, -1.0, -0.75, -0.5, 0.5, -0.25, 0.0, -0.5, -0.75, -0.5, 1.0, 0.75, 0.25, 0.25, 0.25, -0.25, -1.0, 0.0, 0.0, 0.0, 0.5, 0.75, -0.75, -0.25, -0.25, -0.75, -0.75, -0.25, -0.25, -0.25, 0.5, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -1.0, -0.5, 0.5, -0.25, 1.0, -0.75, -0.25, 1.0, 1.0, -0.5, -0.5, -0.5, -1.0, 0.75, -0.5, 1.0, 0.25, 0.5, 1.0, 0.25, 0.0, -0.25, 0.5, 0.25, -0.5, -0.5, 0.5, 0.5, -0.25, 1.0, 0.25, 0.75, 1.0, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, -0.75, 1.0, 0.75, 0.5, -1.0, -0.5, -0.25, -0.5, 0.25, -0.5, 0.75, 0.75, 0.75, 1.0, ]);
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    texture701.destroy();
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    buffer703.destroy()
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const array15 = new Float32Array([1.0, 1.0, 0.5, -0.25, -1.0, -1.0, -0.5, -1.0, 0.25, 0.25, -1.0, 0.0, -0.75, -0.25, -1.0, 0.0, -0.75, 1.0, -0.25, -0.75, -0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 0.5, 0.25, 0.25, 0.5, 0.0, -0.25, -0.25, 0.5, -0.75, -0.5, 0.25, 0.0, -0.5, -0.75, -0.5, 0.5, 1.0, 0.5, -0.5, 1.0, -0.25, -0.25, 0.0, 0.0, 0.0, -0.75, 0.5, 0.0, -0.5, 0.0, 0.0, -1.0, 0.5, 0.75, -0.75, 1.0, -0.5, 0.5, -0.5, -0.25, 0.0, 0.5, -0.75, -0.75, 0.25, 0.5, 0.25, 0.75, 0.0, 1.0, 0.25, 0.75, -1.0, 0.25, -0.5, 0.75, 0.0, -0.75, -0.5, -1.0, 0.25, 0.25, 0.5, -0.25, -0.25, 0.25, -0.75, -0.5, 0.75, -0.25, 0.25, 0.25, 0.75, 1.0, ]);
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device80.queue.submit([command_buffer800, ]);
    
    
    device00.pushErrorScope("out-of-memory");
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    render_bundle_encoder702.insertDebugMarker("marker");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    render_bundle_encoder702.setPipeline(render_pipeline706);
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    
    render_bundle_encoder700.popDebugGroup();
    
    
    
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    
    
    render_bundle_encoder702.popDebugGroup();
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder701.popDebugGroup();
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    render_bundle_encoder701.popDebugGroup();
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline708 = device70.createRenderPipeline({
        label: "render_pipeline708",
        vertex: {
            module: shader_module705,
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
            module: shader_module705,
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
    query700.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    
    
    const render_pipeline709 = device70.createRenderPipeline({
        label: "render_pipeline709",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    render_pass_encoder6000.insertDebugMarker("marker");
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group701);
    buffer706.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module707.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    
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
    
    device50.pushErrorScope("validation");
    device70.queue.writeBuffer(buffer704, 0, array14, 0, array14.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("out-of-memory");
    query702.destroy()
    
    
    query701.destroy()
    device110.destroy();
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: render_pipeline706.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group702);
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture101.destroy();
    query700.destroy()
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const texture_view12020 = texture1202.createView({ label: "texture_view12020" });
    var shader_module708_code = "";
    try {
        shader_module708_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module708 = await device70.createShaderModule({ label: "shader_module708", code: shader_module708_code })
    device120.pushErrorScope("internal");
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    
    var shader_module709_code = "";
    try {
        shader_module709_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module709.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module709 = await device70.createShaderModule({ label: "shader_module709", code: shader_module709_code })
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device100.destroy();
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    texture1202.destroy();
    
    
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    query700.destroy()
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout702,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout701,
        compute: {
            module: shader_module706,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer705.destroy()
    
    device110.pushErrorScope("validation");
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer709, 0, array7, 0, array7.length);
    
    
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    command_encoder700.copyTextureToBuffer(
        {
            texture: texture700
        },
        {
            buffer: buffer702
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device120.queue.writeTexture({ texture: texture1201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture302.destroy();
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const array16 = new Float32Array([0.25, 0.5, -0.5, 1.0, -0.25, 1.0, 1.0, 0.5, 0.0, 0.5, 0.25, -0.25, -1.0, 0.0, 0.5, -1.0, 0.5, 0.75, 1.0, -1.0, 0.0, 0.5, -0.75, -1.0, -1.0, -1.0, 1.0, 1.0, -0.25, 0.0, 0.75, 1.0, -1.0, 0.5, 1.0, 0.0, 1.0, 0.75, 0.0, -0.75, 0.5, -0.75, -0.75, -0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.25, -1.0, 1.0, -0.75, 1.0, 1.0, 0.75, 0.0, 1.0, -0.75, 0.25, 0.25, -0.75, -0.5, -1.0, 1.0, -0.25, -1.0, -0.25, 1.0, 0.25, -1.0, 0.5, -0.75, 0.25, -0.75, 1.0, 0.0, 0.25, -1.0, -0.5, 0.0, -0.5, 0.0, -0.75, -0.25, 0.0, 0.5, -0.5, 0.5, 1.0, -1.0, -1.0, -0.5, -0.75, -0.25, 0.0, -0.25, -0.25, ]);
    
    
    const render_pipeline7010 = device70.createRenderPipeline({
        label: "render_pipeline7010",
        vertex: {
            module: shader_module705,
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
            module: shader_module705,
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
    
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    command_encoder700.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout702,
        compute: {
            module: shader_module709,
            entryPoint: "main"
        }
    });
    
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    device120.queue.writeTexture({ texture: texture1201 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline7011 = device70.createRenderPipeline({
        label: "render_pipeline7011",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const command_buffer700 = command_encoder700.finish();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    device70.queue.submit([command_buffer700, ]);
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
}