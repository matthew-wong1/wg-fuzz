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
    
    
    
    const array0 = new Float32Array([-0.5, 0.0, 0.0, -1.0, -0.25, -0.5, 0.75, -0.5, -0.25, -0.25, -1.0, -1.0, -0.5, -0.25, 0.0, 0.0, -0.25, 0.25, -0.75, -0.75, 0.25, 0.75, 1.0, 0.5, -0.75, -0.25, 0.25, 1.0, 1.0, -0.25, -0.25, -1.0, -1.0, -0.75, 0.5, -1.0, -1.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.25, -1.0, 0.0, 0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.75, 0.0, -0.25, 0.75, 1.0, -1.0, 0.0, -1.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.25, -1.0, -0.25, -0.75, -1.0, -1.0, 0.0, -0.25, 0.25, 0.0, -1.0, 0.75, -0.25, -1.0, 0.5, -0.5, 1.0, -0.5, -0.5, 0.75, 0.5, -1.0, 1.0, 0.5, 0.5, -0.5, -0.25, 0.0, -0.5, -0.75, 0.0, -0.5, -1.0, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array1 = new Float32Array([0.0, 0.5, -1.0, 0.5, -1.0, -1.0, -1.0, -0.75, 1.0, 0.0, 0.75, 0.5, -0.5, 1.0, -1.0, -0.25, -0.5, 0.0, 0.25, 0.75, -1.0, -0.75, -0.5, 0.75, 0.0, -0.25, -0.75, -0.75, 0.75, -0.75, -1.0, -1.0, -0.75, -0.75, 0.25, 0.75, -0.25, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, -0.5, -0.25, 0.75, -0.75, -1.0, 0.5, 0.5, -0.25, -1.0, -0.5, 0.0, 0.75, -1.0, 1.0, -0.75, 1.0, 0.75, -1.0, 0.5, 0.5, -0.75, 0.0, 0.0, 1.0, 0.5, 0.25, -0.5, -0.5, 0.25, 0.25, 0.0, -0.25, -0.75, 0.75, 0.75, 1.0, -0.25, -0.5, 1.0, 0.25, 0.5, 0.75, 0.5, 0.25, 0.5, -0.5, 0.0, 0.75, -0.5, -0.5, -0.75, 0.25, 0.0, 0.0, 0.25, 1.0, 0.25, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    texture100.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer100.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array2 = new Float32Array([0.25, -0.25, 0.5, -1.0, 0.75, -0.5, -1.0, -0.25, 0.0, 0.0, 0.75, 0.5, -0.5, -0.75, 0.25, 0.25, 1.0, -0.5, -0.5, -0.5, -0.25, -1.0, -1.0, -0.75, -0.5, -0.5, 1.0, -0.75, -0.25, -0.75, -0.75, -0.75, -1.0, 0.5, -0.25, 0.0, -0.25, 0.0, 0.5, -0.25, -1.0, -1.0, 0.75, 0.0, -0.75, -1.0, -0.25, 0.75, -0.75, -0.75, -0.25, 0.5, -0.5, -0.25, -1.0, 0.5, 0.0, 1.0, 0.0, -0.75, -1.0, -1.0, 0.25, 0.0, 0.75, 0.0, 1.0, -0.5, 0.0, -0.75, 0.5, -1.0, 0.5, 1.0, -1.0, -0.75, 1.0, 0.75, -0.75, -0.25, 1.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, -0.5, 0.5, 0.75, 0.25, -0.5, -0.25, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, ]);
    
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer000.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device10.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.destroy();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array3 = new Float32Array([-0.25, -0.25, -0.75, -0.25, 0.75, -0.25, -1.0, 0.5, -0.25, 0.0, -0.75, -1.0, -0.5, 0.25, 0.75, 0.0, 0.0, 0.25, 1.0, -0.75, -0.75, 0.5, 0.0, 1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.5, -1.0, 0.25, -0.25, 0.0, 0.25, 0.75, 1.0, -0.75, 1.0, -0.25, -0.5, -0.75, 0.75, -0.25, 0.25, 0.0, -0.75, 0.25, -1.0, 0.5, 0.75, -1.0, -0.5, 0.25, 0.75, 1.0, -1.0, 0.75, 1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 0.5, -0.5, -1.0, -0.75, -1.0, -0.5, 0.75, -0.75, 0.75, -1.0, -1.0, 0.0, -0.5, 0.25, 0.5, 0.75, -0.25, 0.5, 0.75, 0.0, -0.75, -1.0, 0.0, -0.75, -1.0, -0.25, 0.5, -0.25, -1.0, -0.75, 0.75, -1.0, 0.0, -1.0, 0.25, 0.75, ]);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    texture000.destroy();
    render_bundle_encoder001.popDebugGroup();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    render_bundle_encoder001.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.popDebugGroup();
    device00.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    device50.destroy();
    const array4 = new Float32Array([-0.75, 0.75, 0.0, 0.25, 0.25, -0.5, -1.0, 1.0, -1.0, -1.0, 0.0, 0.75, 0.75, -0.5, 0.5, 1.0, -0.75, 1.0, 0.5, -0.5, -0.25, -0.5, -0.25, 1.0, -0.25, -1.0, -0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 0.25, -0.25, -0.5, 0.25, 0.75, -0.5, -0.75, -1.0, 1.0, -0.5, -0.5, -0.25, 0.25, 0.5, -0.75, -1.0, 0.0, -0.25, 0.25, -0.25, 0.0, 0.25, 0.25, -0.75, 0.0, 0.5, 0.75, 0.5, 0.25, 0.5, 0.25, 0.25, 0.75, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.0, 1.0, -0.25, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.75, 0.75, 1.0, -1.0, -0.25, -1.0, -1.0, -0.5, 1.0, 1.0, -0.5, -0.5, 0.25, -1.0, 1.0, 0.5, 0.0, 1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    device30.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
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
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const array5 = new Float32Array([-1.0, 0.75, -0.25, 1.0, 0.75, 1.0, 1.0, 0.75, 0.25, 0.0, 0.25, -0.75, 0.75, 0.25, -0.75, -0.25, 0.0, 0.5, 0.25, 0.5, -1.0, -1.0, 0.0, -0.75, 0.5, -0.75, 0.75, -0.75, -1.0, 0.75, -0.5, 0.75, 0.75, 0.25, -0.5, -0.5, 0.0, 0.75, -1.0, -0.5, 1.0, -0.25, 0.0, 0.25, -0.75, 0.75, 0.25, -0.5, -0.5, 0.75, 0.5, -0.5, 0.5, 0.5, 0.5, -0.5, -0.5, -0.25, -0.5, 0.5, 1.0, -0.5, 0.5, -0.75, 0.5, -0.75, 0.5, -1.0, 0.25, 1.0, -0.5, 0.25, -0.5, -0.25, -0.25, -1.0, -0.75, -0.75, 0.5, 0.75, -1.0, 0.5, -0.75, -0.5, -0.5, -1.0, 0.0, -0.5, 0.75, 0.0, -0.75, 0.75, 0.25, 0.5, -0.25, -0.25, -0.5, 1.0, 0.25, -0.5, ]);
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    texture600.destroy();
    
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder602.popDebugGroup();
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    render_bundle_encoder602.insertDebugMarker("marker");
    device70.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const array6 = new Float32Array([0.5, -1.0, 0.75, 1.0, -0.25, 1.0, 0.75, -1.0, 0.75, -0.75, 1.0, -0.25, -0.5, 0.25, 0.0, -1.0, 0.0, -0.5, 1.0, -0.75, 0.5, 0.75, -0.75, 0.25, -0.75, 0.5, 0.5, -0.75, -0.75, -0.75, 0.25, -0.25, 0.5, -0.75, -1.0, 0.75, 1.0, 0.0, 0.25, -0.25, 0.25, 0.75, -0.75, 0.5, -1.0, 0.25, -1.0, 0.75, 0.25, 1.0, 0.0, -0.75, 1.0, 1.0, -0.75, 0.25, -0.75, 0.0, -0.5, 0.0, 0.5, 0.75, -0.25, 0.75, -1.0, -1.0, 0.25, -0.5, -0.5, 0.0, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, -0.25, 0.25, -1.0, 0.75, -1.0, -1.0, 0.0, 0.75, -0.5, -1.0, 1.0, -0.5, 0.25, 1.0, 1.0, 0.25, -0.75, -1.0, -1.0, -0.75, 0.75, 0.25, 0.75, 1.0, ]);
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    texture801.destroy();
    
    render_bundle_encoder601.insertDebugMarker("marker");
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
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    const sampler805 = device80.createSampler( { label: "sampler805" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const sampler806 = device80.createSampler( { label: "sampler806" } );
    buffer600.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    
    render_bundle_encoder601.popDebugGroup();
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    device80.destroy();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.popDebugGroup();
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    buffer601.destroy()
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    texture601.destroy();
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout601,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.destroy();
    
    const array7 = new Float32Array([-0.25, -0.75, -1.0, 1.0, -1.0, 0.0, -1.0, 0.5, 0.25, -0.75, 0.75, 0.0, -1.0, -1.0, 0.5, 0.5, -0.25, -0.25, 0.5, 0.75, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.5, 0.75, 0.75, -0.75, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, -1.0, -1.0, -1.0, 0.0, -0.25, 0.25, -0.75, 0.75, -1.0, 0.75, 0.0, -0.5, -0.75, 0.25, -0.75, 1.0, -1.0, -0.75, -0.5, 0.75, 0.25, 0.75, -0.25, 1.0, 0.25, -1.0, -0.25, -0.5, -1.0, -1.0, -0.25, -1.0, 0.75, 0.0, 0.25, -1.0, 1.0, -0.5, -0.25, -0.5, 1.0, -0.75, -0.75, -0.25, 0.0, -0.75, -0.25, -0.75, 0.5, -1.0, 1.0, -1.0, 0.75, 0.0, 0.5, 0.75, 1.0, 1.0, -0.75, 0.25, -1.0, ]);
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array8 = new Float32Array([-1.0, 0.25, -1.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.5, 0.75, 0.0, -0.5, 1.0, 0.0, -1.0, -1.0, 0.75, 0.5, -0.75, 0.75, -1.0, -0.25, 0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.5, 1.0, -0.5, -0.75, -0.75, -0.25, -0.5, 0.5, 1.0, 0.0, 0.75, -0.75, -0.25, -0.25, -1.0, -0.5, 0.0, -0.5, -0.75, -0.5, 0.75, -0.5, 1.0, 0.75, 0.5, 1.0, 0.25, -0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 1.0, 0.75, -0.5, -1.0, 0.5, -0.25, 0.75, 0.5, -1.0, -0.5, -0.25, -0.5, -0.25, 0.25, 1.0, -0.25, 0.75, 0.0, 0.5, -1.0, 0.0, 0.0, 0.5, -0.25, 0.5, 0.75, -0.5, 1.0, -0.5, 1.0, 0.75, 1.0, 0.75, 0.75, -1.0, 0.25, -0.5, 0.75, 0.0, ]);
    
    const array9 = new Float32Array([-1.0, -0.25, 0.25, 0.75, 1.0, 0.5, 0.0, 0.75, -0.25, -0.75, -1.0, 1.0, -1.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.25, -1.0, 0.75, -0.25, -1.0, 0.25, -0.5, 1.0, 1.0, 0.75, -0.25, 0.5, -0.5, -0.25, -1.0, -1.0, -0.5, -0.25, 1.0, 0.75, -0.75, -0.75, -0.25, 0.75, -1.0, -0.25, 0.0, 0.75, 1.0, 0.5, -0.5, 0.25, 0.5, -0.5, -1.0, -0.25, 1.0, 0.25, -1.0, -0.75, -0.5, -0.25, 0.25, -1.0, -1.0, 0.75, 1.0, -0.75, -0.5, 1.0, 0.75, -1.0, 0.25, 0.5, -0.25, 0.25, 0.5, -0.5, -0.25, -0.5, -1.0, 0.0, 0.5, -0.5, -0.75, -0.5, -0.25, -0.25, -1.0, 1.0, -0.25, 0.0, 0.0, 1.0, 0.75, -1.0, -1.0, -1.0, -1.0, 0.25, 0.25, -0.75, ]);
    
    const array10 = new Float32Array([1.0, 1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.25, 1.0, -0.5, -0.75, -0.75, 0.5, 1.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.5, -0.5, -0.5, 0.25, -1.0, -0.5, 0.5, -1.0, -0.25, 0.75, -0.5, -1.0, -0.25, 0.0, 0.25, -0.5, 0.5, 1.0, -1.0, -0.75, 0.5, -0.5, -0.5, -0.5, 0.75, -0.25, -1.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, 0.0, 0.0, -0.75, 0.5, 0.25, -0.25, 1.0, 0.75, 0.5, 0.0, 0.5, 0.75, -0.5, -1.0, 0.25, -0.75, 0.75, 1.0, 0.25, -0.25, 0.0, 0.5, 0.25, -0.5, 0.75, -1.0, -0.25, -1.0, -0.5, -0.25, -0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 0.0, -0.5, 1.0, 1.0, 0.75, 0.25, 0.25, -0.25, 0.25, 0.0, -0.25, -0.25, ]);
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
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
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.destroy();
    
    
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
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
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    texture1100.destroy();
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    texture1200.destroy();
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device100.destroy();
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
    
    
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device120.destroy();
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    
    
    const array11 = new Float32Array([1.0, -1.0, -0.75, 0.0, -0.5, 0.0, -0.25, -0.75, 0.5, -0.5, -0.75, -0.75, 1.0, 0.0, 0.75, 0.75, -1.0, 0.0, 0.0, -0.5, 0.25, -0.75, -1.0, -0.25, -1.0, -0.75, -0.5, -1.0, 0.25, -0.75, 0.5, 0.0, 0.0, 0.5, -0.75, 0.5, 0.5, -1.0, -0.5, -0.75, -0.5, -0.75, -0.5, 0.25, 0.5, -0.5, 1.0, -0.25, 0.75, 0.25, 1.0, -0.75, 1.0, 0.75, 1.0, -0.25, -1.0, 1.0, 0.0, -0.5, 1.0, 0.25, -1.0, -0.5, 0.5, -0.5, 0.0, 0.0, -0.75, -0.75, 1.0, 1.0, 0.5, 0.25, 0.5, 0.5, 0.5, -1.0, 0.75, 0.75, 0.5, 0.0, 0.0, 0.0, -0.75, 0.75, 0.75, 0.5, -1.0, -1.0, 0.25, 0.75, -0.25, 0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -0.75, ]);
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device130.destroy();
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array12 = new Float32Array([-0.25, -0.75, 0.25, -1.0, 0.25, -0.75, -0.25, -0.5, -0.5, 0.25, 0.75, 0.0, 0.5, 0.5, 1.0, -1.0, -0.5, 0.5, -0.5, -0.25, 0.5, -0.25, 0.25, -1.0, -0.5, 0.0, -0.5, -0.25, 0.75, -1.0, 0.0, 1.0, 0.25, 0.0, 0.25, 0.0, 0.25, 0.25, 0.25, -0.5, 0.25, 1.0, 0.5, -1.0, 0.0, -0.75, -0.75, 0.25, 0.25, 0.75, 1.0, -1.0, 0.75, 0.75, -1.0, 1.0, -0.75, -0.5, 0.5, 1.0, 0.0, -0.75, 0.0, -0.25, -0.25, -0.5, 0.75, -0.5, -0.25, 0.25, -0.5, 0.25, 0.75, -0.25, 0.75, 0.75, -0.25, -0.5, 0.75, 1.0, 0.25, 0.75, -1.0, -0.25, 0.25, 0.75, 0.0, 0.75, 0.5, -1.0, 0.0, -0.5, -0.75, 0.75, 1.0, -0.5, -1.0, -0.75, -0.25, 0.0, ]);
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    device110.queue.writeTexture({ texture: texture1102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const texture1103 = device110.createTexture({
        label: "texture1103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const compute_pipeline1100 = device110.createComputePipeline({
        label: "compute_pipeline1100",
        layout: pipeline_layout1100,
        compute: {
            module: shader_module1100,
            entryPoint: "main"
        }
    });
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
    
    device110.queue.writeTexture({ texture: texture1102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1103.destroy();
    device110.destroy();
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1400.insertDebugMarker("marker");
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    
    device140.destroy();
    
    
    
    
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const array13 = new Float32Array([-0.75, -0.25, 0.5, 0.25, 0.25, 1.0, 0.5, -0.25, -1.0, 1.0, 0.25, 0.25, -1.0, 1.0, 1.0, -0.25, 1.0, 0.5, 0.25, -0.25, 0.5, -0.25, 0.0, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, -1.0, 0.25, -0.75, 0.0, 0.5, -0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 0.5, -0.25, -0.5, -1.0, -0.75, -1.0, 0.5, 0.5, 0.25, 1.0, -0.25, -0.5, 0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -1.0, 0.0, 0.5, 0.75, 0.25, -1.0, 0.75, -0.25, -0.25, -0.75, 1.0, -0.5, 0.25, -1.0, -0.25, 0.25, -0.5, 0.25, -0.75, -0.75, 0.25, -0.25, -0.25, 0.75, 1.0, -0.75, -0.25, 1.0, 0.0, -0.75, -1.0, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, -0.75, ]);
    
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    
    
    device150.destroy();
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array14 = new Float32Array([0.25, -1.0, -0.25, 1.0, 1.0, -0.5, 0.0, -0.5, 0.5, 1.0, 0.25, 0.75, -0.5, 1.0, 0.0, 0.0, -0.25, 0.5, 0.75, 0.25, -0.75, 0.25, 0.25, 0.5, -0.75, -0.75, -0.25, 1.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.0, -1.0, 0.0, 0.75, -0.5, -0.75, -0.75, 0.0, 0.25, 0.25, -0.75, -0.25, 0.5, -0.25, 0.75, 0.0, 0.25, -1.0, -0.25, -1.0, -1.0, -0.25, -0.25, -0.75, -1.0, 1.0, 0.5, 1.0, -0.5, 0.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, -0.75, 0.25, -0.5, 0.25, 0.0, -1.0, 0.25, 0.25, -0.5, -0.25, 0.5, 0.0, -0.25, 0.75, 1.0, 1.0, 0.25, -0.75, 1.0, -0.5, -0.5, 0.0, -0.25, 0.25, 0.0, 0.75, 0.0, 0.5, 1.0, -0.75, ]);
    
    
    device160.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array15 = new Float32Array([-0.25, 0.25, 0.25, -0.75, 0.0, -0.25, -0.5, -0.25, 0.75, -0.75, 0.25, -1.0, 0.0, -0.25, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.75, -0.5, 0.5, 1.0, -1.0, 0.25, -0.5, -0.5, -0.25, -0.25, 0.75, 0.75, 0.75, 0.0, 0.25, 1.0, 1.0, 0.75, -0.75, 1.0, -0.5, 0.75, 0.75, -0.25, -0.5, -1.0, -1.0, 0.75, 0.25, 0.75, 0.5, -0.5, -0.5, 0.25, 1.0, -1.0, 0.0, 0.0, 0.75, -1.0, 0.75, -0.25, 0.0, 0.75, 0.75, 0.75, -0.75, 1.0, -1.0, -1.0, -0.75, 0.25, 0.5, -0.75, 0.75, -1.0, -0.75, -0.25, 0.5, 0.25, 0.0, 0.0, 0.5, 0.0, 0.0, 0.25, 0.25, 0.5, -0.25, -1.0, -0.5, 0.5, -0.5, 0.75, -0.25, -0.5, -0.75, 0.5, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array16 = new Float32Array([-1.0, 0.0, -0.75, 0.5, -0.75, 0.0, 0.25, 0.5, -1.0, -0.5, 1.0, -0.75, 1.0, 0.5, 0.25, 0.5, 0.25, 1.0, 0.25, -0.5, 0.5, 1.0, -0.25, 0.0, 0.5, -0.25, -0.25, 0.75, -0.75, 0.0, 1.0, -1.0, -0.5, -0.75, 0.75, 0.5, -0.5, 0.0, 1.0, -0.5, 0.75, -0.5, 0.25, 0.25, -0.75, 0.5, -0.5, 0.25, 0.25, 1.0, 0.5, -0.25, -0.75, 0.5, 0.25, 0.0, 1.0, 0.25, -0.5, 0.75, -1.0, 0.75, 1.0, -0.25, 0.25, -0.5, 0.75, 0.5, -1.0, 1.0, -0.5, -0.25, -0.75, 0.0, 0.25, -1.0, -0.25, 0.5, 0.25, 0.25, 0.5, -0.75, 0.0, 0.0, -0.5, -0.5, -0.5, -0.5, -0.75, -0.5, -0.25, -0.5, -0.75, 0.0, 0.0, 0.25, -0.5, -1.0, -0.25, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}