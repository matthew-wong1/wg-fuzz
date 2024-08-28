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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder001.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder0010.popDebugGroup()
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_buffer000 = command_encoder000.finish();
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const array0 = new Float32Array([0.75, 0.0, -1.0, -1.0, 0.5, 1.0, -0.5, 0.25, 0.0, -0.5, 0.75, -0.75, 1.0, -0.5, 0.75, 0.5, 0.5, -0.25, 0.25, -0.25, 0.25, -0.25, -1.0, 0.75, -0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 0.75, 0.5, -0.5, -0.75, -0.75, -0.25, 0.5, -0.5, -0.25, 0.5, 1.0, -0.25, 1.0, -0.5, 0.25, 0.5, -0.25, 1.0, -0.75, -0.75, -0.5, 0.0, -0.25, -1.0, 0.75, 0.0, 0.5, 1.0, -0.25, 0.5, -0.75, -1.0, -0.5, -0.75, -0.25, 0.0, -0.25, 0.5, -0.25, 1.0, -0.25, 0.75, -0.5, 0.75, -0.25, -0.25, -0.5, -0.75, 0.5, -1.0, 0.75, 1.0, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, 0.75, 1.0, -1.0, 0.25, 0.75, 0.5, -0.25, -0.75, -1.0, 0.5, 1.0, 0.0, ]);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder005.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder005.insertDebugMarker("mymarker");
    compute_pass_encoder0040.popDebugGroup()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query001.destroy()
    device00.queue.submit([command_buffer000, ]);
    const command_buffer003 = command_encoder003.finish();
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    query003.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query003.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const array1 = new Float32Array([0.5, -1.0, -1.0, 0.0, 0.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.75, -0.75, -1.0, 1.0, -1.0, 0.25, 0.5, -0.5, -0.5, -0.25, 0.5, 0.0, 0.5, 1.0, -0.25, 0.0, -0.75, -1.0, 0.5, 1.0, 1.0, 0.0, 0.25, 0.25, -1.0, -0.5, 1.0, -0.75, 0.75, 0.75, -0.25, 1.0, -1.0, 0.5, 0.25, 0.5, -0.25, 1.0, 0.25, 0.25, -0.25, -0.5, -0.5, 0.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.5, -0.5, -0.25, -0.5, 0.25, -1.0, 1.0, 0.75, 1.0, 0.25, 0.5, -0.75, -0.75, -0.5, -0.75, 0.0, -0.75, -1.0, 1.0, -0.5, -0.5, 0.5, 0.0, -0.25, 0.75, 1.0, -0.75, 0.5, -0.25, 0.25, 1.0, -0.5, -0.5, 0.5, 0.0, 0.0, 0.75, 0.0, 0.75, 1.0, -0.75, ]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query001.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    device00.pushErrorScope("internal");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_buffer006 = command_encoder006.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    query000.destroy()
    
    
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    query004.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
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
    query001.destroy()
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0050.setPipeline(compute_pipeline000);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array2 = new Float32Array([0.0, 0.75, 0.75, 0.25, -0.25, -1.0, -0.75, -1.0, -0.75, 1.0, 1.0, 0.5, -0.5, 0.5, 1.0, -0.25, 0.75, 0.75, 0.25, -0.5, 0.0, 0.5, 0.75, 0.0, -0.5, -1.0, 0.25, -0.25, 0.75, -0.75, -0.75, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, 0.75, 0.0, 1.0, 0.75, 0.75, 0.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.5, -0.5, 0.75, -0.75, 0.0, 0.0, 0.25, -0.75, -1.0, -0.5, 0.25, 1.0, -0.75, 0.75, 0.5, 0.25, 0.25, 1.0, 1.0, 1.0, 0.0, -0.25, -1.0, 0.75, 1.0, 1.0, 0.5, -0.5, 1.0, 0.75, 0.0, 0.0, -0.75, 0.0, 0.75, 0.5, -0.5, 0.75, -0.25, -0.75, 0.25, -1.0, 1.0, 0.75, -0.75, -0.75, -0.75, -1.0, 0.75, 0.25, 0.25, 1.0, ]);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    render_bundle_encoder000.setPipeline(render_pipeline004);
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
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    device00.pushErrorScope("validation");
    device00.queue.submit([command_buffer003, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder008.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    command_encoder008.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group002);
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer008, 0);
    buffer006.destroy()
    query004.destroy()
    render_pass_encoder0080.setPipeline(render_pipeline001);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    buffer008.destroy()
    render_pass_encoder0070.setPipeline(render_pipeline007);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group003);
    
    buffer004.destroy()
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0080.setBindGroup(0, bind_group004);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group005);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0080.pushDebugGroup("group_marker");
    
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    query006.destroy()
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0015, 0);
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    command_encoder009.pushDebugGroup("mygroupmarker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    query002.destroy()
    
    
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0090.setPipeline(render_pipeline005);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.executeBundles([])
    render_pass_encoder0090.pushDebugGroup("group_marker");
    
    render_pass_encoder00100.executeBundles([])
    buffer0012.destroy()
    query003.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder00100.setStencilReference(1);
    
    render_pass_encoder00100.insertDebugMarker("marker");
    render_pass_encoder00100.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0090.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer002.destroy()
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    buffer0014.destroy()
    
    query000.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    buffer001.destroy()
    
    
    render_bundle_encoder001.popDebugGroup();
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
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
    
    render_pass_encoder00100.setPipeline(render_pipeline000);
    
    compute_pass_encoder0020.end();
    compute_pass_encoder0040.popDebugGroup()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer009.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0090.setBindGroup(0, bind_group006);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer000.destroy()
    device00.queue.writeBuffer(buffer0015, 0, array2, 0, array2.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group007);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.popDebugGroup()
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
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0090.insertDebugMarker("marker");
    render_pass_encoder00100.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder00110 = command_encoder0011.beginRenderPass({
        label: "render_pass_encoder00110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const array3 = new Float32Array([1.0, -0.25, 0.25, 0.25, -1.0, 0.75, 0.25, -0.25, 0.25, 0.0, 0.25, 0.75, 0.25, 0.25, -0.25, -1.0, -0.5, 0.5, 1.0, 0.0, 1.0, -0.75, -0.5, -0.5, -0.25, 0.75, -0.75, 0.5, 0.5, 0.5, 0.0, -0.5, 0.5, 0.75, -0.75, -0.5, 0.5, -0.25, 1.0, 1.0, 0.0, 0.25, 0.5, -0.75, -0.75, 0.5, 0.5, 0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.75, -0.25, -0.75, 1.0, 0.25, -0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 0.5, 0.75, -0.25, -0.25, -1.0, -0.75, -0.5, 1.0, 0.0, -0.25, 0.5, 0.75, 0.0, 0.5, 1.0, 0.0, -0.75, -0.5, -0.25, 0.25, -0.5, -0.25, 0.25, 0.5, -0.5, -0.75, 0.0, 0.0, 0.75, 0.5, 0.25, -0.25, 0.5, 1.0, 0.5, 0.5, ]);
    render_pass_encoder00110.setStencilReference(1);
    
    compute_pass_encoder0040.end();
    buffer0015.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture001.destroy();
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0080.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setPipeline(render_pipeline006);
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group008);
    buffer0017.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query006
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder00110.pushDebugGroup("group_marker");
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setPipeline(render_pipeline003);
    buffer0020.destroy()
    render_pass_encoder0070.pushDebugGroup("group_marker");
    
    buffer0010.destroy()
    const array4 = new Float32Array([-0.25, 0.25, 0.25, -0.5, 1.0, -0.75, 0.0, 0.0, -0.25, -0.75, 0.5, -0.25, -0.5, -0.5, -0.5, -0.25, 0.0, -0.75, 0.25, -0.5, -0.25, -0.5, 0.25, 0.0, 0.25, 0.25, 0.0, 0.5, -1.0, 1.0, 0.0, 0.25, -1.0, 0.0, -0.75, -0.5, -0.25, -0.25, -0.25, -0.75, -0.25, -1.0, -0.75, -0.75, -0.25, -1.0, -0.75, 0.0, -0.5, 1.0, -0.75, -1.0, 0.25, -1.0, -0.5, 0.75, 0.75, 0.5, -1.0, 0.75, 0.75, 0.25, 0.5, -1.0, -0.75, 1.0, 0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -0.75, 0.5, -0.25, 0.25, -0.75, 1.0, 0.0, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, 0.5, 1.0, 0.5, -0.5, 0.75, 0.25, 0.75, 1.0, 0.0, 0.25, 0.0, 0.75, -0.75, -0.25, 0.75, ]);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query006.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder00110.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_pass_encoder0070.setStencilReference(1);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder00110.setPipeline(render_pipeline002);
    render_pass_encoder00110.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer0021.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder00110.popDebugGroup();
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0050.end();
    command_encoder005.popDebugGroup()
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query003
    });
    query006.destroy()
    
    query002.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0090.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0090.setStencilReference(1);
    device20.pushErrorScope("validation");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group009);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query004.destroy()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.setPipeline(render_pipeline005);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder00110.pushDebugGroup("group_marker");
    buffer003.destroy()
    render_pass_encoder0080.setStencilReference(1);
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0010);
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder00110.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array5 = new Float32Array([-0.5, -0.25, 0.0, 1.0, 0.25, 1.0, -1.0, 0.25, 0.5, 0.25, 1.0, -0.25, -0.75, 0.0, 0.75, 0.5, 0.75, 0.75, 0.5, 0.75, 0.25, -1.0, 0.5, -0.5, 0.25, 0.0, 0.75, 0.75, -0.25, 0.75, 0.75, 0.75, -0.5, -0.25, -1.0, 1.0, 0.5, -0.5, 1.0, -0.75, -0.5, -0.75, -0.75, 0.0, -0.75, 1.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.5, 1.0, -0.5, 1.0, -0.75, 0.75, -0.75, -0.75, -0.5, -1.0, 0.5, -0.75, 0.25, 0.5, 0.25, 0.25, -0.25, -0.5, 0.0, 0.5, -1.0, -0.25, -0.5, 0.0, -0.75, -0.25, 0.5, 0.25, 0.5, -1.0, -0.75, 0.25, -0.75, -0.75, -0.25, -0.5, -0.75, 0.25, 0.75, -0.25, -0.75, -1.0, -0.25, 0.25, 1.0, -0.5, -0.75, 0.25, 1.0, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query201.destroy()
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.25, -1.0, 0.75, -0.25, 1.0, 1.0, -0.75, 0.25, 0.0, 0.0, 0.0, 0.75, -1.0, -0.75, 1.0, -0.5, 0.5, 0.0, -1.0, 0.75, 0.5, 0.25, 0.25, 0.25, 1.0, 0.0, -0.25, -1.0, -0.75, 0.0, 0.5, 1.0, 0.5, 0.75, 0.5, -0.75, -0.5, -0.25, 0.5, -0.75, 0.0, -1.0, 1.0, 0.5, 0.75, -0.5, 1.0, 0.5, 0.25, -1.0, 0.0, 0.5, 0.25, -0.25, -0.75, -0.25, 0.0, 0.25, 1.0, 0.5, 0.25, -0.5, 0.75, 0.25, -0.5, -0.25, 0.25, 0.5, 0.25, 0.5, 0.5, -1.0, -0.5, -0.75, 1.0, 0.75, -1.0, -0.75, 0.75, 0.25, 0.5, -1.0, 0.75, -0.5, -0.5, 1.0, 0.25, -0.5, 0.25, -0.5, -0.5, 0.75, -0.75, -0.25, 0.75, 0.5, 0.75, 0.75, -0.5, 0.5, ]);
    render_pass_encoder00110.setStencilReference(1);
    render_pass_encoder00110.popDebugGroup();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.popDebugGroup();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    device00.pushErrorScope("internal");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const render_pass_encoder00120 = command_encoder0012.beginRenderPass({
        label: "render_pass_encoder00120",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query003
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query201.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder00120.setPipeline(render_pipeline007);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder00120.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query006.destroy()
    buffer007.destroy()
    render_pass_encoder00100.insertDebugMarker("marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder00100.setBindGroup(0, bind_group0011);
    render_pass_encoder00110.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder1000.popDebugGroup()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0070.pushDebugGroup("group_marker");
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
    
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    render_pass_encoder0040.setStencilReference(1);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0090.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0090.popDebugGroup();
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer0019.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    query002.destroy()
    render_pass_encoder0080.setStencilReference(1);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder00100.setStencilReference(1);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder00100.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0030, 0);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_pass_encoder0080.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query005.destroy()
    buffer0018.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query006.destroy()
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    query000.destroy()
    query000.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query005.destroy()
    const render_pass_encoder00130 = command_encoder0013.beginRenderPass({
        label: "render_pass_encoder00130",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.popDebugGroup();
    
    render_pass_encoder00110.popDebugGroup();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query000.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0040.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0090.setStencilReference(1);
    render_pass_encoder00130.insertDebugMarker("marker");
    render_pass_encoder0080.setStencilReference(1);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer0030.destroy()
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    buffer0027.destroy()
    render_pass_encoder0070.setStencilReference(1);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder000.popDebugGroup();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    buffer0011.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder00130.setPipeline(render_pipeline003);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0090.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder00100.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    query201.destroy()
    buffer005.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline102);
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder00130.setStencilReference(1);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0070.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    render_pass_encoder00110.setBindGroup(0, bind_group0013);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder00130.setBindGroup(0, bind_group0014);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    render_pass_encoder00120.setBindGroup(0, bind_group0015);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
    const command_buffer001 = command_encoder001.finish();
}