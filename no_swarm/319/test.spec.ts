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
    
    const array0 = new Float32Array([-0.25, -0.75, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 1.0, -0.25, 0.5, 0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 0.5, 0.75, 0.5, 0.25, -0.75, -0.75, 0.5, 0.75, -1.0, -1.0, -1.0, 1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, -0.75, -0.25, 1.0, 0.5, -0.25, 0.0, 1.0, 0.0, 0.25, 1.0, 0.75, 0.25, 0.75, -1.0, 0.5, 0.25, 1.0, 0.25, 1.0, 1.0, -1.0, 1.0, -0.25, 0.5, -0.25, 0.25, 0.75, -0.75, -0.5, 0.75, 0.0, -0.25, -0.25, 1.0, 0.5, 0.5, -0.5, 0.75, -1.0, -1.0, -1.0, -1.0, -0.25, 0.5, -0.25, -1.0, -0.75, 0.5, -0.5, -0.25, -0.5, 0.25, 0.0, 1.0, 0.75, 0.75, 1.0, 0.75, 0.0, -0.25, 0.5, 0.0, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.5, 0.75, -1.0, -0.25, 0.75, -0.5, -1.0, 1.0, 0.75, -0.5, 1.0, 0.25, 0.25, -0.5, -0.25, -0.25, 0.5, -0.75, 0.75, 1.0, 0.75, -1.0, -1.0, 1.0, 1.0, 0.75, -1.0, -0.75, -0.5, 0.25, 0.75, 1.0, -0.25, 0.75, -0.25, -0.75, 0.5, -0.75, -0.5, 0.0, 0.5, -0.75, -0.25, 0.5, -0.75, 0.75, 0.5, -0.5, 1.0, 0.5, 0.5, -0.5, 0.25, -1.0, 1.0, 0.75, 0.75, 0.25, 0.0, 0.0, 0.75, 0.25, 0.75, 0.0, 0.25, 0.5, -0.5, 0.25, -0.25, 0.5, -0.75, 0.5, 0.0, -0.5, 0.5, -0.5, 0.0, 0.75, 1.0, -0.75, 0.5, -0.5, -0.75, -1.0, 1.0, -0.5, 0.0, 0.25, -0.25, 0.75, -0.75, 0.25, -0.75, -1.0, -0.5, -0.5, -0.5, 0.5, 0.75, 0.25, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array2 = new Float32Array([-0.75, 0.0, -0.75, -1.0, 0.0, 0.0, -0.5, -0.25, 0.25, -1.0, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.5, 0.5, -0.75, -0.5, -0.75, 0.0, -0.25, 1.0, 0.0, 0.25, 0.25, -0.25, -1.0, 0.5, 0.25, 0.5, 0.0, -1.0, -0.75, 0.75, 0.75, 1.0, -0.75, 0.75, -0.75, 0.25, -0.75, 0.25, 0.5, 0.5, 0.0, -0.5, -0.75, -1.0, 0.25, -0.25, 0.75, -0.75, -0.25, 0.5, -0.5, 0.0, 0.75, 0.5, 0.0, 0.75, -1.0, 0.5, 0.0, 1.0, -0.75, 0.0, 0.0, -0.25, 0.5, 0.75, 0.5, 0.25, -0.25, 0.0, -1.0, -1.0, 0.5, -0.75, -0.5, -0.25, -1.0, -0.25, 0.0, 0.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.25, 0.75, -1.0, -0.25, 0.75, -0.75, 1.0, -0.5, 0.5, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    query001.destroy()
    
    
    device10.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query001.destroy()
    buffer001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query000.destroy()
    texture000.destroy();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    device00.pushErrorScope("validation");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array3 = new Float32Array([1.0, 0.75, 1.0, 0.5, -0.75, -1.0, 0.75, 0.25, -1.0, -0.5, -0.75, 1.0, -0.75, -0.75, 0.5, -0.5, 1.0, 0.75, -0.75, 0.0, -0.5, -1.0, 0.0, 0.5, 0.25, 0.25, 1.0, 0.75, 0.5, 0.0, 1.0, -0.75, -0.75, -1.0, -0.25, 0.0, 1.0, 0.75, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, -1.0, 1.0, -0.25, 0.25, -0.5, 0.75, -1.0, -0.75, -0.25, 0.0, 1.0, -1.0, 0.0, -0.75, 0.0, -0.25, 0.25, 1.0, 0.5, -0.5, 0.25, -0.25, -0.5, -0.5, -1.0, 1.0, -0.25, 0.0, 0.5, -0.75, 1.0, 0.75, -0.5, -0.75, 0.0, 0.25, -0.5, 0.5, -0.5, -0.25, 0.0, 0.25, -0.25, -0.75, -0.25, 0.5, -0.5, -1.0, -0.75, 0.75, 1.0, 0.5, -0.5, 0.5, 0.0, 0.5, ]);
    
    
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
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const array4 = new Float32Array([-0.25, -0.5, -0.5, 0.25, -0.5, -0.5, -0.25, 0.0, 0.0, 0.5, 0.25, -0.75, -0.75, 0.25, 1.0, -0.5, 0.75, 0.5, 0.25, 0.5, 1.0, -1.0, 0.5, -0.75, -0.25, -0.25, 0.75, 0.0, -0.75, 0.75, 0.0, 0.5, 0.5, 0.75, 0.75, 0.25, 0.75, -0.75, 0.25, -0.75, 0.5, 0.0, -0.5, 1.0, -0.5, 0.75, -0.75, -1.0, -0.75, -1.0, -0.75, -1.0, 0.5, 0.0, -0.5, -0.5, 0.0, 0.75, -0.5, -0.5, -0.75, -0.75, 1.0, -0.5, -0.25, 0.0, 0.5, -0.25, -0.5, -1.0, 0.0, -0.75, 0.0, 0.0, 0.5, 1.0, 0.0, -0.5, -0.5, 1.0, 0.75, -0.25, -1.0, -0.5, 0.25, -1.0, -1.0, -0.25, 0.75, -1.0, 0.75, -0.25, -0.25, -1.0, 0.5, 0.0, 0.25, 1.0, -0.25, 0.75, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    query002.destroy()
    query001.destroy()
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer004.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    buffer006.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const array5 = new Float32Array([-1.0, 0.0, -1.0, 0.0, -1.0, -1.0, -0.75, 0.25, 0.75, -1.0, 1.0, -1.0, 0.0, -0.25, 0.5, -0.75, 0.0, -0.25, -0.75, 0.75, -0.75, 0.0, -0.25, 0.25, 0.5, 0.5, -0.75, 0.0, -0.75, 0.75, 1.0, 0.0, 0.5, 0.75, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, 1.0, 0.5, -0.75, 0.0, 0.25, 0.25, -0.75, 1.0, 0.5, -1.0, -0.75, -0.75, 0.75, 0.5, -0.5, 0.0, -1.0, 0.0, 0.25, -0.75, -0.25, 0.25, -0.75, 0.0, 0.75, -0.25, -0.5, 0.75, 0.5, 1.0, 1.0, 0.75, 0.0, 0.0, 0.25, 1.0, -0.25, -0.75, 0.0, 0.75, 1.0, -0.25, -0.5, 0.0, 0.75, 0.25, -1.0, 1.0, 0.0, -0.75, 0.5, -0.75, -0.25, 1.0, 0.0, -0.25, -0.5, -0.75, 0.75, -0.5, ]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    
    
    device00.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    device30.destroy();
    
    
    
    
    
    const array6 = new Float32Array([-0.75, -1.0, 0.5, 1.0, 0.0, 0.75, -0.25, 0.5, 0.0, 1.0, 0.5, 0.5, 0.75, -0.5, -0.25, -0.5, -1.0, -0.5, 0.75, -1.0, 0.0, 0.0, 0.75, 0.75, 0.5, 0.5, -0.25, -1.0, 0.75, -0.75, 0.5, -0.5, 0.25, -0.25, 1.0, 0.75, 0.0, -0.75, -0.75, -1.0, 1.0, 0.5, -0.75, -0.75, -0.25, -0.25, 0.25, 0.75, 1.0, 0.75, -0.25, -0.5, -1.0, 1.0, 0.5, -0.5, 0.0, 0.5, 0.0, 0.5, 1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.5, -0.5, 0.0, 0.5, -0.5, 0.5, -0.5, -0.5, 0.75, 0.0, 1.0, 0.25, 0.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.5, -0.25, 0.75, 1.0, 0.25, 0.5, 0.5, 0.0, 0.25, 1.0, 0.25, -0.5, 0.0, 0.25, 0.5, -0.75, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array7 = new Float32Array([-0.5, 0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 0.5, -0.5, 0.5, 0.75, -0.5, -0.75, 0.75, -0.75, 0.75, 0.5, 1.0, -0.75, 0.0, -1.0, -0.75, -0.5, 1.0, -0.5, -0.25, 0.0, -1.0, 0.75, -0.5, -0.5, 0.25, 0.75, 0.75, 0.5, -0.25, 1.0, -0.25, -1.0, 0.75, -1.0, 0.75, -0.5, -0.75, -0.25, 0.0, 0.25, 0.75, -0.5, 0.0, 0.75, 0.75, 0.0, 0.5, 1.0, -0.5, -1.0, 0.0, -0.5, -0.25, 0.5, -0.75, -0.75, 0.0, 0.5, -1.0, 1.0, 0.5, -0.5, -1.0, -0.25, -0.75, -1.0, 0.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, 1.0, -1.0, -1.0, -0.5, -0.25, -0.75, -0.75, 0.25, -1.0, -0.25, 0.75, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    device40.pushErrorScope("internal");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array8 = new Float32Array([0.5, 0.0, -1.0, 1.0, 0.75, -0.5, 1.0, 1.0, -0.5, -0.25, -1.0, 0.5, 0.0, 0.75, -1.0, -0.75, -0.25, 0.0, 0.75, -0.75, 0.0, -0.25, -1.0, 0.25, -0.75, 1.0, -0.5, -0.25, -0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -0.25, 1.0, -1.0, 0.5, 0.75, 0.75, 0.5, -0.5, -0.5, -1.0, 0.0, 1.0, -0.75, 0.5, -0.25, -0.25, -0.25, -0.5, 0.0, -1.0, -0.5, 0.0, 0.0, -0.75, 0.5, 0.0, 0.0, 0.25, 0.0, -0.5, 0.0, 1.0, -0.25, 0.75, -0.25, 0.75, 0.75, 1.0, 1.0, 0.0, 0.75, -0.25, 1.0, 0.0, -0.75, 0.0, 1.0, -0.75, -0.5, -0.25, -1.0, -0.25, 0.25, -0.75, 0.75, 0.75, 0.0, 0.0, -1.0, 0.25, 0.75, -0.5, 0.0, 0.75, -0.25, 0.5, ]);
    
    
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
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
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.destroy();
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("out-of-memory");
    
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    texture500.destroy();
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device50.pushErrorScope("validation");
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    texture502.destroy();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_buffer501 = command_encoder501.finish();
    query502.destroy()
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture503.destroy();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder501.setPipeline(render_pipeline500);
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
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

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    texture501.destroy();
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    texture504.destroy();
    render_bundle_encoder502.insertDebugMarker("marker");
    command_encoder502.insertDebugMarker("mymarker");
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    device50.pushErrorScope("validation");
    command_encoder502.insertDebugMarker("mymarker");
    query500.destroy()
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

    render_bundle_encoder502.setBindGroup(0, bind_group501);
    render_bundle_encoder502.insertDebugMarker("marker");
    query501.destroy()
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    
    
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    query500.destroy()
    
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5050 = texture505.createView({ label: "texture_view5050" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder503.insertDebugMarker("mymarker");
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer502.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder503.insertDebugMarker("mymarker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5050,
            },
        ],
        occlusionQuerySet: query501
    });
    query504.destroy()
    render_pass_encoder5030.setStencilReference(1);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    render_pass_encoder5030.setPipeline(render_pipeline500);
    render_pass_encoder5030.setViewport(0, 0, texture505.width / 2, texture505.height / 2, 0, 1);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    query500.destroy()
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5050,
            },
        ],
        occlusionQuerySet: query503
    });
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

    render_bundle_encoder501.setBindGroup(0, bind_group502);
    texture505.destroy();
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const array9 = new Float32Array([0.5, 0.5, 1.0, 0.25, -0.25, -0.25, -0.75, 0.75, -1.0, 0.75, 0.25, -1.0, -0.75, -0.75, 0.75, 1.0, 0.25, 0.0, -0.5, -0.75, 0.0, -0.5, 0.75, 0.75, -0.25, 0.75, 0.25, 0.0, 0.0, 0.5, -0.75, 0.0, 0.75, 0.5, -0.5, 0.0, 0.25, 0.0, -0.25, -0.75, -1.0, 1.0, 0.0, 0.5, 0.5, -1.0, 0.5, -1.0, 0.5, -0.5, 0.5, -0.25, 0.0, -0.75, 0.25, 0.75, -0.75, -0.75, 0.75, 0.0, -0.5, 0.25, -0.75, -0.25, -0.75, 0.5, 0.5, -1.0, 0.0, 0.75, 0.25, 0.75, -0.5, -0.75, 0.5, 0.75, -1.0, -0.25, 0.25, 0.75, 0.0, -0.75, -1.0, 0.0, 0.0, -0.75, -0.5, -0.25, 1.0, -0.75, -1.0, 0.5, -1.0, 0.25, 0.25, -0.5, 0.5, 1.0, -0.25, -0.75, ]);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    query500.destroy()
    
    texture506.destroy();
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    query500.destroy()
    
    command_encoder800.insertDebugMarker("mymarker");
    
    
    render_pass_encoder5020.insertDebugMarker("marker");
    
    device50.pushErrorScope("out-of-memory");
    
    command_encoder800.insertDebugMarker("mymarker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    compute_pass_encoder5000.popDebugGroup()
    
    compute_pass_encoder5000.setPipeline(compute_pipeline502);
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder5030.setScissorRect(0, 0, texture505.width / 2, texture505.height / 2);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const texture_view5070 = texture507.createView({ label: "texture_view5070" });
    
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    query500.destroy()
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.pushErrorScope("validation");
    device50.queue.submit([command_buffer501, ]);
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    query501.destroy()
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
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
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group503);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    command_encoder800.popDebugGroup()
    texture801.destroy();
    query501.destroy()
    buffer508.destroy()
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    
    render_pass_encoder5020.setPipeline(render_pipeline500);
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
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
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view5071 = texture507.createView({ label: "texture_view5071" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder5020.setViewport(0, 0, texture505.width / 2, texture505.height / 2, 0, 1);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    command_encoder801.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder5040.setPipeline(compute_pipeline507);
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
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    device70.destroy();
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
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
    
    render_bundle_encoder500.popDebugGroup();
    
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group504);
    render_pass_encoder5030.setViewport(0, 0, texture505.width / 2, texture505.height / 2, 0, 1);
    
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5030.setViewport(0, 0, texture505.width / 2, texture505.height / 2, 0, 1);
    
    
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    texture507.destroy();
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    render_pass_encoder5030.setViewport(0, 0, texture505.width / 2, texture505.height / 2, 0, 1);
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
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
    render_pass_encoder5020.popDebugGroup();
    command_encoder802.pushDebugGroup("mygroupmarker")
    buffer506.destroy()
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("validation");
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
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
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group505);
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
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
    compute_pass_encoder5040.insertDebugMarker("marker")
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    
    compute_pass_encoder8010.insertDebugMarker("marker")
    render_bundle_encoder501.popDebugGroup();
    render_pass_encoder5030.pushDebugGroup("group_marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    query504.destroy()
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.popDebugGroup();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    buffer504.destroy()
    render_bundle_encoder800.setPipeline(render_pipeline800);
    buffer5012.destroy()
    compute_pass_encoder8010.pushDebugGroup("group_marker")
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
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
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
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    compute_pass_encoder8010.popDebugGroup()
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5050,
            },
        ],
        occlusionQuerySet: query503
    });
    render_pass_encoder5050.setPipeline(render_pipeline503);
    const command_buffer600 = command_encoder600.finish();
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
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline507.getBindGroupLayout(0),
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

    compute_pass_encoder5040.setBindGroup(0, bind_group506);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5015, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5015, 0);
    compute_pass_encoder5000.end();
    compute_pass_encoder5040.dispatchWorkgroups(100);
    command_encoder500.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    compute_pass_encoder5040.end();
    const command_buffer500 = command_encoder500.finish();
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    render_pass_encoder5050.setBindGroup(0, bind_group507);
    const command_buffer504 = command_encoder504.finish();
    device50.queue.submit([command_buffer504, ]);
    device60.queue.submit([command_buffer600, ]);
    device50.queue.submit([command_buffer500, ]);
}