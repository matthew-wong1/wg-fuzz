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
        powerPreference: undefined
    });
    const array0 = new Float32Array([0.5, -1.0, -1.0, -0.75, 0.75, -0.75, -0.25, -0.5, 0.0, 0.25, 0.5, -0.75, -0.75, -0.25, 0.0, -1.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.5, 0.0, 0.5, 1.0, -0.75, -0.5, 1.0, -1.0, -0.25, -0.25, -0.25, -1.0, 1.0, 0.25, -0.75, -0.75, -1.0, 1.0, -0.75, 0.5, 0.75, 0.75, 0.5, -0.5, 0.5, 0.5, -0.75, -1.0, 0.75, 0.5, 0.5, 0.75, 0.75, -1.0, 0.0, 0.25, 0.0, 0.0, 0.5, -1.0, -0.25, -1.0, 1.0, -0.25, 0.0, -1.0, -1.0, -0.5, -0.25, 0.5, 0.75, 0.75, -0.25, -0.75, 0.25, 0.5, -0.25, -0.75, 0.75, 0.5, 0.75, -0.25, -0.5, 0.0, -0.5, -1.0, -0.75, -0.25, -1.0, 0.5, 0.5, 1.0, -0.5, -0.75, -0.75, -0.75, -0.25, 0.25, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    
    
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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device30.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    query400.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer400.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture100.destroy();
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
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device40.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder000.popDebugGroup();
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
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
    
    device00.pushErrorScope("internal");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    
    query000.destroy()
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
    buffer003.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array1 = new Float32Array([-0.75, -1.0, -0.5, 0.5, 0.5, -1.0, -0.5, -0.25, 0.5, 1.0, 0.0, 1.0, -1.0, -0.75, -0.5, -0.25, -0.25, -0.25, 0.75, -0.25, 0.5, 0.5, -0.5, 1.0, 0.5, 0.75, 0.0, -0.5, 1.0, -1.0, -0.75, 0.25, -0.25, -0.25, 0.0, 1.0, -0.25, -0.25, -0.5, -0.5, -0.75, -0.75, 0.5, 1.0, -0.75, -1.0, -1.0, 1.0, -0.75, 0.5, 0.75, 0.75, -0.5, 0.5, -1.0, -1.0, 0.75, -0.25, -1.0, 1.0, -0.5, 0.25, -1.0, 0.75, -0.25, -0.75, 0.75, 0.5, -0.25, -0.75, -0.5, -0.5, 0.25, 0.25, 0.0, 0.5, 0.0, 0.25, 0.75, -0.25, 0.75, -0.25, 0.5, 0.0, -0.75, 0.0, 0.75, -0.75, 0.0, -0.5, -1.0, -0.25, 0.25, -0.75, -0.5, -1.0, -0.5, -0.25, 0.75, -0.75, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    
    texture000.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([0.25, -0.25, 0.0, -0.5, 0.75, -1.0, 1.0, 0.75, -1.0, 1.0, 0.75, 0.25, 0.25, 0.0, 0.25, 0.75, 0.25, 0.5, 0.75, 1.0, -0.5, 1.0, -0.25, 0.75, -1.0, 0.0, -1.0, -1.0, -0.5, -0.25, -1.0, 0.0, -0.5, 0.0, -0.25, 1.0, 0.5, 0.5, -1.0, 0.25, -0.25, -1.0, -0.75, 0.0, -1.0, -0.75, 0.5, 0.75, 1.0, 0.25, 0.5, -0.25, 0.25, -1.0, -0.5, 0.75, 0.5, 0.5, 0.75, -1.0, -0.25, 1.0, -0.5, 0.5, 0.25, -0.25, 0.5, -0.75, 0.0, 0.0, 0.0, -0.25, 0.0, -0.25, -0.75, 0.5, 0.0, 0.75, -0.75, 0.0, 0.75, 0.75, 0.0, -0.5, -1.0, 0.25, 1.0, -0.5, 0.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.75, 0.25, -0.25, -0.5, 0.75, -1.0, ]);
    
    buffer004.destroy()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer005);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const array3 = new Float32Array([0.75, 0.75, 1.0, 0.75, -1.0, 0.5, 0.75, -0.25, 0.75, 0.75, 0.25, 0.25, -0.5, 0.0, -1.0, -1.0, 0.75, -1.0, -0.75, -0.25, -0.25, -1.0, -0.75, -0.25, -0.75, -0.75, 0.25, 0.25, -0.5, 0.5, 0.5, 0.25, -0.75, -1.0, 0.75, 0.0, 0.75, 0.75, -0.5, -1.0, 1.0, 0.75, -0.25, -1.0, -0.5, -1.0, -1.0, 0.0, 0.75, 0.5, -0.25, 1.0, -0.5, 0.75, 1.0, 0.5, -0.75, 0.0, -1.0, 0.75, 0.25, -1.0, 0.5, -0.5, 0.0, 1.0, 0.25, -0.25, 0.75, 0.25, -0.25, 0.25, 0.0, -1.0, 0.75, 0.75, -0.25, 0.25, 0.0, 0.0, 0.75, -0.5, 0.75, -0.25, -0.5, 0.25, 1.0, -0.5, -1.0, 0.25, 1.0, -0.5, 0.25, -0.75, 1.0, -0.5, 0.0, 0.75, 0.0, 0.25, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer005.destroy()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder000.popDebugGroup();
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    device00.pushErrorScope("internal");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.destroy();
    
    
    const array4 = new Float32Array([-0.75, 0.0, 1.0, 0.5, 0.0, 0.25, -0.75, -0.5, 0.5, 1.0, -1.0, 0.75, 1.0, -0.25, -0.5, 0.0, -0.5, 0.5, 0.75, -1.0, 0.25, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, -0.75, 0.25, -0.25, -0.25, -0.5, -1.0, 0.5, 0.5, -0.25, -0.25, -0.25, -0.5, -1.0, 0.5, 0.0, -0.5, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, -1.0, -1.0, 1.0, 0.75, 0.0, -1.0, 0.25, -0.5, 0.75, -0.75, -1.0, 0.75, 1.0, -1.0, 0.25, 0.5, -0.75, -0.5, -1.0, -0.75, 0.25, 0.5, -0.25, 1.0, -1.0, -0.5, -1.0, -0.25, 0.75, 0.25, -0.75, 0.25, 1.0, -0.25, 1.0, -0.25, 0.0, -0.5, 0.25, 0.25, 1.0, 1.0, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 0.75, -0.25, -0.75, ]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([0.25, -0.25, -0.25, -0.75, -0.75, -0.5, 1.0, 0.75, -0.5, -0.25, 0.25, 0.5, -0.5, 0.25, 1.0, -0.5, 0.25, 0.5, 0.75, 0.25, -1.0, 0.75, -1.0, 1.0, 1.0, 0.0, -0.5, 0.0, 0.5, 1.0, 0.5, -0.75, 0.0, 0.25, -0.25, -0.75, 0.5, -0.25, 0.0, 0.75, 1.0, -0.5, 0.75, 0.0, 0.25, 0.75, 0.0, -0.75, 0.25, 0.25, 0.25, 0.75, 1.0, 0.25, 0.25, 1.0, 0.0, 0.0, -0.5, 0.25, -0.25, -1.0, 0.75, 0.0, -1.0, 0.75, -0.25, 0.75, 0.25, -1.0, 0.25, -1.0, 0.75, 0.5, 1.0, 0.5, 0.5, -0.25, -0.75, -0.5, -0.5, 0.0, -1.0, 0.75, -0.75, -0.25, -0.75, -0.75, 1.0, 0.25, -0.75, 0.25, 0.75, 1.0, 0.75, 0.5, 0.5, 1.0, -0.5, -0.75, ]);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device70.pushErrorScope("internal");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query700.destroy()
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    device50.pushErrorScope("validation");
    
    device80.destroy();
    query701.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const command_buffer500 = command_encoder500.finish();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array6 = new Float32Array([0.25, -1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -0.75, -0.75, -1.0, -0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 1.0, 0.0, -0.75, 0.25, 0.25, 1.0, -0.75, 1.0, 0.0, 0.25, -0.25, 1.0, 1.0, -0.5, 0.0, -0.25, 1.0, 0.75, 0.0, -1.0, -1.0, 0.0, 1.0, -1.0, 0.75, -0.5, 0.75, -0.25, 0.75, -0.75, 0.0, -0.5, 0.75, -0.75, 0.0, 1.0, -0.25, -0.5, 0.5, -0.5, -0.75, -0.25, -1.0, 0.5, 1.0, -0.5, 0.0, 1.0, 0.75, 0.0, -0.75, 0.25, 1.0, -0.75, -0.25, 0.0, 0.0, -0.5, 0.0, -0.5, 0.25, 0.5, -0.25, 0.5, 0.0, -0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 0.75, -0.75, -0.5, 0.0, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 1.0, -1.0, -0.25, ]);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    command_encoder700.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    query500.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("internal");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    query500.destroy()
    
    render_pass_encoder5010.insertDebugMarker("marker");
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture700.destroy();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    const array7 = new Float32Array([0.75, -0.75, -1.0, 0.25, -1.0, -0.25, 0.25, -0.5, -0.5, 0.25, 1.0, -0.5, -0.5, 0.5, -1.0, 0.0, 0.0, -1.0, -1.0, 0.75, 0.25, 0.25, 1.0, 0.5, 0.25, -0.25, -0.5, -0.75, 0.0, -1.0, 0.25, 1.0, 0.0, -1.0, -1.0, -0.5, -0.75, -1.0, -0.5, -0.75, 0.5, 0.0, 0.0, -1.0, 0.75, -0.75, 0.25, -0.75, -1.0, -0.75, 0.75, 0.0, 0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 0.75, 0.0, 1.0, 0.25, -0.75, -0.75, 0.25, 0.75, -0.75, 0.25, 1.0, 1.0, -0.5, -1.0, 0.0, 0.5, -1.0, 1.0, -0.25, -0.25, -0.25, 0.0, 0.75, -1.0, 1.0, -1.0, 0.25, 1.0, 0.0, 0.25, -0.75, -1.0, -0.25, -1.0, -0.75, 0.75, 0.25, 0.75, 0.25, 1.0, 1.0, -0.25, ]);
    query701.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query503.destroy()
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5020.beginOcclusionQuery(0)
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder700.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    render_pass_encoder5020.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer503 = command_encoder503.finish();
    
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_pass_encoder5010.popDebugGroup();
    const command_buffer700 = command_encoder700.finish();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5020.executeBundles([])
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    buffer700.destroy()
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    render_pass_encoder5020.executeBundles([])
    device60.destroy();
    render_pass_encoder5020.executeBundles([render_bundle_encoder500, render_bundle_encoder501, ])
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setStencilReference(1);
    
    
    query500.destroy()
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder5010.setStencilReference(1);
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    
    
    render_pass_encoder5021.executeBundles([])
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    query503.destroy()
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5020.executeBundles([])
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    query504.destroy()
    render_pass_encoder5021.beginOcclusionQuery(0)
    
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
    query500.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5021.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query701.destroy()
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    query503.destroy()
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module706,
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
            module: shader_module706,
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
    render_pass_encoder5040.setStencilReference(1);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    render_pass_encoder5040.setStencilReference(1);
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    query702.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    render_pass_encoder5021.pushDebugGroup("group_marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device90.destroy();
    render_pass_encoder5040.insertDebugMarker("marker");
    command_encoder505.pushDebugGroup("mygroupmarker")
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder5010.setStencilReference(1);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder5040.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    texture702.destroy();
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module705,
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
            module: shader_module705,
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
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query702.destroy()
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query800.destroy()
    command_encoder504.insertDebugMarker("mymarker");
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query504
    });
    render_pass_encoder5021.executeBundles([])
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    render_pass_encoder5010.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder5021.insertDebugMarker("marker");
    query505.destroy()
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    buffer700.destroy()
    render_pass_encoder5010.setStencilReference(1);
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module706,
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
            module: shader_module706,
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
    
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    texture500.destroy();
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder5041 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder700.setPipeline(render_pipeline702);
    
    render_pass_encoder5021.insertDebugMarker("marker");
    query702.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    render_pass_encoder5040.setStencilReference(1);
    render_pass_encoder5050.setStencilReference(1);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    render_pass_encoder5020.setPipeline(render_pipeline500);
    render_pass_encoder5040.insertDebugMarker("marker");
    texture701.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    command_encoder504.insertDebugMarker("mymarker");
    
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder5010.setStencilReference(1);
    query1100.destroy()
    
    
    
    query504.destroy()
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    render_pass_encoder5011.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5041.insertDebugMarker("marker");
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    render_pass_encoder5010.setPipeline(render_pipeline500);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder5050.setPipeline(render_pipeline500);
    const command_buffer1200 = command_encoder1200.finish();
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    device120.queue.submit([command_buffer1200, ]);
    render_pass_encoder5040.setPipeline(render_pipeline500);
    device70.queue.submit([]);
    render_pass_encoder5041.popDebugGroup();
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5010.setBindGroup(0, bind_group500);
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5020.setBindGroup(0, bind_group501);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5021.setPipeline(render_pipeline500);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5041.setPipeline(render_pipeline500);
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5050.setBindGroup(0, bind_group502);
    const command_buffer1201 = command_encoder1201.finish();
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5041.setBindGroup(0, bind_group503);
    device70.queue.submit([command_buffer700, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5021.endOcclusionQuery()
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group504);
    render_pass_encoder5011.setPipeline(render_pipeline500);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_pass_encoder5021.setBindGroup(0, bind_group505);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder5041.setVertexBuffer(0, buffer504);
    render_pass_encoder5040.setVertexBuffer(0, buffer508);
    render_pass_encoder5020.setVertexBuffer(0, buffer503);
    render_pass_encoder5040.draw(3);
    render_pass_encoder5050.endOcclusionQuery()
    device120.queue.submit([command_buffer1200, command_buffer1201, ]);
    render_pass_encoder5021.setVertexBuffer(0, buffer5011);
    render_pass_encoder5041.drawIndirect(buffer507, 0);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5041.end();
    render_pass_encoder5021.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5041.setIndexBuffer(buffer506, "uint16");
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group506);
    render_pass_encoder5010.setVertexBuffer(0, buffer508);
    render_pass_encoder5021.end();
    render_pass_encoder5011.setVertexBuffer(0, buffer503);
    render_pass_encoder5010.setIndexBuffer(buffer5010, "uint16");
    render_pass_encoder5050.setVertexBuffer(0, buffer502);
    render_pass_encoder5010.drawIndexedIndirect(buffer502, 0);
    render_pass_encoder5021.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5040.end();
    render_pass_encoder5020.drawIndirect(buffer504, 0);
    render_pass_encoder5050.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5040.drawIndirect(buffer501, 0);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder5011.draw(3);
    render_pass_encoder5040.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5050.setIndexBuffer(buffer500, "uint16");
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5010.end();
    render_pass_encoder5010.end();
    render_pass_encoder5041.setIndexBuffer(buffer5010, "uint16");
    const command_buffer504 = command_encoder504.finish();
    render_pass_encoder5050.drawIndexedIndirect(buffer508, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5050.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5011.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5050.end();
    render_pass_encoder5011.draw(3);
    render_pass_encoder5021.end();
    render_pass_encoder5021.drawIndexedIndirect(buffer5010, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder5020.end();
    render_pass_encoder5040.setIndexBuffer(buffer5010, "uint16");
    render_pass_encoder5011.drawIndirect(buffer507, 0);
    device50.queue.submit([command_buffer502, ]);
    device70.queue.submit([command_buffer700, ]);
    device120.queue.submit([command_buffer1201, ]);
    device50.queue.submit([command_buffer501, command_buffer503, command_buffer504, ]);
    device50.queue.submit([]);
    command_encoder505.popDebugGroup()
    render_pass_encoder5050.end();
    render_pass_encoder5021.drawIndirect(buffer506, 0);
    render_pass_encoder5041.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5041.popDebugGroup();
    render_pass_encoder5041.end();
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5021.drawIndexed(3);
    const command_buffer505 = command_encoder505.finish();
    render_pass_encoder5040.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5041.drawIndirect(buffer501, 0);
    render_pass_encoder5020.endOcclusionQuery()
    render_pass_encoder5040.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5041.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder5010.end();
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5010.drawIndirect(buffer502, 0);
    render_pass_encoder5041.drawIndirect(buffer503, 0);
    render_pass_encoder5011.draw(3);
    device50.queue.submit([command_buffer505, ]);
    device100.queue.submit([]);
    render_pass_encoder5020.setIndexBuffer(buffer500, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5010.draw(3);
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5050.drawIndirect(buffer505, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer503, 0);
    render_pass_encoder5010.drawIndexed(3);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5020.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5011.draw(3);
    device120.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5050.popDebugGroup();
    device50.queue.submit([command_buffer501, command_buffer504, ]);
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5011.setIndexBuffer(buffer508, "uint16");
    device120.queue.submit([command_buffer1201, ]);
    device50.queue.submit([]);
    render_pass_encoder5010.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5011.drawIndexed(3);
    command_encoder200.popDebugGroup()
    render_pass_encoder5050.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5041.drawIndirect(buffer507, 0);
    render_pass_encoder5011.draw(3);
    render_pass_encoder5010.draw(3);
    render_pass_encoder5011.end();
    render_pass_encoder5010.drawIndirect(buffer509, 0);
    render_pass_encoder5020.draw(3);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder5010.end();
    render_pass_encoder5021.setIndexBuffer(buffer5011, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5011.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5021.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5050.popDebugGroup();
    device100.queue.submit([]);
    render_pass_encoder5040.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder5010.drawIndirect(buffer506, 0);
    device50.queue.submit([command_buffer502, ]);
    device120.queue.submit([command_buffer1200, ]);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5010.drawIndexed(3);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5050.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5010.draw(3);
    device120.queue.submit([command_buffer1201, ]);
    device120.queue.submit([command_buffer1201, ]);
    render_pass_encoder5040.drawIndirect(buffer509, 0);
    render_pass_encoder5021.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5050.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder5050.setIndexBuffer(buffer504, "uint16");
    device120.queue.submit([command_buffer1200, ]);
    device50.queue.submit([command_buffer505, ]);
    render_pass_encoder5050.end();
    device120.queue.submit([]);
}