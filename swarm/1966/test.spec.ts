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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
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
    const array0 = new Float32Array([0.25, 0.5, 0.25, 0.75, 0.25, -0.25, 0.75, 1.0, -0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 0.5, 0.25, 0.0, 0.0, -0.75, 0.75, 0.25, -0.5, 0.25, -0.25, 0.75, 1.0, 0.0, 0.0, 1.0, -0.75, 0.25, 0.5, 1.0, -1.0, 0.25, -0.75, 0.25, 0.25, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, 0.75, 0.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.75, 0.0, 0.5, -0.75, 0.25, -1.0, 0.75, 0.5, 0.75, -0.75, 1.0, -0.25, 0.0, 0.25, -0.5, -0.75, 1.0, -1.0, -1.0, -0.75, -1.0, 1.0, 0.25, 0.5, -0.25, -1.0, -1.0, 0.75, 0.75, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, -1.0, 0.25, 0.5, -1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 0.75, -0.75, 1.0, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture001.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    buffer300.destroy()
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device30.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
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
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    device50.destroy();
    device40.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const array1 = new Float32Array([0.0, -1.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.25, -0.5, 0.5, -0.75, -1.0, -1.0, -0.5, -0.25, -0.75, 0.0, 0.0, 0.5, -0.5, 1.0, -0.5, 1.0, -0.75, 0.0, 0.5, 0.25, -0.5, 0.0, 0.0, -1.0, -1.0, -0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.0, 0.75, 0.25, -0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -0.25, 0.0, -0.5, -0.25, 0.25, -0.25, 0.75, 0.0, -0.5, -1.0, 0.25, 0.25, -1.0, -0.75, -0.25, 0.25, 0.25, 0.25, 0.5, -0.75, -0.25, -0.75, 1.0, -1.0, -0.25, 0.0, 0.0, -0.75, 1.0, -0.25, -0.25, 0.5, -1.0, 1.0, 0.25, -0.25, -0.25, 0.25, 0.75, 1.0, 0.5, 0.0, -1.0, 0.5, 1.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.75, -0.5, -0.5, ]);
    const array2 = new Float32Array([-0.25, 0.0, -0.75, 0.25, 0.5, 0.0, 0.75, -1.0, -1.0, 0.75, -0.25, 1.0, 0.5, -0.25, -0.25, 0.5, 1.0, 0.25, 0.5, 0.25, 0.5, -0.25, 1.0, 0.25, 0.5, 0.25, -0.25, -1.0, 0.5, 0.5, -0.25, 0.5, -0.75, 1.0, 0.0, 0.75, -1.0, -0.5, 0.75, 1.0, 0.0, 0.25, -0.25, -0.25, 0.25, 1.0, 0.75, -1.0, -1.0, -0.25, 0.75, 0.5, -0.5, 0.25, 0.0, 0.25, 1.0, 0.5, 1.0, 0.75, 0.0, -0.75, -0.25, -0.25, 0.0, 0.25, -0.5, 0.25, -0.75, 0.0, 1.0, 0.0, 1.0, 0.75, -0.75, 0.25, 0.75, 0.0, -0.75, 0.0, 0.75, 1.0, -0.5, 0.5, 1.0, -0.75, 0.5, 1.0, 0.75, 0.0, -0.75, 0.25, -0.75, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, -0.25, ]);
    const array3 = new Float32Array([0.75, -0.75, -1.0, 0.75, -0.5, -0.5, -0.25, -0.75, 0.5, -0.5, -0.25, -0.25, 0.0, -1.0, -0.5, 0.5, 1.0, -0.25, 0.0, -1.0, -0.25, 0.0, 1.0, -0.5, 0.25, 1.0, -0.25, 1.0, -0.5, -0.75, -1.0, 1.0, -1.0, -0.25, 0.25, 0.75, 0.0, -0.25, 0.75, -0.75, 0.75, 0.0, -0.25, 0.75, -0.75, 1.0, -0.25, 0.75, -0.75, 1.0, 0.25, -0.75, -0.75, 0.0, -0.5, 0.75, 0.5, 0.5, -0.75, 1.0, 0.75, 1.0, -0.75, 0.5, -0.25, 0.75, 1.0, -0.25, -0.25, 0.0, 0.25, 0.25, 0.0, -0.5, 0.0, 1.0, -0.5, 0.0, 1.0, -0.75, -0.75, 1.0, 0.5, -0.5, 1.0, -1.0, 0.5, 0.75, -1.0, 0.25, -0.25, 1.0, -0.75, 0.5, 0.0, 0.25, -0.5, -0.5, 0.75, 0.5, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture002.destroy();
    const array4 = new Float32Array([-1.0, -0.75, -1.0, 0.5, -0.75, 1.0, -1.0, 0.5, 0.0, 0.25, 1.0, -0.75, -1.0, 0.5, 0.0, -0.75, -1.0, -1.0, 0.5, -1.0, -1.0, 0.0, -0.5, -0.25, 0.75, -0.5, -0.25, 1.0, -1.0, 0.5, -0.25, -1.0, -0.75, -0.75, -0.5, -1.0, -0.25, -1.0, 0.75, -1.0, 0.0, -1.0, -0.25, 1.0, 1.0, 0.25, -0.25, 0.0, -0.5, -0.5, 0.0, -0.25, 0.5, -0.25, -0.5, -1.0, -0.25, -1.0, 0.25, 1.0, -0.25, 1.0, 0.75, -0.5, -0.5, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.75, -0.25, 0.25, 0.0, -0.5, 0.75, -1.0, -1.0, -1.0, -0.5, -0.75, -0.75, 0.0, 0.75, -1.0, -0.75, 0.0, 0.75, -0.75, -1.0, -0.25, 0.25, -0.25, 0.75, 1.0, 1.0, 0.5, -0.25, -0.75, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const array5 = new Float32Array([0.0, 0.25, 0.75, 0.25, 0.0, -0.25, -0.25, -1.0, 0.5, -0.5, 0.75, -0.75, -0.25, -0.5, 1.0, 0.0, 1.0, 0.75, -0.75, 0.25, -0.75, 0.25, -1.0, -0.25, -0.5, 0.5, 0.25, -1.0, 0.75, 0.75, 0.75, 0.25, -0.5, 0.75, -0.5, 0.5, 0.5, 1.0, 0.75, 0.75, 0.75, 0.0, -1.0, 0.5, 0.0, 0.5, 0.5, -0.5, 0.75, -0.5, 0.75, 0.75, -0.5, -0.5, 0.0, 1.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.5, -0.5, -0.75, -0.25, -0.25, -0.25, 0.25, -0.25, 0.75, -0.5, 0.5, 0.25, -0.25, 1.0, -0.75, 0.0, 1.0, 0.5, 1.0, 0.75, 0.5, 1.0, -1.0, -1.0, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, 0.0, -0.5, 1.0, 0.5, 0.5, 0.25, -0.75, -0.5, 0.5, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
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
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    texture500.destroy();
    device70.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device80.destroy();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const array6 = new Float32Array([0.0, 1.0, 1.0, -0.25, 0.5, 1.0, 0.25, -0.25, -0.25, 0.25, -0.5, 0.5, 0.25, -0.5, 0.5, 0.5, -1.0, -0.75, -1.0, -0.75, 0.0, 1.0, 0.0, -0.75, 0.5, 0.75, -0.5, -0.75, 0.5, -0.75, 1.0, -0.25, 1.0, -0.25, 0.5, 0.5, 0.75, -1.0, -0.25, 0.25, 0.0, 0.0, -0.5, 0.25, 0.0, 0.0, -0.75, 0.25, 0.5, 0.25, -0.5, -0.25, -1.0, -0.5, -0.25, 0.25, -0.75, -0.25, 0.25, 0.25, 0.0, -0.5, 0.75, -0.25, -1.0, 0.25, -1.0, -0.75, -0.25, 1.0, 0.5, -0.5, -0.5, 0.75, -1.0, -0.25, 0.5, -1.0, -1.0, -1.0, 1.0, 0.75, 1.0, 0.25, 0.0, 0.25, 1.0, -0.25, -0.5, 0.5, 0.0, 0.0, -1.0, -0.5, 0.75, -0.75, 0.75, -1.0, -0.75, 1.0, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array7 = new Float32Array([0.0, -0.75, 0.0, -1.0, -0.5, 1.0, 0.75, 0.5, -1.0, -1.0, 0.75, 0.5, -0.75, -1.0, -1.0, -0.5, -0.25, -0.75, 0.0, 0.5, 0.25, -1.0, 0.25, 0.25, -1.0, -1.0, 0.0, 0.25, -0.75, 0.0, -1.0, -0.25, -0.75, 0.25, 0.5, 0.5, 1.0, 1.0, -0.75, 0.25, 1.0, -0.25, 0.25, -1.0, 0.0, 0.75, -1.0, -1.0, -0.75, 1.0, 0.25, -1.0, 0.0, 0.75, 0.25, 1.0, 0.25, -0.5, 0.25, 0.0, -0.25, 0.5, 0.75, 0.0, -0.5, -0.75, 0.75, 0.25, -0.25, -0.25, 0.75, -0.75, -1.0, -0.75, -1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -1.0, -0.75, 1.0, 0.75, -0.5, -1.0, 0.75, -1.0, -0.75, -1.0, -0.25, 0.25, 0.0, -1.0, 0.5, 0.25, -0.25, 0.75, 0.75, 0.5, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device90.queue.writeTexture({ texture: texture900 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer701.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture900.destroy();
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.destroy();
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const array8 = new Float32Array([-0.75, -1.0, -0.75, -1.0, -0.25, -0.75, -0.25, -0.75, 0.5, 1.0, 0.0, -0.5, 0.5, -0.25, -0.75, 1.0, 0.5, -0.5, 0.25, 1.0, -1.0, 0.75, -1.0, -0.75, 0.5, -0.75, 1.0, 1.0, 0.75, -0.5, 0.0, 0.25, 0.5, 0.75, -0.5, 1.0, -0.25, 0.75, 0.0, -0.25, -0.5, -0.25, -0.5, 1.0, -0.5, -1.0, 0.75, 0.25, 0.0, 0.5, -0.75, 0.75, 0.25, 0.75, 0.5, 0.25, 0.75, -1.0, 0.0, -0.25, -0.75, -1.0, 0.25, 0.25, -0.25, 0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 0.0, 0.25, -0.25, 0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -0.5, -0.25, 0.0, 0.0, 1.0, 0.25, -0.25, 0.5, 0.75, 0.25, 0.5, 0.0, -0.5, 0.75, 0.25, -0.25, 0.0, 0.0, -0.75, -0.75, ]);
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    
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
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device90.queue.writeTexture({ texture: texture902 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer901.destroy()
    
    
    device90.queue.writeBuffer(buffer902, 0, array8, 0, array8.length);
    device90.queue.writeBuffer(buffer902, 0, array3, 0, array3.length);
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
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer902.destroy()
    texture003.destroy();
    
    buffer100.destroy()
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    texture901.destroy();
    
    texture903.destroy();
    device90.destroy();
    const array9 = new Float32Array([1.0, -0.75, -0.25, 1.0, 0.5, -0.25, 1.0, 0.0, 0.75, -0.25, 0.25, -1.0, 0.0, 0.0, -0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 0.0, 0.5, -1.0, -0.25, 1.0, -0.5, 1.0, -0.5, 0.75, 0.75, 1.0, -0.25, -1.0, 1.0, 0.25, 0.75, 0.5, 1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, 0.5, -0.75, -0.5, 0.75, 0.25, -0.75, 0.5, 0.0, 0.25, 1.0, 0.5, -0.75, 0.25, 0.5, -1.0, -0.75, 1.0, 0.0, -0.5, 1.0, 0.75, -0.75, 0.75, -0.5, -1.0, -0.5, -0.5, 0.25, -0.5, -0.5, -0.5, 0.75, 0.25, 0.25, 0.75, -1.0, 1.0, 0.0, -1.0, 0.0, -1.0, 0.0, -1.0, 0.75, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, 0.0, 0.25, -0.75, -0.75, 0.0, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer301.destroy()
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    device110.queue.writeBuffer(buffer1100, 0, array9, 0, array9.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    device110.queue.writeBuffer(buffer1100, 0, array0, 0, array0.length);
    device110.queue.writeBuffer(buffer1100, 0, array2, 0, array2.length);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device110.queue.writeBuffer(buffer1100, 0, array2, 0, array2.length);
    device110.destroy();
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    device90.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
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
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    device130.queue.writeBuffer(buffer1300, 0, array5, 0, array5.length);
    device130.queue.writeBuffer(buffer1300, 0, array9, 0, array9.length);
    buffer900.destroy()
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device130.queue.writeBuffer(buffer1300, 0, array6, 0, array6.length);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1301.destroy()
    device130.queue.writeBuffer(buffer1300, 0, array0, 0, array0.length);
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer1300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1300.unmap();
        console.log(new Float32Array(data));
    }
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    device130.queue.writeBuffer(buffer1300, 0, array8, 0, array8.length);
    device130.queue.writeBuffer(buffer1300, 0, array8, 0, array8.length);
    device130.queue.writeTexture({ texture: texture1300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device140.queue.writeBuffer(buffer1400, 0, array7, 0, array7.length);
    device140.queue.writeBuffer(buffer1400, 0, array6, 0, array6.length);
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    device130.queue.writeBuffer(buffer1300, 0, array3, 0, array3.length);
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    texture300.destroy();
    device140.queue.writeBuffer(buffer1400, 0, array5, 0, array5.length);
    device130.queue.writeBuffer(buffer1300, 0, array1, 0, array1.length);
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeBuffer(buffer1300, 0, array0, 0, array0.length);
    
    device130.queue.writeTexture({ texture: texture1300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
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
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    device130.queue.writeTexture({ texture: texture1300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device130.queue.writeBuffer(buffer1300, 0, array4, 0, array4.length);
    device130.queue.writeTexture({ texture: texture1300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer1400.destroy()
    const array10 = new Float32Array([0.25, 0.5, 0.0, 1.0, 0.25, 0.25, -0.75, 0.25, 0.25, 0.5, 1.0, 1.0, -0.25, 0.5, 0.5, 0.5, -0.25, 0.5, -1.0, 0.5, 0.5, -0.25, -0.25, -1.0, 0.75, 0.5, -0.5, 0.25, 1.0, -1.0, 0.5, 0.75, 0.5, -0.25, 0.25, 0.75, -0.75, 0.5, 0.0, 0.5, 0.75, -0.5, -1.0, 0.0, 1.0, -1.0, 0.75, 0.75, 0.75, -0.25, 0.75, -0.5, 0.25, 0.5, -0.75, 0.75, 0.75, 0.75, 0.0, -0.5, 0.25, -0.75, 0.5, -1.0, 0.25, -0.75, 0.5, 0.5, -0.75, 1.0, -0.75, 0.75, 0.0, 0.0, -0.5, 1.0, 1.0, 0.5, -1.0, 1.0, 0.0, 0.5, 1.0, 0.75, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, -0.5, -1.0, -0.25, -0.5, 0.75, -0.75, 0.5, 0.75, -0.25, -0.75, ]);
    const render_bundle_encoder1302 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1302",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeBuffer(buffer1300, 0, array3, 0, array3.length);
    device130.queue.writeTexture({ texture: texture1300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    device130.destroy();
    
    device140.destroy();
    const array11 = new Float32Array([0.25, 1.0, 0.25, -1.0, 1.0, -0.75, 0.0, 1.0, -0.5, -0.75, -1.0, -0.5, 0.5, -0.5, -0.25, -0.5, 0.25, 0.0, 0.5, -0.5, -0.5, -0.75, -0.5, -0.75, -0.75, -1.0, -0.25, 0.5, 0.0, 0.0, 0.25, -0.75, -0.25, -1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.75, 0.0, 0.75, -0.25, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, 1.0, 1.0, -1.0, 0.25, 0.75, -0.5, -0.75, 0.0, 0.75, -0.25, 0.25, -1.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.75, -0.5, -1.0, 1.0, -0.25, -0.75, 0.75, -0.25, -0.5, -0.75, -1.0, 0.0, -0.25, -0.25, 1.0, -1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 0.5, -0.25, -1.0, -0.25, 0.0, -0.75, -0.5, -0.5, 0.25, 0.75, 0.5, -0.5, -0.5, ]);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array12 = new Float32Array([0.5, 0.0, 1.0, -0.25, 1.0, 0.0, -1.0, -0.5, -0.75, 0.75, -1.0, -0.5, -0.5, 1.0, 1.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.5, 0.0, 0.75, -1.0, 0.5, -1.0, -0.5, -0.25, 0.25, 0.25, 1.0, 0.5, 0.75, 0.25, -1.0, -0.25, 0.0, 1.0, 0.5, -1.0, -0.25, 1.0, -1.0, -0.25, -0.5, 0.0, 1.0, -0.25, -0.75, -0.5, 1.0, 1.0, 0.0, 0.5, -0.5, -0.75, 0.75, -1.0, -0.5, -0.75, 0.25, -1.0, -1.0, 0.75, -0.25, 0.25, -1.0, 0.5, -1.0, -0.5, -0.5, 0.75, 0.75, -1.0, 0.5, 0.0, 0.75, 0.25, 0.75, 0.75, -0.25, 0.5, -0.75, 0.5, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 0.75, -0.5, ]);
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    device120.queue.writeBuffer(buffer1200, 0, array12, 0, array12.length);
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    buffer1200.destroy()
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    texture1200.destroy();
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    buffer1201.destroy()
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const compute_pipeline1300 = device130.createComputePipeline({
        label: "compute_pipeline1300",
        layout: pipeline_layout1300,
        compute: {
            module: shader_module1300,
            entryPoint: "main"
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
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
    device130.queue.writeBuffer(buffer1300, 0, array5, 0, array5.length);
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    
    
    
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    device00.queue.writeTexture({ texture: texture002 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
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
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device120.queue.writeTexture({ texture: texture1201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device120.queue.writeTexture({ texture: texture1201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device120.queue.writeTexture({ texture: texture1201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture904 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    
    
    const compute_pipeline1200 = device120.createComputePipeline({
        label: "compute_pipeline1200",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1201,
            entryPoint: "main"
        }
    });
    device150.queue.writeTexture({ texture: texture1500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeBuffer(buffer1501, 0, array3, 0, array3.length);
    device150.queue.writeBuffer(buffer1500, 0, array3, 0, array3.length);
    device120.queue.writeTexture({ texture: texture1202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const compute_pipeline1201 = device120.createComputePipeline({
        label: "compute_pipeline1201",
        layout: pipeline_layout1200,
        compute: {
            module: shader_module1200,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    device150.queue.writeBuffer(buffer1500, 0, array11, 0, array11.length);
    buffer1501.destroy()
    render_bundle_encoder1200.setPipeline(render_pipeline1201);
    device120.queue.writeTexture({ texture: texture1202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    device120.queue.writeTexture({ texture: texture1202 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1503_code = "";
    try {
        shader_module1503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1503 = await device150.createShaderModule({ label: "shader_module1503", code: shader_module1503_code })
    
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1200 = device120.createBindGroup({
        label: "bind_group1200",
        layout: render_pipeline1201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1203,
                },
            },
        ],
    });

    render_bundle_encoder1200.setBindGroup(0, bind_group1200);
    
    device150.queue.writeTexture({ texture: texture1500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device150.queue.writeBuffer(buffer1501, 0, array3, 0, array3.length);
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1501,
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
            module: shader_module1501,
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
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    texture1202.destroy();
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    buffer1202.destroy()
    
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    device120.destroy();
    render_bundle_encoder1302.pushDebugGroup("group_marker");
    render_bundle_encoder1501.pushDebugGroup("group_marker");
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder1500.setPipeline(render_pipeline1500);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device130.queue.writeTexture({ texture: texture1300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1504_code = "";
    try {
        shader_module1504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1504 = await device150.createShaderModule({ label: "shader_module1504", code: shader_module1504_code })
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture701.destroy();
    buffer301.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer1500.destroy()
    
    device150.destroy();
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const array13 = new Float32Array([-0.25, 1.0, -0.5, 0.25, -1.0, -0.25, -0.5, 0.25, 0.0, -0.5, 0.25, -1.0, 0.25, 0.5, 0.5, -0.5, -0.5, 0.5, 0.75, 0.25, 0.25, -0.25, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, 0.75, 0.25, 0.0, 0.25, 0.5, -0.25, -0.5, 1.0, -0.5, 0.75, 0.0, -1.0, 0.75, 0.0, 0.75, 0.25, 0.75, 0.5, 0.75, 0.5, 0.25, -0.75, -1.0, 0.0, 1.0, -0.75, -0.75, 0.25, 0.75, 0.0, -1.0, -0.25, -0.75, 0.5, -0.75, 0.0, -0.75, -0.25, 0.0, 0.25, -0.5, 1.0, 0.5, -0.75, 0.75, 0.0, -1.0, 0.5, 0.25, 0.25, 1.0, -1.0, -0.25, 0.0, -1.0, 0.5, -0.5, -0.25, 0.25, 0.5, -0.25, -1.0, 0.25, -0.5, -1.0, -0.75, -0.5, -0.75, 1.0, ]);
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    device130.queue.writeTexture({ texture: texture1300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    device160.destroy();
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    
    device130.queue.writeTexture({ texture: texture1300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device160.queue.writeTexture({ texture: texture1600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device110.queue.writeBuffer(buffer1100, 0, array10, 0, array10.length);
    
    
    const texture_view8021 = texture802.createView({ label: "texture_view8021" });
    
    device160.queue.writeTexture({ texture: texture1600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1101]
    });
    device130.queue.writeBuffer(buffer1300, 0, array7, 0, array7.length);
    device10.destroy();
    const render_pipeline1501 = device150.createRenderPipeline({
        label: "render_pipeline1501",
        vertex: {
            module: shader_module1502,
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
            module: shader_module1502,
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture1204 = device120.createTexture({
        label: "texture1204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device70.queue.writeBuffer(buffer700, 0, array13, 0, array13.length);
    
}