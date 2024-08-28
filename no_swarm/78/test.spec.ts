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
    
    
    const array0 = new Float32Array([-0.5, 0.75, 1.0, -1.0, -1.0, 0.0, -0.5, 0.0, -0.25, -1.0, -0.5, -0.75, -0.25, -0.25, -1.0, 0.75, -1.0, 0.5, 0.0, 1.0, 0.0, -0.25, -1.0, -0.5, -1.0, -0.75, 0.75, -0.5, -0.25, 0.25, 0.5, 0.5, -0.5, 0.5, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, -0.75, 1.0, -1.0, -0.5, 1.0, -1.0, 0.5, 0.25, 0.5, -0.75, 0.25, -0.75, -0.5, -0.75, -0.75, 1.0, -0.75, -1.0, 1.0, -0.75, -0.75, -0.5, -0.25, -0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 0.0, -1.0, 0.25, 0.75, -0.75, -0.75, 0.25, -1.0, 0.0, -0.5, 0.75, 0.75, -0.5, -0.25, -0.5, -0.5, -0.25, 1.0, -0.75, 0.25, -0.5, -0.25, -0.25, 0.25, -0.25, -1.0, -0.5, -0.25, 0.25, -0.5, -1.0, ]);
    
    const array1 = new Float32Array([0.0, -1.0, 0.25, 0.5, -0.75, 0.5, -0.75, -1.0, 0.0, 0.25, 0.75, 0.5, -1.0, -0.5, 0.75, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, 0.75, -1.0, -0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 0.5, -0.5, 0.0, 1.0, 0.75, -0.25, 1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 0.0, -0.75, -0.75, 0.75, -0.5, 0.5, 0.5, 0.25, 0.75, 0.5, 1.0, 0.75, 0.5, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, -0.25, 0.0, -0.5, 1.0, 0.5, -0.75, -1.0, 0.75, -1.0, -1.0, 0.5, 1.0, 1.0, -1.0, 0.25, -1.0, 0.25, -0.75, 0.5, -1.0, -0.5, -1.0, 0.25, -0.25, 0.25, 0.75, 0.0, -1.0, 0.0, 0.25, -1.0, -0.5, 0.75, -0.25, -1.0, 1.0, 0.0, 0.75, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device20.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer000 = command_encoder000.finish();
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture001.destroy();
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.pushErrorScope("internal");
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    
    device30.pushErrorScope("validation");
    
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
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
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query400.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device00.pushErrorScope("out-of-memory");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query001.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer300 = command_encoder300.finish();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer400,
        0
    )
    query002.destroy()
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    buffer300.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    
    query000.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array2 = new Float32Array([0.0, 0.0, 0.0, -0.5, -1.0, -1.0, -0.25, 1.0, -0.25, 0.75, 0.0, -0.5, 0.0, -0.5, -0.75, -1.0, 0.5, 0.0, 0.5, -1.0, -0.75, 0.75, 0.0, -1.0, -0.75, -1.0, -0.5, -0.25, 0.25, 0.0, -0.75, -0.25, 0.75, 1.0, -0.25, -1.0, -0.25, 1.0, -0.25, 1.0, 0.25, 0.25, 0.5, -0.75, -0.75, -0.75, 0.5, -0.5, 1.0, 1.0, 1.0, 1.0, 0.75, 0.25, -0.75, -1.0, -0.75, 0.0, 0.25, -0.25, 0.5, -1.0, -0.25, 0.0, -0.5, -0.75, -1.0, 0.5, -0.25, -0.5, 0.25, -1.0, 0.75, -1.0, 0.25, 0.5, -0.75, -0.25, 0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 1.0, -0.75, 0.75, -0.25, -0.75, 0.25, -0.5, 0.0, -0.25, 0.25, -0.75, 1.0, -0.25, -0.25, -0.25, -0.75, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer004.destroy()
    
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_pass_encoder0010.executeBundles([])
    query000.destroy()
    query001.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    buffer500.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    compute_pass_encoder4010.insertDebugMarker("marker")
    texture003.destroy();
    device30.queue.submit([command_buffer300, ]);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer006.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    render_bundle_encoder400.setPipeline(render_pipeline402);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    render_pass_encoder0010.setPipeline(render_pipeline001);
    device00.pushErrorScope("validation");
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    query402.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder402.setPipeline(render_pipeline401);
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
    
    
    buffer405.destroy()
    texture002.destroy();
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
    
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder401.setPipeline(render_pipeline402);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer404.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const array3 = new Float32Array([1.0, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, -0.75, 0.75, 0.0, -0.5, 1.0, -0.75, 0.25, -0.75, 0.5, 0.75, -0.25, -0.5, -1.0, 0.5, -0.75, 0.25, -0.75, 1.0, 1.0, -0.75, -0.75, 0.0, -0.75, 0.5, 0.0, 1.0, -1.0, 0.25, 0.75, 0.0, 0.75, -0.5, 0.25, 1.0, -0.25, 1.0, 0.75, -0.75, 1.0, 1.0, 0.5, -0.5, -1.0, 0.75, 0.0, 0.5, -0.75, 0.75, -1.0, -1.0, 1.0, -0.75, 0.25, 0.25, -0.5, -0.25, -1.0, 1.0, 0.75, -0.75, -0.5, 0.5, 0.25, -0.25, -0.25, -0.5, -0.75, 0.5, 1.0, -0.5, -0.5, -0.5, -0.5, 0.0, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, -0.25, 0.75, -0.25, -1.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 1.0, 0.25, -0.5, ]);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    query000.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer003.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder400.popDebugGroup();
    
    
    render_bundle_encoder002.popDebugGroup();
    texture401.destroy();
    
    
    
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    buffer407.destroy()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    query300.destroy()
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer400.destroy()
    texture400.destroy();
    buffer007.destroy()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    render_bundle_encoder402.popDebugGroup();
    query001.destroy()
    texture300.destroy();
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
        occlusionQuerySet: query000
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
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_pass_encoder0020.setPipeline(render_pipeline000);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
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
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group402);
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    query000.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer502.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer005.destroy()
    query002.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array4 = new Float32Array([0.5, 1.0, 0.25, -0.25, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, 0.0, 0.75, -1.0, 0.0, 1.0, -0.5, 0.5, 0.0, -0.75, 0.0, -1.0, -0.25, -0.25, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, -0.75, -0.5, -0.75, 1.0, -0.75, 0.0, 0.25, 1.0, 0.5, 0.75, 0.0, -0.25, 0.25, 1.0, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, -1.0, 1.0, -1.0, 0.5, -0.25, -0.5, 1.0, -0.75, 0.5, 0.5, -0.75, -0.25, -1.0, 1.0, -0.25, 0.25, 0.25, -0.25, 0.0, -0.5, 0.0, 1.0, 0.0, 1.0, 1.0, 0.5, -1.0, 0.75, -0.5, 0.75, 0.75, 0.25, -0.25, -0.75, 0.0, -1.0, 0.75, -0.75, 0.75, 0.5, -1.0, -1.0, -1.0, -0.75, -1.0, 1.0, ]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    render_bundle_encoder000.popDebugGroup();
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    
    const command_buffer301 = command_encoder301.finish();
    device00.queue.writeBuffer(buffer0013, 0, array2, 0, array2.length);
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer503,
        0
    )
    query300.destroy()
    
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    const array5 = new Float32Array([-0.75, 1.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.25, 0.5, 0.25, 0.25, -0.5, 0.5, -1.0, 1.0, 0.5, -0.5, 0.0, -0.75, 1.0, 0.75, 0.25, -0.75, -0.75, 0.0, 1.0, 0.25, 0.75, 0.5, 0.75, 0.5, 0.25, 1.0, 0.0, -0.5, 1.0, -1.0, 0.0, -0.25, -1.0, 0.0, -0.75, 1.0, 0.5, -0.25, 0.25, 1.0, -0.75, 1.0, -1.0, 0.25, -0.75, -0.25, 1.0, 1.0, 0.25, 0.25, 0.5, -1.0, 1.0, -0.5, 0.25, -0.25, 0.25, 0.0, 0.5, -1.0, 0.25, 0.75, -0.5, -0.75, 0.5, -0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.0, -0.5, -0.75, 0.25, 0.0, 0.5, -0.25, -0.75, -0.5, -0.25, 1.0, 0.0, -0.75, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, 0.75, -0.75, -0.5, ]);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    query003.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture004.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    buffer406.destroy()
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder302.pushDebugGroup("mygroupmarker")
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer303 = command_encoder303.finish();
    
    
    query404.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    texture403.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    query003.destroy()
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    query003.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder0030.setPipeline(compute_pipeline002);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    buffer409.destroy()
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer501,
        0
    )
    
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer503,
        0
    )
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device60.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer503,
        0
    )
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    query001.destroy()
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    query003.destroy()
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer503,
        0
    )
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device00.queue.writeBuffer(buffer0013, 0, array5, 0, array5.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer503,
        0
    )
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_bundle_encoder300.insertDebugMarker("marker");
    device00.queue.submit([command_buffer000, ]);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    compute_pass_encoder4010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder5010.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0017, 0);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder0030.end();
    command_encoder302.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device50.queue.submit([command_buffer502, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer003 = command_encoder003.finish();
    device30.queue.submit([command_buffer304, ]);
    device00.queue.submit([command_buffer003, ]);
    device30.queue.submit([command_buffer302, ]);
}