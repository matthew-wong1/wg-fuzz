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
    const array0 = new Float32Array([1.0, 0.0, 0.5, 0.5, -0.5, 0.5, 0.0, 0.5, -0.5, 0.25, -0.75, -0.5, -0.25, 1.0, 0.75, -0.5, 0.25, 1.0, 0.75, 0.5, -0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, 0.75, 0.25, -0.75, 0.5, 0.0, 0.5, 0.5, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, 0.5, -0.75, -0.25, 1.0, 0.75, 0.5, -0.25, -0.75, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, -0.5, 0.5, -1.0, 0.0, 0.25, -0.75, -1.0, 1.0, 0.75, 1.0, 0.25, -0.75, 0.0, -1.0, -0.25, 0.75, -0.5, -0.25, 0.25, 0.75, -0.75, 0.0, 0.25, 0.0, -0.25, -1.0, 0.5, 0.25, -0.75, 1.0, -0.5, 0.5, -0.5, 1.0, -0.5, -1.0, -0.75, 0.25, 0.5, 0.0, 0.5, 0.75, 1.0, -0.25, 0.0, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
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
    device20.pushErrorScope("internal");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array1 = new Float32Array([0.75, 0.25, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, -0.75, 0.0, 0.0, -0.5, -0.5, -1.0, 1.0, 0.0, -0.75, 1.0, 0.75, -0.25, -0.5, 0.0, 0.25, 0.0, 0.75, -0.75, 0.5, 0.75, -0.25, -0.5, 0.0, -1.0, -0.25, 0.0, 0.0, -0.75, 0.75, -0.5, -0.75, 0.75, -0.5, 0.0, -0.5, 0.25, -0.75, 0.5, -0.25, 0.5, -0.75, -0.25, -0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -0.25, -0.25, -0.5, 0.25, 1.0, 0.25, 0.75, 0.75, -1.0, 0.5, 1.0, -0.5, 0.25, 0.0, -0.75, -0.5, 1.0, 0.0, -0.75, -0.5, 0.25, 0.5, 0.0, 0.5, 0.75, 0.75, 1.0, -0.25, 0.5, 1.0, -0.5, -0.5, 0.0, 0.0, 0.5, 0.25, -0.25, -0.25, 0.75, -0.75, 0.5, 1.0, -1.0, -1.0, ]);
    buffer100.destroy()
    
    const array2 = new Float32Array([0.5, -0.5, 0.75, 0.75, -0.75, -0.75, 0.5, 0.75, -1.0, 0.75, -0.5, 1.0, -0.75, -0.25, 0.75, 1.0, -0.5, 0.75, -1.0, 0.0, -0.25, 0.5, 0.75, 0.75, 0.0, 0.5, 0.25, -0.5, -0.25, 0.25, -0.25, -1.0, 0.75, -0.75, 0.5, 0.0, -0.25, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, 0.5, 0.25, 0.0, -0.25, 0.5, 0.25, -0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.5, 0.5, -0.75, -0.25, 0.25, -0.5, 0.25, -0.75, 0.0, 0.0, 1.0, -1.0, 1.0, 0.75, 0.25, 0.25, 1.0, -0.5, -0.25, -0.25, 0.75, 0.5, 0.5, 0.5, 1.0, 0.5, 0.75, 1.0, -0.25, -1.0, -1.0, 0.75, 0.25, 0.25, 0.25, -0.25, -0.75, -0.5, 0.75, -0.25, 0.0, 0.75, -1.0, 1.0, 1.0, ]);
    
    device40.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const array3 = new Float32Array([-1.0, 0.5, 1.0, 0.75, 0.0, 0.75, 1.0, -0.75, 1.0, -0.5, -0.75, 0.75, 0.25, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, -0.25, -0.5, -0.75, 0.25, 1.0, -1.0, -1.0, 1.0, 0.75, 0.5, 0.5, -1.0, -0.5, 1.0, -1.0, -0.75, -1.0, 0.0, 1.0, 0.75, 0.25, 0.0, -0.25, 0.0, 0.75, 0.0, 0.5, -0.5, 0.5, 0.75, -0.25, 0.25, 0.25, 1.0, 0.5, -1.0, 0.25, -0.25, 0.0, 0.75, -0.25, 0.25, -0.5, -0.5, -0.25, 1.0, -1.0, 0.75, 1.0, 0.5, 0.0, 1.0, -0.75, -0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.0, 0.5, 0.0, 1.0, -1.0, -0.25, -0.25, 0.5, -1.0, -0.25, -0.75, 0.5, 1.0, 0.0, -1.0, 0.25, -0.75, -0.5, -0.25, 1.0, -0.75, 0.0, ]);
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
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture501.destroy();
    
    command_encoder101.copyTextureToTexture(
        {
            texture: texture100
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.insertDebugMarker("mymarker");
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer500 = command_encoder500.finish();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    const array4 = new Float32Array([-0.5, -1.0, 0.5, 0.5, -0.75, 0.0, -1.0, 0.5, -0.5, 0.0, 0.0, -0.5, 0.25, -0.25, 0.75, 0.0, 0.75, 0.5, 0.0, 0.25, 0.5, -0.5, 0.75, -0.75, 0.0, 0.0, 0.5, 1.0, 0.25, -1.0, -0.5, 0.5, 0.5, 0.25, 1.0, -0.25, 0.75, 0.25, 0.5, -0.5, -1.0, 0.25, -0.75, -0.75, 0.5, 0.25, -1.0, 0.0, -0.75, 0.5, 0.75, 0.5, 1.0, -0.5, 0.5, 1.0, 0.25, -0.75, 0.0, 1.0, 0.5, 0.0, -1.0, 0.75, 0.5, -0.25, -0.5, -0.5, -0.75, 0.5, 0.5, 0.25, -1.0, -1.0, -0.5, 0.75, -1.0, 0.5, 0.5, -0.75, 0.75, 0.75, -0.75, -0.75, 0.5, -0.25, 0.5, 0.75, 0.25, -0.5, 0.5, 0.5, 0.75, 0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.5, ]);
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const array5 = new Float32Array([-0.5, -0.5, -1.0, 0.25, -1.0, 0.0, -0.75, -0.25, 1.0, 0.25, -0.75, -0.25, 1.0, 1.0, -1.0, 0.25, -0.75, -1.0, -0.75, 0.75, 0.25, 0.0, 1.0, -0.25, -1.0, 0.5, 0.25, 0.5, 1.0, -1.0, 1.0, 0.0, -0.5, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, 0.75, 0.25, -0.25, -0.75, 0.25, 1.0, -0.75, 0.5, 1.0, 0.75, 0.5, -0.25, -0.25, 0.0, 0.5, -0.5, -1.0, 0.75, 1.0, -0.25, -1.0, 1.0, -0.75, 1.0, -0.25, 0.0, 0.5, 0.0, -0.25, 0.75, 0.5, 0.25, 0.5, 1.0, 0.0, -0.25, -0.25, 0.25, -1.0, 0.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.25, -0.75, -0.25, -0.25, -0.75, -0.5, -1.0, 0.5, 0.75, -0.75, 0.5, 0.75, 0.75, 0.75, 0.75, -0.75, ]);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.destroy();
    
    query502.destroy()
    
    
    
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
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
    
    device50.queue.submit([]);
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder500.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
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
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture502.destroy();
    query505.destroy()
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    query504.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    query501.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("validation");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    texture500.destroy();
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const command_buffer000 = command_encoder000.finish();
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    query501.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder101.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    query503.destroy()
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture503.destroy();
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const array6 = new Float32Array([0.5, -0.25, 0.25, -0.5, -0.25, 0.75, 1.0, 0.75, -0.25, -1.0, 1.0, 0.5, -0.75, -1.0, 0.0, -0.75, -1.0, -1.0, 0.75, 0.75, -1.0, -0.75, -1.0, -0.75, 0.0, 0.25, -0.25, -0.25, 0.75, 0.5, -0.5, 0.75, 0.0, -0.25, -0.75, 0.0, 0.0, 0.75, -0.5, 1.0, 1.0, 1.0, -0.75, -0.75, -1.0, 0.25, 0.75, -1.0, 0.0, -0.25, -0.75, -0.75, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, -1.0, -0.25, 0.25, 1.0, -0.25, 0.5, -1.0, -0.75, -0.75, 1.0, 0.75, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, -1.0, 0.75, 0.0, -0.5, 0.75, 0.25, -0.25, -1.0, 0.75, 0.0, 1.0, -0.5, 0.75, -1.0, -0.5, -0.75, 1.0, 0.25, 0.5, -0.5, 1.0, 1.0, -1.0, 0.5, 0.75, ]);
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    texture100.destroy();
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const command_buffer501 = command_encoder501.finish();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    buffer500.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    texture500.destroy();
    
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
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder500.popDebugGroup();
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
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
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    query504.destroy()
    const command_buffer800 = command_encoder800.finish();
    device50.queue.submit([command_buffer500, ]);
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture800.destroy();
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
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
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout505,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
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
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pass_encoder5021 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5021" });
    render_bundle_encoder700.popDebugGroup();
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device70.pushErrorScope("internal");
    
    compute_pass_encoder5020.setPipeline(compute_pipeline501);
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
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array7 = new Float32Array([0.25, 1.0, -0.75, 0.5, 1.0, -0.25, 1.0, -0.75, 0.0, 0.5, 0.5, -1.0, 0.5, -1.0, -0.75, -0.5, 0.75, 0.25, -0.25, 0.75, -0.25, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, 1.0, -0.25, -0.75, -0.25, -1.0, 0.75, -1.0, 0.0, 1.0, -1.0, 0.75, 0.0, -1.0, 0.75, -0.5, -0.75, 0.25, 0.5, 0.5, -1.0, -0.75, 0.0, 0.25, 0.25, 0.0, -0.5, 0.25, 1.0, 0.5, 1.0, 0.5, -0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.5, 0.5, -0.75, 0.0, 1.0, -0.75, -1.0, -0.5, 0.25, -0.75, 0.5, 0.75, 0.0, -0.5, -0.5, -0.25, -0.75, -0.25, 0.0, -0.25, 0.25, -0.75, 0.25, -0.5, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, 1.0, -1.0, 0.25, 0.75, 0.5, 1.0, ]);
    
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    buffer300.destroy()
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder5021.setPipeline(compute_pipeline501);
    query001.destroy()
    
    query502.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.popDebugGroup();
    device50.pushErrorScope("out-of-memory");
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
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
    render_bundle_encoder501.setPipeline(render_pipeline501);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    texture503.destroy();
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
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
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5020.setBindGroup(0, bind_group500);
    
    device30.destroy();
    
    
    compute_pass_encoder5020.dispatchWorkgroups(100);
    query501.destroy()
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    device30.destroy();
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    buffer503.destroy()
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
    
    
    const query507 = device50.createQuerySet({
        label: "query507",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.submit([]);
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device90.queue.submit([]);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture504 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    
    query101.destroy()
    
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    device90.pushErrorScope("validation");
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout507,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device50.queue.submit([command_buffer501, ]);
    query502.destroy()
    query501.destroy()
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

    compute_pass_encoder5021.setBindGroup(0, bind_group501);
    query501.destroy()
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder5021.popDebugGroup()
    
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    query500.destroy()
    compute_pass_encoder5021.pushDebugGroup("group_marker")
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    buffer501.destroy()
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    device50.queue.writeBuffer(buffer504, 0, array0, 0, array0.length);
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    command_encoder502.clearBuffer(buffer503);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    device110.queue.writeTexture({ texture: texture1100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder5021.dispatchWorkgroups(100);
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    const uint32_5021 = new Uint32Array(3);

    uint32_5021[0] = 100;
    uint32_5021[1] = 1;
    uint32_5021[2] = 1;

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer506, 0, uint32_5021, 0, uint32_5021.length);

    compute_pass_encoder5021.dispatchWorkgroupsIndirect(buffer506, 0);
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout803]
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device50.queue.writeBuffer(buffer506, 0, array2, 0, array2.length);
    command_encoder900.pushDebugGroup("mygroupmarker")
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    query501.destroy()
    device50.queue.writeBuffer(buffer506, 0, array2, 0, array2.length);
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout507,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    device110.queue.writeTexture({ texture: texture1100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    device50.queue.writeBuffer(buffer506, 0, array5, 0, array5.length);
    
    render_bundle_encoder901.insertDebugMarker("marker");
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout803,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
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
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    device100.pushErrorScope("internal");
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    command_encoder503.resolveQuerySet(
        query507,
        0,
        32,
        buffer504,
        0
    )
    render_bundle_encoder800.popDebugGroup();
    
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5021.insertDebugMarker("marker")
    render_bundle_encoder902.insertDebugMarker("marker");
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device110.destroy();
    buffer901.destroy()
    device30.pushErrorScope("validation");
    command_encoder504.resolveQuerySet(
        query506,
        0,
        32,
        buffer507,
        0
    )
    command_encoder504.resolveQuerySet(
        query501,
        0,
        32,
        buffer504,
        0
    )
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    command_encoder504.copyBufferToBuffer(
        buffer502,
        0,
        buffer506,
        0,
        400
    );
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    command_encoder504.resolveQuerySet(
        query506,
        0,
        32,
        buffer508,
        0
    )
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const query508 = device50.createQuerySet({
        label: "query508",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5040.setPipeline(compute_pipeline5015);
    compute_pass_encoder5021.popDebugGroup()
    command_encoder503.popDebugGroup()
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer900 = command_encoder900.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.dispatchWorkgroups(100);
    const command_buffer1000 = command_encoder1000.finish();
    const command_buffer503 = command_encoder503.finish();
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
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline5015.getBindGroupLayout(0),
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

    compute_pass_encoder5040.setBindGroup(0, bind_group502);
    const uint32_5040 = new Uint32Array(3);

    uint32_5040[0] = 100;
    uint32_5040[1] = 1;
    uint32_5040[2] = 1;

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5012, 0, uint32_5040, 0, uint32_5040.length);

    compute_pass_encoder5040.dispatchWorkgroupsIndirect(buffer5012, 0);
    device100.queue.submit([command_buffer1000, ]);
    device80.queue.submit([command_buffer800, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.queue.submit([command_buffer900, ]);
    device80.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    command_encoder502.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
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
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
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

    compute_pass_encoder5020.setBindGroup(0, bind_group503);
    compute_pass_encoder5021.dispatchWorkgroups(100);
    device100.queue.submit([]);
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder5021.end();
    compute_pass_encoder5040.end();
    const command_buffer504 = command_encoder504.finish();
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    compute_pass_encoder5020.end();
    device50.queue.submit([command_buffer504, ]);
    device50.queue.submit([command_buffer501, ]);
    device100.queue.submit([command_buffer1000, ]);
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
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5020.setBindGroup(0, bind_group504);
    compute_pass_encoder5020.end();
    device100.queue.submit([]);
    device80.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
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
                    buffer: buffer5017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5018,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group505);
    compute_pass_encoder5040.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    device80.queue.submit([]);
    device80.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer502 = command_encoder502.finish();
    device100.queue.submit([command_buffer1000, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.queue.submit([]);
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
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5021.setBindGroup(0, bind_group506);
    device100.queue.submit([command_buffer1000, ]);
    device100.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    device80.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    device60.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    const uint32_5040 = new Uint32Array(3);

    uint32_5040[0] = 100;
    uint32_5040[1] = 1;
    uint32_5040[2] = 1;

    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5021, 0, uint32_5040, 0, uint32_5040.length);

    compute_pass_encoder5040.dispatchWorkgroupsIndirect(buffer5021, 0);
    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline5015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5023,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group507);
    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5025,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group508);
    device90.queue.submit([command_buffer900, ]);
    const command_buffer600 = command_encoder600.finish();
    device90.queue.submit([command_buffer900, ]);
    device90.queue.submit([command_buffer900, ]);
    device50.queue.submit([command_buffer503, ]);
    device50.queue.submit([command_buffer503, ]);
    const buffer5026 = device50.createBuffer({
        label: "buffer5026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5027 = device50.createBuffer({
        label: "buffer5027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5027,
                },
            },
        ],
    });

    compute_pass_encoder5021.setBindGroup(0, bind_group509);
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer5028 = device50.createBuffer({
        label: "buffer5028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5028, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer5028, 0);
    device50.queue.submit([command_buffer502, ]);
    const uint32_5021 = new Uint32Array(3);

    uint32_5021[0] = 100;
    uint32_5021[1] = 1;
    uint32_5021[2] = 1;

    const buffer5029 = device50.createBuffer({
        label: "buffer5029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5029, 0, uint32_5021, 0, uint32_5021.length);

    compute_pass_encoder5021.dispatchWorkgroupsIndirect(buffer5029, 0);
    const buffer5030 = device50.createBuffer({
        label: "buffer5030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5031 = device50.createBuffer({
        label: "buffer5031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5010 = device50.createBindGroup({
        label: "bind_group5010",
        layout: compute_pipeline5015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5031,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group5010);
    device90.queue.submit([]);
    device80.queue.submit([]);
    compute_pass_encoder5021.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder5020.end();
    device50.queue.submit([command_buffer501, command_buffer502, command_buffer504, ]);
    command_encoder100.popDebugGroup()
    compute_pass_encoder5040.dispatchWorkgroups(100);
    compute_pass_encoder5040.popDebugGroup()
    const buffer5032 = device50.createBuffer({
        label: "buffer5032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5033 = device50.createBuffer({
        label: "buffer5033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5011 = device50.createBindGroup({
        label: "bind_group5011",
        layout: compute_pipeline5015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5033,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group5011);
    compute_pass_encoder5020.end();
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder5020.dispatchWorkgroups(100);
    compute_pass_encoder5021.dispatchWorkgroups(100);
    device90.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5040.popDebugGroup()
    device50.queue.submit([command_buffer503, ]);
    device90.queue.submit([command_buffer900, ]);
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer5034 = device50.createBuffer({
        label: "buffer5034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5034, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer5034, 0);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([]);
    device80.queue.submit([]);
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    device50.queue.submit([command_buffer502, ]);
    device80.queue.submit([]);
    compute_pass_encoder5020.end();
    compute_pass_encoder5021.dispatchWorkgroups(100);
    compute_pass_encoder5020.dispatchWorkgroups(100);
    device100.queue.submit([]);
    compute_pass_encoder5040.popDebugGroup()
    const buffer5035 = device50.createBuffer({
        label: "buffer5035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5036 = device50.createBuffer({
        label: "buffer5036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5012 = device50.createBindGroup({
        label: "bind_group5012",
        layout: compute_pipeline5015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5036,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group5012);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder5040.end();
    const uint32_5021 = new Uint32Array(3);

    uint32_5021[0] = 100;
    uint32_5021[1] = 1;
    uint32_5021[2] = 1;

    const buffer5037 = device50.createBuffer({
        label: "buffer5037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5037, 0, uint32_5021, 0, uint32_5021.length);

    compute_pass_encoder5021.dispatchWorkgroupsIndirect(buffer5037, 0);
    compute_pass_encoder5021.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder5020.end();
    compute_pass_encoder5020.popDebugGroup()
    device80.queue.submit([]);
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    compute_pass_encoder5020.end();
    const uint32_5040 = new Uint32Array(3);

    uint32_5040[0] = 100;
    uint32_5040[1] = 1;
    uint32_5040[2] = 1;

    const buffer5038 = device50.createBuffer({
        label: "buffer5038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5038, 0, uint32_5040, 0, uint32_5040.length);

    compute_pass_encoder5040.dispatchWorkgroupsIndirect(buffer5038, 0);
    const uint32_5040 = new Uint32Array(3);

    uint32_5040[0] = 100;
    uint32_5040[1] = 1;
    uint32_5040[2] = 1;

    const buffer5039 = device50.createBuffer({
        label: "buffer5039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5039, 0, uint32_5040, 0, uint32_5040.length);

    compute_pass_encoder5040.dispatchWorkgroupsIndirect(buffer5039, 0);
    compute_pass_encoder5020.end();
    const buffer5040 = device50.createBuffer({
        label: "buffer5040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5041 = device50.createBuffer({
        label: "buffer5041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5013 = device50.createBindGroup({
        label: "bind_group5013",
        layout: compute_pipeline5015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5041,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group5013);
    compute_pass_encoder5040.dispatchWorkgroups(100);
    device100.queue.submit([command_buffer1000, ]);
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder5021.popDebugGroup()
    const uint32_5021 = new Uint32Array(3);

    uint32_5021[0] = 100;
    uint32_5021[1] = 1;
    uint32_5021[2] = 1;

    const buffer5042 = device50.createBuffer({
        label: "buffer5042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5042, 0, uint32_5021, 0, uint32_5021.length);

    compute_pass_encoder5021.dispatchWorkgroupsIndirect(buffer5042, 0);
}