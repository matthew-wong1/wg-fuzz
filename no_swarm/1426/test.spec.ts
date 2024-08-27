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
    const array0 = new Float32Array([-0.5, 0.0, 1.0, -0.5, 0.5, -1.0, -0.5, 0.25, -0.75, 0.75, -0.5, 0.75, -1.0, -0.25, -1.0, 0.25, 1.0, -0.75, -0.75, 0.5, 0.75, 0.75, -0.75, 0.5, 1.0, 0.75, -0.25, -1.0, 0.0, 1.0, -0.75, -1.0, 1.0, 0.5, -1.0, 0.0, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.25, -1.0, 0.25, 1.0, 0.75, -0.75, 0.0, 0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 0.0, 0.25, -1.0, -1.0, -0.5, -0.25, -0.25, -1.0, 0.5, 0.25, 0.5, 1.0, 0.0, 0.75, -0.25, 0.25, 0.5, 1.0, 1.0, 0.0, 0.5, -0.75, -1.0, 0.75, -0.75, 1.0, 0.5, -1.0, 0.75, -0.25, -0.25, -0.75, -0.25, 0.5, 1.0, -1.0, 0.0, -0.5, -0.75, 0.5, 0.25, 1.0, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.25, 1.0, -0.5, -0.75, -0.5, 0.0, -0.5, 0.0, -0.5, 0.5, 0.5, 0.75, -0.5, 0.5, -1.0, -1.0, -0.75, -0.5, 0.0, 0.25, -0.25, 0.75, -0.75, -0.5, 1.0, 0.0, -0.25, 0.5, 1.0, 0.5, -0.25, -0.75, -1.0, 0.25, -1.0, -0.75, 0.0, -0.25, 0.5, -1.0, 0.25, 0.5, 1.0, 0.25, 0.0, -0.25, 1.0, 0.75, -0.25, -0.25, -1.0, 0.0, 0.5, -0.5, 0.0, -0.25, 1.0, 0.5, 0.0, 1.0, 0.5, 0.25, 0.0, -0.5, 0.25, 0.75, -0.75, 0.25, 0.0, 0.5, -0.5, 0.0, 0.25, 0.0, -0.75, -1.0, 1.0, -0.5, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, 0.0, 1.0, 0.75, 0.25, 0.25, 0.25, -0.25, 1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.0, -0.25, -0.75, ]);
    const array2 = new Float32Array([1.0, 1.0, 1.0, 0.25, -0.25, 1.0, -0.5, -0.5, 0.25, -0.5, -1.0, -0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, -0.5, -0.75, -0.25, 0.0, 0.25, 0.75, 1.0, 1.0, -1.0, -0.5, 0.5, 1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 0.5, -1.0, -0.25, -0.5, -0.5, 0.75, 0.25, -1.0, 0.25, 0.25, 0.25, -0.25, 0.75, -0.25, -1.0, -0.25, 0.5, 0.25, 0.0, 0.0, 0.75, -0.75, -1.0, -0.25, -0.25, -0.75, 1.0, 1.0, -0.5, 0.75, 0.75, -0.5, 1.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.25, -1.0, 0.25, -0.5, -0.5, 0.5, -0.75, -0.5, -0.5, 0.25, -0.5, 0.75, 0.0, 0.75, -0.5, 1.0, -0.5, 0.25, -0.25, 0.5, 0.0, -1.0, -0.5, -0.75, ]);
    const array3 = new Float32Array([-0.25, 0.0, 1.0, -0.5, 0.0, -0.25, 0.5, -1.0, 0.0, 0.75, -1.0, 0.75, 0.75, 1.0, 1.0, -0.25, -0.75, -0.75, -0.5, 0.5, 0.5, 0.0, 0.25, 0.0, 0.25, 0.25, -1.0, 0.0, 0.5, 0.75, -0.5, -0.5, 0.75, 0.25, 0.0, -1.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.5, 0.75, -0.25, 1.0, 0.75, 1.0, -1.0, 1.0, 0.5, 1.0, 1.0, -0.25, -0.25, 0.75, -1.0, 0.5, 0.0, 0.5, 0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 1.0, 0.75, -0.75, 0.0, 0.0, 1.0, 0.0, -0.75, 0.25, -0.75, -0.5, -0.25, 1.0, 1.0, -0.5, 0.5, 0.5, -1.0, -0.75, 1.0, -1.0, 0.0, 0.5, -0.5, 0.75, 1.0, 1.0, -0.75, -0.5, 0.25, 1.0, -0.75, 0.0, 1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    device00.queue.submit([command_buffer000, ]);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const command_buffer100 = command_encoder100.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer001.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query100.destroy()
    
    texture100.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    buffer100.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query100.destroy()
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
    render_bundle_encoder000.popDebugGroup();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    texture101.destroy();
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.pushErrorScope("internal");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query101.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.queue.submit([command_buffer100, ]);
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array4 = new Float32Array([-1.0, -0.25, -0.25, -0.5, 0.0, 1.0, 1.0, 1.0, -0.5, 0.0, 0.0, 0.25, 1.0, -0.5, -0.25, 0.5, 0.0, 0.5, 0.0, 1.0, -0.75, 0.25, -0.75, 0.25, -0.5, -1.0, 0.0, 0.5, 0.25, -0.75, -0.25, 0.75, 0.75, 0.0, 0.5, 0.0, -0.25, 0.25, -0.75, 0.5, -1.0, -0.25, 0.5, -1.0, 0.25, 0.25, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, 0.75, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, -0.75, -1.0, -0.5, -0.25, 0.25, -0.75, 0.75, -0.5, 1.0, 0.5, 1.0, -0.25, 1.0, 1.0, 0.75, -0.5, -1.0, 0.5, 0.0, -0.75, -1.0, 0.25, 1.0, 0.5, -1.0, -0.25, 0.25, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, -0.5, -0.5, -0.75, -0.25, 0.25, -0.75, -0.25, ]);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer101.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer002.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture103.destroy();
    
    
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.clearBuffer(buffer001);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder001.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query000.destroy()
    const command_buffer001 = command_encoder001.finish();
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer003.destroy()
    
    const texture_view1025 = texture102.createView({ label: "texture_view1025" });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query103.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const texture_view1026 = texture102.createView({ label: "texture_view1026" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query104.destroy()
    const array5 = new Float32Array([0.75, -0.25, -0.5, 0.0, 0.5, 0.75, 0.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.0, -0.75, -1.0, -1.0, 1.0, -0.75, 0.0, 0.5, -0.25, 0.5, -1.0, -0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 0.5, -0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 0.25, -0.5, 1.0, -0.75, 0.25, 0.75, -0.5, -0.5, 0.0, 0.5, -0.75, 0.75, 0.75, -0.5, -1.0, 1.0, -1.0, -0.25, 0.75, -0.75, -0.5, -1.0, 1.0, -1.0, 0.0, 0.5, -1.0, 0.75, -0.5, -0.75, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, 0.5, -0.75, 0.0, -0.5, -1.0, 1.0, -0.75, 0.5, -0.75, -0.75, 0.25, 0.0, -1.0, 0.5, 0.5, 0.25, 0.0, 0.75, 0.5, 0.25, 0.25, 0.25, -0.25, -0.25, -1.0, -0.5, ]);
    const texture_view1027 = texture102.createView({ label: "texture_view1027" });
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1024,
            },
        ],
        occlusionQuerySet: query100
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1024,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_pass_encoder1010.setPipeline(render_pipeline102);
    const array6 = new Float32Array([-0.25, 0.25, 0.75, 1.0, 0.75, -0.5, 1.0, 0.5, 0.5, 1.0, -0.75, 0.0, 1.0, 0.0, 0.75, -0.75, -0.5, 1.0, -0.75, 0.75, 0.5, -0.5, 0.5, 0.75, -0.25, -0.75, 0.25, 0.75, -0.25, 0.25, 0.25, -0.25, 0.25, 0.0, 1.0, -1.0, 0.75, -0.5, 0.0, -1.0, 0.0, -1.0, 0.5, -0.75, -0.75, -0.5, 1.0, -0.5, 0.5, -0.75, -0.5, 0.75, 1.0, 0.25, 0.75, 1.0, -0.25, 0.0, -0.25, 0.5, 0.0, 0.75, -1.0, 0.0, 0.0, -0.5, -0.5, 0.75, -0.25, -0.75, 0.25, 0.0, 0.0, -0.25, 0.0, 0.25, -0.75, 0.5, 0.25, 0.0, -1.0, -1.0, 0.5, -0.75, -0.5, -0.5, 0.0, 0.0, -1.0, 0.75, 0.25, 0.25, 0.25, 0.0, -0.75, -0.25, 0.5, 0.5, -0.25, -0.75, ]);
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1011.executeBundles([])
    buffer004.destroy()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    texture001.destroy();
    
    buffer002.destroy()
    
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture102.destroy();
    query103.destroy()
    query102.destroy()
    query102.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setPipeline(render_pipeline100);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query000.destroy()
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query101.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture104.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline002);
    query101.destroy()
    device20.destroy();
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    
    
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    
    
    
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1026,
            },
        ],
        occlusionQuerySet: query103
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1024,
            },
        ],
        occlusionQuerySet: query100
    });
    query000.destroy()
    buffer104.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1021.setPipeline(render_pipeline105);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    query104.destroy()
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1010.popDebugGroup()
    
    
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    query100.destroy()
    buffer102.destroy()
    render_pass_encoder1011.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1025,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder1020.setPipeline(render_pipeline100);
    compute_pass_encoder1011.setPipeline(compute_pipeline104);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const array7 = new Float32Array([-0.25, 1.0, 0.75, 0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 0.0, 0.5, 0.25, -0.75, -0.75, -0.5, -0.25, -0.75, -1.0, -1.0, 0.5, -0.5, 0.0, 0.5, 0.0, 1.0, 0.0, 0.5, 0.25, -0.5, 0.5, -0.25, 0.0, 0.0, 0.5, 0.75, -0.75, 0.5, -0.5, -0.75, 1.0, -0.25, -0.5, 0.25, 0.25, 1.0, 0.0, 0.75, 0.75, 0.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -0.25, -0.75, 0.75, -0.5, 0.0, -0.5, 0.5, 0.5, 1.0, -1.0, -0.5, 0.5, 0.25, 0.75, 0.75, -0.25, -0.25, -0.75, 1.0, 0.75, -0.5, 1.0, 0.25, 1.0, 1.0, -0.75, -1.0, 1.0, 1.0, -1.0, 0.25, 0.0, -1.0, 0.0, -0.75, -0.25, 1.0, 0.5, 1.0, -0.75, 1.0, ]);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1021.setStencilReference(1);
    compute_pass_encoder1020.setPipeline(compute_pipeline105);
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
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
    query100.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group101);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_pass_encoder1012.setPipeline(render_pipeline106);
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    compute_pass_encoder1011.dispatchWorkgroups(100);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1011.insertDebugMarker("marker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    query102.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1011.setStencilReference(1);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder101.insertDebugMarker("mymarker");
    buffer103.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder000.drawIndexedIndirect(buffer001, 0);
    command_encoder002.insertDebugMarker("mymarker");
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1012.setBindGroup(0, bind_group102);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1021.endOcclusionQuery()
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_pass_encoder1012.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.setPipeline(render_pipeline004);
    command_encoder101.resolveQuerySet(
        query105,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1010.draw(3);
    render_pass_encoder1010.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.popDebugGroup()
    device10.pushErrorScope("internal");
    
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1012.setVertexBuffer(0, buffer101);
    render_pass_encoder1021.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1011.dispatchWorkgroups(100);
    
    
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    buffer105.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1012.setStencilReference(1);
    compute_pass_encoder1011.popDebugGroup()
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    render_bundle_encoder001.setIndexBuffer(buffer007, "uint16");
    render_bundle_encoder001.drawIndexedIndirect(buffer000, 0);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder1012.setIndexBuffer(buffer101, "uint16");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1012.drawIndirect(buffer100, 0);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array8 = new Float32Array([0.5, 0.0, 0.25, -0.75, -0.75, 0.0, -0.75, 0.0, -0.5, 0.25, -0.25, 0.5, 0.0, 0.25, 0.0, 0.5, 1.0, 1.0, 0.5, 1.0, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, -0.25, 0.5, -0.5, -0.75, -0.25, 0.25, 0.75, 1.0, -1.0, -0.5, -0.75, -1.0, 0.25, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, 0.5, 1.0, -0.75, -0.25, -0.5, -0.75, -0.75, -0.25, 0.25, -0.25, 0.75, 0.5, 0.0, 0.75, 0.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.5, 0.25, 0.25, -0.25, 0.75, 0.75, -0.75, 0.75, -0.5, -0.25, -0.5, 0.5, -0.75, 0.75, -0.5, -1.0, 0.25, -0.5, -0.75, 1.0, 0.25, 1.0, 0.5, -0.5, -0.75, 1.0, 0.5, -0.75, 0.25, -0.5, 0.75, 0.0, -0.5, 0.25, 0.75, ]);
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1012.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group104);
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder1012.setStencilReference(1);
    render_pass_encoder1012.end();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1011.insertDebugMarker("marker")
    render_pass_encoder1011.setStencilReference(1);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1024,
            },
        ],
        occlusionQuerySet: query105
    });
    
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
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    buffer106.destroy()
    query101.destroy()
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder1012.pushDebugGroup("group_marker");
    buffer007.destroy()
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_pass_encoder1022.executeBundles([])
    render_pass_encoder1022.setPipeline(render_pipeline109);
    buffer109.destroy()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1011.setVertexBuffer(0, buffer101);
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query102.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer005.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer1012
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    {
        await buffer1011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1011.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    compute_pass_encoder1011.insertDebugMarker("marker")
    render_pass_encoder1021.setVertexBuffer(0, buffer101);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1020.popDebugGroup();
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1022.setBindGroup(0, bind_group106);
    render_pass_encoder1011.drawIndexed(3);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1012.drawIndirect(buffer100, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    compute_pass_encoder1011.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1012.setIndexBuffer(buffer101, "uint16");
    device00.queue.submit([command_buffer001, ]);
    command_encoder101.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group108);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1010);
    render_pass_encoder1022.setVertexBuffer(0, buffer102);
    render_pass_encoder1022.drawIndirect(buffer1013, 0);
    render_pass_encoder1012.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.end();
    render_pass_encoder0020.setVertexBuffer(0, buffer009);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder1010.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder1021.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder1020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1012.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder1011.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    device00.queue.submit([command_buffer002, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1012.end();
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1011);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1012);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0020.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1031, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1013);
    render_pass_encoder1012.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1025, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1015);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1011.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1012.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1012.drawIndirect(buffer1020, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1038, 0);
    render_pass_encoder1012.drawIndirect(buffer1026, 0);
    render_pass_encoder1021.end();
    device10.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1012.drawIndirect(buffer1012, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1038, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1039, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1017);
    render_pass_encoder1022.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1012.popDebugGroup();
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    device00.queue.submit([]);
    render_pass_encoder1022.drawIndirect(buffer1026, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1022.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1012.drawIndirect(buffer1038, 0);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1012.drawIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1012.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1012.drawIndirect(buffer1025, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1022.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1012.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1047, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1048, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1049, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1012.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1020.end();
}