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
    device00.pushErrorScope("validation");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    const array0 = new Float32Array([-1.0, 0.0, -0.5, 0.0, -0.75, -0.5, 1.0, 0.75, 0.0, 0.25, 0.5, 0.25, 0.0, 0.75, 1.0, 1.0, 0.0, 0.5, 0.75, -0.5, -0.5, 0.75, 0.0, 0.5, 0.5, -0.5, 0.25, -0.75, 0.25, -1.0, 0.5, -0.25, -1.0, 0.5, 0.25, 0.25, 0.5, -0.25, -0.5, -0.75, -1.0, 0.25, 0.0, 0.75, 1.0, -0.75, 0.75, 1.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.75, 1.0, -1.0, -1.0, -0.5, -0.25, -0.5, 0.5, -0.5, 0.25, 0.5, -0.75, 0.0, 0.25, 0.25, -0.75, -0.25, 0.5, -0.75, 0.75, 0.0, 0.25, 0.0, 0.5, -0.25, -1.0, 0.0, -0.25, 0.25, -0.75, 0.75, -0.5, -0.25, -0.5, -0.75, 0.0, -0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 0.5, 0.5, -0.75, 0.5, -0.5, ]);
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const array1 = new Float32Array([-0.75, -1.0, -0.25, -0.75, 0.75, -0.25, 0.75, 0.75, 0.5, 0.25, -1.0, -0.75, 0.25, 0.5, 0.0, 0.25, -0.75, 0.5, -1.0, 0.25, -0.75, 0.25, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, -1.0, 0.0, -0.5, -0.75, -0.75, -1.0, 1.0, -0.25, 0.5, 0.5, -0.5, -0.25, -0.25, 0.0, -0.75, 1.0, 0.5, 0.75, 0.0, 1.0, 1.0, 0.75, -1.0, 0.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.5, 1.0, 0.75, 0.75, -0.75, 0.75, 0.5, 0.75, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, 0.25, -1.0, 1.0, -0.25, 0.25, 0.0, 0.75, 0.5, -0.75, -0.25, 0.75, 1.0, -1.0, -1.0, -0.5, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, -0.5, ]);
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer001 = command_encoder001.finish();
    texture000.destroy();
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query000.destroy()
    
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
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("internal");
    
    const array2 = new Float32Array([-0.75, 1.0, 1.0, 0.75, -0.25, -1.0, -0.5, 0.25, 0.0, -0.75, 1.0, 0.75, 1.0, 0.25, 0.0, -0.75, 0.75, -0.25, 0.75, -1.0, -1.0, 1.0, -1.0, 1.0, 0.5, 0.5, -0.25, 0.0, -0.25, -0.75, -0.25, -0.75, -0.5, 0.5, -0.5, 0.75, -0.75, 0.5, -1.0, 0.25, 0.0, -0.75, 0.25, 1.0, 0.5, -1.0, 0.5, -0.5, -0.25, 1.0, -0.5, 0.0, -1.0, 0.0, -0.75, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, -0.75, 0.25, 0.5, 0.75, 0.5, 0.25, -0.5, 1.0, -0.5, 1.0, 0.0, 0.25, 0.25, -1.0, -0.25, -0.75, 0.5, -0.5, 0.0, 0.0, 0.5, -0.75, 0.5, 0.75, 1.0, 1.0, -0.5, -0.25, 0.75, -0.25, 0.25, -1.0, -0.25, 0.25, 0.5, -0.25, 0.5, -0.25, 0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer003.destroy()
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    query000.destroy()
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query000.destroy()
    
    
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer001.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    buffer004.destroy()
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer005.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline001);
    render_pass_encoder0020.setStencilReference(1);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_pass_encoder0040.executeBundles([])
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.destroy();
    render_pass_encoder0020.insertDebugMarker("marker");
    query000.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0040.setPipeline(render_pipeline001);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder005.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([-0.25, 0.5, 0.0, 0.0, -1.0, -0.25, 0.25, 0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 0.5, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, -0.25, -0.75, -0.75, -0.75, 0.25, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, 0.75, -0.5, 0.75, -0.25, -0.75, -0.75, 0.0, -0.5, -0.5, 0.5, -0.75, -1.0, 1.0, -1.0, -0.25, -0.5, 0.0, 0.75, 1.0, -0.25, -0.5, 0.5, -1.0, 0.5, 0.0, 1.0, 1.0, -0.5, -0.5, 0.0, 0.25, -0.75, 0.0, 0.75, 0.75, -0.25, -0.75, -0.75, -1.0, 0.75, -1.0, -0.5, -0.25, 1.0, 0.25, 0.5, 1.0, -0.75, -0.25, -0.25, -0.25, -0.25, 0.75, 0.0, 0.25, -1.0, 0.0, 0.5, 0.5, 1.0, 1.0, -0.75, -1.0, 0.25, -1.0, 0.25, -0.75, 0.5, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder000.popDebugGroup();
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        occlusionQuerySet: query001
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array4 = new Float32Array([-0.25, 0.25, 1.0, -0.5, 0.5, -0.5, -0.25, 0.75, 0.5, 1.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.25, -0.5, -1.0, 1.0, 0.0, 0.0, -1.0, -0.75, 0.25, -1.0, 0.0, -1.0, 0.25, -0.75, 0.75, -1.0, -0.5, 0.75, -0.5, 0.75, 0.75, -1.0, 1.0, 1.0, -0.75, 0.75, -0.25, -0.25, -0.75, -0.5, 0.0, 0.0, 0.25, 0.0, -0.5, -0.75, -0.25, 0.5, -0.5, 1.0, 0.5, 0.0, 0.75, -0.75, -0.75, -0.75, -1.0, 1.0, 0.25, -1.0, -0.75, -0.25, -0.75, -0.5, 0.5, 1.0, 0.5, -0.25, -1.0, -1.0, 0.0, -0.5, -0.75, -1.0, -0.25, 0.5, 0.0, -1.0, -0.25, 1.0, 0.25, -0.25, 0.75, -0.75, 1.0, -0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 0.25, -0.5, -0.25, -1.0, ]);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture002.destroy();
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

    render_pass_encoder0040.setBindGroup(0, bind_group002);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder0050.executeBundles([])
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device50.destroy();
    render_pass_encoder0020.setStencilReference(1);
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0020.insertDebugMarker("marker");
    
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

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer008.destroy()
    
    
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

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    compute_pass_encoder0000.popDebugGroup()
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer007.destroy()
    device30.pushErrorScope("internal");
    render_pass_encoder0050.setPipeline(render_pipeline001);
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0050.beginOcclusionQuery(0)
    
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    
    
    
    
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    render_pass_encoder0030.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array5 = new Float32Array([0.5, 0.25, -0.75, 1.0, -0.25, -0.5, 0.75, -0.75, -0.75, -0.5, 1.0, -1.0, 0.5, 0.0, 0.25, -0.5, 0.75, 0.5, -0.75, 0.25, 1.0, -0.75, 0.0, 0.5, 0.0, -1.0, 0.0, -1.0, 0.5, 0.5, 1.0, -1.0, -1.0, -1.0, -0.75, 0.0, 1.0, -0.75, 1.0, 0.5, -0.5, 0.5, 0.5, -1.0, -0.5, 0.25, 1.0, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, -0.75, 0.25, 1.0, -0.75, -1.0, 0.0, -0.25, 1.0, 1.0, 0.25, 0.25, -0.75, 0.25, 0.5, -0.75, -0.25, -1.0, 0.0, -1.0, -0.5, -0.5, -1.0, -0.5, -0.75, 0.0, 0.5, -1.0, -0.75, 0.75, 0.5, 0.25, -1.0, 0.0, -0.25, 0.75, 1.0, 0.5, -0.5, -1.0, 0.75, 0.75, -0.75, -0.5, -0.25, 0.75, 0.25, -0.5, ]);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const command_buffer700 = command_encoder700.finish();
    texture700.destroy();
    device30.pushErrorScope("internal");
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    render_pass_encoder0050.setStencilReference(1);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer006.destroy()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    compute_pass_encoder0000.popDebugGroup()
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0030.setStencilReference(1);
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    device60.pushErrorScope("validation");
    
    device30.pushErrorScope("internal");
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query000.destroy()
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer0012.destroy()
    buffer002.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const command_buffer300 = command_encoder300.finish();
    buffer0011.destroy()
    
    device40.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer301.destroy()
    
    render_pass_encoder0040.setStencilReference(1);
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    render_bundle_encoder301.insertDebugMarker("marker");
    texture701.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    texture300.destroy();
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    
    
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    render_pass_encoder0070.setStencilReference(1);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder0070.setPipeline(render_pipeline000);
    
    texture600.destroy();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0060.setPipeline(render_pipeline001);
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_bundle_encoder300.setVertexBuffer(0, buffer302);
    render_bundle_encoder700.setPipeline(render_pipeline700);
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.pushErrorScope("validation");
    const array6 = new Float32Array([-0.75, -1.0, 0.75, 0.0, 1.0, -0.5, -0.75, 0.5, 0.0, -0.75, -1.0, 0.5, -0.5, 1.0, 0.25, -0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -1.0, 0.25, 0.75, -1.0, 0.75, -0.75, 0.25, -1.0, -0.25, 0.75, 0.5, -0.75, 0.75, 0.25, 0.0, 0.25, -0.5, -0.75, -1.0, -0.5, -0.5, -0.5, 0.75, 0.0, 0.0, 0.5, -0.5, -1.0, 0.0, -0.75, -0.25, 1.0, 0.0, 0.0, 0.25, 0.5, 0.75, 0.25, -0.5, 1.0, -0.75, -0.25, 0.75, -0.25, -1.0, 0.75, 0.5, 1.0, -0.25, 0.25, 0.5, -1.0, -0.75, 0.5, 0.75, 0.0, 0.5, 0.0, -0.5, -0.5, -1.0, 1.0, -0.25, 0.25, 1.0, -1.0, -1.0, 0.75, 1.0, -0.75, -0.75, -0.5, 0.0, -0.25, ]);
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    buffer300.destroy()
    texture301.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder0020.popDebugGroup();
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group005);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    query300.destroy()
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query000.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    query000.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer0014.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    
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

    render_pass_encoder0070.setBindGroup(0, bind_group007);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    render_bundle_encoder300.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer702.destroy()
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer0020, 0, array6, 0, array6.length);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture003.destroy();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer0020, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer0020, 0, array2, 0, array2.length);
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    render_pass_encoder0070.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer0013.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0060.setStencilReference(1);
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device80.destroy();
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    buffer0021.destroy()
    
    buffer0015.destroy()
    device00.queue.writeBuffer(buffer0020, 0, array0, 0, array0.length);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer0019.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device00.queue.writeBuffer(buffer0022, 0, array3, 0, array3.length);
    
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    query000.destroy()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer702 = command_encoder702.finish();
    render_pass_encoder0020.popDebugGroup();
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device70.queue.submit([command_buffer700, command_buffer702, ]);
}