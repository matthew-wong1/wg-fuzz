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
    const array0 = new Float32Array([0.25, 0.5, -0.75, -0.5, 0.5, 0.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.0, -1.0, -0.75, 0.75, -0.25, -0.5, -0.25, -0.25, 0.75, 0.0, -0.25, 1.0, 0.75, -0.25, -0.75, 0.0, -1.0, -1.0, 0.0, -0.25, 1.0, -0.5, -0.5, 0.0, -0.25, 1.0, -0.75, -0.25, -0.5, -0.25, 0.5, -0.75, -0.25, -0.5, 0.5, -1.0, -0.25, 0.5, 0.5, -0.25, 0.25, -0.5, -0.25, 0.75, 0.75, -1.0, 1.0, 0.0, -0.75, 0.0, -1.0, 1.0, -0.75, 0.5, 0.25, 0.5, 0.25, -1.0, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 1.0, -0.25, -0.5, 0.25, 0.0, -0.25, 1.0, 1.0, -0.75, -0.75, -1.0, 1.0, -0.75, -0.75, -0.5, -0.75, -0.75, 0.75, -0.75, -0.75, -0.75, -0.75, 1.0, 1.0, -0.5, ]);
    const array1 = new Float32Array([0.75, 0.0, 0.75, 0.25, -1.0, 0.25, -0.25, -0.25, 1.0, 0.5, -0.25, 0.0, -0.5, -0.75, 0.25, -0.25, 1.0, -0.5, -1.0, 0.5, -1.0, 0.75, 0.25, 1.0, -0.75, -0.5, 0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 0.75, 0.5, 1.0, -0.25, -0.5, 0.75, -0.25, -0.5, -1.0, -0.25, -0.75, -0.75, -1.0, -0.25, -1.0, -0.75, -0.75, -1.0, -1.0, 0.25, 0.5, -1.0, 0.75, -1.0, -0.75, 0.5, -0.75, -0.25, -0.25, -0.25, 1.0, 1.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.75, -0.25, 0.75, -0.75, 0.5, -1.0, -0.25, 1.0, 1.0, 1.0, -0.5, 0.75, 0.75, 0.5, 0.0, -1.0, 0.5, 1.0, 1.0, -0.5, 0.0, -0.25, 1.0, 0.25, -0.25, -0.25, -0.75, 0.25, -1.0, -0.75, -0.75, ]);
    
    const array2 = new Float32Array([0.75, -0.25, -0.75, -0.75, 0.0, 0.5, 0.5, 0.75, -0.25, 0.75, 0.75, 0.25, -0.25, 0.75, 0.25, 1.0, -0.5, -0.5, -1.0, 0.5, -0.5, 0.0, 0.0, -0.75, 1.0, 0.5, -0.25, 1.0, -0.5, 1.0, 0.5, 0.75, -0.25, 0.0, -0.5, -0.75, -0.25, 0.0, -1.0, 0.5, -0.5, 0.5, -1.0, -1.0, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, -1.0, 0.75, -0.5, -0.5, 0.25, -1.0, -0.25, 1.0, 0.5, -0.25, -0.25, -0.5, -1.0, -0.5, 0.25, -1.0, -1.0, 0.5, 0.5, 1.0, 1.0, -0.25, -0.75, -0.5, -0.5, 0.5, 0.5, 0.25, -0.5, 0.75, 0.25, 1.0, -0.25, 0.5, -0.25, 1.0, -0.25, -1.0, 1.0, -0.5, -1.0, 0.75, -0.25, -0.75, 1.0, 0.5, 0.5, 0.0, 0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-0.25, 0.0, -0.75, -0.75, 0.25, -0.75, 1.0, -1.0, -0.75, 1.0, -1.0, 0.75, -0.5, 0.5, 0.5, -0.25, 0.75, -0.75, -0.5, -1.0, -0.5, 0.0, -0.75, -0.75, 0.25, -1.0, 0.25, 0.25, -1.0, -0.75, 0.25, -0.25, 0.75, -0.5, 1.0, 0.0, 0.75, 0.25, -0.75, -0.25, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, -0.25, 0.75, 1.0, 1.0, -1.0, 0.75, 0.5, 1.0, 0.5, 0.25, 0.75, -0.5, -1.0, 0.75, 0.25, 0.0, 0.75, 0.25, 0.25, 0.25, 1.0, 1.0, 0.25, 0.5, 0.25, 1.0, -0.75, -0.5, 0.75, 1.0, 0.25, 0.0, 1.0, -0.75, 0.5, 1.0, 1.0, 0.0, -0.25, 0.75, -0.25, -1.0, 0.75, 0.25, -1.0, -1.0, 0.75, -0.75, -0.25, -0.5, -0.75, 0.0, -1.0, 0.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const array4 = new Float32Array([0.0, -0.75, 0.25, 0.25, 1.0, 0.25, 0.5, 1.0, 0.75, 0.0, -0.25, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, 1.0, -0.75, -0.5, -0.75, 0.25, -0.25, 0.25, -0.5, 0.0, 0.5, 0.0, -0.75, 1.0, 0.5, 0.25, 0.0, -0.75, -1.0, -0.5, 0.0, 0.75, -1.0, 1.0, -0.25, -0.5, -0.75, 0.25, 0.5, -0.5, 0.0, 0.75, -0.75, -0.75, -0.75, -0.5, -0.25, -1.0, -0.25, 0.25, 0.0, 0.5, -1.0, 1.0, 0.25, 0.5, 0.5, -0.5, -1.0, 1.0, 0.25, 1.0, 0.75, -1.0, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, 0.25, 0.25, -0.75, 1.0, -0.5, 0.0, 0.0, -0.75, -0.75, -0.25, -1.0, 1.0, -0.5, 0.5, 0.25, -0.25, -0.5, 0.0, 0.25, -0.25, 1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder000.popDebugGroup();
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
    
    query001.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder002.insertDebugMarker("marker");
    texture000.destroy();
    device00.pushErrorScope("validation");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query000.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query001.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer001.destroy()
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer000.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    texture001.destroy();
    
    device00.destroy();
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
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.destroy();
    
    
    
    const array5 = new Float32Array([0.75, 0.5, -0.75, -0.5, -0.75, -1.0, -0.75, 0.5, 0.75, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, 0.75, -1.0, 0.25, 0.0, 0.0, -1.0, 0.5, 0.5, 0.75, 0.0, 0.5, 1.0, 1.0, 1.0, 0.0, 0.5, 0.25, 0.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 0.0, 0.25, 1.0, 1.0, 0.0, 0.25, -0.5, -0.5, 0.5, 0.25, 0.5, -0.25, 1.0, 0.5, -0.5, -0.5, -0.25, 0.5, -0.75, 0.75, 0.25, -0.5, 0.0, -1.0, 0.25, 0.0, -0.5, 1.0, -0.5, 0.75, 0.25, -0.5, 1.0, -0.75, 0.25, 0.0, 1.0, 0.0, -0.25, 1.0, 0.75, 0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 0.5, -1.0, -1.0, -0.5, 1.0, 0.5, 0.75, 0.75, -1.0, 0.25, 0.75, -0.75, -0.5, 0.5, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array6 = new Float32Array([-1.0, -0.25, 1.0, 0.0, 0.0, -0.25, -1.0, 0.5, 0.25, 0.0, 0.25, 0.25, 1.0, 0.0, -1.0, -0.75, -1.0, -0.25, 0.0, -0.25, 0.5, 0.5, -0.75, 0.75, 0.5, 0.25, 0.5, -1.0, 1.0, -1.0, 0.5, -1.0, -0.5, 0.0, -0.25, -1.0, -1.0, 0.5, 0.5, 0.0, -1.0, 0.0, 1.0, 1.0, 0.5, 0.75, 0.0, -0.25, 1.0, -0.5, 1.0, 0.5, -0.5, -0.75, -0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, -1.0, 1.0, 0.5, -0.25, 0.75, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.25, 1.0, -0.25, 0.75, 0.75, 0.5, 0.5, -0.25, -0.75, 1.0, 0.25, 0.75, -0.75, 0.25, 0.25, 0.0, 1.0, -0.5, 0.75, -1.0, 0.75, -0.75, 0.5, -0.75, 0.25, 1.0, -0.75, -0.25, ]);
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const array7 = new Float32Array([1.0, 0.0, 0.75, 0.25, 0.25, 0.25, 0.25, 0.75, -0.75, 0.5, 0.75, -1.0, 1.0, -0.5, -1.0, 0.5, 0.75, 1.0, -0.75, -0.5, -0.75, -0.5, 0.5, -0.5, -0.25, 0.5, 0.75, 1.0, 0.5, -0.75, 0.75, 1.0, -0.75, 0.25, -0.75, 0.75, -0.25, 0.5, -0.25, 0.0, -0.5, -1.0, 1.0, -1.0, 0.0, -1.0, 0.0, 1.0, -0.5, 1.0, -0.5, 0.75, 0.25, 0.0, -1.0, -1.0, -1.0, 0.0, -0.5, 0.75, 0.75, -0.5, -1.0, 1.0, 0.25, 0.0, -1.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.5, 0.75, 1.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.75, 0.75, 0.25, -0.75, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, 0.75, -0.5, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.destroy();
    
    const array8 = new Float32Array([0.0, 0.25, -1.0, -0.75, -1.0, -1.0, 0.25, 0.0, -0.25, -0.75, 0.75, 1.0, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 0.0, -1.0, 0.25, 0.25, -0.25, 0.0, 0.25, 0.75, -0.25, 0.25, 0.75, 0.5, -0.75, -0.75, -0.75, -0.25, 0.75, 0.25, 0.25, 1.0, -0.5, 1.0, -0.25, -0.75, -0.5, -0.25, -0.25, -0.75, -0.25, 1.0, 0.0, 0.5, 0.0, 0.75, 0.25, 1.0, 0.5, 1.0, -0.25, 0.75, -0.5, -0.25, -0.75, -0.25, -0.25, 0.75, -1.0, 0.0, -0.75, 0.0, 0.75, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, 1.0, -0.25, 0.5, -0.5, 0.25, 0.5, 0.25, -0.25, 0.0, -0.25, -1.0, -1.0, 0.75, -1.0, -0.5, 0.5, -0.25, 0.75, 0.0, 1.0, 1.0, -0.75, -0.25, 0.25, ]);
    const array9 = new Float32Array([-0.5, -0.75, -1.0, 0.25, 0.0, -0.25, -0.25, 0.75, -0.25, 1.0, -0.75, -0.75, -0.75, -1.0, -0.75, 0.75, -0.5, 0.0, -1.0, 1.0, 0.5, 1.0, 0.5, -1.0, 0.25, 0.75, -0.25, -0.25, 0.5, 0.75, 0.0, -0.5, -0.75, 0.0, 1.0, 1.0, 0.75, 0.25, -0.25, 0.5, -0.5, -1.0, 1.0, 1.0, 1.0, 0.0, 0.5, -1.0, -1.0, 0.5, -1.0, -1.0, 0.0, -0.75, -0.25, 1.0, -1.0, 0.25, 0.0, -1.0, 1.0, -1.0, 0.25, 0.75, 0.0, 1.0, -1.0, -1.0, 0.5, 0.0, 0.0, 1.0, -0.25, -0.5, 1.0, 0.0, 0.0, -1.0, -0.5, 0.75, -0.25, 0.5, 0.5, 0.75, 0.5, 0.25, -0.25, -0.75, -0.5, 0.75, -0.75, -0.5, -1.0, -0.75, 0.75, -0.25, -0.5, 0.5, 0.25, 0.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array10 = new Float32Array([-1.0, 0.75, -0.75, 0.5, 1.0, 0.5, 0.75, 0.0, 1.0, 0.5, 0.0, 0.25, 1.0, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -0.5, -1.0, -1.0, -0.75, 0.75, 0.75, 0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 0.25, 0.5, 0.75, 0.25, -1.0, -1.0, 0.5, -0.75, -1.0, 0.25, 0.25, 1.0, -0.5, 0.25, -0.5, 0.0, 0.25, 0.5, 0.75, -0.25, 0.75, -0.25, 0.0, -1.0, 0.5, -0.5, -0.75, 0.0, 0.5, 0.5, -0.25, 0.5, -0.25, 0.75, -0.25, -0.75, -0.25, -0.75, -0.75, 1.0, -0.25, -0.25, -1.0, 0.0, 0.5, -0.25, 1.0, 0.75, -1.0, 0.25, -0.25, 0.25, -0.5, -0.5, -0.25, 0.5, -1.0, -1.0, 0.75, 0.75, -0.5, -0.5, 0.75, 0.25, 0.5, -0.75, -0.5, 0.75, 0.75, ]);
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder502.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query500.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("validation");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    device80.pushErrorScope("out-of-memory");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.destroy();
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    texture800.destroy();
    query501.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    query500.destroy()
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device30.destroy();
    const array11 = new Float32Array([0.75, 1.0, 0.0, 0.25, -0.75, 0.75, 0.0, -0.75, 0.0, 0.25, -1.0, 0.25, 0.75, -1.0, -1.0, -0.25, 0.75, -1.0, 0.75, -1.0, 1.0, -0.25, 0.5, 1.0, -1.0, -0.25, 0.75, 0.0, 1.0, -0.5, -1.0, 0.0, -0.25, 0.5, -0.5, -0.75, 0.25, 0.25, -0.25, 0.0, 0.5, -0.75, 0.25, 0.5, -0.25, -0.5, 0.75, 0.5, 0.0, -0.75, 0.5, 0.75, 0.75, -0.75, -0.25, 0.75, -1.0, -0.75, 0.0, 0.5, -1.0, -0.5, -0.75, 0.25, 0.5, 0.75, 0.75, -0.25, 0.0, 0.75, -0.75, 0.0, -1.0, 0.0, 0.5, 1.0, 0.25, 1.0, 0.75, 1.0, 0.25, 0.75, -0.25, 0.75, -1.0, 0.75, 0.0, 0.75, -0.25, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, -0.25, -0.75, -0.25, -1.0, -0.25, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    texture500.destroy();
    
    render_bundle_encoder500.popDebugGroup();
    query500.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.popDebugGroup();
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
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query800.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const array12 = new Float32Array([-0.75, -1.0, 0.75, 0.0, 1.0, -0.5, -0.5, -0.75, -0.75, 0.0, 1.0, 0.5, 1.0, -0.25, 0.75, 0.0, -0.5, -1.0, 1.0, 0.0, -1.0, -0.75, 1.0, -1.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, 0.0, 0.5, 0.5, -0.25, 0.0, -0.75, -0.5, -0.25, 1.0, -0.5, -1.0, 1.0, -0.25, 0.5, 0.0, -0.25, 1.0, 0.25, -1.0, 1.0, 1.0, -1.0, -1.0, 1.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.25, -0.25, 0.75, 1.0, 0.25, 1.0, -0.5, -0.5, 0.5, -0.25, 0.5, 1.0, 0.5, -0.75, -0.5, -0.5, 0.0, -0.75, -0.75, 0.5, 1.0, 0.25, 0.5, -0.75, -1.0, 1.0, -0.25, -1.0, -0.25, -1.0, 0.0, -0.5, -0.75, 0.5, 0.5, -0.75, 0.0, 0.25, -0.5, 0.0, ]);
    
    device80.destroy();
    
    
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array13 = new Float32Array([0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 0.75, 0.0, 0.25, 0.0, 0.0, -0.25, 0.25, 0.75, 0.25, 1.0, -1.0, -0.25, -0.75, 1.0, -1.0, 0.25, 0.75, 0.75, 0.5, 1.0, 0.0, -0.75, -0.25, -0.25, -0.75, 0.0, -0.75, -0.5, -0.5, -0.5, -1.0, 0.5, 0.0, 1.0, -1.0, 0.0, -0.75, 0.0, 1.0, 0.0, 0.25, 0.75, -0.5, -0.25, -0.5, 0.25, 0.5, 0.5, -0.5, -0.25, 0.0, 0.25, -0.25, 0.0, -0.5, -0.5, 0.75, -0.5, -0.5, 0.75, -0.25, 0.75, 1.0, 0.0, -0.75, 1.0, 0.5, 0.75, -0.5, 0.75, 1.0, 0.75, -0.5, 0.75, -0.25, 0.75, -0.25, 1.0, -0.75, -1.0, 0.75, -0.75, 1.0, 0.75, 0.0, 0.5, -0.75, 1.0, 0.25, ]);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    query501.destroy()
    render_bundle_encoder501.popDebugGroup();
    query501.destroy()
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
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    device70.destroy();
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout501]
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
    query500.destroy()
    device50.destroy();
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
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
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    render_bundle_encoder901.pushDebugGroup("group_marker");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    device100.pushErrorScope("internal");
    render_bundle_encoder901.popDebugGroup();
    
    render_bundle_encoder900.popDebugGroup();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const array14 = new Float32Array([0.25, -1.0, -0.5, -1.0, 0.5, 1.0, -0.5, 0.5, 0.5, -0.5, -0.25, 0.0, -1.0, 0.0, 0.0, 0.0, 0.25, 0.0, -0.25, -0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 0.25, 0.25, 0.0, -0.5, -1.0, -0.25, 0.0, 0.0, 1.0, 0.5, -0.5, 0.0, -0.5, 0.5, 0.75, -0.5, -0.75, -1.0, 0.5, 0.75, 0.75, -0.25, 0.75, 0.75, 0.75, 1.0, -0.5, 0.75, -1.0, -0.5, -0.25, -0.5, -0.5, 0.75, -0.25, 0.25, -1.0, -1.0, -0.75, 1.0, 0.75, -0.75, 0.25, -0.25, 0.0, -0.75, 0.75, -0.75, 1.0, 0.0, 0.25, 0.25, -0.5, -0.25, -0.75, -0.75, 0.0, -0.75, -0.5, 1.0, -0.5, -0.5, -0.25, -0.5, -0.75, 0.0, 1.0, 0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 0.5, -1.0, ]);
    device90.destroy();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device100.pushErrorScope("internal");
    const array15 = new Float32Array([0.75, 0.75, -0.75, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, -1.0, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -0.5, 0.5, 1.0, -0.5, 0.5, -0.5, -0.25, 0.0, 0.5, 0.5, 1.0, -0.5, 0.0, -0.75, -0.75, -1.0, 0.0, 0.0, 1.0, -0.25, 0.5, -0.5, 0.75, 1.0, -0.5, -1.0, 0.0, 0.75, -0.5, 0.25, -1.0, -1.0, 0.25, -0.5, 0.25, 0.5, -0.75, -0.5, 0.5, -0.5, 0.0, 0.75, -0.75, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, 0.5, -0.5, -0.25, -1.0, -0.75, -0.75, 0.5, 1.0, -0.25, -0.75, 0.75, -0.75, -1.0, -1.0, 1.0, 0.0, 0.25, 1.0, 0.0, 0.0, -0.5, 0.75, -0.25, -0.25, -1.0, 1.0, -0.5, 0.25, 0.25, -0.75, -1.0, ]);
    
    
    
    
    
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    
    
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
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device110.destroy();
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    texture1000.destroy();
    
    render_bundle_encoder1000.setPipeline(render_pipeline1000);
    
    
    
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device100.queue.writeTexture({ texture: texture1001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device100.queue.writeTexture({ texture: texture1001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    texture1001.destroy();
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1000.popDebugGroup();
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    
    
    const array16 = new Float32Array([0.0, 0.5, 0.0, -0.25, -1.0, 1.0, 0.75, 0.25, 0.5, -0.25, 0.75, -1.0, -0.5, 0.5, 0.25, -0.75, -0.5, 0.5, 0.25, 0.0, 1.0, -0.25, 0.75, -0.5, 0.0, 0.5, -1.0, 0.75, -0.25, 0.5, -1.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.5, -0.25, 0.75, -0.5, -0.5, 0.0, -1.0, 0.25, -1.0, 0.75, -0.5, 0.25, 0.75, 0.75, 1.0, 1.0, 0.0, 0.5, 0.0, -0.75, 0.0, 0.0, 0.0, 1.0, -0.25, -0.5, 0.0, 1.0, -1.0, 0.5, -0.25, 0.25, -1.0, -1.0, -1.0, 0.75, -0.5, -0.25, 0.25, 0.0, 0.75, -0.5, -0.25, 0.0, 1.0, -0.5, 0.75, 0.5, 1.0, -0.5, 0.25, 0.5, 0.5, -0.75, -1.0, -1.0, -1.0, -0.5, -0.25, -0.25, 1.0, ]);
    
    
    
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
    
    
    const array17 = new Float32Array([0.75, 1.0, 0.25, 0.75, 1.0, 0.75, 0.25, -1.0, 0.25, 0.25, 0.5, -0.75, -0.25, 0.75, -0.25, -0.75, -0.25, 1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -0.25, -0.25, -0.75, 0.75, 0.5, 0.25, 0.25, -1.0, -0.25, 0.5, 0.75, 0.25, -0.25, 0.5, -0.5, -0.25, 1.0, -1.0, 1.0, -1.0, -0.5, 0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 0.75, 1.0, 1.0, -0.75, -1.0, -0.5, 0.0, 0.75, 0.25, 0.5, 0.5, -0.5, 0.75, -0.25, -1.0, 0.25, 0.25, 0.75, -0.25, -0.5, 0.25, 0.75, -0.25, 0.0, 1.0, 0.75, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 1.0, -0.25, 0.5, -0.25, -0.25, 0.0, -0.25, -0.25, -0.25, -0.75, 1.0, 0.25, 1.0, 1.0, 0.75, 1.0, ]);
    
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    
    
    
    
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1001]
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: render_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1001,
                },
            },
        ],
    });

    render_bundle_encoder1000.setBindGroup(0, bind_group1000);
    const render_pipeline1002 = device100.createRenderPipeline({
        label: "render_pipeline1002",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    
    const render_pipeline1003 = device100.createRenderPipeline({
        label: "render_pipeline1003",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    device100.pushErrorScope("out-of-memory");
    
    var shader_module1006_code = "";
    try {
        shader_module1006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1006 = await device100.createShaderModule({ label: "shader_module1006", code: shader_module1006_code })
    const render_pipeline1004 = device100.createRenderPipeline({
        label: "render_pipeline1004",
        vertex: {
            module: shader_module1005,
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
            module: shader_module1005,
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
    render_bundle_encoder1001.popDebugGroup();
    
    buffer1001.destroy()
    var shader_module1007_code = "";
    try {
        shader_module1007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1007 = await device100.createShaderModule({ label: "shader_module1007", code: shader_module1007_code })
    
    
    var shader_module1008_code = "";
    try {
        shader_module1008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1008 = await device100.createShaderModule({ label: "shader_module1008", code: shader_module1008_code })
    render_bundle_encoder1001.setPipeline(render_pipeline1000);
    
    
    var shader_module1009_code = "";
    try {
        shader_module1009_code = await fs.readFile(__dirname + '/shader_module1009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1009 = await device100.createShaderModule({ label: "shader_module1009", code: shader_module1009_code })
    
    var shader_module10010_code = "";
    try {
        shader_module10010_code = await fs.readFile(__dirname + '/shader_module10010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module10010 = await device100.createShaderModule({ label: "shader_module10010", code: shader_module10010_code })
    const render_pipeline1005 = device100.createRenderPipeline({
        label: "render_pipeline1005",
        vertex: {
            module: shader_module1003,
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
            module: shader_module1003,
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
    const render_pipeline1006 = device100.createRenderPipeline({
        label: "render_pipeline1006",
        vertex: {
            module: shader_module1006,
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
            module: shader_module1006,
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
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module10011_code = "";
    try {
        shader_module10011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module10011 = await device100.createShaderModule({ label: "shader_module10011", code: shader_module10011_code })
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    var shader_module10012_code = "";
    try {
        shader_module10012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module10012 = await device100.createShaderModule({ label: "shader_module10012", code: shader_module10012_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pipeline1007 = device100.createRenderPipeline({
        label: "render_pipeline1007",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    const render_pipeline1008 = device100.createRenderPipeline({
        label: "render_pipeline1008",
        vertex: {
            module: shader_module1005,
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
            module: shader_module1005,
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
    const render_pipeline1009 = device100.createRenderPipeline({
        label: "render_pipeline1009",
        vertex: {
            module: shader_module10012,
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
            module: shader_module10012,
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
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    render_bundle_encoder1001.popDebugGroup();
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder1002.setPipeline(render_pipeline1002);
    query1000.destroy()
    
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
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline10010 = device100.createRenderPipeline({
        label: "render_pipeline10010",
        vertex: {
            module: shader_module1003,
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
            module: shader_module1003,
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
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const bind_group_layout1003 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1003",
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
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1001.insertDebugMarker("marker");
    
    
    const render_pipeline10011 = device100.createRenderPipeline({
        label: "render_pipeline10011",
        vertex: {
            module: shader_module10012,
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
            module: shader_module10012,
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
    
    query1001.destroy()
    
    const bind_group_layout1004 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1004",
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
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    device120.pushErrorScope("internal");
    const render_pipeline10012 = device100.createRenderPipeline({
        label: "render_pipeline10012",
        vertex: {
            module: shader_module1005,
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
            module: shader_module1005,
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
    
    query1001.destroy()
    const render_pipeline10013 = device100.createRenderPipeline({
        label: "render_pipeline10013",
        vertex: {
            module: shader_module1003,
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
            module: shader_module1003,
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
    const render_pipeline10014 = device100.createRenderPipeline({
        label: "render_pipeline10014",
        vertex: {
            module: shader_module1006,
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
            module: shader_module1006,
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
    
    
    query1200.destroy()
    
    const render_pipeline10015 = device100.createRenderPipeline({
        label: "render_pipeline10015",
        vertex: {
            module: shader_module1008,
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
            module: shader_module1008,
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
    const render_pipeline10016 = device100.createRenderPipeline({
        label: "render_pipeline10016",
        vertex: {
            module: shader_module10011,
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
            module: shader_module10011,
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
    const render_pipeline10017 = device100.createRenderPipeline({
        label: "render_pipeline10017",
        vertex: {
            module: shader_module1007,
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
            module: shader_module1007,
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
    
    buffer1000.destroy()
    const render_pipeline10018 = device100.createRenderPipeline({
        label: "render_pipeline10018",
        vertex: {
            module: shader_module1007,
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
            module: shader_module1007,
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
    render_bundle_encoder1001.popDebugGroup();
    
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const array18 = new Float32Array([0.25, -0.25, -0.75, 0.75, 0.0, -1.0, -0.75, -0.25, 0.0, -1.0, -1.0, -0.5, -0.75, -0.5, 0.25, 1.0, -0.5, 0.0, -0.5, -0.5, -0.75, -0.5, 0.5, -0.25, -0.75, 0.0, -0.25, -0.75, -0.75, -0.75, -0.75, -1.0, 0.75, -1.0, -1.0, -0.5, -0.75, 0.0, 0.5, 0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 0.5, 0.25, -0.25, -0.5, 0.75, -0.25, -0.75, 0.25, 0.5, 0.5, 0.75, 0.0, 0.5, 1.0, 0.5, 0.0, 0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 0.0, 1.0, -0.75, -0.5, 0.25, -0.25, -1.0, 1.0, -1.0, 0.0, -0.75, 0.0, 0.0, 0.75, 0.0, -0.75, 0.0, -1.0, -0.5, -1.0, -1.0, -1.0, -0.25, 0.5, -0.75, -0.5, 1.0, 0.5, -0.75, -0.25, 0.75, 0.0, -0.25, ]);
    const render_pipeline10019 = device100.createRenderPipeline({
        label: "render_pipeline10019",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    const pipeline_layout1005 = device100.createPipelineLayout({ 
        label: "pipeline_layout1005",
        bindGroupLayouts: [bind_group_layout1001]
    });
    
    
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const render_pipeline10020 = device100.createRenderPipeline({
        label: "render_pipeline10020",
        vertex: {
            module: shader_module1006,
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
            module: shader_module1006,
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
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    
    texture1002.destroy();
    device100.pushErrorScope("internal");
    const render_pipeline10021 = device100.createRenderPipeline({
        label: "render_pipeline10021",
        vertex: {
            module: shader_module1008,
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
            module: shader_module1008,
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
    query1001.destroy()
    
    var shader_module10013_code = "";
    try {
        shader_module10013_code = await fs.readFile(__dirname + '/shader_module10013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module10013 = await device100.createShaderModule({ label: "shader_module10013", code: shader_module10013_code })
    
    const render_pipeline10022 = device100.createRenderPipeline({
        label: "render_pipeline10022",
        vertex: {
            module: shader_module1005,
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
            module: shader_module1005,
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
    
    const sampler1003 = device100.createSampler( { label: "sampler1003" } );
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const render_pipeline10023 = device100.createRenderPipeline({
        label: "render_pipeline10023",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const bind_group_layout1005 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1005",
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
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1001 = device100.createBindGroup({
        label: "bind_group1001",
        layout: render_pipeline1002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1003,
                },
            },
        ],
    });

    render_bundle_encoder1002.setBindGroup(0, bind_group1001);
    query1001.destroy()
    const render_pipeline10024 = device100.createRenderPipeline({
        label: "render_pipeline10024",
        vertex: {
            module: shader_module10011,
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
            module: shader_module10011,
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
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}