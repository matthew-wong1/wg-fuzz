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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([0.25, -0.25, -0.5, 0.0, 1.0, 0.5, -0.5, 1.0, -0.5, -0.25, -0.75, 0.0, 0.0, -0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -0.75, 1.0, -0.75, -1.0, 0.0, 1.0, 1.0, -0.75, 0.25, -0.5, 1.0, -0.5, -0.25, -1.0, 0.75, -0.25, -0.25, -0.25, 0.0, 0.5, 0.25, -0.5, 0.0, -0.75, 0.25, -0.5, 0.75, -0.5, -1.0, 0.5, -0.75, 0.75, 0.5, 1.0, -0.5, 0.0, -0.5, 0.25, 0.25, 0.5, -0.75, 0.5, -0.5, 0.5, -0.75, -1.0, 0.25, 0.0, 0.75, -1.0, 0.5, 0.25, 0.75, 0.5, 0.75, -1.0, -0.25, -0.75, 0.0, 0.25, -1.0, -0.5, -0.5, 1.0, 1.0, 0.25, 0.75, 0.5, 1.0, 1.0, 0.0, -0.75, 0.0, 0.25, 0.5, 0.75, -0.75, 0.75, 0.75, 1.0, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
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
    const array1 = new Float32Array([0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -0.25, 1.0, -1.0, -0.25, -1.0, -0.5, 0.25, 0.0, 0.25, -0.5, -1.0, 0.25, 0.75, -0.5, -0.75, 0.75, 0.0, 1.0, -0.25, 1.0, -0.75, 0.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.5, -0.75, 0.25, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.5, 1.0, 0.25, -1.0, 0.75, -0.5, 0.75, 0.25, 0.0, 1.0, -1.0, -1.0, -1.0, -1.0, 0.75, 1.0, -0.25, -1.0, 0.5, -0.5, 0.25, 1.0, -0.75, -0.75, 0.5, -1.0, -0.75, -1.0, 0.25, 0.25, -0.5, -0.5, 0.25, -0.5, -0.75, 0.25, 1.0, 0.25, -0.25, 0.75, 0.0, 0.75, -0.25, -0.5, -0.25, 0.0, -1.0, 1.0, -0.25, 0.25, 1.0, 0.0, -0.5, 0.5, 0.5, ]);
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([0.0, 0.5, 1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 0.0, -0.25, -0.25, -1.0, -0.25, -0.5, 0.25, -0.5, 0.0, 0.0, 0.5, -0.5, -0.25, -0.25, -0.25, 1.0, 0.75, -1.0, 1.0, -0.75, 0.0, -1.0, 0.0, 1.0, 0.25, 0.75, -0.5, -1.0, -0.25, 0.25, -0.5, -0.25, 0.25, 0.5, 0.0, 0.25, 0.5, 0.5, 0.5, 0.0, -0.75, 0.25, -1.0, -0.5, 1.0, -1.0, -1.0, -0.5, 1.0, 0.25, -0.5, 0.5, 0.75, 0.5, 0.75, -1.0, 0.0, -0.5, 1.0, -0.75, 0.75, -0.75, 1.0, 0.25, 0.25, 0.75, 0.75, 1.0, 0.0, -0.25, -0.25, 0.5, 1.0, 0.0, -1.0, 0.75, 0.25, 0.75, 1.0, -0.75, 0.25, 0.75, 0.0, 0.0, 0.5, -1.0, 0.25, -1.0, -0.75, 0.75, -0.25, 0.25, ]);
    query000.destroy()
    query001.destroy()
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query001.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    query000.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.pushErrorScope("validation");
    
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture001.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer001, ]);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    render_bundle_encoder002.setPipeline(render_pipeline000);
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const array3 = new Float32Array([0.0, 0.5, -0.5, -1.0, -0.25, -0.25, 0.5, 0.0, -1.0, -0.25, -0.5, 0.25, -1.0, 0.5, 0.0, 1.0, -1.0, -0.25, -1.0, 1.0, -0.5, -0.5, 0.5, 0.5, 0.5, -1.0, 0.75, 0.75, 0.25, -0.25, -0.25, 0.5, -1.0, -0.5, -0.25, 0.25, 1.0, 0.25, 0.25, 0.5, 0.0, -0.25, -0.25, 0.0, 0.0, 0.25, -0.25, -0.75, 0.25, -0.25, -0.25, 1.0, 0.5, 1.0, 0.25, 1.0, 0.75, 0.75, 0.5, -0.75, 0.25, 0.75, -0.75, 0.25, 0.0, 1.0, 0.0, 0.25, 0.0, 0.75, -0.5, -0.5, 1.0, -0.5, -0.5, -1.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.75, -0.25, 0.75, 0.5, 0.5, 1.0, -1.0, -0.5, -0.75, -1.0, -0.75, -1.0, 0.25, 0.25, -0.75, 0.75, -0.5, -0.75, ]);
    buffer000.destroy()
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
    render_pass_encoder0000.popDebugGroup();
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer003.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array4 = new Float32Array([1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 0.5, 0.25, -0.5, 0.75, -0.5, -1.0, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, -1.0, 1.0, -1.0, -1.0, -0.5, -1.0, 0.75, -0.5, 0.5, -0.5, -0.25, 0.25, 0.75, 0.25, 0.5, -1.0, -0.5, -0.25, 0.0, 0.5, -0.25, -0.25, -1.0, -0.75, -1.0, 0.0, -0.5, -1.0, -0.25, -0.5, 0.25, -0.25, 0.0, -0.75, 0.25, 0.75, 0.0, -0.25, 0.0, 0.5, 0.25, 0.25, -0.75, 0.25, -0.5, -1.0, 0.75, 0.0, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, 0.0, 0.25, -0.5, -0.75, -0.25, 0.25, 0.25, -0.5, -0.25, -0.75, 1.0, -0.5, 1.0, 1.0, -0.5, -1.0, -0.75, -1.0, -0.5, -0.75, 0.75, 0.75, 0.0, 0.25, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder001.setPipeline(render_pipeline000);
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
        occlusionQuerySet: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query002.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer002.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    texture002.destroy();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    device20.destroy();
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setVertexBuffer(0, buffer001);
    
    
    texture000.destroy();
    
    query001.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.popDebugGroup();
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.popDebugGroup();
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
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setStencilReference(1);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array5 = new Float32Array([0.0, -0.5, 0.75, 1.0, 0.75, 0.5, -1.0, 0.75, -0.25, 0.25, 0.5, -1.0, -1.0, 0.25, 0.75, 0.75, 0.0, -0.75, 0.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.75, -1.0, -0.25, -0.75, -0.25, -0.25, 0.5, 0.5, 1.0, -0.5, -0.5, -0.5, 0.0, -0.5, -0.5, 0.75, -0.25, 0.25, -1.0, -1.0, 0.5, 0.25, 1.0, 1.0, 1.0, 0.25, -0.25, -1.0, 0.25, 0.75, -0.25, 0.0, 1.0, 0.75, -0.75, 0.0, 0.0, -0.25, 0.0, 0.0, -0.25, 0.0, 0.75, -0.5, 0.25, -1.0, 0.5, 0.75, 0.75, 0.25, 0.5, -1.0, 0.5, -0.5, 0.5, -0.75, 0.25, -1.0, 0.0, -1.0, -0.25, -0.75, -0.25, 1.0, -0.5, -1.0, -0.75, 0.25, 0.75, 1.0, 0.25, 1.0, 0.0, -1.0, -1.0, -1.0, ]);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    render_pass_encoder0020.setPipeline(render_pipeline001);
    buffer007.destroy()
    query000.destroy()
    
    render_bundle_encoder001.draw(3);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer004.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    buffer001.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    query002.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer009.destroy()
    
    
    query001.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.destroy();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder002.popDebugGroup();
    buffer006.destroy()
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setStencilReference(1);
    
    
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.75, -0.75, -0.25, 0.0, 1.0, 0.0, 0.25, -0.5, -0.75, 0.75, 0.5, 0.5, 0.5, 1.0, 0.0, 0.25, -0.25, -0.75, -1.0, 0.25, 0.75, -1.0, -0.75, -1.0, 1.0, -1.0, 0.0, 0.0, 0.5, 0.25, -0.25, 0.0, 1.0, 0.0, 0.75, 0.25, -0.75, 0.75, 0.25, 0.75, 1.0, -0.5, -1.0, -0.75, -1.0, 0.5, -0.75, 0.5, -0.25, -0.5, 0.0, -0.5, 0.25, 0.75, -1.0, 0.5, -0.75, -0.5, -0.75, -0.5, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.75, 1.0, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, -1.0, 1.0, -1.0, 0.25, -1.0, 0.0, 0.5, 0.5, 0.0, 0.5, -1.0, -0.25, -0.5, -1.0, 0.0, -1.0, 0.75, 1.0, 0.5, 0.75, 0.5, 0.25, 0.75, -0.5, ]);
    buffer008.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer0012, 0, array5, 0, array5.length);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer0012, 0, array6, 0, array6.length);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query000.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer001);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query001.destroy()
    render_bundle_encoder000.draw(3);
    
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    query000.destroy()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query001.destroy()
    buffer0010.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer001);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
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
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0012.destroy()
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query003.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.popDebugGroup();
    render_bundle_encoder001.finish();
    const array7 = new Float32Array([-0.75, -1.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.25, -0.75, 0.5, 1.0, 0.5, 0.5, 0.0, -0.75, -0.5, 0.25, -0.5, 0.25, -0.5, 0.25, 0.5, -1.0, -0.5, 1.0, -0.25, 0.0, -1.0, 0.0, -1.0, 1.0, 0.75, 0.75, -0.25, 0.25, -1.0, -0.25, 0.25, 0.0, -0.75, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, 0.75, -0.75, 0.0, 1.0, 0.75, -0.5, 1.0, -0.25, -0.25, -1.0, 0.25, 0.25, 0.5, -0.75, 1.0, 0.5, -0.25, 1.0, 1.0, -0.5, -0.75, 0.0, -0.25, 0.0, -0.75, -1.0, 0.75, -1.0, -0.25, -0.25, 0.5, -0.5, 0.75, -0.25, -0.25, 0.25, -0.5, -0.25, 0.5, -1.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.75, -0.75, -0.25, 0.0, ]);
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const array8 = new Float32Array([-0.75, -0.75, 0.75, 0.75, 1.0, -0.5, -0.5, 0.25, 0.25, 1.0, 1.0, 0.75, 1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 0.0, 0.0, 0.5, -1.0, 0.25, -0.25, 1.0, 0.0, -0.5, 1.0, -0.75, 0.75, -0.75, 0.75, 0.75, 0.0, -1.0, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, 0.75, -0.25, 0.5, 0.25, -0.75, 0.75, -0.25, -1.0, 0.0, 0.0, -1.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.75, 0.75, 1.0, -0.25, -0.5, 0.0, 0.5, -0.25, 0.0, -0.5, -1.0, 0.25, 0.0, 0.0, -0.5, -0.75, 0.0, -0.25, 0.5, -0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, -1.0, 0.5, -0.25, 0.0, 0.25, 0.75, 0.25, 0.5, 1.0, 0.0, -1.0, -0.75, ]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.executeBundles([render_bundle_encoder001, ])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    query001.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query004.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0031.setPipeline(render_pipeline000);
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0011.destroy()
    render_pass_encoder0020.draw(3);
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    buffer005.destroy()
    
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder002.draw(3);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array9 = new Float32Array([0.5, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 1.0, 0.25, 0.75, -0.25, 0.25, -1.0, -1.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.5, 0.75, 0.25, 0.0, 0.75, 1.0, 0.75, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, -0.25, -0.75, 1.0, 0.75, -0.25, 0.0, -0.25, 0.0, 0.25, 0.5, 0.75, 0.25, -0.25, 0.75, 1.0, 0.0, -0.25, -0.5, 1.0, 1.0, -0.25, 0.5, -0.25, -0.5, 0.25, 0.25, -0.25, 0.75, -0.5, 0.5, 0.0, -0.75, -0.25, -0.75, -0.5, -1.0, 0.0, -0.25, 0.5, 0.0, 1.0, 1.0, -1.0, -0.75, -0.25, -0.5, -0.5, 1.0, 1.0, 0.5, 0.25, -0.5, -1.0, -0.25, -0.5, -0.25, 0.25, -0.5, 0.75, 1.0, ]);
    query004.destroy()
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setPipeline(render_pipeline002);
    render_pass_encoder0000.insertDebugMarker("marker");
    
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setStencilReference(1);
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0000.setStencilReference(1);
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0050.setPipeline(render_pipeline005);
    render_pass_encoder0000.draw(3);
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0014.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    query004.destroy()
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([-0.5, -0.75, -1.0, -0.25, 1.0, 0.5, 0.25, -1.0, 0.5, 0.75, -0.25, 0.5, -0.75, 0.25, 0.75, -0.5, -0.25, 0.5, 1.0, 1.0, -0.5, -0.5, 0.5, -0.25, 0.75, 0.75, -0.75, -1.0, 0.0, 0.25, -0.25, 0.75, 0.5, -1.0, 1.0, -0.75, 0.25, -0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.75, 0.0, -0.25, 0.5, 0.25, 1.0, -0.5, 0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 1.0, 0.25, -0.5, -0.75, -0.75, 0.75, -0.75, -0.75, 0.5, -0.75, -1.0, 0.75, 0.25, 0.75, -1.0, 0.25, 0.0, 1.0, -0.25, -0.75, 0.75, -1.0, -1.0, 0.75, -0.25, -1.0, 0.75, 0.25, -1.0, -0.5, 1.0, -0.75, 0.75, -0.75, 0.0, -0.75, 0.0, -0.25, 0.5, -0.5, -0.5, 0.0, 0.0, 0.0, ]);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    
    
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setStencilReference(1);
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group007);
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    query007.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0031.popDebugGroup();
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group008);
    render_pass_encoder0031.setVertexBuffer(0, buffer001);
    render_pass_encoder0050.setVertexBuffer(0, buffer0013);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0040.setVertexBuffer(0, buffer0013);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.end();
    render_pass_encoder0031.drawIndirect(buffer0018, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0000.end();
    render_pass_encoder0040.end();
    render_pass_encoder0031.end();
    const command_buffer005 = command_encoder005.finish();
    const command_buffer003 = command_encoder003.finish();
    const command_buffer004 = command_encoder004.finish();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer005, ]);
}