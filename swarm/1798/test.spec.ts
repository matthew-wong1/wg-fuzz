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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query000.destroy()
    const command_buffer000 = command_encoder000.finish();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    texture101.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder100.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    texture100.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    texture200.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer000, ]);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query000.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.destroy();
    query000.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.submit([command_buffer000, ]);
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
    command_encoder003.pushDebugGroup("mygroupmarker")
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
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
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device00.pushErrorScope("validation");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.destroy();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder004.pushDebugGroup("mygroupmarker")
    const command_buffer002 = command_encoder002.finish();
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer004 = command_encoder004.finish();
    
    query002.destroy()
    
    
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    command_encoder003.popDebugGroup()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([0.0, 0.0, -0.5, 0.0, -0.75, 0.5, 0.75, 0.5, 0.25, -0.5, 0.25, -0.25, 1.0, -1.0, -0.75, 0.0, 0.25, -1.0, -1.0, 0.25, -1.0, 0.0, -1.0, -0.25, 0.75, -1.0, 0.75, 1.0, 0.25, -0.75, 1.0, -1.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.75, -1.0, 0.75, 0.75, -0.5, -0.5, -0.75, 0.25, -1.0, -0.75, 0.5, 1.0, -1.0, 0.25, 0.5, 0.0, -0.5, 1.0, 0.5, 0.0, -1.0, -0.5, -0.25, -0.25, 0.0, 0.75, -0.75, 0.75, 0.25, -0.5, 0.75, -0.25, -0.5, -0.5, 1.0, 0.5, 1.0, -0.5, 0.0, 0.75, -0.5, 1.0, -0.25, 0.5, -0.5, 0.25, 0.5, 0.5, 1.0, 1.0, 0.0, -0.25, -0.75, 0.75, 1.0, 0.75, -0.25, -0.25, 0.5, 0.75, -1.0, 0.75, 0.5, ]);
    
    const array1 = new Float32Array([0.0, -0.25, 0.5, 0.25, -0.75, -0.75, 0.5, 0.0, 0.75, -0.25, 0.0, -1.0, 0.0, 0.25, 0.0, -1.0, -1.0, -1.0, 0.5, -0.25, -0.25, 0.5, -1.0, -0.25, 0.5, -0.75, -0.75, 0.0, -0.75, -1.0, 1.0, 0.75, 0.0, -0.5, -0.75, 0.25, -1.0, 0.0, -0.5, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.75, -0.75, 0.0, -0.5, 0.5, 1.0, -0.25, 0.0, 1.0, 0.5, 0.75, -0.5, -1.0, -1.0, 0.0, -0.75, -1.0, 1.0, -0.5, -0.75, 0.0, -0.25, 1.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.25, 0.5, 0.25, 0.75, 1.0, -0.25, 0.5, 0.0, -1.0, 0.5, -0.25, -0.5, 0.25, -0.5, 0.5, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, -0.5, -1.0, 0.0, -1.0, 0.75, -0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    device30.pushErrorScope("internal");
    
    device30.destroy();
    const array2 = new Float32Array([0.0, -0.75, 0.75, 0.25, -1.0, 0.25, -0.75, -0.25, -0.75, 1.0, 0.5, 0.75, -0.75, -1.0, 0.5, 0.5, -0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 0.5, -0.5, -1.0, 0.0, -0.75, 0.25, 0.5, 0.5, -0.75, 0.75, -0.25, 0.75, -0.25, 0.25, 1.0, 1.0, -0.75, -0.25, 0.25, -1.0, -0.75, -0.25, 0.0, 1.0, -0.25, -0.75, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, 0.75, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, -0.25, 0.0, -1.0, 0.0, 0.25, 1.0, -0.25, -0.25, -0.5, 0.5, 1.0, 0.5, -0.75, -0.25, -0.25, -1.0, 0.25, 1.0, 1.0, 0.5, 0.5, -0.5, -0.25, 1.0, 1.0, -1.0, 0.5, 1.0, 0.5, 0.5, -0.5, -0.75, 0.75, 0.25, 0.75, -0.5, 0.0, -0.25, 1.0, ]);
    query200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
    device40.destroy();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    
    
    
    
    
    const array3 = new Float32Array([-0.25, 0.0, 0.5, -0.75, 0.0, 0.75, -0.75, -0.75, -0.25, 0.5, -0.25, 0.5, -0.75, 0.25, 0.25, 0.0, -1.0, 1.0, -0.5, -0.25, -0.5, 0.75, 0.5, -0.75, -0.5, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, 0.75, -0.25, 0.5, -0.75, -0.5, 0.25, 0.75, 0.75, -0.5, -0.25, 0.25, 0.25, -0.5, 0.5, 0.0, 0.75, -0.5, -0.5, -0.75, -0.5, -0.5, 0.0, 0.75, -0.75, 0.25, 0.25, 0.75, 1.0, 0.0, -0.5, 0.5, -0.5, -0.75, 0.5, -1.0, 0.75, 0.0, -0.75, -0.25, 1.0, -0.25, 0.5, -0.25, 0.25, 0.0, 1.0, 0.75, 0.75, -0.75, -1.0, 0.75, 0.5, 1.0, -1.0, 0.25, -0.5, 0.75, 0.0, 0.25, -0.5, -0.75, -0.25, -1.0, 0.0, -1.0, -0.25, -0.5, -0.5, -1.0, ]);
    compute_pass_encoder1010.popDebugGroup()
    
    
    
    query002.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.pushErrorScope("out-of-memory");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([-1.0, -1.0, 0.25, -0.75, -0.5, 0.0, -1.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, 0.0, 0.75, 0.25, 0.5, 0.5, 0.5, -0.5, -1.0, -0.5, 0.5, -0.75, -0.75, 0.0, -0.25, 0.75, 0.0, -0.25, 1.0, -1.0, 0.5, 0.75, 0.75, -0.25, 1.0, 1.0, 0.25, -0.75, -0.25, 0.5, -0.75, -0.75, -0.75, 0.5, -0.5, 1.0, 0.25, 0.75, 1.0, -0.75, -1.0, 0.5, -0.25, 0.0, 0.0, -1.0, 0.25, -1.0, -0.75, 0.75, -0.5, 0.5, -0.5, -1.0, 0.0, 0.75, 0.5, 1.0, 0.75, 0.25, -0.25, 0.0, 0.5, 0.5, -0.5, 1.0, 0.25, -0.25, 0.5, -0.25, 0.75, -0.25, -0.5, 1.0, 0.75, -0.75, 0.25, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, 0.75, -0.5, -1.0, 0.5, -0.75, ]);
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const array5 = new Float32Array([0.25, 0.75, -1.0, -0.75, 0.0, 0.0, -0.75, -0.5, -0.25, 0.25, -0.75, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, -1.0, -0.75, -1.0, 0.0, -0.5, 0.0, -0.5, 0.25, 0.0, -0.75, 0.0, -0.5, 0.25, -1.0, -0.5, 0.75, 0.5, -0.5, -1.0, -0.75, -1.0, 1.0, -1.0, 0.0, -1.0, -1.0, 0.75, -1.0, 0.5, -0.25, 0.0, 1.0, 1.0, 0.0, -1.0, 0.75, 0.0, 0.25, 0.0, 1.0, 1.0, -1.0, 1.0, -1.0, -1.0, -0.5, -1.0, 0.75, 0.75, 0.0, -1.0, -0.25, 0.25, -0.25, 0.0, 0.5, -1.0, 1.0, 0.75, 0.5, 0.25, 0.5, -0.5, 1.0, 0.25, 0.5, 1.0, 1.0, -0.25, -1.0, -1.0, -0.25, -0.25, 1.0, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.5, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const array6 = new Float32Array([0.75, 0.0, -0.5, 0.0, 0.0, -1.0, -0.75, -0.25, -1.0, 0.75, 1.0, -1.0, -1.0, -0.25, -1.0, 0.25, 0.0, -0.75, -1.0, 1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 0.5, 0.0, -0.5, -1.0, 0.0, 0.0, 0.75, -0.25, -0.25, 1.0, 0.25, 0.25, -0.25, 1.0, 0.5, -0.25, -0.75, 0.75, -0.5, 0.25, 0.25, 0.5, -0.5, 0.75, -0.75, 0.5, -1.0, 0.0, 0.75, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, -0.25, 1.0, 0.25, 0.25, 0.75, -1.0, -0.5, 0.5, 0.75, 0.25, -1.0, -0.25, 0.75, 1.0, 0.75, 0.5, 0.75, -0.25, 0.75, 0.0, 0.75, -0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 1.0, -1.0, -0.5, -0.75, 0.5, 1.0, 0.75, ]);
    
    
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture102.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    texture500.destroy();
    const command_buffer600 = command_encoder600.finish();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([]);
    
    compute_pass_encoder0010.popDebugGroup()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_buffer601 = command_encoder601.finish();
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
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
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array7 = new Float32Array([-0.5, 0.0, -0.5, 0.5, -0.75, -0.5, -0.75, 0.5, 0.25, 0.0, -0.75, 0.0, -0.75, 0.75, 0.25, 1.0, 0.25, 0.75, 0.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.5, -0.25, 0.75, 0.5, -0.75, -0.25, -0.25, 0.75, -0.5, 0.5, -0.5, 0.25, -0.75, -0.5, -0.25, 0.5, 0.0, -0.5, -0.25, -1.0, -0.75, 0.75, -0.25, -0.5, -0.75, -0.75, 1.0, 0.75, -0.25, -0.75, 1.0, 0.5, 1.0, 1.0, -1.0, -0.25, 0.0, 0.5, 0.25, 1.0, 0.75, -0.25, -0.75, 0.75, -0.5, -0.75, -1.0, 0.75, -1.0, 1.0, -0.5, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 0.0, -0.75, 0.5, 1.0, 1.0, -0.5, -1.0, -0.5, 0.75, -0.25, 0.5, 0.25, 0.25, 0.0, 0.75, 0.0, -0.75, -1.0, 0.5, ]);
    const command_buffer603 = command_encoder603.finish();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    query500.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    device40.destroy();
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    query501.destroy()
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    query502.destroy()
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    query501.destroy()
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query500.destroy()
    query502.destroy()
    command_encoder502.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder502.copyTextureToTexture(
        {
            texture: texture500
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
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
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
    
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    query500.destroy()
    
    command_encoder604.pushDebugGroup("mygroupmarker")
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
    
    query501.destroy()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query502.destroy()
    texture501.destroy();
    
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    query502.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    command_encoder502.popDebugGroup()
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    compute_pass_encoder5001.setPipeline(compute_pipeline501);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_buffer502 = command_encoder502.finish();
    
    command_encoder501.copyTextureToTexture(
        {
            texture: texture502
        },
        {
            texture: texture500
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    texture502.destroy();
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder502.popDebugGroup();
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    
    compute_pass_encoder5030.setPipeline(compute_pipeline502);
    compute_pass_encoder5030.insertDebugMarker("marker")
    compute_pass_encoder5010.popDebugGroup()
    
    compute_pass_encoder5040.setPipeline(compute_pipeline502);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group500);
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder5001.insertDebugMarker("marker")
    compute_pass_encoder5010.setPipeline(compute_pipeline508);
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline508.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
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
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5001.setBindGroup(0, bind_group502);
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
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder5010.dispatchWorkgroups(100);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
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
    query500.destroy()
    query100.destroy()
    
    
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer506, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer506, 0);
    
    query504.destroy()
    buffer501.destroy()
    query504.destroy()
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    buffer505.destroy()
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout500,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5010.end();
    
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    buffer506.destroy()
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const command_buffer505 = command_encoder505.finish();
    device50.pushErrorScope("internal");
    
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
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group503);
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer509, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer509, 0);
    const command_buffer401 = command_encoder401.finish();
    buffer500.destroy()
    const command_buffer501 = command_encoder501.finish();
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.copyBufferToBuffer(
        buffer508,
        0,
        buffer500,
        0,
        400
    );
    compute_pass_encoder5000.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder5001.insertDebugMarker("marker")
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    query504.destroy()
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer509, 0, array1, 0, array1.length);
    device50.queue.submit([command_buffer501, command_buffer502, command_buffer505, ]);
    compute_pass_encoder5000.end();
    
    
    
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
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
    
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer506, 0, array1, 0, array1.length);
    
    compute_pass_encoder5001.insertDebugMarker("marker")
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout500,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    buffer507.destroy()
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    
    query504.destroy()
    
    
    device50.queue.submit([]);
    
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer509, 0, array6, 0, array6.length);
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer509, 0, array0, 0, array0.length);
    command_encoder504.pushDebugGroup("mygroupmarker")
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    query000.destroy()
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout500,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    query502.destroy()
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    command_encoder506.resolveQuerySet(
        query505,
        0,
        32,
        buffer509,
        0
    )
    compute_pass_encoder5030.insertDebugMarker("marker")
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const uint32_5040 = new Uint32Array(3);

    uint32_5040[0] = 100;
    uint32_5040[1] = 1;
    uint32_5040[2] = 1;

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5010, 0, uint32_5040, 0, uint32_5040.length);

    compute_pass_encoder5040.dispatchWorkgroupsIndirect(buffer5010, 0);
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    device50.queue.writeBuffer(buffer5010, 0, array6, 0, array6.length);
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    {
        await buffer505.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer505.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer505.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer506, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    command_encoder506.copyBufferToBuffer(
        buffer505,
        0,
        buffer5010,
        0,
        400
    );
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    compute_pass_encoder5030.setBindGroup(0, bind_group504);
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5030.dispatchWorkgroups(100);
    compute_pass_encoder5001.popDebugGroup()
    compute_pass_encoder5040.popDebugGroup()
    compute_pass_encoder5030.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder5030.end();
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder5010.end();
    compute_pass_encoder5010.end();
    command_encoder504.popDebugGroup()
    const command_buffer506 = command_encoder506.finish();
    device50.queue.submit([command_buffer503, command_buffer506, ]);
    compute_pass_encoder5040.end();
    compute_pass_encoder5001.end();
    compute_pass_encoder1000.popDebugGroup()
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group505);
    const command_buffer400 = command_encoder400.finish();
    command_encoder500.popDebugGroup()
    compute_pass_encoder5001.dispatchWorkgroups(100);
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder5001.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    compute_pass_encoder5030.popDebugGroup()
    const command_buffer504 = command_encoder504.finish();
    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline508.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5016,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group506);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    const uint32_5001 = new Uint32Array(3);

    uint32_5001[0] = 100;
    uint32_5001[1] = 1;
    uint32_5001[2] = 1;

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5017, 0, uint32_5001, 0, uint32_5001.length);

    compute_pass_encoder5001.dispatchWorkgroupsIndirect(buffer5017, 0);
    compute_pass_encoder5001.end();
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
    const uint32_5040 = new Uint32Array(3);

    uint32_5040[0] = 100;
    uint32_5040[1] = 1;
    uint32_5040[2] = 1;

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5019, 0, uint32_5040, 0, uint32_5040.length);

    compute_pass_encoder5040.dispatchWorkgroupsIndirect(buffer5019, 0);
    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline508.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5021,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group507);
    device50.queue.submit([command_buffer504, ]);
    compute_pass_encoder5030.popDebugGroup()
}