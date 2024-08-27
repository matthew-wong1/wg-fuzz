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
    
    
    
    const array0 = new Float32Array([-0.5, 1.0, 0.25, 1.0, 0.0, 1.0, -0.25, -0.75, -1.0, 0.0, 0.75, -0.5, 1.0, 0.25, 0.5, -1.0, 0.5, -0.25, -1.0, -0.75, 1.0, 0.0, 0.75, -1.0, -0.25, 0.25, 0.0, -1.0, 0.25, -0.75, 0.5, -0.75, 0.75, 0.75, 0.0, 0.0, -0.25, 0.75, -0.75, 0.75, 0.5, -1.0, 0.0, 1.0, -0.5, -0.25, -0.75, 0.5, -0.25, 0.75, 1.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.75, 0.0, 1.0, -0.25, -1.0, -0.75, 0.5, -0.25, 0.25, 0.5, 0.25, -0.5, 0.0, 0.5, 1.0, 1.0, -0.25, 0.5, 0.5, 0.75, 1.0, 0.5, 0.5, -0.5, -0.25, -0.25, -0.75, -0.5, 0.5, 1.0, -0.25, 0.5, 0.75, 0.5, 0.25, -1.0, 0.75, -1.0, -1.0, -0.75, -1.0, -0.25, 0.5, -0.75, ]);
    
    const array1 = new Float32Array([-0.5, 0.75, 0.25, -0.5, -0.5, -0.25, 1.0, 1.0, 0.0, 1.0, 0.0, 0.25, 0.75, 0.5, 0.25, 0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 0.0, 0.5, 0.5, 0.25, 0.5, 0.75, 1.0, -1.0, -0.5, 1.0, -0.75, 1.0, -1.0, 0.0, 0.5, -0.75, -0.75, 0.75, 1.0, -0.75, -0.75, 0.0, -0.5, 1.0, 0.0, 0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 0.75, -0.25, -0.25, -0.75, -1.0, -0.25, -0.25, 1.0, -1.0, 0.0, -0.25, 0.25, 0.0, 1.0, -0.5, -1.0, 0.25, -0.25, 0.25, 1.0, -1.0, -1.0, 0.0, 0.75, 0.25, -0.5, 0.75, -0.5, -0.25, -0.25, -0.25, -0.25, -0.5, 0.25, 1.0, -0.75, 0.0, 0.0, 0.25, -1.0, -0.5, 0.25, -0.25, 1.0, -0.5, -0.25, 1.0, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device40.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
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
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.destroy();
    const array2 = new Float32Array([0.75, 0.5, -0.75, -1.0, 0.25, -1.0, -0.25, 0.75, -0.25, -0.25, -0.75, -0.75, -0.25, -0.5, -0.5, 0.25, -0.25, -0.75, 0.25, 0.75, -1.0, 0.75, -0.75, 0.0, 0.75, -0.5, 0.25, -0.75, 1.0, 0.0, -0.75, 0.5, 1.0, 0.25, -1.0, 0.0, -0.5, 0.5, -0.5, 0.25, 0.0, -0.75, -0.75, 0.0, 0.5, 1.0, -0.25, 0.5, -0.75, 0.0, 0.5, -0.25, 1.0, -0.75, -0.25, -1.0, 1.0, 1.0, -0.25, -0.5, 0.0, 0.0, 0.75, -0.25, 0.5, -1.0, 0.5, 1.0, 0.75, 0.25, 1.0, 0.5, 0.0, -0.25, 0.5, 0.5, 0.25, -1.0, 1.0, -1.0, 1.0, 0.0, 0.25, -0.75, -0.5, 0.75, 0.25, -1.0, -1.0, 0.25, 1.0, 0.5, -0.75, 1.0, -0.25, 1.0, 0.25, 0.0, 0.5, 0.5, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array3 = new Float32Array([-0.75, 0.25, 0.75, 0.0, -0.75, -0.5, 1.0, -1.0, 0.75, -1.0, -0.75, 0.75, 0.75, 0.5, 0.75, -0.25, 0.0, 0.75, 0.75, -1.0, -0.5, -0.25, 1.0, -0.5, 1.0, 0.0, 0.0, 0.25, -0.5, 0.0, 0.0, -1.0, 1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 1.0, -0.75, 1.0, -0.75, 1.0, 0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, 0.5, -0.75, 0.25, 0.0, -0.5, 0.0, 1.0, -0.25, -0.75, -0.5, 0.5, -0.25, 0.0, -0.75, -1.0, -0.25, 0.5, 1.0, -0.25, 0.25, 0.25, 0.5, -0.25, 1.0, 0.75, 0.75, 0.75, 0.25, -0.5, 0.5, 0.0, 0.25, 0.5, -0.5, -0.5, 0.5, 1.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.25, 0.0, 0.0, 0.25, 0.25, 0.25, 0.25, ]);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device30.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([-1.0, -0.25, 0.0, -1.0, -0.5, -0.25, -1.0, 0.0, 0.25, 0.75, 1.0, 0.0, -0.5, 0.5, 0.25, -0.75, 1.0, 0.5, 0.0, -0.5, 0.5, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, 0.0, 0.25, -0.5, 0.25, 0.0, 0.0, -0.75, -1.0, -1.0, -0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 0.75, -0.75, 0.75, 0.25, 0.0, -0.25, 0.25, 0.0, 0.75, -0.75, -0.25, 0.0, -0.5, 0.0, -0.75, 0.25, -0.5, 0.25, 0.0, 0.0, -0.25, -0.25, -0.25, -1.0, -1.0, 0.25, -0.5, 1.0, -0.5, -1.0, -1.0, -0.25, -0.5, 1.0, -0.5, -1.0, -0.25, 1.0, -1.0, -0.25, 0.5, -1.0, -1.0, -0.5, 1.0, 0.5, -1.0, -1.0, -1.0, -0.75, 0.0, 0.25, 0.5, 1.0, 1.0, -0.25, 1.0, -0.5, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device10.destroy();
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    texture101.destroy();
    const array5 = new Float32Array([1.0, 0.75, -0.5, -1.0, -0.5, 1.0, -0.25, -1.0, -0.5, 0.5, -0.25, -1.0, 0.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.25, -0.5, -0.5, 0.5, 0.0, -0.25, -0.75, 0.25, 1.0, 0.5, -0.75, -0.25, 0.5, 0.0, -0.75, 0.0, -0.5, -1.0, 0.5, 0.25, -1.0, -0.25, 1.0, -0.5, -0.75, 0.0, -1.0, -0.5, -1.0, 0.75, -0.25, -1.0, 0.25, -0.25, -1.0, -0.25, 0.75, -1.0, -0.75, -0.75, -0.5, 0.0, 0.25, 1.0, 0.25, -1.0, -0.75, -0.25, 0.25, 0.25, 1.0, 1.0, -0.5, -0.25, -0.75, 0.5, 0.5, 0.75, -0.75, -0.5, -0.5, -1.0, 0.0, 1.0, -1.0, -0.75, 0.75, 0.5, -1.0, 0.0, 1.0, 1.0, -0.25, -1.0, -0.5, 0.0, -0.5, 0.5, 0.75, 1.0, -0.5, -0.75, ]);
    texture000.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device40.destroy();
    
    
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture900 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    texture301.destroy();
    texture901.destroy();
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder900.insertDebugMarker("marker");
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    texture901.destroy();
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
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
    device90.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    device70.destroy();
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder800.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const array6 = new Float32Array([1.0, 0.75, -0.25, 0.75, -0.5, 0.25, 1.0, 0.5, -0.5, 1.0, -0.75, -0.5, 0.0, -0.5, -0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -1.0, -0.25, 0.25, 0.0, -1.0, 0.25, -0.75, 0.0, 0.25, -1.0, -0.25, 0.5, -0.5, -0.5, 0.25, 1.0, -1.0, -0.25, -1.0, -0.25, 0.0, 0.0, -0.5, -0.75, -0.5, 0.75, 0.25, -0.25, 0.25, -0.75, -0.5, -0.25, -1.0, 1.0, 0.75, 0.25, 0.25, 0.75, 0.75, -0.75, 0.25, 0.5, -0.75, -0.25, 0.25, 0.5, -0.5, 0.0, 0.75, -0.75, 0.75, 0.75, 0.5, -0.75, -0.75, -0.75, -0.75, -0.75, -0.25, 0.25, -0.5, 1.0, 1.0, 0.0, 0.75, -0.25, 0.25, -0.25, 1.0, 0.5, 1.0, -0.5, 1.0, -0.75, -0.25, 0.25, -0.5, 0.25, -1.0, 0.75, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device80.destroy();
    const array7 = new Float32Array([0.75, -0.25, -0.75, -0.25, 0.25, 0.0, -1.0, 1.0, -0.75, 0.75, 0.75, -1.0, 0.5, -0.75, -0.75, 0.25, 1.0, -1.0, -0.25, 0.25, 1.0, 0.5, -0.25, 1.0, 0.0, 0.25, 0.25, -0.5, 0.75, -0.25, 0.25, 0.25, -0.75, -0.5, 0.0, -1.0, -0.5, 0.5, 0.0, 0.0, -0.25, 0.5, 0.0, 0.75, 0.0, 1.0, 0.25, -0.25, 1.0, 0.75, 0.75, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, 0.5, 0.75, 0.5, -1.0, 0.5, -0.25, -0.75, 0.0, 0.25, -0.25, 0.5, -0.5, 1.0, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, -0.75, 0.25, 0.5, -0.75, -0.75, 1.0, 0.75, 0.75, -0.75, -1.0, -0.75, 0.75, 0.0, 0.25, -0.75, -1.0, 0.0, -0.25, 1.0, 1.0, 0.0, 1.0, 1.0, -0.5, ]);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array8 = new Float32Array([0.75, 1.0, -0.5, -1.0, 0.5, 0.75, -0.5, -0.5, -0.5, 0.5, 0.75, -1.0, -0.75, -0.25, -0.5, 0.0, 0.0, -0.5, 1.0, 0.0, 0.25, 0.0, 0.0, -0.25, -0.25, -0.5, 0.5, 0.5, -0.75, 0.0, -0.5, 0.5, 1.0, 0.5, 0.0, -0.5, 1.0, 0.0, 0.25, -0.5, -1.0, -0.5, 0.0, 0.5, -0.5, -1.0, 1.0, -1.0, -0.75, 0.25, 1.0, 0.25, 0.5, 0.5, -0.5, -0.75, -0.25, 0.5, 0.5, 1.0, 0.75, 1.0, -0.25, 0.5, 0.5, 1.0, -0.5, 0.25, -1.0, -0.25, -0.5, -0.5, 0.75, 0.25, 0.5, 1.0, -1.0, -1.0, 1.0, -1.0, -1.0, 0.5, -1.0, -0.5, 0.25, 0.75, 1.0, -0.5, 0.0, 0.25, -0.75, -0.5, 0.0, -0.25, 0.0, 0.0, -0.25, -1.0, 1.0, -0.25, ]);
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    
    
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    
    
    
    
    
    device80.destroy();
    
    
    
    
    
    const array9 = new Float32Array([0.5, -1.0, -0.75, -0.5, -0.75, 0.75, -0.25, 1.0, -0.25, -0.25, -0.25, 0.75, 0.25, 1.0, 0.75, 0.5, 0.25, -0.5, 0.0, -0.25, -0.25, 0.0, -0.5, -0.25, 0.5, -0.5, -0.75, 0.75, 0.5, 0.75, -1.0, -0.25, 1.0, 1.0, 0.25, 0.75, -0.75, 0.5, -0.5, -0.75, 0.0, 0.75, 0.5, 0.75, -0.25, 0.5, 1.0, 0.25, -0.5, -0.25, -1.0, -1.0, 0.75, -0.75, 0.5, -0.75, 0.0, -0.5, 0.25, -0.5, -0.75, 1.0, -0.5, 0.75, 0.5, 0.25, 0.0, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, -0.25, 0.75, 0.75, 0.75, 1.0, 0.25, 0.25, -0.25, -0.75, 0.0, -0.5, -1.0, 1.0, -1.0, 0.75, 0.25, -0.25, 0.75, -0.5, 0.75, -0.75, -0.25, 0.5, -1.0, 0.0, -0.5, -1.0, ]);
    
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    
    
    
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([-0.5, 0.75, -0.75, 0.75, 0.25, 0.0, 0.75, -0.25, -0.75, 0.0, 0.0, 0.0, 0.5, 0.25, 0.5, 0.75, -0.25, -0.5, -0.25, -0.25, -0.25, 0.5, -0.25, 0.75, -0.25, 0.5, 0.75, 0.25, -0.5, 1.0, 0.0, 0.75, -0.75, 0.25, 0.75, 0.75, 0.0, -0.75, 0.25, 0.0, 0.0, -1.0, 0.75, -0.75, -0.25, -0.25, 0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.75, -0.25, 0.0, -0.25, 0.0, -0.25, 1.0, 0.5, 0.75, -0.75, 0.25, -0.5, -1.0, -0.5, -1.0, -0.75, 1.0, -0.25, 0.5, 0.75, 0.5, -0.75, 0.75, -0.75, 0.0, 0.75, 0.5, -0.75, -0.25, -1.0, 1.0, 0.25, 0.5, -1.0, 0.75, 0.25, -0.75, -0.75, -0.5, -0.75, 0.5, -0.25, -0.5, -0.5, 1.0, -0.25, 0.0, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const array11 = new Float32Array([-1.0, -1.0, -0.75, 0.25, -0.75, -1.0, 1.0, 0.25, 0.25, 0.25, 1.0, -0.75, -1.0, 1.0, -0.25, 1.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.5, 1.0, 0.5, 0.0, 0.0, -0.5, 0.5, -0.5, -0.25, -0.75, 0.5, -1.0, -0.75, -0.25, -0.25, 0.25, 0.0, -0.75, -0.25, 0.25, 0.25, -1.0, 0.75, -0.25, 0.0, -0.75, -0.5, -0.75, 0.0, 0.5, 0.5, 1.0, 0.0, -0.75, -0.75, -1.0, -1.0, 0.0, -0.75, 1.0, 0.25, -1.0, -0.75, -0.5, 1.0, 0.75, -0.75, 0.0, 1.0, 0.25, 0.25, -0.5, 1.0, -0.75, 0.25, -0.25, -0.5, 0.25, 0.5, 0.5, 0.75, 0.25, -1.0, -0.25, 0.0, -0.5, 0.0, -1.0, 0.25, -0.75, 0.0, 0.5, -0.25, 1.0, -0.5, 0.0, 0.75, -0.5, -1.0, ]);
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
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([0.5, -0.75, 0.5, -1.0, 0.0, 0.5, 0.25, 0.5, 0.25, 0.5, -0.5, -0.25, -0.5, -0.5, 0.0, 1.0, 0.5, -1.0, 0.5, 0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 0.75, 1.0, -0.25, 0.5, 0.75, 0.5, 0.25, -0.75, 0.0, -1.0, -0.5, 0.5, -0.5, 0.25, -0.75, 0.25, 0.75, -0.25, 0.25, -0.25, 0.5, -0.75, -0.75, -0.25, 1.0, -0.75, -1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.75, -1.0, 0.75, -0.25, -1.0, 1.0, 0.75, 0.0, -0.75, -1.0, 0.75, 0.0, -0.25, 1.0, 0.75, -0.75, 1.0, 1.0, 0.0, -0.75, -0.5, 0.75, -0.25, -1.0, -1.0, 0.0, 0.25, -0.5, -0.25, -0.75, 0.75, 0.75, 1.0, -1.0, -0.25, 0.25, 1.0, -0.25, 0.0, 0.75, 0.5, -0.5, -0.5, ]);
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
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
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    
    device110.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device40.destroy();
    render_bundle_encoder300.popDebugGroup();
    
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture900.destroy();
    
    
    const array13 = new Float32Array([0.5, -0.25, 0.75, -0.5, 0.75, -0.25, 0.5, 0.0, -0.25, -1.0, 0.5, 1.0, 0.25, -0.25, -1.0, 0.0, -0.5, -0.5, 0.75, 0.0, -0.25, -0.5, 0.25, 1.0, 0.0, 0.0, -0.5, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, 0.25, -0.5, 1.0, 0.5, 0.5, 1.0, -1.0, -0.25, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, 1.0, 0.75, -0.5, -0.75, -0.75, -0.75, -0.5, -1.0, 1.0, 0.0, -0.75, -0.5, -0.25, -0.75, -1.0, -0.25, -0.25, 1.0, 1.0, -0.5, 0.0, -1.0, 1.0, 1.0, -0.25, 0.75, 0.75, -0.5, 0.75, -1.0, 0.0, -0.5, -0.25, 0.25, -1.0, 0.5, -0.25, 0.25, 0.5, -0.5, 0.25, 0.75, -0.5, -0.75, -0.5, -0.5, 0.25, -0.25, -0.5, 0.75, -0.5, -0.75, 1.0, ]);
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    render_bundle_encoder400.popDebugGroup();
    
    render_bundle_encoder001.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.submit([]);
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    
    
    
    
    
    
    
    
    
    
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
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
    device120.queue.writeTexture({ texture: texture1200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    device80.destroy();
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
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    
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
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    device120.queue.writeTexture({ texture: texture1200 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
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
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const texture_view12002 = texture1200.createView({ label: "texture_view12002" });
    const texture_view12011 = texture1201.createView({ label: "texture_view12011" });
    device120.destroy();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    texture1202.destroy();
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    
    
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1101]
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
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device100.destroy();
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    device100.queue.writeTexture({ texture: texture1000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    
    device40.destroy();
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device30.destroy();
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device100.queue.writeTexture({ texture: texture1000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
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
    
    
    
    const array14 = new Float32Array([-0.5, 0.0, -0.25, 0.5, 1.0, -0.5, 1.0, -0.75, -0.25, -0.5, -0.5, 0.0, -0.5, 0.5, 0.0, 0.75, -0.25, 0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 1.0, -1.0, 1.0, -0.5, -0.25, 0.25, -0.25, -0.25, -0.75, -1.0, -0.75, -1.0, -0.75, 1.0, 1.0, 0.5, 0.0, -0.25, -1.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.25, -0.75, -0.5, 1.0, -1.0, -0.5, 0.75, 1.0, 0.25, 0.5, 0.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.0, -1.0, 0.0, 0.75, -0.25, -0.5, 0.25, 1.0, 0.75, 0.75, -0.5, 0.25, 0.0, -0.25, -1.0, -0.25, -1.0, 1.0, -1.0, -0.25, 0.0, -0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 0.0, 0.75, 0.25, -0.5, 1.0, -0.75, -0.25, -0.75, 0.25, ]);
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
}