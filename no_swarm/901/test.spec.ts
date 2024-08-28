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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    device00.pushErrorScope("internal");
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer001.destroy()
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array0 = new Float32Array([1.0, -0.25, 0.5, -0.25, 1.0, -0.75, -0.5, -0.5, 0.0, -0.25, 1.0, -1.0, -1.0, -0.75, -1.0, -0.75, 1.0, -0.75, -0.75, 0.5, -1.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.75, 0.25, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, 0.75, -0.75, -0.75, 0.0, 0.25, -0.75, 0.0, 0.5, 0.75, -0.5, 0.75, 0.0, 1.0, -0.75, 0.0, -0.25, 1.0, -1.0, -0.75, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, -0.75, -0.5, -0.5, -1.0, -0.5, 0.25, 0.75, 0.0, 1.0, -0.5, 0.5, 1.0, 0.75, 0.75, 0.75, 0.25, -0.25, -1.0, -1.0, -0.75, -0.5, 1.0, -0.5, -1.0, -0.5, 0.5, 0.25, 0.25, 1.0, 0.0, 0.25, 0.0, -1.0, 0.75, -0.75, 0.0, 0.5, -1.0, 0.75, 0.0, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    query000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    query000.destroy()
    
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    texture000.destroy();
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const array1 = new Float32Array([0.25, 0.5, -0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 1.0, 0.0, 1.0, 1.0, 1.0, -0.25, -0.5, -1.0, 0.75, 0.75, 1.0, 0.0, 1.0, 0.25, -0.75, -0.25, 1.0, 0.0, -0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -0.75, -1.0, -0.5, -0.25, 0.5, 1.0, 0.0, 0.25, 1.0, 0.5, -0.25, 0.5, -1.0, 0.5, -0.25, -0.5, 0.5, 0.0, 0.25, 0.5, 0.25, 0.75, -1.0, -0.25, 0.0, 0.75, 0.5, -0.75, 1.0, 0.0, 0.25, -1.0, -1.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.5, 0.75, -0.75, 0.0, -1.0, -0.5, 1.0, -0.5, -1.0, 0.0, -1.0, -0.75, -1.0, 0.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.75, 0.25, 0.5, 0.25, -1.0, 0.75, -0.25, 0.25, 0.0, 0.0, 0.75, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    texture002.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    render_bundle_encoder001.popDebugGroup();
    
    texture001.destroy();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer005.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder002.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device60.pushErrorScope("out-of-memory");
    buffer003.destroy()
    
    buffer002.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const array2 = new Float32Array([-0.25, 0.25, -1.0, 0.75, -1.0, -0.25, -0.5, -1.0, -0.75, 0.75, 1.0, 0.5, 0.0, -0.75, -1.0, -1.0, -0.75, -0.25, 0.0, -0.75, 0.25, 0.5, -0.5, 0.5, -0.25, 0.5, 0.75, -0.25, -0.75, -0.25, 0.75, 0.5, 0.25, -0.75, 1.0, 0.75, 0.75, 0.75, 1.0, 1.0, 0.25, -0.75, -1.0, 0.75, 0.5, 0.25, 1.0, -1.0, -0.5, -0.5, -0.75, -0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.0, -0.25, -0.5, -0.5, -1.0, -0.5, -0.75, 0.0, 0.75, 0.0, 1.0, -0.25, -0.25, 0.0, -0.25, -1.0, 0.0, -1.0, -0.5, 0.5, 0.0, 0.5, 0.0, -0.5, -1.0, -0.75, 0.75, -1.0, -1.0, -0.25, -0.75, 0.0, -0.5, 1.0, 0.0, -0.5, 0.75, -0.25, -0.75, 0.0, 1.0, -0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer006.destroy()
    
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer008.destroy()
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    texture600.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device30.destroy();
    
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    
    
    texture003.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
    buffer007.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder002.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_buffer003 = command_encoder003.finish();
    device40.destroy();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
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
    command_encoder004.pushDebugGroup("mygroupmarker")
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device70.destroy();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    render_bundle_encoder002.draw(3);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    query601.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    command_encoder002.insertDebugMarker("mymarker");
    
    render_pass_encoder6000.executeBundles([])
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer004.destroy()
    command_encoder002.popDebugGroup()
    buffer600.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    compute_pass_encoder0000.popDebugGroup()
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    compute_pass_encoder0040.setPipeline(compute_pipeline001);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array3 = new Float32Array([1.0, -0.25, -0.75, 0.75, -0.25, -0.75, -0.5, -0.5, -0.75, 1.0, -0.25, 0.25, 0.5, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, -0.75, 0.25, 0.0, 0.5, -0.25, 1.0, 0.75, -0.5, 1.0, 0.0, 0.75, 0.5, -1.0, 0.75, -1.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.75, -0.5, -0.25, -1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.75, -0.5, 0.0, 0.75, 0.25, 0.75, 1.0, -0.25, 0.25, 0.25, -1.0, 0.25, -0.5, 0.75, -0.25, -0.75, -0.25, -0.25, -0.75, -1.0, 0.25, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.75, 1.0, 0.5, -0.5, -0.75, 1.0, -0.75, -0.25, 0.5, 0.25, 0.0, -0.75, -1.0, -0.75, -0.5, 0.25, -0.5, -0.5, ]);
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const array4 = new Float32Array([0.75, 1.0, 0.75, -0.75, -1.0, 0.5, -1.0, 0.75, 0.25, 0.5, 1.0, 1.0, 0.0, -0.5, -1.0, 0.25, 0.75, 0.75, -0.5, -1.0, -1.0, 0.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.5, -0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 0.5, -1.0, 0.0, -0.25, 0.5, 1.0, 1.0, 1.0, 0.0, 1.0, 0.75, -1.0, -0.5, 0.5, 0.5, 0.75, 0.5, 0.25, 0.5, -0.25, 1.0, -0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.5, 1.0, 1.0, -1.0, -0.5, 0.5, -0.5, 0.0, 1.0, -1.0, -0.25, 0.75, -0.75, 1.0, 0.5, -0.25, -0.5, 0.5, 0.25, -0.25, -0.75, 1.0, -1.0, -0.25, 0.25, -0.25, 0.75, 0.25, 0.5, -0.5, 0.75, -0.25, 0.25, -1.0, 0.25, ]);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6000.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer100.destroy()
    const array5 = new Float32Array([0.75, 0.25, 0.25, -0.5, -0.25, -0.5, 0.5, -0.25, -0.75, -0.75, -0.5, -0.5, 0.5, 0.5, 1.0, 0.0, 0.25, -0.75, -0.5, 0.5, -0.75, -0.5, 0.75, 1.0, -0.75, -0.5, 0.25, -0.75, 0.0, -0.5, -1.0, 1.0, 0.75, -0.75, -0.75, -0.75, -0.75, -0.75, -0.75, 1.0, -0.5, 0.25, -0.25, 0.5, 1.0, -0.75, 0.0, 0.75, 1.0, 0.75, 0.5, 1.0, 0.5, 0.25, 1.0, 0.5, 0.25, -1.0, 0.25, -1.0, -1.0, 0.75, 0.75, -1.0, 0.0, 1.0, -0.5, -0.75, -0.75, -0.75, -1.0, -0.25, -0.25, 0.75, 1.0, 0.0, -0.25, 0.5, -0.25, -0.25, -0.75, 0.5, 0.25, 0.0, 0.0, 1.0, -0.5, -0.5, 0.5, -0.5, 0.5, 0.0, -0.5, 0.0, -0.5, 0.75, -0.75, 1.0, 0.75, 0.75, ]);
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.finish();
    
    texture603.destroy();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    
    
    const array6 = new Float32Array([0.5, 0.75, 0.5, -1.0, -0.25, -0.25, -0.75, 0.0, -0.5, -0.5, 0.25, 0.75, -0.25, -0.75, -0.5, 0.0, 0.75, -0.5, 0.75, 0.5, 0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -1.0, -0.25, 0.0, 1.0, 0.0, 0.5, 0.5, 1.0, -0.5, 0.5, 0.75, 1.0, -0.5, 0.0, -0.25, -0.5, -0.25, 0.5, -1.0, 0.75, 0.5, 0.25, -0.5, -0.5, -0.75, 0.25, -0.75, 0.5, 0.0, -1.0, 0.25, 0.5, 0.0, 0.75, -1.0, 0.25, 0.25, -1.0, -1.0, 1.0, 0.75, 0.25, 0.5, -0.75, -0.5, -0.5, -0.5, -0.5, -0.5, 0.0, -1.0, 0.5, 0.0, -0.25, -0.25, -0.25, 0.25, -1.0, 0.75, -0.75, 0.25, 0.25, 0.75, 0.75, 0.25, -1.0, 0.25, 0.0, -0.5, 0.25, 0.75, 1.0, -0.75, -0.25, ]);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer009.destroy()
    
    compute_pass_encoder0020.setPipeline(compute_pipeline003);
    render_pass_encoder6010.insertDebugMarker("marker");
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0012, 0);
    device60.queue.writeTexture({ texture: texture604 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer005 = command_encoder005.finish();
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    texture605.destroy();
    
    
    
    
    
    device10.destroy();
    buffer0014.destroy()
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder001.setIndexBuffer(buffer0011, "uint16");
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query602
    });
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture604 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture604 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_pass_encoder6010.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    render_bundle_encoder001.setIndexBuffer(buffer0011, "uint16");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    device60.queue.writeTexture({ texture: texture604 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0040.popDebugGroup()
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    render_bundle_encoder600.popDebugGroup();
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    query601.destroy()
    const texture606 = device60.createTexture({
        label: "texture606",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    render_bundle_encoder001.drawIndexed(3);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder6010.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    
    
    render_pass_encoder6010.setStencilReference(1);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer601.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    render_pass_encoder6000.setStencilReference(1);
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6020.insertDebugMarker("marker");
    texture601.destroy();
    
    
    query002.destroy()
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    buffer0011.destroy()
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const texture607 = device60.createTexture({
        label: "texture607",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6010.executeBundles([])
    
    device60.queue.writeTexture({ texture: texture604 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer0015.destroy()
    
    
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const texture608 = device60.createTexture({
        label: "texture608",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer0010.destroy()
    
    device60.queue.writeTexture({ texture: texture608 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    device60.queue.writeTexture({ texture: texture608 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6020.insertDebugMarker("marker");
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    render_pass_encoder6000.setPipeline(render_pipeline600);
    device00.queue.submit([command_buffer005, ]);
    query002.destroy()
    device60.queue.writeTexture({ texture: texture608 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group600);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    device60.queue.writeTexture({ texture: texture608 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture604 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6070 = texture607.createView({ label: "texture_view6070" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.writeTexture({ texture: texture608 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.submit([command_buffer003, ]);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group005);
    const texture_view6080 = texture608.createView({ label: "texture_view6080" });
    device60.queue.writeTexture({ texture: texture604 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.queue.writeTexture({ texture: texture608 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group006);
    const texture_view6081 = texture608.createView({ label: "texture_view6081" });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    texture602.destroy();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const array7 = new Float32Array([-0.25, 0.5, -1.0, 0.5, 0.75, 0.75, -0.75, -0.25, -0.5, -0.5, 0.0, -1.0, -0.5, 0.75, 1.0, 0.25, 0.75, -0.5, 1.0, 0.75, 1.0, 1.0, 0.0, 0.25, 0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 0.5, -0.25, -0.5, 0.0, -0.25, -0.25, 0.75, -1.0, -0.75, -1.0, -0.25, -0.75, -0.75, -0.75, -1.0, 0.75, 0.0, -1.0, -0.75, 1.0, 0.5, 1.0, 0.25, -0.75, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, 0.25, 1.0, -1.0, -0.5, -1.0, 0.0, 0.0, -1.0, -0.5, 0.0, 0.0, -1.0, 1.0, -0.75, -1.0, 0.0, 0.25, -1.0, 0.75, -1.0, 0.75, -0.5, 1.0, 0.0, -1.0, 0.25, 0.0, -1.0, -0.5, 0.75, 0.5, -0.25, 0.0, 1.0, 0.75, 0.5, -1.0, -0.75, -0.25, -0.5, ]);
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    const texture_view6082 = texture608.createView({ label: "texture_view6082" });
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    
    render_pass_encoder6020.setPipeline(render_pipeline601);
    
    
    device60.queue.writeTexture({ texture: texture604 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.pushErrorScope("out-of-memory");
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group601);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    render_pass_encoder6010.executeBundles([])
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    device00.queue.writeBuffer(buffer0012, 0, array7, 0, array7.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0021, 0);
    buffer0020.destroy()
    
    render_pass_encoder6020.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0021, 0, array1, 0, array1.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    device60.queue.writeTexture({ texture: texture608 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query603.destroy()
    
    render_pass_encoder6000.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer0012, 0, array7, 0, array7.length);
    
    
    render_pass_encoder6010.setPipeline(render_pipeline601);
    device60.queue.writeTexture({ texture: texture608 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    texture608.destroy();
    device00.queue.writeBuffer(buffer0021, 0, array4, 0, array4.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    query600.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    texture004.destroy();
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    device50.pushErrorScope("out-of-memory");
    buffer603.destroy()
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    
    
    render_pass_encoder6020.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.end();
    compute_pass_encoder0040.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group602);
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0040.end();
    command_encoder004.popDebugGroup()
    compute_pass_encoder0010.end();
    const command_buffer004 = command_encoder004.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer000, ]);
}