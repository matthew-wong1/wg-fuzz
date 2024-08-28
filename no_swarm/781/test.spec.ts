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
    
    
    const array0 = new Float32Array([0.0, -0.75, 0.5, -0.75, -0.5, 0.5, -0.75, 0.5, 0.5, 1.0, -1.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.5, -0.25, 0.5, 0.5, 0.75, 0.5, 1.0, 0.0, 0.25, -1.0, 0.75, 0.5, -1.0, -0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 0.5, 0.25, 1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 0.75, -1.0, 0.5, -0.25, -0.75, -0.5, -1.0, 1.0, 0.75, -0.5, -0.5, 0.25, 1.0, 0.0, -0.75, 0.75, 1.0, 1.0, -0.5, -1.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.75, -0.5, 0.0, 0.0, 0.25, 0.5, -0.75, 0.5, -0.75, -0.5, -0.75, 0.25, 0.25, -0.25, 1.0, -0.25, 1.0, 0.75, 0.25, 0.25, -0.25, 0.75, 1.0, 1.0, 0.5, 0.0, -1.0, -0.25, 0.5, 1.0, 0.25, -0.25, ]);
    const array1 = new Float32Array([-1.0, -0.25, -0.25, -1.0, 0.75, -1.0, -1.0, -1.0, -0.5, 1.0, 0.0, -1.0, 0.0, -0.25, -1.0, 0.5, 0.5, -1.0, 0.75, 0.25, 0.75, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, 0.0, -0.75, -0.25, -1.0, -0.5, 0.5, -0.5, 0.0, -1.0, -0.75, -0.75, 0.0, 0.25, -0.5, -0.5, 1.0, 0.5, 0.25, 0.75, 0.0, -1.0, 1.0, 0.75, 0.75, -1.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 0.5, -0.5, 1.0, 1.0, 0.0, 0.5, 0.0, -0.25, -0.75, -0.75, 0.25, 1.0, 0.5, 0.5, 1.0, 0.25, -1.0, -0.75, 0.25, -0.25, -0.75, 0.75, 0.25, 0.75, -0.25, 0.25, -0.25, 0.0, -1.0, 0.75, -0.5, -0.75, 0.0, 1.0, 0.75, -0.75, 0.0, ]);
    
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    command_encoder000.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
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
    
    device00.pushErrorScope("internal");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([0.5, 0.25, -1.0, 0.0, 0.5, -0.75, -0.5, 0.5, 1.0, 0.25, -0.5, -0.5, -1.0, 0.5, -0.5, -0.5, -0.5, -0.25, 1.0, 0.25, 0.5, 1.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.5, 0.75, 0.5, 0.25, 0.5, -0.75, 1.0, -0.25, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, -0.5, 0.25, 0.5, 0.0, -0.75, -0.5, 1.0, 1.0, 0.5, 0.75, -1.0, 1.0, -0.25, -0.75, 1.0, -0.25, 1.0, -0.75, 0.25, 0.0, -0.5, -1.0, 0.5, -1.0, -1.0, -0.25, 1.0, 1.0, 0.0, 0.75, -0.25, 0.75, -1.0, -0.75, 0.25, -0.25, 0.75, 0.75, 0.0, -0.25, 0.5, -1.0, -0.25, -0.25, 0.0, -0.25, -0.25, -0.25, -0.75, -0.5, 1.0, 0.5, -0.75, -1.0, -0.25, -0.5, 0.75, 0.75, 0.75, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    render_bundle_encoder000.popDebugGroup();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder001.setPipeline(render_pipeline002);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    
    query100.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0000.popDebugGroup()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0010.popDebugGroup()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    texture000.destroy();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer000.destroy()
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    query001.destroy()
    
    const array3 = new Float32Array([0.75, 1.0, 1.0, -0.25, -1.0, -0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.5, 0.25, 0.0, 0.5, 1.0, -1.0, 0.25, 0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 1.0, -1.0, -1.0, -0.75, 0.0, 0.0, -1.0, 0.25, 0.5, 0.5, -0.75, 0.0, 0.5, 0.0, -0.5, 0.5, 0.5, -0.75, 0.5, 0.5, -0.75, 1.0, -0.5, 0.0, 0.25, -0.25, -0.5, -0.75, -0.75, 1.0, 0.5, 0.0, 0.5, -0.75, -0.75, 0.25, -1.0, 0.25, 1.0, -1.0, -0.75, -1.0, 0.75, -0.5, 1.0, -0.75, 0.25, 0.0, 0.5, 0.25, 0.75, -0.25, 0.75, 1.0, 0.5, 0.5, -0.75, -0.75, 0.25, -1.0, 0.75, 1.0, -0.5, 0.75, -0.75, -0.25, 0.5, -1.0, 1.0, -0.75, -1.0, -0.25, 0.5, 0.5, ]);
    texture100.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const array4 = new Float32Array([-1.0, -0.75, 0.0, -0.75, 0.5, -0.75, 0.25, 0.25, 0.75, -1.0, 0.0, 0.25, -0.5, -0.75, 1.0, -0.5, -0.25, 0.5, 1.0, 1.0, -1.0, 0.25, -1.0, 0.75, 1.0, -0.5, 1.0, -0.5, 0.0, -1.0, 0.75, 0.0, -0.25, -0.25, -0.25, -1.0, 0.5, 0.5, 0.75, 1.0, 0.0, 0.5, -0.75, -0.75, -1.0, -0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -0.75, -0.5, 0.25, 0.25, 0.75, 1.0, -0.25, 0.0, -1.0, -1.0, -0.5, 0.0, 0.5, -0.75, -0.75, -0.75, -1.0, 0.25, -1.0, -1.0, -0.5, 0.75, 0.0, 1.0, -0.75, 0.75, -0.5, -0.5, 0.5, 0.5, -0.5, -1.0, -0.75, -1.0, 1.0, -1.0, 0.5, -0.25, 1.0, 0.25, 0.75, 0.75, -0.75, -0.5, -0.75, 0.75, 0.75, -0.25, 1.0, ]);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    buffer002.destroy()
    device00.pushErrorScope("validation");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer003.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    buffer004.destroy()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setPipeline(render_pipeline001);
    query102.destroy()
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
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
    query000.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline001);
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.insertDebugMarker("mymarker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    const array5 = new Float32Array([-0.25, 0.5, -1.0, 1.0, 1.0, 0.5, -0.25, -0.25, 0.75, 0.75, 1.0, -0.5, -0.25, -0.25, 0.5, 0.5, -0.25, 1.0, 0.0, 0.75, 1.0, 1.0, 0.25, -0.75, 0.25, 0.0, -0.5, 1.0, -0.25, 0.75, -0.25, 0.0, -0.75, 0.0, 0.75, 0.75, 0.25, 0.75, 0.5, -0.5, -1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 1.0, -0.25, -0.5, 0.25, -0.75, 0.75, 0.0, 1.0, -0.75, -0.5, -0.25, 0.0, 1.0, -0.75, -0.5, -1.0, -0.75, -0.5, 0.0, 1.0, 1.0, 0.0, -0.75, 0.75, 0.0, 0.0, 1.0, 0.75, -0.5, -0.5, 0.25, 0.25, -0.25, 0.75, 0.25, -0.25, -0.75, -0.5, 1.0, 0.25, -0.5, -0.75, 0.25, -0.25, 0.0, 0.75, 0.0, 0.75, 0.25, -0.75, 0.5, 0.75, 0.5, -0.25, ]);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_pass_encoder0050.executeBundles([])
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query003.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    query100.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query100.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
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
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setPipeline(render_pipeline000);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    query005.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group004);
    query000.destroy()
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device20.pushErrorScope("validation");
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query102.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    buffer101.destroy()
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    
    query004.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer006.destroy()
    command_encoder200.insertDebugMarker("mymarker");
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    query005.destroy()
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
    
    device10.pushErrorScope("internal");
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query102.destroy()
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query005.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer0011.destroy()
    render_pass_encoder0020.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer005.destroy()
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
    query102.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.25, -0.5, 0.0, -0.25, 0.25, -0.75, 0.75, 0.75, -1.0, 0.25, 0.5, -0.75, -1.0, 0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 1.0, -0.75, 0.5, 0.25, 0.25, -0.5, 1.0, -0.75, -0.75, -0.75, 0.0, 0.75, -0.5, -0.25, -1.0, -0.5, -0.25, 0.25, 0.5, -1.0, -0.25, 0.75, 0.5, -0.25, 0.5, -0.75, 0.25, 0.0, -1.0, -1.0, 0.0, -0.25, 1.0, -0.75, -0.25, -0.75, 0.75, -0.75, 1.0, 0.75, 0.0, -1.0, -1.0, 0.25, 1.0, 0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 0.0, -0.5, -0.75, 0.5, 1.0, 0.75, -0.25, -1.0, 1.0, 1.0, -0.5, 0.5, -0.75, -0.25, -1.0, -0.5, -0.25, 0.5, 0.25, 0.75, 0.5, 0.0, -0.25, -0.25, 0.0, 0.25, 0.0, -0.25, -0.25, -0.5, ]);
    
    render_pass_encoder0060.setPipeline(render_pipeline004);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder0030.setStencilReference(1);
    query000.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    buffer008.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setStencilReference(1);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    render_pass_encoder0030.popDebugGroup();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline104);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query103.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
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
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer0012.destroy()
    const array7 = new Float32Array([-0.5, -0.75, 0.5, -1.0, -1.0, -1.0, 0.0, 0.0, -0.25, 0.0, -1.0, -0.25, 0.25, 1.0, -0.75, -0.25, 0.75, 0.75, -0.75, -0.5, 0.0, 1.0, 1.0, 0.75, -0.75, 0.75, -0.5, 0.5, -0.25, 0.5, 0.0, 0.25, 1.0, -0.75, 0.75, 0.0, 0.75, 0.0, 0.5, 0.5, 0.0, -0.5, -0.5, -0.5, 0.75, 0.75, 0.5, 0.5, -1.0, -0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.75, 0.25, -1.0, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, -0.25, 0.25, 0.5, -0.75, 1.0, 0.75, 1.0, 0.5, -0.25, -0.5, 1.0, 1.0, -1.0, -0.5, 0.75, -0.5, -0.75, 0.25, -0.5, 0.5, -1.0, 0.5, -0.25, 1.0, -0.25, -0.25, -0.25, 0.25, 1.0, 0.5, -0.75, 1.0, 0.0, -0.75, 0.0, 0.0, ]);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    buffer0010.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder0040.popDebugGroup();
    
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query001
    });
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder201.popDebugGroup()
    render_pass_encoder0070.setPipeline(render_pipeline001);
    buffer104.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    
    
    device20.pushErrorScope("validation");
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.0, 0.25, 0.0, -1.0, 0.0, -0.75, 1.0, -1.0, -0.25, -0.5, -0.5, -1.0, -1.0, -0.75, 0.0, -0.25, -1.0, -0.5, -0.5, -0.5, -0.5, -0.5, 0.5, -0.5, -1.0, -0.5, -1.0, 0.5, -0.5, -0.75, 0.0, -0.5, 0.75, 1.0, -1.0, 1.0, 0.0, -0.75, -0.5, 0.5, -0.75, -0.75, 0.75, -0.5, 0.0, 0.75, 0.25, 0.75, -0.5, 1.0, 0.5, -0.75, -0.5, -1.0, 0.75, 0.5, -0.75, 0.5, 1.0, -0.75, 0.75, 0.5, 0.0, 0.0, -0.25, 0.5, -0.75, 1.0, -1.0, -1.0, -0.25, 0.0, 0.25, -0.75, 0.5, 0.0, -0.25, -1.0, -0.5, -1.0, -0.25, -1.0, -1.0, 1.0, -0.75, -0.75, 0.25, 1.0, -0.25, 0.25, -0.75, 0.25, -0.75, 0.25, -0.5, 0.25, 0.75, 0.0, 0.25, -0.5, ]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer009.destroy()
    render_pass_encoder0060.setStencilReference(1);
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
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
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0070.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
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
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    buffer0014.destroy()
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_bundle_encoder000.popDebugGroup();
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    query004.destroy()
    query102.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder1020.setPipeline(render_pipeline104);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder1020.beginOcclusionQuery(0)
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer102.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
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
    command_encoder008.insertDebugMarker("mymarker");
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
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
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group007);
    
    render_pass_encoder0080.setPipeline(render_pipeline003);
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group008);
    buffer0015.destroy()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    
    buffer001.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0080.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_pass_encoder0040.insertDebugMarker("marker");
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
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query101.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
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
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0080.setBindGroup(0, bind_group009);
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.end();
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group0010);
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1000.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer109, 0);
    compute_pass_encoder1010.end();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer101 = command_encoder101.finish();
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0025, 0);
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer101, ]);
}