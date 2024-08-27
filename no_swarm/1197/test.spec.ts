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
    
    const array0 = new Float32Array([0.75, 0.25, 1.0, -0.75, 0.25, -0.5, 1.0, 0.0, 1.0, -0.25, 1.0, 0.5, 1.0, 1.0, -0.5, 0.5, -0.75, -0.5, 0.0, 0.5, 0.25, 0.5, -1.0, -1.0, 0.25, 1.0, 0.25, 1.0, 1.0, -0.25, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, -0.25, -1.0, -1.0, 0.5, 1.0, -0.5, 0.75, -0.5, 0.5, -1.0, 0.5, -0.5, 0.5, -0.5, -0.5, 0.25, 0.5, -0.5, 0.75, 0.0, -0.75, 0.0, -0.25, 0.25, 0.75, -1.0, -0.75, 0.5, 0.0, -0.5, -0.75, 0.5, -0.5, -0.5, -1.0, -0.25, -0.75, -0.5, 1.0, 1.0, -0.75, -0.75, 0.5, 0.5, -1.0, 0.75, -0.5, 1.0, 0.75, 0.75, 0.5, 1.0, 0.0, -0.25, -0.75, 0.5, 0.75, -0.25, 0.25, -0.25, 0.5, 0.75, -1.0, 1.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.0, -0.5, 0.75, 0.0, -0.75, -0.5, 1.0, 0.75, 0.75, 0.0, 0.75, 0.5, -0.25, 0.0, -0.75, -1.0, 0.75, 0.75, 0.5, -0.25, 0.75, 0.75, 0.0, 0.5, 0.75, -0.25, 0.5, -0.5, -0.75, -0.75, 1.0, 0.25, 0.25, -0.75, 1.0, -0.25, 1.0, -0.5, 0.5, -1.0, 1.0, 0.5, -0.5, 0.0, 0.75, -1.0, 0.5, 1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -1.0, -1.0, 0.25, 0.25, -0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 1.0, 0.75, 1.0, -0.25, 0.5, -1.0, -0.25, -0.5, 0.75, 0.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.0, -0.75, 0.5, -0.75, 0.75, 0.0, -0.25, -0.5, -1.0, -0.25, 0.5, 0.25, 0.0, -0.5, 1.0, 0.5, -0.75, 0.5, 0.5, 0.75, 1.0, -1.0, ]);
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
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    
    
    device20.pushErrorScope("out-of-memory");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    
    const array2 = new Float32Array([0.25, -0.5, -1.0, -0.25, -1.0, 0.25, 0.0, 0.0, 0.0, 0.0, -1.0, -0.75, 0.25, 0.5, -1.0, 0.0, -0.25, 0.25, -0.25, -1.0, -0.75, -1.0, 0.75, -0.5, 1.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.75, -0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.25, -0.25, -0.75, 0.25, 0.0, -1.0, 0.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 1.0, 0.5, 0.0, 0.25, -0.25, 0.75, 0.0, -0.75, 0.25, 0.0, 0.5, -1.0, -0.25, 0.75, -0.25, 0.25, 0.75, 0.75, -0.25, 0.25, 1.0, -0.5, -0.75, 0.25, 0.25, 0.75, 1.0, 0.25, 0.75, -0.75, -0.75, 0.25, 1.0, 1.0, -0.25, 0.5, -0.25, 0.0, 0.25, 0.25, 0.5, -0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -0.25, -0.75, 0.25, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    device40.pushErrorScope("out-of-memory");
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.destroy();
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture400.destroy();
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
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    texture402.destroy();
    
    
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
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
    buffer200.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const array3 = new Float32Array([0.75, 0.25, -0.75, -0.5, -0.25, 0.25, 0.75, -1.0, 0.5, 0.5, 0.25, 0.0, 0.5, 1.0, 0.0, 0.75, -1.0, 0.25, 1.0, 0.75, 1.0, 0.25, 0.5, -0.5, -1.0, 0.0, -0.25, 0.5, -0.5, 0.75, 0.0, 1.0, -1.0, 0.25, 0.75, -0.25, -0.25, 0.25, -0.75, 0.5, 0.0, -1.0, 0.5, -0.25, 0.5, 1.0, -0.5, -1.0, 0.25, 0.25, 0.0, 0.5, -1.0, -0.75, -0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.25, -0.25, -0.5, -1.0, 0.25, -0.5, -0.75, 0.0, -0.25, 1.0, 0.0, -0.25, -0.75, 0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, -0.75, 0.25, 0.0, -0.75, -0.25, -0.75, 0.5, -0.5, 1.0, -0.75, 0.5, 0.25, -0.25, 0.5, -0.75, 1.0, -1.0, 0.25, -0.75, -0.5, ]);
    
    const array4 = new Float32Array([0.5, 0.0, -0.25, 0.75, 0.25, 0.25, 0.75, 0.75, 0.0, 0.25, 0.25, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, 0.25, -0.75, -0.75, -0.5, -0.75, 0.25, -0.25, 0.0, -0.75, 0.0, 1.0, -0.5, 1.0, -1.0, -1.0, 0.75, -1.0, -0.75, -0.5, 0.5, 0.0, 0.25, 0.0, 0.25, 0.0, 0.0, 0.0, 0.25, 0.5, -0.25, 1.0, 0.25, -0.5, -0.5, -0.25, -0.5, -1.0, 0.25, 0.25, 1.0, -0.5, 1.0, -0.25, -0.5, 0.0, -0.5, -0.75, -1.0, 0.5, -1.0, 0.5, 0.25, -1.0, 0.0, 0.0, -0.5, 0.75, -0.5, -1.0, 0.0, 0.75, 0.5, 0.5, 0.75, 1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.5, -1.0, -0.5, -0.25, 0.75, 0.0, -0.5, 0.25, -1.0, 0.0, 0.75, 0.25, 0.75, ]);
    const array5 = new Float32Array([0.25, -1.0, 0.5, -0.25, 0.0, 0.0, 0.0, -0.75, 0.5, -0.5, -0.75, -0.5, -0.25, 0.5, 0.25, -0.5, 0.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.5, 0.0, -0.25, 0.75, -0.5, -0.75, -0.75, 0.25, 0.25, -0.75, -1.0, 0.75, 0.25, -0.75, -0.5, 0.0, 0.0, -0.25, -0.25, 0.0, 1.0, 0.5, -0.25, 0.75, 0.5, 0.5, 1.0, -0.75, 0.25, -0.25, 0.5, -1.0, -1.0, 0.0, 0.0, -0.75, -0.5, 0.75, -1.0, 1.0, 1.0, -0.25, 0.0, 0.75, -1.0, -0.75, 1.0, 0.5, -0.75, -0.5, -0.75, 0.0, -0.25, 0.25, -1.0, 0.0, 0.0, -0.5, -0.5, 0.25, 0.25, 0.75, 0.0, -0.25, -0.5, 0.5, 0.5, 0.25, -0.75, 0.0, 0.75, -0.5, 0.75, 0.75, 0.0, 0.0, 0.0, 1.0, ]);
    
    
    const array6 = new Float32Array([0.25, 0.5, 0.5, 0.75, 0.75, -0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 0.75, 0.75, -0.25, 0.75, -0.25, -1.0, -0.5, -0.75, 0.25, -0.5, 0.25, -0.25, -0.75, 0.25, 0.25, -1.0, 0.25, -0.75, -0.75, 0.75, -0.75, -0.25, -0.5, 0.0, 0.25, -0.75, -1.0, -0.5, 0.0, -0.75, -0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 0.0, -1.0, -1.0, -1.0, -0.5, -0.75, 0.0, 0.75, 0.25, 0.75, 0.0, 0.5, -0.75, 1.0, 0.5, 0.5, -1.0, 0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 0.5, -0.5, -0.5, 0.0, 0.5, -0.75, 1.0, -0.5, 0.25, 1.0, 0.75, -1.0, 0.25, 0.0, -0.25, 0.5, 0.25, 0.5, -0.5, -0.75, -1.0, 0.5, 1.0, 0.75, 0.25, -0.5, -0.75, 1.0, -0.5, 1.0, ]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.submit([]);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array7 = new Float32Array([0.25, 0.75, -1.0, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, -1.0, -0.5, 1.0, -0.5, 1.0, 1.0, 0.5, -0.75, -0.5, -0.5, 0.0, 0.75, 0.25, -0.75, 0.25, -0.25, -1.0, 0.25, 1.0, 1.0, 1.0, 0.25, 0.5, -0.75, 0.0, 0.5, -0.75, 0.25, -0.5, -0.25, 0.75, 0.75, 0.25, -0.25, 1.0, -0.5, -1.0, -0.25, -0.75, 0.75, 0.25, 1.0, -0.25, -0.5, 0.5, 1.0, -0.5, -0.75, 0.0, -1.0, -0.5, 0.75, 0.25, 0.5, 0.75, 0.5, -0.25, -0.5, 0.25, -1.0, -0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 1.0, -0.75, -0.25, 0.0, 0.75, -1.0, 0.0, 0.25, -0.75, 0.25, -1.0, -1.0, 0.0, -1.0, -0.25, 0.5, 0.75, 0.25, -1.0, 0.0, 0.0, -0.5, -0.75, 0.25, 0.75, ]);
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
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
    
    command_encoder600.insertDebugMarker("mymarker");
    
    
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    texture700.destroy();
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
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
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device60.pushErrorScope("internal");
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
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("validation");
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.pushErrorScope("validation");
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.copyBufferToTexture(
        {
            buffer: buffer600
        },
        {
            texture: texture601
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture701.destroy();
    
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
    const command_buffer601 = command_encoder601.finish();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    buffer701.destroy()
    
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    buffer600.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    
    texture602.destroy();
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query600.destroy()
    buffer702.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const command_buffer602 = command_encoder602.finish();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6000.setPipeline(render_pipeline600);
    query602.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    texture600.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    query600.destroy()
    
    query700.destroy()
    
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    
    
    texture601.destroy();
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    render_pass_encoder6001.setPipeline(render_pipeline602);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
        layout: render_pipeline602.getBindGroupLayout(0),
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

    render_pass_encoder6001.setBindGroup(0, bind_group600);
    
    render_pass_encoder6001.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    render_pass_encoder6001.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture702.destroy();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    render_pass_encoder6001.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    
    
    device70.pushErrorScope("out-of-memory");
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    render_pass_encoder6000.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    query600.destroy()
    render_bundle_encoder601.setPipeline(render_pipeline601);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    render_pass_encoder6001.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    command_encoder600.insertDebugMarker("mymarker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device70.destroy();
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_pass_encoder6001.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    {
        await buffer603.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer603.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer603.unmap();
        console.log(new Float32Array(data));
    }
    
    
    render_pass_encoder6000.insertDebugMarker("marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6000.setStencilReference(1);
    
    render_pass_encoder6001.setVertexBuffer(0, buffer604);
    render_pass_encoder6000.pushDebugGroup("group_marker");
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group602);
    buffer606.destroy()
    render_pass_encoder6000.popDebugGroup();
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    buffer607.destroy()
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder6000.insertDebugMarker("marker");
    
    query602.destroy()
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6000.pushDebugGroup("group_marker");
    
    
    render_pass_encoder6000.setStencilReference(1);
    
    render_pass_encoder6001.setIndexBuffer(buffer602, "uint16");
    
    
    const array8 = new Float32Array([-1.0, 0.25, 0.0, 0.75, 0.5, 1.0, -1.0, -0.5, 0.0, 0.5, -0.5, -0.25, -0.5, 0.25, 0.5, 1.0, -0.5, 0.0, 0.5, -1.0, 0.0, 0.25, 1.0, 0.25, -0.25, -0.25, -0.25, -0.25, 0.25, 0.75, 0.5, 0.75, 0.75, -0.5, 0.5, -1.0, -0.75, -0.25, -1.0, 0.0, 0.75, -0.25, -1.0, 0.5, 0.5, -0.25, 0.75, -0.5, -0.5, 0.75, -0.75, 0.25, 0.0, -0.5, -0.25, 0.0, 0.75, -0.25, -0.25, -0.25, -1.0, 0.25, -0.5, 1.0, -0.75, -0.75, -1.0, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, 0.5, -0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, -1.0, 0.0, 1.0, 0.0, -1.0, 0.75, 0.0, 0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.5, -1.0, -0.5, -0.5, -0.25, ]);
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    device60.queue.writeBuffer(buffer604, 0, array6, 0, array6.length);
    texture604.destroy();
    render_pass_encoder6001.insertDebugMarker("marker");
    render_bundle_encoder601.setVertexBuffer(0, buffer606);
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
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6000.setBindGroup(0, bind_group603);
    render_pass_encoder6001.drawIndirect(buffer605, 0);
    buffer608.destroy()
    command_encoder603.pushDebugGroup("mygroupmarker")
    
    query601.destroy()
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6030,
            },
        ],
        occlusionQuerySet: query600
    });
    buffer6010.destroy()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    query601.destroy()
    buffer601.destroy()
    
    render_pass_encoder6030.pushDebugGroup("group_marker");
    buffer601.destroy()
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    render_bundle_encoder602.setPipeline(render_pipeline601);
    render_bundle_encoder601.drawIndirect(buffer605, 0);
    buffer602.destroy()
    
    render_pass_encoder6001.end();
    buffer603.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.setVertexBuffer(0, buffer609);
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder6030.setScissorRect(0, 0, texture603.width / 2, texture603.height / 2);
    device10.pushErrorScope("validation");
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6000.setVertexBuffer(0, buffer601);
    
    texture600.destroy();
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_bundle_encoder600.popDebugGroup();
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder6000.insertDebugMarker("marker");
    
    
    render_bundle_encoder600.setIndexBuffer(buffer607, "uint16");
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.popDebugGroup();
    texture603.destroy();
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder603 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder603",
        colorFormats: ["bgra8unorm"]
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.drawIndexed(3);
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
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
    render_bundle_encoder601.setIndexBuffer(buffer604, "uint16");
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder604.copyBufferToBuffer(
        buffer602,
        0,
        buffer602,
        0,
        400
    );
    command_encoder604.resolveQuerySet(
        query601,
        0,
        32,
        buffer609,
        0
    )
    render_bundle_encoder601.insertDebugMarker("marker");
    command_encoder604.clearBuffer(buffer600);
    buffer401.destroy()
    query602.destroy()
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    device60.queue.writeBuffer(buffer609, 0, array4, 0, array4.length);
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6030.setScissorRect(0, 0, texture603.width / 2, texture603.height / 2);
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    render_pass_encoder6000.drawIndirect(buffer605, 0);
    
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    const array9 = new Float32Array([1.0, -1.0, 0.5, -0.75, -0.5, 0.25, 0.0, -1.0, 1.0, -1.0, 0.0, -0.25, 0.5, 0.0, 0.75, 0.75, 0.75, -0.25, -0.5, -0.75, -0.75, 1.0, 0.75, -0.5, 0.25, 0.75, 0.75, 1.0, 0.25, 0.0, -0.5, -0.75, -0.5, -0.25, 0.5, -0.5, -0.5, -0.25, 0.0, 0.25, -1.0, 0.25, -1.0, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, -0.5, 1.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.75, 0.0, -0.75, 1.0, 0.0, 0.0, -1.0, 0.0, 0.5, -1.0, -0.75, 0.5, 0.75, -1.0, -0.75, 0.75, 0.5, 0.0, -0.5, 0.75, -0.75, 0.75, 0.0, 0.0, -1.0, 0.5, -0.5, 0.0, -0.25, -0.75, -0.25, 0.5, 0.25, -1.0, -0.75, 1.0, 0.75, -0.25, 1.0, -1.0, -1.0, -0.25, 0.25, -0.5, ]);
    render_pass_encoder6030.insertDebugMarker("marker");
    render_pass_encoder6040.setStencilReference(1);
    render_pass_encoder6030.setScissorRect(0, 0, texture603.width / 2, texture603.height / 2);
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder6040.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder603.setPipeline(render_pipeline603);
    render_pass_encoder6030.setPipeline(render_pipeline600);
    texture604.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeBuffer(buffer609, 0, array6, 0, array6.length);
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder6000.popDebugGroup();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const render_pass_encoder6031 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6040.insertDebugMarker("marker");
    compute_pass_encoder6040.setPipeline(compute_pipeline608);
    render_pass_encoder6001.drawIndirect(buffer606, 0);
    render_pass_encoder6031.setPipeline(render_pipeline600);
    device80.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6001.setIndexBuffer(buffer601, "uint16");
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6031.popDebugGroup();
    render_pass_encoder6040.setPipeline(render_pipeline600);
    render_pass_encoder6000.setIndexBuffer(buffer6011, "uint16");
    render_pass_encoder6031.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group604);
    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline608.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6015,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group605);
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6016, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6016, 0);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    render_pass_encoder6030.setVertexBuffer(0, buffer600);
    render_pass_encoder6030.drawIndirect(buffer605, 0);
    render_pass_encoder6030.draw(3);
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    render_pass_encoder6040.setBindGroup(0, bind_group606);
    render_pass_encoder6040.setVertexBuffer(0, buffer607);
    render_pass_encoder6040.setIndexBuffer(buffer6011, "uint16");
    render_pass_encoder6040.drawIndirect(buffer6016, 0);
    render_pass_encoder6000.end();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder6040.end();
    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6020,
                },
            },
        ],
    });

    render_pass_encoder6031.setBindGroup(0, bind_group607);
    render_pass_encoder6031.setVertexBuffer(0, buffer6010);
    render_pass_encoder6030.setIndexBuffer(buffer6012, "uint16");
    render_pass_encoder6031.drawIndirect(buffer605, 0);
    render_pass_encoder6030.end();
    render_pass_encoder6040.drawIndirect(buffer6016, 0);
    render_pass_encoder6031.setIndexBuffer(buffer6011, "uint16");
    render_pass_encoder6000.draw(3);
    render_pass_encoder6001.drawIndexed(3);
    render_pass_encoder6031.end();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    render_pass_encoder6031.end();
    command_encoder603.popDebugGroup()
    render_pass_encoder6040.draw(3);
    render_pass_encoder6031.drawIndexedIndirect(buffer6016, 0);
    compute_pass_encoder6040.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer604 = command_encoder604.finish();
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline608.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group608);
    render_pass_encoder6001.popDebugGroup();
    device80.queue.submit([]);
    const command_buffer603 = command_encoder603.finish();
    device60.queue.submit([command_buffer603, command_buffer604, ]);
    render_pass_encoder6001.end();
    render_pass_encoder6001.drawIndexedIndirect(buffer6016, 0);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    render_pass_encoder6030.popDebugGroup();
}