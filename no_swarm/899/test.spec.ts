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
    
    
    const array0 = new Float32Array([1.0, 0.0, -0.75, -0.75, 0.0, 0.5, -1.0, -0.25, 0.5, 0.5, -0.25, -1.0, -0.25, -0.5, 0.5, -0.75, -0.25, -0.5, 0.0, -0.5, -0.5, 0.75, -0.75, 1.0, -0.75, 0.5, -1.0, 1.0, -0.75, 0.5, 0.75, 1.0, -0.75, -1.0, 0.5, 0.25, -0.75, -0.75, 1.0, -0.5, 0.5, 1.0, -1.0, 0.5, -0.75, 1.0, -0.5, 1.0, 0.0, -0.25, -0.75, 0.75, 1.0, 0.0, 0.5, -0.75, 1.0, 0.5, 0.0, -0.5, 0.75, 0.5, 1.0, -0.25, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, 0.75, -0.75, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, 0.0, -0.75, -1.0, 1.0, 0.0, -0.75, 0.5, 0.25, -0.75, 0.0, 1.0, -0.75, 0.75, 0.5, -0.75, -0.5, 0.0, -1.0, -0.5, -0.75, -0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.0, 0.25, 0.0, 0.5, 1.0, -0.5, 0.25, -0.5, -1.0, -0.5, 0.25, -0.75, 0.75, -1.0, 0.5, -0.25, -0.25, -0.5, 0.25, 0.75, 1.0, -0.5, 1.0, 0.0, -1.0, -1.0, 1.0, -0.25, -0.5, 0.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, -0.75, 0.5, -0.5, 0.75, 0.5, 1.0, 0.75, -1.0, 0.75, -0.25, -0.75, -0.25, -1.0, -1.0, -0.25, -1.0, -0.5, -0.75, -0.25, 0.25, -0.5, -0.25, 0.75, 0.25, -1.0, -0.25, -0.75, 1.0, 0.25, 1.0, -1.0, -0.25, 0.75, -0.25, -0.25, -0.75, -0.75, -0.5, 0.0, -0.75, -0.5, 0.5, -0.5, 0.75, 1.0, -0.75, 0.5, 0.0, -0.75, 0.5, 0.75, -0.25, -0.5, -0.75, -1.0, -0.5, -0.25, 0.25, 0.5, 0.0, -0.5, -0.75, ]);
    const array2 = new Float32Array([-0.25, -0.5, 1.0, -0.75, -1.0, -1.0, 0.75, -0.75, 1.0, -0.25, 0.75, 1.0, -0.5, -0.75, 1.0, -1.0, 0.75, -1.0, 0.5, -0.5, 0.0, -1.0, -1.0, 0.5, 0.75, -0.5, -0.5, -1.0, -0.75, 0.0, 0.75, 1.0, -0.25, -0.75, -0.25, -1.0, -0.25, -1.0, -0.75, 0.5, 1.0, -0.25, 0.75, -0.5, -0.25, 0.0, 0.75, 0.0, 0.0, 0.25, 0.25, -0.5, -1.0, 0.75, -0.25, 0.5, 0.0, 0.5, 1.0, -1.0, -1.0, 1.0, -0.5, 0.75, 0.25, -0.25, -0.75, 0.5, 0.25, -0.5, -0.75, 0.75, -0.5, 1.0, -0.75, 0.25, 0.75, -0.75, 1.0, -0.5, -0.25, 0.25, -1.0, 0.75, 1.0, 0.75, -0.5, -0.75, 1.0, 0.75, 0.25, -0.5, -0.25, -1.0, -0.25, -0.5, 0.75, 0.0, -1.0, -1.0, ]);
    
    
    
    const array3 = new Float32Array([-0.25, 1.0, 0.0, -0.25, 0.25, 1.0, 1.0, 0.5, -0.5, -0.5, 1.0, 0.75, 0.75, -1.0, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, -0.25, 1.0, -1.0, -0.75, -0.25, -0.75, 1.0, 0.0, 0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 0.25, 0.0, -1.0, 0.5, -0.25, -0.75, 0.5, 0.25, -1.0, 0.5, 0.0, 1.0, 0.75, 0.5, 0.75, -1.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.25, -0.75, -0.5, -0.75, -0.75, -1.0, -0.75, -0.75, 0.75, 0.25, -0.5, 0.75, 0.25, 0.25, -1.0, 0.25, 0.75, -0.75, 0.5, 0.25, 0.25, 0.0, -0.25, -0.75, 0.25, -0.75, 0.0, -0.25, -0.5, 0.25, 1.0, 0.0, 1.0, -0.5, 0.0, -0.5, -0.25, 1.0, -0.75, -0.25, 0.25, -1.0, -0.5, 0.25, ]);
    const array4 = new Float32Array([0.5, 0.0, -0.75, -0.5, 0.25, -0.25, -1.0, 0.5, -1.0, 0.5, -0.5, 0.75, -1.0, 0.0, -0.5, 0.25, -0.5, -0.5, -0.25, 0.0, -0.75, 0.25, 0.5, 0.75, 0.0, -1.0, 0.75, -1.0, 0.25, -0.75, 0.5, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, 0.25, 0.25, -0.5, -1.0, 0.75, 0.75, -0.25, -0.75, -0.5, 0.5, -0.25, -0.75, 1.0, -0.75, 0.5, -0.25, -0.75, -0.75, -1.0, -0.75, -1.0, 1.0, 0.25, -0.5, -0.25, -1.0, 1.0, -1.0, 0.25, 0.0, -0.5, 0.75, 0.25, 0.0, 0.5, 0.0, 0.5, 0.0, -0.5, -0.75, -1.0, 0.75, 1.0, -1.0, 0.25, -1.0, 0.5, 0.25, 0.75, 0.25, 0.25, -0.5, -0.5, 1.0, -0.75, -0.5, 0.5, -0.5, 0.75, 0.0, -1.0, -0.25, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device10.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    
    
    device00.pushErrorScope("validation");
    
    const array5 = new Float32Array([0.0, -0.5, -0.25, 0.5, 1.0, 0.0, -0.75, 0.0, -1.0, 0.0, 0.5, -0.25, -0.75, -0.5, 0.0, -0.5, 0.25, 1.0, -0.5, 0.5, -1.0, 1.0, -0.25, 0.25, 0.5, -0.5, 0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.5, 0.0, -0.5, 0.25, -0.25, -1.0, 0.0, 0.75, -0.25, 0.25, 0.0, -1.0, 0.5, 0.5, -0.25, 0.0, -0.75, 0.75, -1.0, -0.75, -1.0, 1.0, 0.25, 0.0, -0.5, 0.25, 0.5, 0.0, 0.75, -0.25, -0.5, -0.75, 0.75, 0.75, -0.75, 0.25, -0.25, 0.0, -1.0, -0.5, -1.0, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 1.0, -0.25, -0.25, 0.25, -0.5, -0.5, -0.75, 0.75, 0.5, 0.25, -0.75, -1.0, 0.25, 0.5, -0.5, 0.75, 1.0, -0.75, 0.0, -0.25, -0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture000.destroy();
    
    buffer002.destroy()
    
    
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    buffer003.destroy()
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder000.clearBuffer(buffer004);
    buffer004.destroy()
    device30.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture004.destroy();
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const array6 = new Float32Array([1.0, -0.5, -0.75, -0.25, 0.0, 0.0, 1.0, 0.25, 0.5, 0.25, 0.75, 0.75, 1.0, -0.5, 1.0, 1.0, -1.0, 0.75, 1.0, -1.0, 0.0, -0.75, -0.75, -0.25, 1.0, 1.0, 0.5, 0.25, -1.0, 1.0, 0.25, 0.25, 0.0, -0.5, 0.25, 0.0, 1.0, 0.25, 0.0, 0.75, -0.25, 0.75, -1.0, 0.75, 0.5, -0.75, -1.0, 0.75, -0.5, -0.25, 0.25, 0.75, -0.25, 1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.5, 0.75, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, -0.75, -0.75, 1.0, -0.75, 0.5, -0.75, 1.0, -0.75, -0.25, -0.75, 1.0, -0.5, -1.0, 0.75, 0.25, 0.5, -0.25, 0.0, 0.5, 0.0, -0.25, 0.75, -0.5, -0.25, 0.5, -0.5, -0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.25, ]);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
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
    query001.destroy()
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    device40.pushErrorScope("internal");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    command_encoder401.insertDebugMarker("mymarker");
    
    buffer001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query001.destroy()
    
    query002.destroy()
    query000.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query002
    });
    buffer005.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    texture003.destroy();
    render_bundle_encoder000.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.executeBundles([])
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
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query400.destroy()
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0023,
            },
        ],
        occlusionQuerySet: query000
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    texture001.destroy();
    const array7 = new Float32Array([0.5, 0.75, -0.75, -0.25, -0.75, -0.5, 0.5, -0.75, -0.5, 0.0, 0.0, 0.75, 1.0, 0.75, 0.75, -0.75, 0.25, 1.0, -0.75, 0.0, 0.0, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -0.75, -1.0, 0.5, -0.75, -0.25, -0.5, -0.5, 0.0, -0.5, -0.5, -0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 0.5, -0.75, -1.0, -0.75, 0.0, -1.0, 0.25, 1.0, -0.75, 0.0, -0.5, -1.0, 1.0, -0.25, 1.0, -0.75, 0.25, 0.0, -0.5, 0.0, 0.75, -0.25, 0.25, 0.25, -0.5, 0.5, -0.5, 0.5, 1.0, 0.25, -0.75, 1.0, -0.75, -0.25, 0.0, 0.0, 0.5, 0.5, -0.25, 0.5, -0.75, 0.75, 0.25, 1.0, -0.5, 1.0, -0.75, 0.5, -0.75, 0.75, -0.75, 0.25, 0.5, -0.75, 1.0, 0.0, 0.5, ]);
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    texture002.destroy();
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.setStencilReference(1);
    
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
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder0020.setStencilReference(1);
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    texture401.destroy();
    
    
    device40.pushErrorScope("validation");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture006.destroy();
    compute_pass_encoder4000.popDebugGroup()
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_pass_encoder0020.setStencilReference(1);
    query402.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query001.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const array8 = new Float32Array([-0.25, -0.25, 0.75, 0.0, -0.5, 0.5, 0.0, -1.0, -0.25, -1.0, 0.25, -1.0, -1.0, 0.25, 0.5, -1.0, -0.25, -1.0, 0.75, 0.0, 1.0, -1.0, -1.0, -1.0, 0.75, 0.0, 0.25, 0.75, 0.25, -0.25, 1.0, 1.0, -0.75, 1.0, 1.0, -0.25, 1.0, 0.75, -1.0, -0.25, -0.5, -1.0, 0.75, 0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 0.0, 0.75, 0.75, -0.75, 0.25, -0.75, 0.0, 0.25, 1.0, -0.75, 0.0, 1.0, -1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.0, 0.75, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, 0.0, -0.75, 0.0, -1.0, -0.75, -1.0, 0.75, -0.5, -1.0, -0.5, 0.75, 0.0, -0.75, 0.0, 1.0, 0.5, 1.0, -0.75, -0.25, 1.0, ]);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    render_pass_encoder0020.setStencilReference(1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
    const array9 = new Float32Array([0.5, -0.25, -1.0, 0.5, -1.0, 0.5, -0.5, 0.25, 0.25, -1.0, -1.0, -0.25, -0.5, -0.25, 0.25, 0.75, -0.5, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, -0.75, -1.0, 0.25, -1.0, -1.0, -0.5, -1.0, 0.25, 0.75, 0.25, 0.5, 0.5, 0.0, 1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -1.0, 0.25, 1.0, 0.0, 0.75, 1.0, 0.75, 0.25, 0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 1.0, 0.0, -0.25, -0.5, -0.5, 1.0, -0.75, -0.5, -1.0, -0.75, -0.5, -0.25, -0.25, 0.25, 0.75, 1.0, 0.75, -0.25, -1.0, -0.5, 0.5, 0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -0.75, -0.25, -1.0, -1.0, 0.5, 0.5, 1.0, 0.0, 0.0, -0.75, 0.0, -1.0, -0.25, ]);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    device00.pushErrorScope("validation");
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0010.setStencilReference(1);
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query003
    });
    query000.destroy()
    render_pass_encoder0030.setStencilReference(1);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    query002.destroy()
    
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
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0020.setStencilReference(1);
    query403.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
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
    query402.destroy()
    query000.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query403.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query403.destroy()
    render_bundle_encoder400.popDebugGroup();
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.setStencilReference(1);
    texture400.destroy();
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0023,
            },
        ],
        occlusionQuerySet: query003
    });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query402
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
    render_pass_encoder4020.setPipeline(render_pipeline401);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_bundle_encoder401.setPipeline(render_pipeline402);
    query003.destroy()
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    buffer009.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    texture402.destroy();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.pushErrorScope("validation");
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    render_bundle_encoder000.popDebugGroup();
    
    
    
    render_pass_encoder0020.popDebugGroup();
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query400.destroy()
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    query403.destroy()
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    command_encoder403.insertDebugMarker("mymarker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query403
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0040.setPipeline(render_pipeline001);
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer006.destroy()
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder4020.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4030.setStencilReference(1);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    query403.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query403
    });
    
    device70.queue.writeTexture({ texture: texture701 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setStencilReference(1);
    render_pass_encoder4030.setStencilReference(1);
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    buffer404.destroy()
    render_pass_encoder4030.setPipeline(render_pipeline402);
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4040.executeBundles([])
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4030.insertDebugMarker("marker");
    render_bundle_encoder402.setPipeline(render_pipeline401);
    compute_pass_encoder7000.popDebugGroup()
    
    buffer007.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture_view0052 = texture005.createView({ label: "texture_view0052" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.setPipeline(render_pipeline000);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
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
    render_pass_encoder0040.setStencilReference(1);
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    command_encoder701.copyTextureToBuffer(
        {
            texture: texture700
        },
        {
            buffer: buffer700
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer008.destroy()
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.executeBundles([])
    render_pass_encoder4040.setPipeline(render_pipeline400);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    const command_buffer701 = command_encoder701.finish();
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group402);
    device70.queue.submit([command_buffer701, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4000.popDebugGroup()
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
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

    render_pass_encoder4030.setBindGroup(0, bind_group403);
    render_pass_encoder0000.popDebugGroup();
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group404);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    const command_buffer405 = command_encoder405.finish();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4013, 0);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
}