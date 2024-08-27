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
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    texture000.destroy();
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
    const array0 = new Float32Array([-0.25, -0.75, 0.75, -1.0, 0.25, -0.5, 0.0, 0.5, -0.25, 0.75, 1.0, -0.25, -0.25, -1.0, 0.75, 0.75, 0.5, -0.5, 1.0, 0.25, 0.25, 1.0, 1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 1.0, -1.0, 0.75, 1.0, 0.5, 0.5, -0.75, -0.5, -0.25, -0.5, -0.25, 1.0, 1.0, -0.75, 1.0, 0.75, -1.0, 0.5, 0.0, 1.0, 0.75, -1.0, 0.0, -0.25, -0.5, -0.75, 0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.25, 0.75, 0.0, 1.0, 0.5, -0.25, -1.0, 0.75, -0.75, 0.75, -1.0, -1.0, 1.0, 0.75, -0.75, 0.25, -0.25, -0.75, -0.5, 0.5, -0.5, -0.5, -0.25, 0.25, -1.0, -0.25, 0.0, -0.5, -1.0, -0.5, 1.0, -0.25, 0.25, 0.5, -0.5, -0.5, 1.0, -0.5, 0.0, -1.0, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array1 = new Float32Array([-0.5, 0.75, 1.0, -1.0, 0.5, -0.75, 1.0, 0.5, 0.0, 1.0, 0.25, 0.75, -1.0, 0.75, 0.25, 0.0, -0.75, 0.75, 0.25, -0.5, -0.25, 0.25, -0.25, -0.75, 0.0, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -0.5, -0.75, 0.5, 1.0, 0.5, 0.75, -0.5, 0.25, 0.75, 0.5, 1.0, 1.0, 0.25, 0.25, -0.5, 0.25, 1.0, -1.0, 0.5, 0.0, 0.25, -1.0, -0.5, 1.0, -1.0, -1.0, -0.5, -0.25, -0.5, -1.0, -0.25, 1.0, 0.75, 0.0, 0.25, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, -0.25, -0.25, -0.5, -0.25, 0.5, -0.75, -0.25, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, -0.25, 0.75, 0.75, 0.5, 0.5, 0.25, 0.5, 0.5, 0.0, -0.75, -0.25, 0.25, 1.0, -0.5, -0.75, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array2 = new Float32Array([-0.5, 0.0, -0.25, -1.0, 0.75, -0.25, 0.5, 0.5, -0.25, -0.75, 0.25, -0.5, 0.75, -0.5, -0.75, 0.75, 1.0, 0.0, 0.5, 0.75, -0.5, 0.0, 0.0, 0.5, 1.0, -0.25, -1.0, 1.0, -0.5, 0.75, -1.0, -0.25, -0.75, 0.5, 1.0, 0.75, 0.0, -0.5, -0.25, -0.75, -0.75, 0.0, -1.0, 0.5, -0.5, 0.75, 0.75, 1.0, 0.75, 1.0, 1.0, 0.0, 0.25, -0.75, 0.0, -1.0, 1.0, 0.5, -0.5, 0.0, 1.0, 0.25, 0.5, -0.75, 0.25, 0.5, -1.0, -0.75, -1.0, -0.5, -0.5, 0.0, -1.0, -0.75, -0.75, 0.75, 0.5, -0.25, -0.75, 0.0, -0.75, 0.5, 0.75, -0.25, -0.5, -0.25, 0.25, 0.25, 0.5, 0.75, -0.5, 1.0, -1.0, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, -0.75, ]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array3 = new Float32Array([0.5, -0.5, 0.5, 0.25, -0.25, -0.75, 0.5, 1.0, 0.75, 0.5, 0.75, -0.5, -0.25, 0.5, -1.0, 0.5, 0.5, -0.5, 0.25, -0.25, -0.25, -0.75, -1.0, 0.0, -0.5, -0.25, -0.75, 1.0, 1.0, 1.0, -0.5, -1.0, -0.5, -1.0, -0.25, 0.75, 1.0, 1.0, -0.25, 0.25, 0.5, -0.75, 0.5, 0.5, -0.5, -1.0, 0.75, 0.5, 0.5, 1.0, -1.0, 0.25, 1.0, 0.0, -0.25, 1.0, 0.75, 0.25, 0.5, 0.0, -1.0, 0.75, -0.5, 1.0, 0.75, 0.0, 0.0, 0.5, -0.5, 0.5, 0.75, -1.0, -0.75, 0.0, -1.0, 1.0, -1.0, -0.5, -0.25, 0.25, 1.0, -0.25, 0.75, 0.25, 0.25, 0.25, 0.0, 0.0, 0.5, 0.0, 0.5, -0.75, -0.75, 0.75, 0.25, 0.25, -0.5, 0.75, -1.0, -1.0, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query100.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.destroy();
    const array4 = new Float32Array([-1.0, 1.0, -0.5, -1.0, -0.5, 1.0, 0.5, 1.0, -0.25, 1.0, -1.0, 0.25, -0.25, -0.25, -0.5, 1.0, 0.25, -1.0, 0.5, -0.75, 1.0, -0.25, 0.0, 0.5, -0.5, 0.5, 0.75, 1.0, 0.0, 0.25, -0.25, -0.5, -0.75, 0.5, 0.75, 0.0, 0.75, 0.25, -1.0, 0.25, 0.25, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, -0.75, -0.25, -1.0, 0.25, 0.25, -1.0, 1.0, 1.0, -0.5, 1.0, 1.0, 1.0, 0.75, 0.5, -0.75, 0.25, -0.25, -0.5, -0.75, -1.0, 0.0, -0.25, -0.25, 0.25, -0.75, 0.25, -0.75, -0.25, -0.75, 0.25, -1.0, 0.75, -0.5, 0.0, 1.0, 0.25, 0.25, 0.0, -1.0, -0.5, -1.0, -1.0, 1.0, 1.0, -1.0, -1.0, 0.75, -0.5, 1.0, 0.75, 1.0, 0.5, -0.5, ]);
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const array5 = new Float32Array([0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 0.5, -0.5, 0.25, 0.5, -0.25, 0.75, 0.75, -0.5, 0.75, -0.5, 0.0, 0.25, -1.0, -0.75, -0.75, 1.0, 0.0, -0.5, -1.0, 1.0, 1.0, 0.75, -0.75, 0.0, 0.0, -1.0, 1.0, -1.0, -1.0, -0.5, -0.75, 0.75, 0.5, 1.0, 1.0, 0.5, 0.0, 0.25, -0.75, 0.0, 0.75, -1.0, 0.75, 0.25, 1.0, -1.0, 0.75, -0.5, 0.0, -0.5, 0.25, 0.0, -1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, -0.75, -0.75, -0.75, 0.25, 0.5, 0.5, 1.0, -0.25, -0.25, 1.0, -1.0, 0.5, -0.25, -0.75, 0.75, 0.5, -0.75, -1.0, 0.5, -0.5, 1.0, -0.25, 0.0, -0.25, -0.75, -0.5, 0.5, -0.5, -0.75, -0.5, -1.0, 0.25, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array6 = new Float32Array([0.5, 0.25, 0.25, -0.75, 0.5, -0.75, -0.75, 0.0, 0.0, -0.5, -1.0, 0.5, -0.25, -1.0, 0.25, -0.25, -0.75, 0.75, -0.75, -0.25, 0.75, 1.0, 0.25, -0.25, -0.25, -0.75, -0.75, 0.0, -1.0, 0.5, -1.0, 0.75, -1.0, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 1.0, 0.5, 0.25, -0.25, -1.0, 0.25, 0.5, -0.25, -0.75, -0.75, 0.25, -0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.5, 0.75, 0.75, -0.25, 0.25, -0.25, -0.25, -1.0, 0.0, 1.0, -0.75, -0.5, -0.5, -0.25, 0.5, 0.0, -0.5, -0.75, 0.0, -0.75, 0.75, 0.25, 1.0, -0.25, 0.5, 1.0, -0.5, 0.5, -0.75, 0.5, 0.5, -1.0, -0.25, -1.0, -1.0, -1.0, 0.25, 0.5, -0.75, -0.75, 0.75, -0.5, -1.0, 0.5, ]);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer200.destroy()
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
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer201.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    texture200.destroy();
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer202.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array7 = new Float32Array([0.25, -0.25, 1.0, 0.75, 0.0, 1.0, 0.75, 1.0, -0.5, 0.75, -1.0, -0.5, 0.5, 0.25, 0.0, 0.75, -0.25, 0.75, 0.25, -0.5, 0.75, -0.5, -0.25, 0.25, 0.75, 0.25, 1.0, -0.5, -0.75, 0.75, -1.0, 1.0, -1.0, -0.25, 0.0, -1.0, 1.0, 0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, 0.25, 0.25, -1.0, 1.0, -0.75, 0.25, 0.25, 0.75, -0.25, 1.0, -0.25, -0.5, 0.5, 0.5, -0.25, -0.75, -0.75, -0.5, 0.75, 0.5, -1.0, 0.75, 0.25, -0.75, -0.25, 1.0, -0.25, -1.0, -1.0, 0.25, -0.75, 1.0, -0.25, -0.25, -0.5, 0.75, -1.0, -1.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.5, 0.5, -1.0, -0.75, 0.25, -0.5, 0.0, -1.0, -1.0, -0.25, 1.0, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer300.destroy()
    const array8 = new Float32Array([-0.25, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, 0.5, 0.75, 0.25, 0.75, 0.75, 0.5, -0.25, 0.0, 0.0, 0.0, -0.5, -1.0, -1.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.5, 0.75, 0.5, -0.25, 0.75, -1.0, -1.0, 1.0, -0.5, 0.5, 1.0, 0.0, -1.0, 1.0, -1.0, -0.75, 0.75, -0.5, -0.25, -1.0, 0.0, 0.5, 0.0, 0.25, -0.5, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.0, 0.75, 0.5, -0.25, 0.25, -0.75, 0.0, -1.0, -0.5, 0.25, -0.75, 0.75, 1.0, 0.0, 0.25, 0.75, 0.75, -0.75, 0.0, -0.5, -1.0, -0.25, 1.0, 0.0, 0.5, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, 0.75, -0.75, -0.5, 0.75, 1.0, -0.75, -0.5, 0.75, -0.5, -0.5, 0.75, 0.25, -0.75, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    buffer300.destroy()
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer202.destroy()
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
    
    device20.destroy();
    
    device30.destroy();
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const array9 = new Float32Array([0.75, 0.25, -0.5, 1.0, -1.0, -0.75, -0.25, -0.25, 0.0, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, -0.5, 0.0, 1.0, 0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 0.25, -0.5, -1.0, 0.5, -0.25, -0.25, 0.75, 1.0, 0.0, 1.0, -0.5, 0.75, -0.75, 0.0, 0.75, -0.5, 1.0, 0.5, 0.5, 0.5, 0.75, -0.5, 0.25, -1.0, 0.0, 0.25, 0.0, -0.75, 0.25, 0.75, 0.25, 0.5, -0.25, 0.25, -0.25, -0.75, -0.75, -0.5, 1.0, -0.75, -0.5, 0.0, 0.0, 0.75, -0.25, -0.5, -1.0, -1.0, 1.0, -1.0, -0.5, -0.25, -1.0, -0.5, 0.5, -0.5, 0.25, 0.0, 0.75, -0.75, -0.25, 0.0, 0.5, -0.75, 0.5, 0.5, 0.25, -0.25, 0.0, 0.0, -0.5, 0.25, 0.0, 0.0, -0.5, 1.0, ]);
    const array10 = new Float32Array([-1.0, -0.25, 0.0, 0.75, -1.0, -0.25, 0.0, -0.75, -0.5, 0.5, -1.0, -0.25, 0.75, -0.75, 0.25, 1.0, 0.25, 0.25, -0.25, 0.25, 0.0, 0.5, -1.0, -0.25, 0.5, -0.25, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, 0.75, -1.0, 0.0, 0.25, 0.0, -1.0, -0.25, 0.25, 0.0, 1.0, -0.75, -1.0, 0.25, 0.25, 0.25, -1.0, 1.0, -0.75, -0.75, -0.75, 0.25, -0.25, -0.75, 0.5, -0.75, 0.75, -1.0, 0.0, 0.75, -0.25, 1.0, -1.0, 1.0, 0.5, 0.5, -0.5, -0.25, -0.5, 0.0, 0.0, -0.5, 0.25, 0.75, -1.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 0.5, -0.75, 0.25, 1.0, -1.0, 0.75, 0.25, 0.5, -0.5, 0.5, 1.0, -0.25, 0.25, -0.25, ]);
    
    device40.destroy();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder002.popDebugGroup();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([-0.5, 0.25, 0.0, -0.25, 1.0, -0.5, 0.0, 0.25, -0.75, 1.0, -0.25, 0.75, -1.0, 0.25, -0.5, 0.5, 1.0, 0.0, -0.75, 0.25, -0.5, -0.5, -0.25, 1.0, 0.75, 0.75, -0.75, 0.75, 0.75, 0.5, -0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 0.25, -1.0, -0.75, 0.5, 0.0, 0.75, 0.0, 0.5, -0.75, 0.75, -0.25, -0.75, -0.5, -1.0, 1.0, 0.25, 0.75, 0.75, 0.0, 0.5, -1.0, -0.5, 0.25, 0.0, 0.25, 1.0, 0.5, 0.5, -0.25, 0.5, 0.75, 0.0, 0.5, 0.5, -0.5, -0.25, -0.25, 0.5, 0.0, -0.5, 0.0, 0.0, 0.75, 0.25, -0.75, 0.0, -1.0, 0.5, 0.5, -0.25, 1.0, 0.5, -1.0, 0.75, -1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.25, -1.0, 0.5, -0.5, ]);
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device10.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query501.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    query500.destroy()
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    buffer500.destroy()
    query101.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query501.destroy()
    
    
    query500.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    device50.destroy();
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    query503.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array12 = new Float32Array([-1.0, 1.0, 0.0, 1.0, -0.25, -1.0, -0.5, -1.0, 0.75, -1.0, 1.0, 0.0, 0.75, -0.75, -1.0, 0.25, -0.5, 0.75, 0.0, -0.75, -1.0, -0.75, -0.75, -0.5, -0.75, -0.75, -0.25, 0.75, 1.0, 1.0, 1.0, -0.75, -0.25, 1.0, 0.75, -0.75, -1.0, -0.25, -0.75, 0.0, 0.25, 1.0, -1.0, -0.25, 0.0, -0.5, -0.75, 0.25, 0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.75, -1.0, 1.0, 0.0, -0.75, 0.25, 0.75, 1.0, 0.5, -0.5, 0.5, 1.0, 0.0, -0.5, -0.75, 1.0, 0.25, 0.5, 1.0, -0.25, -0.75, -0.75, 0.5, 0.25, -0.25, 0.75, 0.5, 1.0, 1.0, 0.0, 0.75, -0.25, 0.25, 0.75, 0.75, -0.5, 0.25, 1.0, -1.0, 0.5, 0.0, -1.0, 0.5, 0.0, 1.0, 0.5, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const array13 = new Float32Array([0.0, 0.25, -0.5, -0.25, 0.0, -0.75, 1.0, -0.5, -1.0, 1.0, 0.25, 0.5, 0.75, 0.0, -1.0, 0.25, 0.25, -0.75, -0.5, 0.75, -1.0, 0.0, 0.0, 0.75, 0.5, -1.0, 0.75, -0.25, -0.5, 0.25, -0.75, 0.75, 0.75, 0.25, 0.75, 0.75, 0.75, -0.5, -1.0, 0.25, -1.0, 0.5, -0.5, -0.25, -0.25, -0.75, -0.25, 0.25, -1.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.25, -0.75, -0.5, 0.75, 1.0, 0.5, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, -0.75, -0.25, -1.0, 0.0, -0.5, 0.5, 0.5, 0.75, -0.25, 0.0, 0.75, -0.25, 0.0, 0.75, -0.25, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, 0.75, -0.75, 0.25, -0.25, 0.0, -0.75, 0.0, 0.75, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder300.popDebugGroup();
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const array14 = new Float32Array([-0.25, -0.75, -0.75, -0.5, 0.5, -0.75, 0.25, 0.75, -0.75, 0.25, -0.25, 0.5, -0.25, 0.0, 0.25, 1.0, 0.25, 0.75, 0.75, -0.25, -0.75, -1.0, 0.25, -0.5, -0.5, -0.5, 0.75, 0.75, 0.5, 0.25, -1.0, 0.5, -0.25, -1.0, -1.0, 0.75, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.5, -0.25, -0.5, -1.0, 1.0, 0.0, -0.5, 0.5, 0.0, 0.25, 1.0, 0.0, -0.25, -1.0, -1.0, -1.0, 1.0, 0.5, 0.0, 0.0, -0.75, -0.75, 0.75, -0.75, 0.5, -0.25, 0.75, 0.75, 1.0, 0.75, 0.0, -0.5, 0.5, 1.0, -1.0, -0.25, 0.5, -1.0, 0.0, 1.0, 0.0, 0.25, 0.0, 0.0, -0.25, 0.0, -1.0, 0.0, -1.0, 0.25, -0.75, -0.25, 0.0, 0.5, 0.5, 0.5, 0.0, -0.75, ]);
    
    
    const compute_pass_encoder7001 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7001" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device60.queue.submit([]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder7001.insertDebugMarker("marker")
    render_bundle_encoder600.pushDebugGroup("group_marker");
    compute_pass_encoder7001.insertDebugMarker("marker")
    compute_pass_encoder7001.pushDebugGroup("group_marker")
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array15 = new Float32Array([0.25, -0.5, 0.5, -0.25, 1.0, 0.25, 1.0, 1.0, -1.0, 1.0, -0.25, -0.25, 0.75, 0.75, -1.0, 0.75, -0.25, 0.75, 0.5, 0.0, -0.25, 1.0, 0.75, 0.75, 0.5, -0.25, -1.0, 0.5, -1.0, -0.25, 0.75, 0.75, -0.25, -1.0, -0.25, 0.75, -1.0, 0.25, -0.5, 0.25, 0.0, 0.0, -0.25, 0.75, 0.75, 0.75, 1.0, 0.0, -1.0, -0.25, 0.5, 0.75, 0.0, 0.5, 0.5, -0.75, -1.0, 0.75, 0.25, -1.0, 0.75, 0.75, 0.5, -1.0, -0.25, -0.75, 0.0, 0.0, -0.25, 0.75, 0.75, 0.25, -0.5, 0.25, 0.25, -0.75, 0.25, 0.5, -0.5, -0.25, 0.5, 0.5, -0.25, -0.5, 0.5, -0.75, -0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 0.5, -0.75, -0.75, -0.5, -0.25, -0.25, 1.0, 0.75, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const array16 = new Float32Array([1.0, 1.0, -1.0, -1.0, 1.0, 0.25, -1.0, 0.25, -0.25, -1.0, -0.25, -0.5, 0.75, 0.5, -1.0, -0.75, 0.5, -0.25, 0.0, -0.75, 0.25, 1.0, -0.75, 0.25, -0.25, -0.75, -0.75, -0.5, 0.0, 0.25, -1.0, 1.0, -0.75, 0.0, 0.0, 0.25, 1.0, -1.0, -0.5, 1.0, -0.75, 0.5, 0.25, 0.75, 0.25, 0.75, -0.75, 0.5, -1.0, 0.0, 0.75, -0.5, -0.75, 0.0, -0.75, 1.0, 0.0, 1.0, 0.25, -1.0, 0.75, -0.75, 0.75, -0.5, -1.0, 1.0, -0.25, -1.0, -0.25, -0.75, -0.25, 0.25, -0.5, 0.25, 0.25, 0.5, 0.75, -0.5, -0.75, 0.25, 0.5, -0.75, 0.0, -0.5, 0.25, 0.25, 0.0, -0.5, -0.5, 1.0, 0.5, 0.0, -1.0, 0.75, -1.0, 0.25, -0.75, -1.0, -0.75, 0.75, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder601.popDebugGroup();
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7001.insertDebugMarker("marker")
    device60.queue.submit([]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    texture700.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    compute_pass_encoder7001.popDebugGroup()
    
    
    buffer700.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    compute_pass_encoder7001.insertDebugMarker("marker")
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder600.popDebugGroup();
    query700.destroy()
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array17 = new Float32Array([-0.25, -0.5, -0.25, 0.5, 0.5, 0.5, -1.0, -0.5, 0.0, -0.75, 0.0, -0.75, 1.0, -1.0, 0.5, 0.0, 0.5, -1.0, 0.25, 0.5, 0.75, -0.75, 0.0, 0.75, 0.75, -1.0, -1.0, 0.25, -1.0, 0.75, -1.0, 0.0, -0.5, 0.75, 0.75, -1.0, 1.0, -1.0, -0.5, 1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 1.0, -0.75, 0.5, 0.5, 1.0, 0.25, 0.5, 0.5, -1.0, 0.25, -1.0, 0.0, -0.25, 0.75, -0.75, 0.25, -0.25, 1.0, -1.0, -0.75, -1.0, 0.25, 0.0, 0.25, 0.5, -1.0, 0.75, -0.25, 1.0, 0.75, -0.5, -0.5, -0.5, 0.25, 0.0, 0.5, -0.75, -0.25, 0.5, -0.75, -0.75, 0.5, 0.75, -0.25, 0.0, -1.0, 0.75, -0.5, 0.5, -0.75, 0.25, 0.5, 0.25, 0.5, 0.25, ]);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder701.insertDebugMarker("mymarker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder701.copyTextureToBuffer(
        {
            texture: texture701
        },
        {
            buffer: buffer700
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder602.insertDebugMarker("marker");
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query503.destroy()
    command_encoder701.insertDebugMarker("mymarker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device70.queue.writeTexture({ texture: texture703 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    buffer003.destroy()
    render_bundle_encoder601.pushDebugGroup("group_marker");
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
    
    device70.queue.writeTexture({ texture: texture703 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device90.destroy();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture703 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture703 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array18 = new Float32Array([0.75, 1.0, 0.0, 0.0, 0.75, 0.5, 1.0, -0.75, 0.0, 0.0, 0.75, -0.5, 0.75, 0.5, 0.25, 1.0, 0.0, -1.0, -0.5, 0.75, -0.25, -1.0, 0.0, 0.5, 0.25, 0.25, -0.75, 0.75, -1.0, 0.25, -0.75, 0.0, 0.5, -1.0, -0.75, 0.25, -0.25, -1.0, 0.25, -1.0, 0.25, -1.0, 1.0, 1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 0.5, 0.75, 0.75, 0.0, 0.0, 1.0, -1.0, -1.0, -0.25, -0.75, 1.0, 0.75, -0.75, -0.75, 0.75, 0.5, 0.75, -0.75, 0.5, -0.75, 1.0, -0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 0.75, -0.25, -0.5, -0.5, -0.75, -1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -1.0, 1.0, -0.75, 0.0, -0.25, -0.25, 0.0, 0.5, 1.0, -0.5, -0.5, -0.25, 0.25, ]);
    device70.queue.writeTexture({ texture: texture703 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeTexture({ texture: texture703 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture703.destroy();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    texture702.destroy();
    
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    device70.queue.writeTexture({ texture: texture701 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture601.destroy();
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    texture600.destroy();
    device70.queue.writeTexture({ texture: texture701 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture701.destroy();
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    command_encoder800.insertDebugMarker("mymarker");
    query601.destroy()
    
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    device70.queue.writeTexture({ texture: texture703 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    command_encoder702.insertDebugMarker("mymarker");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query800.destroy()
    
    device70.queue.writeTexture({ texture: texture703 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    compute_pass_encoder7001.insertDebugMarker("marker")
    
    buffer1001.destroy()
    device70.queue.writeTexture({ texture: texture703 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.destroy();
    render_bundle_encoder601.popDebugGroup();
    command_encoder800.resolveQuerySet(
        query800,
        0,
        32,
        buffer800,
        0
    )
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    render_bundle_encoder600.insertDebugMarker("marker");
    query801.destroy()
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    query800.destroy()
    render_bundle_encoder700.popDebugGroup();
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    command_encoder702.insertDebugMarker("mymarker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    compute_pass_encoder7001.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query802.destroy()
    render_bundle_encoder602.popDebugGroup();
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder7001.insertDebugMarker("marker")
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.popDebugGroup();
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    device70.queue.writeTexture({ texture: texture705 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder702.insertDebugMarker("mymarker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
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
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    compute_pass_encoder7001.insertDebugMarker("marker")
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([]);
}