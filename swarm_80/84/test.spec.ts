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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-0.75, 0.5, 0.25, 0.25, 1.0, -0.5, 1.0, 0.75, -0.25, 0.5, 0.0, -1.0, 0.0, -0.75, -1.0, 0.25, -1.0, 1.0, -1.0, -1.0, -1.0, 1.0, 0.5, 0.5, 0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 0.75, 0.25, 0.5, -0.5, -0.75, -1.0, 0.75, -1.0, 0.25, 0.0, 0.5, -0.75, -0.5, 0.5, 0.75, 0.75, 1.0, 1.0, -0.25, -0.75, -0.5, -1.0, 0.25, -0.5, 1.0, 0.25, -0.5, -0.25, -0.25, 0.25, 1.0, 0.5, 0.5, -0.25, -0.5, 0.25, 1.0, 1.0, 0.25, 1.0, 0.0, 0.0, 0.75, -0.5, 0.75, -1.0, -0.25, 0.0, 0.5, 0.5, -1.0, -0.75, 0.25, -0.5, 0.5, -0.5, 1.0, 1.0, -0.5, 0.75, 0.75, 0.25, 0.5, -0.75, 0.5, -1.0, 0.0, 0.5, -1.0, 0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    device10.destroy();
    
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array1 = new Float32Array([0.0, 0.75, -0.25, 0.75, 1.0, 1.0, 0.25, 0.0, 0.25, -0.75, 0.25, 1.0, -0.5, 1.0, 0.75, -0.5, -0.75, -0.75, 0.5, 0.5, 0.5, 0.0, 0.5, -0.25, -1.0, 1.0, -1.0, -0.5, 0.75, -0.75, 1.0, 0.0, 0.0, 1.0, -0.25, 0.0, 0.25, 0.75, 0.5, 1.0, -0.5, -0.75, 1.0, -0.5, -1.0, -0.5, 0.5, 1.0, -1.0, -0.5, 0.75, -0.25, -0.75, 0.75, 0.0, 0.75, -0.75, 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, -1.0, -0.75, -1.0, 1.0, 0.75, 0.5, -0.75, -0.25, -0.25, -0.25, 1.0, 0.75, 0.0, -0.5, -0.25, -0.25, 0.0, 0.5, -0.5, 0.25, 0.5, -1.0, -0.75, -0.75, 1.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.25, -1.0, ]);
    buffer000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array2 = new Float32Array([0.5, 0.0, 0.0, -0.25, 0.75, -0.5, 0.0, 1.0, -0.75, -1.0, -0.75, 0.25, -0.25, 0.25, -0.75, 1.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 0.0, 0.0, 0.5, 1.0, 0.75, 0.75, -0.5, 1.0, -0.25, 0.0, -0.25, -1.0, 0.0, -1.0, -0.5, -0.25, 0.75, 0.75, -1.0, 0.75, 1.0, -1.0, 0.0, 0.75, -1.0, 0.5, 0.75, -0.25, -1.0, 0.25, 0.0, 0.75, -0.25, -0.25, 1.0, 0.25, 1.0, -0.75, 1.0, 1.0, 1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.5, 0.25, -0.25, 0.75, -0.5, -0.5, 0.25, -0.5, 0.75, -0.75, 1.0, -0.25, -1.0, 0.75, 0.75, -1.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, -0.25, 0.0, -0.75, -0.75, -1.0, 1.0, ]);
    query000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    buffer002.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer004.destroy()
    query003.destroy()
    query002.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const array3 = new Float32Array([0.25, -0.5, -0.5, -0.75, -0.75, -0.25, -0.75, -1.0, 0.0, -0.75, -0.75, 1.0, -0.25, -0.25, -0.75, 0.5, 1.0, 0.75, 0.25, -0.25, -1.0, 1.0, -1.0, -0.75, 0.0, 0.0, 0.25, -0.25, -1.0, 1.0, 0.0, -0.25, 0.25, -1.0, 0.75, -1.0, 1.0, -0.5, -0.5, -0.25, 0.5, -1.0, 1.0, -0.75, 0.25, 1.0, -0.75, 0.5, 0.75, -0.5, -0.75, 0.5, 0.5, 0.5, 0.75, 0.75, -0.5, -0.25, -0.5, -0.75, -0.75, -0.5, -0.75, -0.75, -1.0, 0.0, -0.25, 0.75, -0.75, -0.75, 0.0, -1.0, 0.25, 1.0, 0.25, 1.0, 0.0, 1.0, 0.0, -0.75, -0.25, -0.75, 0.5, 1.0, 0.0, 0.25, 0.25, -0.75, 1.0, -0.25, -0.5, 0.5, 0.75, 0.25, 0.25, 0.0, 0.5, 1.0, -0.75, 0.25, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    const array4 = new Float32Array([-1.0, -0.25, 0.5, -1.0, -0.5, -0.25, 1.0, -0.5, -1.0, 0.0, 0.5, 0.5, 0.5, 0.75, 0.75, 1.0, -0.5, -1.0, -0.5, -0.25, -0.75, -0.5, 0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.5, 0.0, -0.25, 0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 0.5, 0.25, 0.25, 1.0, -1.0, -1.0, -0.75, 1.0, -0.75, -0.5, -0.5, -0.5, 0.75, 0.5, -0.75, -1.0, -1.0, 0.75, -0.5, 0.75, -0.75, -0.25, 0.0, -0.75, 1.0, -0.5, -0.75, 0.0, -1.0, -0.75, -0.75, -0.25, 0.25, -1.0, 0.75, 0.25, 0.5, -1.0, 0.25, -0.25, -0.5, -0.5, -0.75, 0.5, 0.5, 0.0, -0.75, 0.5, 0.0, 0.25, 1.0, 0.75, -1.0, 1.0, -0.75, 0.75, 0.5, -0.5, 0.5, -0.75, 0.5, 0.75, -0.25, ]);
    
    const array5 = new Float32Array([-0.75, 0.0, 0.0, 0.0, -1.0, 0.75, 0.75, 0.75, 0.25, 1.0, 0.75, 0.5, -0.75, -0.25, 0.5, 1.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.5, -0.25, -0.75, 0.25, 1.0, -0.75, 0.5, 0.25, 0.25, 0.75, 0.0, 1.0, 0.5, 0.0, -0.75, -1.0, -0.75, 0.0, 0.0, -0.25, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, 0.25, -0.5, 0.5, -0.5, 0.75, 0.25, 0.25, 0.0, 0.75, 0.5, 0.25, 0.25, 1.0, -1.0, 0.0, 1.0, -0.5, 0.0, -0.75, -0.75, 0.0, 1.0, 0.25, 0.75, 0.75, -0.75, 1.0, 1.0, 0.5, -0.75, -0.75, 0.25, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, -0.5, 0.75, -1.0, -1.0, -0.75, 0.25, 0.0, 0.0, -0.5, -1.0, 0.75, 0.5, -1.0, -0.25, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture001.destroy();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.25, -0.75, -0.5, -0.75, -0.25, -1.0, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, -0.75, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, 1.0, -1.0, -1.0, -1.0, -0.25, 0.5, -0.75, 0.25, 1.0, -1.0, 0.25, -0.5, 1.0, 0.25, -1.0, -0.75, 1.0, 0.75, -1.0, -0.25, -0.75, -1.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.25, -1.0, 0.5, -0.25, 0.0, -0.5, -0.25, 0.25, 1.0, 0.0, 0.5, 0.75, -0.75, 0.75, 1.0, -0.75, 0.75, 0.25, 0.5, -0.5, 1.0, 0.75, 0.5, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, -0.25, 0.0, 0.0, -0.25, 0.25, 1.0, -1.0, -1.0, -0.5, 0.0, 0.25, -0.75, -1.0, 0.75, 0.75, 0.75, 1.0, -0.5, -1.0, ]);
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const array7 = new Float32Array([0.5, 0.75, -0.5, -1.0, 0.0, -0.25, -0.75, 0.5, 1.0, 0.75, 0.5, 0.25, -0.75, 1.0, 0.0, 0.75, 0.25, 1.0, 0.5, -0.5, 0.25, 1.0, -0.75, -1.0, 0.0, 0.75, -0.25, 0.5, -1.0, 1.0, 0.75, -0.5, 1.0, 0.5, -0.5, 1.0, -1.0, 0.0, 0.5, 0.0, 0.75, 1.0, -0.25, -0.25, 1.0, -1.0, 0.0, -1.0, 0.25, 0.0, 0.75, 0.25, 1.0, -0.5, 0.5, -0.75, -0.25, 0.5, -0.75, -1.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.75, 1.0, 1.0, 0.0, -0.25, -0.5, -0.5, -0.25, 1.0, 0.25, 0.5, 1.0, -1.0, -0.25, -0.25, 0.25, -0.25, 1.0, 0.0, 1.0, 0.25, 0.25, 0.75, 0.0, -0.25, 0.5, 0.75, -0.5, 0.0, -1.0, 0.0, -0.75, 0.5, -0.25, -0.75, ]);
    const command_buffer000 = command_encoder000.finish();
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
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    texture004.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const command_buffer202 = command_encoder202.finish();
    
    
    query004.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture003.destroy();
    query003.destroy()
    
    
    query001.destroy()
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
    query000.destroy()
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query004.destroy()
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
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer003.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    buffer005.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array8 = new Float32Array([-1.0, -0.75, 0.75, -0.25, 1.0, 0.75, -1.0, -1.0, 0.0, 0.75, -0.5, -0.5, -1.0, -0.75, -0.75, 0.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.0, -0.5, 1.0, 0.5, 0.25, 0.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.0, 0.25, 1.0, -0.75, 0.0, -0.5, -0.25, 1.0, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, 0.5, 0.25, 0.25, 0.25, 0.5, -0.25, 0.0, -0.5, 0.0, 0.5, 1.0, 0.5, 0.5, 1.0, 0.25, 0.0, -0.75, -0.75, -0.5, 1.0, 0.75, -0.25, 0.0, 0.75, -0.75, -0.5, 0.5, -0.25, 0.75, 0.75, 0.75, 1.0, 1.0, -0.25, 0.25, -0.25, -0.5, 0.25, 0.0, 0.5, 1.0, 0.25, -1.0, 0.75, -0.75, 0.0, 0.5, 0.25, -1.0, 0.75, 0.75, 1.0, 0.25, 1.0, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    
    render_bundle_encoder002.popDebugGroup();
    
    texture200.destroy();
    query200.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture002.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture000.destroy();
    render_bundle_encoder000.setPipeline(render_pipeline001);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    query003.destroy()
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    query002.destroy()
    texture005.destroy();
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query005.destroy()
    
    buffer007.destroy()
    query006.destroy()
    
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
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
    device40.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    buffer008.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const array9 = new Float32Array([1.0, -0.5, 0.25, -0.5, 0.75, -0.25, 0.25, 0.5, 1.0, 0.75, -0.75, -1.0, 0.25, -0.25, 0.25, 1.0, 0.75, -1.0, 0.5, 0.0, 0.75, 0.5, 0.75, -0.25, 0.5, 0.5, -0.5, -0.75, 0.5, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, -0.25, 0.75, -1.0, 0.5, 0.0, -0.25, -0.75, 0.75, -0.5, 0.0, 0.0, 0.5, -0.25, 0.0, 0.25, -0.25, -0.75, 0.25, -0.5, 0.0, 0.0, -0.25, 0.5, -1.0, 1.0, -1.0, -1.0, 0.75, -0.25, -0.25, -0.5, -0.25, 1.0, -0.75, 0.25, -0.25, -0.5, 0.25, -0.75, 0.25, -0.25, -0.5, 0.25, 1.0, -0.5, 0.0, 0.5, -0.5, 0.0, -0.75, -0.25, 0.5, 1.0, -1.0, 0.0, 1.0, 0.25, -1.0, -1.0, -0.75, 1.0, -1.0, 1.0, 1.0, 0.75, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query004.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
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
    device00.queue.submit([command_buffer000, ]);
    
    buffer006.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query201.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    query300.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture006.destroy();
    device20.queue.submit([command_buffer202, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query006.destroy()
    
    query005.destroy()
    
    query005.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query007.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_bundle_encoder000.setVertexBuffer(0, buffer005);
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query201.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    command_encoder203.pushDebugGroup("mygroupmarker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    texture301.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.setVertexBuffer(0, buffer005);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    query201.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    buffer301.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    query202.destroy()
    
    command_encoder300.clearBuffer(buffer300);
    query008.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([0.25, -0.75, -0.75, 0.5, 0.75, 0.25, -0.5, -0.5, 0.0, -0.25, 0.5, 1.0, -0.75, 0.0, -0.75, 0.0, -0.5, -0.5, 0.25, -0.5, -0.75, 0.75, 0.75, 0.25, 0.0, 0.0, -0.5, 0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.5, -0.5, 0.0, 0.25, -1.0, 0.25, 0.5, -0.75, -0.75, 0.5, -0.25, 0.0, -0.25, 0.5, 0.0, -0.25, 0.5, -0.75, 1.0, 0.5, 0.5, 1.0, 0.25, -0.75, 0.0, -0.25, 1.0, -0.25, -0.5, 0.5, 0.0, 0.25, -1.0, -0.5, -1.0, 1.0, 0.75, -1.0, -1.0, 0.25, 0.5, -1.0, -0.75, 0.5, 0.5, 1.0, -0.25, 0.75, 0.25, -0.75, -0.25, 1.0, -0.25, 1.0, 0.0, -0.5, -0.75, 0.75, 0.25, 0.0, -1.0, -0.25, 1.0, -0.25, 0.25, 1.0, -0.25, ]);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const command_buffer300 = command_encoder300.finish();
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer003 = command_encoder003.finish();
    
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer009.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder202.setPipeline(render_pipeline201);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    buffer302.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    device20.pushErrorScope("internal");
    query008.destroy()
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query008.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query301.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_bundle_encoder000.popDebugGroup();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    buffer200.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query006.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query200.destroy()
    
    command_encoder302.clearBuffer(buffer300);
    render_bundle_encoder001.setIndexBuffer(buffer0012, "uint16");
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query005.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query009.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    query002.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.submit([command_buffer300, ]);
    
    
    
    texture201.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query009.destroy()
    
    query000.destroy()
    query301.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    buffer0013.destroy()
    query009.destroy()
    query201.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    buffer202.destroy()
    buffer203.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    buffer0010.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    texture202.destroy();
    texture300.destroy();
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer204.destroy()
    query003.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
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
    command_encoder303.clearBuffer(buffer300);
    query201.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query303.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder000.draw(3);
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0040.insertDebugMarker("marker")
    query000.destroy()
    query007.destroy()
    command_encoder303.clearBuffer(buffer300);
    query303.destroy()
    query009.destroy()
    
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer0011.destroy()
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
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    
    query005.destroy()
    
    
    device50.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    device00.pushErrorScope("out-of-memory");
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    query001.destroy()
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query200.destroy()
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    query303.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder202.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    buffer201.destroy()
    command_encoder303.insertDebugMarker("mymarker");
    render_bundle_encoder201.popDebugGroup();
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_buffer303 = command_encoder303.finish();
    
    render_bundle_encoder001.setIndexBuffer(buffer0012, "uint16");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    buffer0012.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
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
    render_bundle_encoder000.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer209.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    query005.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    query003.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer005 = command_encoder005.finish();
    const command_buffer600 = command_encoder600.finish();
    device30.queue.submit([command_buffer303, ]);
    device60.queue.submit([command_buffer600, ]);
    device00.queue.submit([command_buffer005, ]);
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer006, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer003, ]);
}