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
    const array0 = new Float32Array([1.0, -0.75, -1.0, 1.0, -1.0, 1.0, -1.0, -0.75, 0.75, 0.0, -0.25, 0.5, 0.75, 0.0, 1.0, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -0.75, 1.0, -0.75, 0.5, -0.5, 1.0, -0.5, 1.0, 0.0, 1.0, -0.5, 0.25, 0.0, -0.5, -1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 1.0, -0.75, 0.25, 0.25, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, 0.25, 0.75, 0.75, -0.75, 0.5, -0.5, 0.5, -0.5, 0.25, 0.75, 1.0, -0.75, -0.5, 0.25, -0.5, -0.5, -0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 0.75, 0.25, 0.5, 1.0, 0.0, 0.75, -0.5, -1.0, 0.25, -0.25, 0.5, -1.0, 0.25, 1.0, 0.5, 0.5, 1.0, -0.5, 0.25, -0.5, -0.5, -0.75, 1.0, 0.25, -0.25, 0.5, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    texture000.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer000.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.destroy();
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array1 = new Float32Array([0.75, 0.5, 0.0, -0.5, 0.0, 0.25, 1.0, -0.5, 0.5, -0.75, -1.0, -0.5, -0.25, -0.75, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, -0.5, 0.0, 0.25, -0.5, -1.0, 1.0, 0.25, 0.75, 0.25, 0.5, -1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.75, -0.75, 0.25, 0.75, -0.25, 0.5, 1.0, 0.0, 1.0, -0.25, 0.75, -0.75, 0.25, 0.25, 0.5, 0.75, 0.0, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, 0.25, -0.5, 1.0, -0.25, -1.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.75, 0.25, 0.0, -0.5, -0.75, -0.75, -0.25, 1.0, 1.0, -1.0, 0.5, 1.0, -1.0, 0.0, -1.0, -0.25, -1.0, -0.75, 1.0, -0.5, -0.5, -0.75, 0.25, 0.0, -1.0, 1.0, -0.75, -0.25, -0.75, 0.25, 0.5, ]);
    device20.pushErrorScope("internal");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    texture001.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device30.destroy();
    texture100.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
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
    const command_buffer001 = command_encoder001.finish();
    
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer001.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query001.destroy()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    buffer003.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    query200.destroy()
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    compute_pass_encoder0000.popDebugGroup()
    buffer200.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    query203.destroy()
    render_bundle_encoder200.popDebugGroup();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    texture200.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    device00.queue.submit([command_buffer001, ]);
    query203.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    render_bundle_encoder002.setPipeline(render_pipeline002);
    
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder002.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query000.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    texture101.destroy();
    
    
    
    
    
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    command_encoder200.insertDebugMarker("mymarker");
    query203.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device00.pushErrorScope("validation");
    device40.pushErrorScope("internal");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture004.destroy();
    render_bundle_encoder001.popDebugGroup();
    
    command_encoder002.clearBuffer(buffer003);
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder002.popDebugGroup();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0000.popDebugGroup()
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    render_bundle_encoder000.popDebugGroup();
    
    const array2 = new Float32Array([-0.75, -1.0, -0.75, -0.25, 0.5, -0.75, -0.25, -0.75, 0.5, -1.0, -0.25, -1.0, 0.5, 0.0, -0.25, 0.25, 0.5, -0.5, -0.25, 0.25, 0.25, -0.75, 0.25, 0.25, 0.0, 0.25, -1.0, 1.0, -1.0, -0.5, 0.75, 0.25, -1.0, 0.75, 0.25, 0.25, -0.5, 0.75, 0.5, 0.25, -0.25, -0.25, 0.25, -1.0, 0.25, 0.0, 0.25, -0.5, 0.25, 0.25, 0.75, -0.75, 0.0, 0.25, -0.75, -0.25, -0.5, 0.75, 0.25, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, -0.75, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, 0.5, -0.5, -0.75, -0.25, 0.25, 0.25, 0.5, -0.25, 0.0, 0.75, 0.25, 0.0, 0.5, 0.5, 0.25, -1.0, 1.0, -1.0, 0.25, 0.0, -0.5, 0.0, -0.25, -0.25, 0.75, -0.75, 0.0, -1.0, ]);
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    texture002.destroy();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    const array3 = new Float32Array([-0.25, 0.25, 1.0, -0.5, -0.25, -0.5, 1.0, 1.0, -1.0, -0.5, 0.75, 0.0, 1.0, -0.75, 0.75, -0.25, 0.5, 0.0, 0.5, -0.5, 0.0, 0.0, 0.75, 0.5, -1.0, -0.25, -1.0, 1.0, -0.25, 0.25, 0.0, 1.0, -0.5, 1.0, -1.0, 0.0, 0.0, -1.0, 1.0, 0.75, 0.25, -0.5, 0.25, 1.0, -1.0, 0.0, 0.25, 0.0, 0.75, 0.0, -0.5, -0.5, -0.75, 0.25, -1.0, 0.75, -1.0, 0.25, 1.0, 0.0, -1.0, -0.75, 0.0, -0.75, -0.5, 0.75, -0.75, -1.0, -1.0, 0.0, 1.0, 0.0, -0.25, 0.25, 0.25, 0.0, -0.25, 0.0, 1.0, 0.5, 0.5, 0.0, 0.0, 0.25, -0.5, 0.25, -0.75, -1.0, -0.5, 0.0, 0.75, 0.75, 0.0, -0.25, -0.5, 0.25, 0.5, -1.0, -0.25, 0.5, ]);
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    buffer202.destroy()
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder0000.insertDebugMarker("marker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    buffer200.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    
    query001.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    query001.destroy()
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder002.popDebugGroup();
    device10.pushErrorScope("internal");
    
    
    
    
    render_pass_encoder0020.setPipeline(render_pipeline000);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    texture400.destroy();
    query002.destroy()
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder0000.setStencilReference(1);
    
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device50.destroy();
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query003
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
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_pass_encoder0021.setPipeline(render_pipeline004);
    render_pass_encoder0020.setStencilReference(1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query000.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    query400.destroy()
    
    
    render_pass_encoder0000.setStencilReference(1);
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.beginOcclusionQuery(0)
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    query401.destroy()
    compute_pass_encoder0020.popDebugGroup()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0020.setStencilReference(1);
    
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query004
    });
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setPipeline(render_pipeline001);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    query401.destroy()
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query004
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    query401.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const render_bundle_encoder403 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder403",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer004.destroy()
    
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group001);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0001.setPipeline(render_pipeline0012);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query000.destroy()
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    buffer006.destroy()
    
    render_bundle_encoder403.pushDebugGroup("group_marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    buffer400.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query200.destroy()
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0021.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    device50.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    render_pass_encoder0030.beginOcclusionQuery(0)
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder403.popDebugGroup();
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture201.destroy();
    
    query203.destroy()
    
    texture005.destroy();
    render_pass_encoder0031.setPipeline(render_pipeline003);
    
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device100.destroy();
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query204
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_pass_encoder0020.popDebugGroup();
    
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.setVertexBuffer(0, buffer008);
    render_pass_encoder0021.setVertexBuffer(0, buffer007);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder2001.setPipeline(render_pipeline201);
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group003);
    render_pass_encoder0021.drawIndexed(3);
    device50.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group200);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    render_pass_encoder0000.setVertexBuffer(0, buffer0013);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    render_pass_encoder2001.setVertexBuffer(0, buffer205);
    render_pass_encoder0020.endOcclusionQuery()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.setVertexBuffer(0, buffer0010);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.drawIndirect(buffer009, 0);
    render_pass_encoder2001.draw(3);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    device100.queue.submit([]);
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer0011);
    render_pass_encoder2001.end();
    device00.queue.submit([]);
    render_pass_encoder0020.setVertexBuffer(0, buffer0016);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder2000.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0021.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2000.setVertexBuffer(0, buffer208);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder0001.drawIndirect(buffer0017, 0);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group007);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer0016);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0010, 0);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    const command_buffer200 = command_encoder200.finish();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    device20.queue.submit([command_buffer200, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.end();
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.end();
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0001.draw(3);
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.drawIndirect(buffer001, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0031.end();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.draw(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0031.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder0001.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0001.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0021.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer001, 0);
    render_pass_encoder0001.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.popDebugGroup();
}