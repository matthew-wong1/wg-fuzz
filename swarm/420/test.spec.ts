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
    
    const array0 = new Float32Array([1.0, 0.25, 0.75, 0.0, 1.0, -0.5, 1.0, 0.25, 0.0, -0.5, -1.0, -0.75, -1.0, -0.25, 0.5, 0.0, 0.5, 1.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.5, -0.5, 0.75, 0.25, 0.0, 0.75, 0.25, 0.25, -1.0, 1.0, -0.25, -0.5, -0.25, 0.75, -0.5, -0.25, -1.0, 0.75, 0.5, 0.75, 0.0, 0.25, -0.25, -0.75, -0.25, -0.75, -0.25, -1.0, -1.0, -0.25, 0.5, -0.5, -0.25, 0.5, 0.75, -1.0, -0.25, -0.75, -0.5, 0.0, -1.0, 0.25, 0.0, 0.25, -0.75, 0.75, -0.25, -0.5, 0.5, 0.75, 0.25, -0.5, 0.5, -0.25, -0.75, 0.5, 0.25, 0.75, 0.75, -0.25, 0.75, -0.75, 0.75, -1.0, -0.25, -0.5, 0.25, 1.0, -0.75, 0.0, -0.25, 1.0, -0.5, -1.0, 0.0, -0.5, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, 1.0, -1.0, 0.75, 0.0, 0.5, 0.0, -0.25, 1.0, 1.0, 0.0, 0.75, 0.0, -0.5, 0.25, 0.75, -0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -0.5, 0.0, 1.0, 0.5, -0.5, -1.0, 0.75, -0.75, -0.5, 0.5, 0.0, 0.5, 1.0, 0.5, -0.5, 0.0, 0.75, 0.5, -0.25, -1.0, 0.0, 0.0, 0.0, 1.0, 0.25, 0.0, -0.75, 1.0, -0.5, 0.5, -1.0, -0.25, 0.0, -0.25, 1.0, -0.5, -0.75, 0.25, 1.0, -0.25, 0.5, -1.0, 0.75, 0.5, 0.5, 1.0, 0.5, 0.25, -0.75, 1.0, 0.25, -0.5, 0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -1.0, -1.0, -1.0, 1.0, 0.0, 0.25, -0.75, 0.0, 0.75, -0.75, -0.75, -1.0, -1.0, 0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 0.5, ]);
    
    
    const array2 = new Float32Array([-1.0, -0.5, -0.25, -0.75, 0.25, -0.5, -0.25, -0.5, -0.25, 1.0, 1.0, -0.25, -0.25, -0.5, 0.0, -0.25, -0.75, -1.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.5, -0.5, 0.0, 0.25, 0.25, 0.25, 1.0, -0.25, 0.5, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, 0.25, -0.25, -0.25, -0.75, 0.75, 0.5, -0.5, 0.0, -1.0, 0.5, -0.75, -0.5, -0.75, 0.0, -0.75, -0.5, -1.0, 0.75, 0.25, 0.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, -0.75, -1.0, 0.0, 1.0, 0.75, 0.0, 0.0, 0.5, 0.5, -0.75, -0.75, 0.75, 0.0, -0.75, -0.5, -0.5, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.25, -0.5, -0.75, -0.25, 1.0, 0.75, -0.25, 0.75, 0.75, 0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.destroy();
    
    const array3 = new Float32Array([0.75, 1.0, 0.75, -1.0, 1.0, -0.75, -1.0, 0.5, -0.5, -0.75, 0.25, 0.25, 1.0, -1.0, 0.5, -1.0, -0.25, -0.25, -0.75, -0.5, -0.75, 1.0, -0.25, 0.5, -1.0, -0.75, -0.5, -0.5, -0.25, 0.75, 1.0, 0.0, 0.5, -0.75, -1.0, -0.5, -0.75, -1.0, -0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 1.0, 0.0, 0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 0.25, -0.75, 0.75, 0.5, 0.75, 0.25, 0.5, -0.25, -1.0, 1.0, -0.75, 0.5, 0.5, 0.25, 0.75, -1.0, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.0, 0.0, -0.5, -0.5, 1.0, 0.0, 0.75, 1.0, 0.5, -0.25, 0.75, 0.25, -1.0, 0.75, 0.0, 1.0, -0.75, -1.0, -0.5, 1.0, -0.5, 1.0, -0.5, 0.25, -0.25, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array4 = new Float32Array([0.75, 1.0, -1.0, 0.0, -0.75, 0.75, 0.75, -1.0, -0.25, -0.25, 0.5, 0.25, 0.0, -0.75, -0.5, 1.0, 0.75, -0.25, -0.75, -0.5, -0.25, -0.75, 1.0, 0.25, -0.25, -0.5, 0.75, -0.5, 0.0, 0.25, -0.25, 1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -0.5, -1.0, -0.75, -0.25, -0.25, -0.75, -0.75, -0.5, -1.0, -1.0, 0.5, 0.75, -0.75, -0.25, -0.75, 0.0, -0.5, -1.0, 0.0, 0.25, 0.25, -1.0, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.5, 1.0, -1.0, -0.25, 0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.0, -0.25, -0.75, -0.75, -0.25, 0.5, 1.0, -1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.5, -0.25, 0.0, -0.75, -0.75, 0.75, -0.25, 0.0, ]);
    
    const array5 = new Float32Array([-0.75, 0.0, 0.75, 0.25, -1.0, -0.5, 0.0, 0.75, -0.75, 1.0, 0.5, -0.5, 0.0, 0.75, -0.5, -0.25, 0.25, 1.0, 1.0, 0.75, 0.5, 0.25, 0.75, -1.0, 0.25, -0.5, -0.75, -1.0, 0.5, 0.0, 0.25, -0.75, -1.0, -0.5, -0.25, 1.0, -0.5, 0.5, 1.0, 1.0, 0.0, 0.0, -0.75, 0.0, 0.0, -0.5, 0.75, -0.75, 0.25, 0.75, 0.0, -1.0, -0.5, -0.25, 0.5, 0.25, -1.0, -0.5, -0.25, 0.75, 0.75, -1.0, 0.25, -1.0, 0.25, 0.0, 0.5, -0.25, 0.75, -0.25, -1.0, 0.25, 0.5, -0.25, 1.0, 0.75, 0.0, -0.75, 0.75, -0.5, -0.75, 0.75, 0.5, 1.0, -1.0, 0.75, 0.75, -1.0, 0.25, 0.5, -0.5, -1.0, 0.0, 0.5, 0.75, 0.5, 1.0, -0.5, 0.75, 0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array6 = new Float32Array([0.5, -0.25, -0.5, 0.25, 0.25, -1.0, -0.75, -1.0, 0.75, 0.5, 0.75, 0.0, -0.5, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 0.5, 1.0, -0.25, -0.75, 0.75, 0.25, 1.0, -0.5, -0.75, -0.5, 0.75, 0.75, 0.75, 0.25, 1.0, -0.75, 0.25, 0.5, 0.75, 0.0, -0.5, 1.0, 1.0, -0.75, 0.75, 1.0, 1.0, -0.75, -1.0, 0.5, 0.5, -0.25, -0.5, -0.5, 1.0, -0.5, 0.75, 0.0, 0.25, 0.25, 0.25, 0.5, 0.75, -0.25, -0.75, 0.25, -0.5, 0.0, 0.0, -0.75, 0.0, -0.25, -0.25, -1.0, -1.0, -0.5, 0.25, -1.0, -1.0, -0.25, -0.5, -0.25, -1.0, 0.5, -0.75, 1.0, -0.5, 0.0, 0.75, -0.5, 0.5, -1.0, 0.75, -0.25, 0.5, 0.0, -0.75, -0.75, 0.25, ]);
    
    const array7 = new Float32Array([0.5, 0.25, 1.0, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 0.0, -0.25, 0.0, -0.25, -0.25, 1.0, -0.5, -0.25, 0.25, -1.0, -0.75, -0.5, 0.0, 0.5, 0.75, -0.5, 0.25, 1.0, 0.75, -0.5, 0.25, 0.5, -0.25, -0.25, -0.25, -1.0, 1.0, 0.25, -0.75, 0.75, 0.25, -0.75, -0.5, -0.25, 0.0, 0.75, 0.75, -0.75, -0.75, -0.75, -0.5, 0.25, 0.0, 0.5, 0.5, -0.5, 0.25, 0.0, 1.0, 1.0, 0.25, -0.75, -0.5, -0.75, 0.0, 0.5, -0.75, 1.0, 0.5, 1.0, -0.25, -1.0, 0.25, 0.0, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, -0.25, 1.0, 0.5, 1.0, -1.0, 0.0, -1.0, 1.0, 0.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.5, 0.0, 1.0, 1.0, 0.75, 0.75, -0.75, ]);
    query100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
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
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    query100.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("internal");
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
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
    
    query103.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.pushErrorScope("validation");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, -1.0, -0.5, -0.75, -0.5, 0.75, 1.0, -1.0, 1.0, -0.5, -0.25, -0.25, 0.0, 0.5, 0.75, 0.75, 0.75, -1.0, 0.25, -0.75, -0.75, 0.5, -0.5, 0.75, -0.5, 0.5, -0.5, 1.0, -1.0, 1.0, -0.75, 0.0, -0.25, 0.75, 1.0, -0.25, -0.25, -0.5, -0.25, -0.5, -1.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.75, -0.75, -1.0, 1.0, -0.25, -1.0, 0.5, -1.0, 0.0, 0.75, -1.0, -0.25, 0.5, 0.5, -0.5, -1.0, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, 0.5, 0.5, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, 0.25, 0.0, 1.0, 1.0, -1.0, 0.5, 0.0, 0.25, 0.75, -0.75, 1.0, 1.0, 0.75, -0.25, -0.25, 1.0, -1.0, 0.25, 0.0, 0.5, -1.0, 0.75, -0.25, 0.0, ]);
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query103.destroy()
    
    query102.destroy()
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const command_buffer300 = command_encoder300.finish();
    const array9 = new Float32Array([-0.5, -0.25, 0.5, 0.5, -1.0, 0.5, 0.75, 0.5, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, -1.0, 0.0, -0.25, -0.5, 0.25, 1.0, 0.25, -0.75, 0.0, 0.0, -0.75, -1.0, 1.0, -0.5, 0.5, -1.0, 0.5, 0.0, 0.0, -0.25, -0.25, -1.0, -0.75, 0.0, 0.5, 0.0, -0.75, 0.5, 0.0, -0.75, 0.75, -0.75, -1.0, 1.0, 0.5, 0.5, 1.0, 1.0, -0.75, 0.0, 1.0, 0.5, 0.25, 0.5, 1.0, 0.0, 0.25, 0.25, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.25, 0.75, -0.25, 0.75, 0.25, -0.75, -0.5, 0.5, 0.75, -0.25, 1.0, 0.75, -1.0, 1.0, 1.0, -1.0, -0.5, 0.25, -0.75, -0.5, -0.25, -0.25, -0.5, -0.25, 0.25, 0.0, 0.0, 0.75, 0.0, 0.0, -0.5, 0.5, ]);
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture100.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture200.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device20.pushErrorScope("internal");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.popDebugGroup()
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    query104.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    
    query105.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query200.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    query105.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    query201.destroy()
    query201.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1010.executeBundles([])
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const array10 = new Float32Array([0.0, 1.0, 1.0, -0.5, 0.25, -1.0, 1.0, 1.0, 1.0, -0.5, 0.75, -0.75, -0.5, 0.0, 0.25, 1.0, 0.75, -1.0, 0.25, -0.75, 0.5, 0.25, -0.5, -0.25, 0.5, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.0, -0.75, -0.5, -0.5, 0.5, -0.25, -0.75, 0.75, 0.25, 1.0, -0.25, -1.0, -0.5, -0.75, 1.0, 1.0, 0.5, -0.75, 0.25, -1.0, 0.25, -0.75, -0.5, 1.0, -0.75, 0.75, -0.25, -0.25, 0.5, -0.75, -0.25, 0.75, 0.25, 0.5, 0.0, 0.0, -1.0, 0.0, -1.0, -0.75, 1.0, -0.25, 0.75, -1.0, 1.0, 0.25, -0.5, -0.25, 0.5, 0.25, 0.0, 1.0, -0.5, -1.0, -0.75, -1.0, -0.25, 1.0, 0.5, 0.5, -0.75, 0.25, 0.25, -1.0, -0.5, 1.0, -0.75, 0.75, 0.75, ]);
    query202.destroy()
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder1010.popDebugGroup();
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    query104.destroy()
    
    query200.destroy()
    texture301.destroy();
    
    
    const array11 = new Float32Array([-0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 0.25, 1.0, -0.75, 0.5, 0.0, 0.75, 0.75, 0.75, -0.75, -1.0, -0.25, 0.0, -0.5, 0.75, -0.5, -1.0, -0.75, 0.25, 0.0, 0.75, 1.0, 0.5, -0.25, 0.25, 0.25, 0.5, 0.5, -0.75, -0.75, -0.5, 0.0, 0.0, 0.25, 0.75, 0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.25, -0.75, 0.0, -0.25, -0.25, -1.0, -1.0, -0.5, 0.25, -0.75, 0.0, 0.5, 0.25, 1.0, -0.5, -0.75, -0.5, 0.25, 0.75, 0.75, 0.0, -0.25, -0.5, 0.75, -0.75, 1.0, 1.0, 0.25, -0.25, 1.0, -1.0, -0.75, 0.25, 0.5, -0.5, 0.25, 1.0, -1.0, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, -0.75, -0.75, 0.75, 0.0, 0.0, 0.0, -0.25, 1.0, -0.25, 0.5, ]);
    query201.destroy()
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    query200.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query102.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture300.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query201.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query202.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    texture103.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    query200.destroy()
    query101.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    render_pass_encoder1010.executeBundles([])
    query105.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.executeBundles([])
    query101.destroy()
    const command_buffer202 = command_encoder202.finish();
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    query106.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder302.popDebugGroup();
    query300.destroy()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.insertDebugMarker("marker");
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query300.destroy()
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device20.queue.submit([command_buffer202, ]);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    query106.destroy()
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    query101.destroy()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    texture400.destroy();
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    query300.destroy()
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    query104.destroy()
    
    query106.destroy()
    
    
    device40.destroy();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    query200.destroy()
    command_encoder302.popDebugGroup()
    query203.destroy()
    
    render_bundle_encoder301.popDebugGroup();
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query100.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query105.destroy()
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
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    query107.destroy()
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array12 = new Float32Array([0.5, 1.0, 0.0, -0.5, -0.5, 0.5, 0.0, 1.0, 1.0, -0.5, -0.75, 0.75, -1.0, -0.5, 0.0, -0.5, 1.0, -0.25, 0.75, -0.5, 0.25, 0.75, -0.25, 0.25, 0.5, 0.75, 0.75, 0.75, 0.0, -0.75, -0.75, -1.0, -0.75, -0.5, 0.5, -1.0, -0.75, -1.0, 0.75, 0.75, 0.0, -1.0, -1.0, 0.0, 0.5, 0.5, 0.0, -0.25, 0.25, -0.25, -1.0, -0.75, -0.75, -0.75, -0.5, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, 0.0, -1.0, -1.0, 0.75, 0.75, 0.5, 0.0, -0.25, 0.75, -0.5, 1.0, 0.75, -1.0, 0.5, -1.0, -0.75, 0.5, 0.25, -0.75, 0.5, -0.5, -0.25, 0.5, -0.25, 0.75, 0.25, 0.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.75, -1.0, 0.75, 0.75, 1.0, 0.0, -0.5, ]);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query200.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    query102.destroy()
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    query108.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder1010.executeBundles([])
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder302.popDebugGroup()
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    query106.destroy()
    
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    query205.destroy()
    query301.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query200.destroy()
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder303.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    query201.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_bundle_encoder300.popDebugGroup();
    command_encoder302.insertDebugMarker("mymarker");
    query108.destroy()
    
    texture104.destroy();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const command_buffer304 = command_encoder304.finish();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder302.insertDebugMarker("mymarker");
    query102.destroy()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder1030.insertDebugMarker("marker");
    texture102.destroy();
    render_pass_encoder1020.executeBundles([])
    texture302.destroy();
    const array13 = new Float32Array([-0.5, -0.25, -0.5, -0.25, 0.75, 0.25, 0.75, 0.25, 0.25, -0.5, 0.5, 1.0, -1.0, 0.5, -0.75, -0.5, -0.25, -1.0, -0.5, -0.25, 0.5, -0.5, -0.75, -0.25, 0.25, 0.0, -0.5, -0.5, 1.0, 0.5, -1.0, -0.5, -0.5, -0.5, -0.5, 0.5, 0.0, -0.75, 0.0, 0.25, -1.0, -1.0, 0.75, 0.5, -1.0, -1.0, 0.0, -0.5, 0.5, 0.5, -1.0, -0.75, 0.75, 0.75, 0.75, -1.0, -0.25, 0.75, 0.0, -0.75, 0.0, 0.75, 0.25, -0.5, 1.0, -0.25, -0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -1.0, 0.25, 1.0, -0.25, 0.25, -0.5, -0.75, 0.25, 0.25, 1.0, 1.0, -0.75, -0.75, 0.5, 0.25, -0.75, 0.25, 0.0, 0.5, 0.5, 1.0, 1.0, -0.5, 0.25, -0.25, 1.0, 1.0, 0.5, ]);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder303.insertDebugMarker("mymarker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    command_encoder201.insertDebugMarker("mymarker");
    const command_buffer303 = command_encoder303.finish();
    query203.destroy()
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query203.destroy()
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1010.executeBundles([])
    command_encoder204.insertDebugMarker("mymarker");
    
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    device30.queue.submit([command_buffer303, ]);
    query108.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query301.destroy()
    query203.destroy()
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    query102.destroy()
    query102.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    command_encoder201.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1000.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([command_buffer304, ]);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer302, ]);
}