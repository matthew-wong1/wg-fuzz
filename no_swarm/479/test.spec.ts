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
    const array0 = new Float32Array([0.25, 0.25, -0.75, 0.75, -0.25, 0.0, 0.75, 0.0, -0.5, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, 0.25, 0.5, -1.0, -0.5, 0.0, -0.25, 0.25, 1.0, -0.5, -0.25, 0.5, -0.75, 0.25, -0.25, -1.0, -0.25, -0.5, -0.5, -0.75, -0.75, -0.25, 0.75, 0.5, -0.75, 0.0, 1.0, -0.25, 0.0, 0.0, -0.75, 0.25, -0.5, 0.25, 0.5, 0.25, 0.0, 0.0, -0.75, -1.0, -0.75, -0.5, -0.5, 0.0, -0.5, 0.0, 0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 1.0, -1.0, -0.25, 0.75, -0.5, -0.75, -0.25, -0.25, -0.25, 1.0, 0.0, 0.25, -0.75, -0.75, -0.5, -1.0, -0.75, -1.0, -0.75, 0.75, 0.25, 0.0, 0.0, -0.75, 1.0, 0.0, -0.5, 0.25, 0.25, -0.75, 0.75, -1.0, 0.75, -0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("validation");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer001 = command_encoder001.finish();
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder002.insertDebugMarker("mymarker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture001.destroy();
    query001.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer001.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_buffer003 = command_encoder003.finish();
    
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.pushErrorScope("validation");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0040.setStencilReference(1);
    texture000.destroy();
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
    compute_pass_encoder0020.popDebugGroup()
    command_encoder005.insertDebugMarker("mymarker");
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array1 = new Float32Array([0.5, -0.5, 0.75, -0.25, 0.5, -0.25, 0.75, 0.5, -1.0, 0.25, -1.0, 1.0, 0.5, -0.25, -0.25, 0.75, 1.0, -0.25, -1.0, 0.0, -1.0, -0.25, 0.0, -1.0, 1.0, -0.25, -1.0, -0.25, -1.0, -0.5, 0.75, -0.75, 1.0, -0.25, -0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 0.0, -0.25, 0.25, -1.0, 0.25, -0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 1.0, 1.0, -0.75, -0.5, -0.5, 0.75, 0.5, -0.5, -0.75, -0.75, -0.25, 0.5, 0.25, -0.25, 0.5, -0.75, -1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.5, 0.0, 0.25, -0.5, -0.25, 0.75, -0.75, -0.25, -1.0, 1.0, -1.0, -0.5, 0.25, 0.5, 1.0, 1.0, -0.25, -0.5, -1.0, 1.0, 1.0, 1.0, -0.5, -1.0, -0.25, 0.5, 0.75, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.popDebugGroup();
    query002.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    device00.queue.submit([command_buffer001, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0025 = texture002.createView({ label: "texture_view0025" });
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const texture_view0026 = texture002.createView({ label: "texture_view0026" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    query000.destroy()
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0050.setStencilReference(1);
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    const array2 = new Float32Array([-0.25, 1.0, -0.25, 0.25, 0.0, 0.5, 0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 0.0, -0.25, 0.25, 0.0, -0.75, 0.25, -0.75, 0.25, 1.0, -0.75, -0.5, -1.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.0, -1.0, 0.0, -0.25, -0.75, -1.0, -0.25, 0.75, 0.75, 1.0, -1.0, -1.0, 0.5, -0.25, -0.25, -1.0, -0.25, 0.75, -0.75, -0.5, 0.25, 0.0, 0.25, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, -1.0, 0.0, -0.5, 0.5, -0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.0, 0.0, 0.75, 1.0, -0.25, 0.75, -1.0, -0.25, 0.75, -0.75, 0.75, 0.25, -0.25, -1.0, 0.25, 0.0, -0.25, 0.0, 0.5, 1.0, -0.75, 0.5, 0.0, 0.75, -1.0, 1.0, -0.75, -0.75, 0.0, 1.0, 1.0, -1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0040.popDebugGroup();
    
    
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
    buffer002.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
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
    query004.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0050.insertDebugMarker("marker");
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    query004.destroy()
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0040.setPipeline(render_pipeline003);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    query003.destroy()
    query002.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    texture002.destroy();
    device40.pushErrorScope("out-of-memory");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture003.destroy();
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    buffer004.destroy()
    render_bundle_encoder001.popDebugGroup();
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query400.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
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
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer003.destroy()
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query002.destroy()
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    buffer008.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    query002.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
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
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    query005.destroy()
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
    buffer400.destroy()
    render_bundle_encoder400.popDebugGroup();
    
    buffer009.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query003.destroy()
    
    
    render_pass_encoder0050.setPipeline(render_pipeline005);
    buffer007.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer005.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.popDebugGroup();
    query001.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    query003.destroy()
    
    render_pass_encoder0040.setStencilReference(1);
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
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    texture200.destroy();
    query003.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
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
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query005
    });
    texture004.destroy();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder0060.executeBundles([])
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.popDebugGroup();
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_pass_encoder0050.popDebugGroup();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0050.insertDebugMarker("marker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    buffer006.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device70.destroy();
    const command_buffer200 = command_encoder200.finish();
    device60.destroy();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([0.0, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.75, 0.75, 0.75, 0.25, -0.5, 1.0, 0.0, 1.0, 0.75, -0.75, -1.0, 0.75, 0.25, -0.25, 0.0, 1.0, 1.0, -0.25, 0.75, 0.5, 0.5, -1.0, 0.25, -0.25, 0.0, -0.75, 0.25, -0.5, 0.25, 1.0, -0.75, -1.0, 0.25, 0.25, 0.0, 1.0, 0.0, 0.5, -0.25, 0.75, 1.0, -0.5, 0.25, -1.0, 0.75, 0.25, 1.0, -1.0, 0.0, 0.5, 0.75, 0.5, 0.75, -1.0, 0.25, 1.0, 0.75, -0.75, 1.0, 0.0, 0.75, -0.5, 0.75, 0.25, 0.5, -0.25, -0.25, 0.5, -1.0, 0.75, 1.0, 0.75, 0.5, 1.0, 0.0, 0.75, -0.75, 1.0, 1.0, 0.75, -1.0, 0.25, 1.0, 0.75, -1.0, 0.75, 1.0, 0.75, 0.5, 0.25, ]);
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0060.setPipeline(render_pipeline006);
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group003);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    texture005.destroy();
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder0060.insertDebugMarker("marker");
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
    render_bundle_encoder000.draw(3);
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query001.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    
    render_bundle_encoder002.popDebugGroup();
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
    render_pass_encoder0060.setVertexBuffer(0, buffer003);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer0011.destroy()
    
    render_pass_encoder0050.insertDebugMarker("marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
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
                view: texture_view0023,
            },
        ],
        occlusionQuerySet: query002
    });
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.setPipeline(render_pipeline008);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0070.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline403);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_buffer203 = command_encoder203.finish();
    query003.destroy()
    const command_buffer202 = command_encoder202.finish();
    query402.destroy()
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    
    buffer0015.destroy()
    query002.destroy()
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.queue.writeBuffer(buffer0016, 0, array1, 0, array1.length);
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline403.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    buffer0012.destroy()
    buffer402.destroy()
    render_bundle_encoder000.finish();
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer003);
    query004.destroy()
    query000.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0016, 0, array3, 0, array3.length);
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0060.setIndexBuffer(buffer001, "uint16");
    device00.queue.writeBuffer(buffer0016, 0, array0, 0, array0.length);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    query001.destroy()
    
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group005);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    render_pass_encoder0070.setStencilReference(1);
    
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
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder0070.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.setIndexBuffer(buffer004, "uint16");
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0050.insertDebugMarker("marker");
    
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    buffer404.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0070.pushDebugGroup("group_marker");
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer0019.destroy()
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query001.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0060.draw(3);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0060.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0070.setVertexBuffer(0, buffer003);
    render_pass_encoder0070.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0070.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder0070.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0070.end();
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    const command_buffer007 = command_encoder007.finish();
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder0020.popDebugGroup()
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
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

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder0020.end();
    command_encoder002.popDebugGroup()
    render_pass_encoder0050.setVertexBuffer(0, buffer003);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0040.setVertexBuffer(0, buffer003);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0040.end();
    const command_buffer004 = command_encoder004.finish();
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer005, command_buffer007, ]);
}