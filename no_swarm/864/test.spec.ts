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
    
    const array0 = new Float32Array([-1.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.25, -0.25, -0.75, 0.75, 0.25, 0.5, -0.25, 0.75, -1.0, -0.75, 0.25, -0.25, -1.0, -0.25, 0.0, -0.25, -0.5, 0.75, -0.25, 0.0, 0.0, 0.0, -0.5, -0.75, 1.0, -0.25, -0.75, -0.75, -0.25, -0.25, -0.75, 1.0, 0.0, -1.0, 0.25, 0.75, 0.25, 0.0, -0.75, -0.25, -0.5, 0.75, 0.75, 0.25, 0.25, 0.5, 0.5, 1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 1.0, 1.0, -1.0, 0.75, 0.5, -0.75, 0.75, -1.0, 0.5, 0.75, -1.0, -0.75, 0.0, 0.75, 0.5, 1.0, -0.25, 0.75, 1.0, 0.25, -1.0, -0.75, -0.5, -0.75, -0.25, -0.75, 1.0, 0.75, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, -0.25, 0.5, 0.25, 0.0, -1.0, -0.75, -0.25, ]);
    
    const array1 = new Float32Array([-1.0, -0.25, -0.25, -0.25, -1.0, 0.25, -1.0, 0.75, 0.25, -0.75, 0.5, 0.75, -0.25, 0.25, 0.5, -0.25, -0.5, -0.75, -0.25, 0.25, 0.5, -1.0, -0.75, 0.75, 0.0, -1.0, 1.0, -0.75, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 1.0, 0.75, 1.0, 0.25, 0.25, -0.75, -0.25, -0.5, 0.75, 0.0, 0.75, -0.25, 1.0, -1.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.5, -0.75, -1.0, -0.75, -0.5, 0.0, 0.5, 0.75, -1.0, -0.75, 0.0, 0.5, -0.75, 0.75, 0.75, 0.5, -0.75, 0.25, -1.0, -0.75, 0.0, 0.0, 0.75, -0.25, -0.75, -0.75, -0.75, -0.75, 0.25, 1.0, 0.25, -0.75, -0.25, 0.0, 0.75, 0.0, -0.75, 0.25, -0.5, -0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 0.75, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.destroy();
    const array2 = new Float32Array([0.75, 0.25, 0.5, 0.75, -0.5, 0.5, -0.25, 1.0, -0.25, -1.0, 0.75, 1.0, -0.25, -0.25, -0.5, -0.5, -1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 0.25, 0.0, -0.75, -0.25, 0.5, -1.0, -1.0, -1.0, 0.0, 0.75, -0.25, -1.0, 0.25, 0.5, 0.75, 0.5, 0.75, -0.25, 0.25, -0.5, 0.0, 0.25, -0.25, 0.25, 0.75, -0.5, 0.75, -0.25, 0.75, -0.25, 0.75, -0.5, -0.75, 1.0, 0.25, 0.25, 0.25, 0.75, 0.75, 0.75, -0.5, 0.25, -0.5, 0.0, -0.75, -0.75, -0.75, -0.25, 0.5, -1.0, 0.25, -0.75, -0.75, 0.25, -0.25, 0.0, 0.75, 0.25, 1.0, -0.25, 0.25, -0.75, 0.25, -0.25, -0.5, -0.75, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, -0.5, -0.75, 1.0, 0.75, 0.5, -0.25, ]);
    
    
    
    
    
    const array3 = new Float32Array([0.75, -1.0, -1.0, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, 0.0, 0.5, 1.0, 0.25, -1.0, 0.0, -0.75, -0.5, -0.75, 1.0, -0.25, -0.75, 0.25, -1.0, 0.0, 0.0, 0.0, 0.5, -0.5, 0.75, -0.5, 1.0, -0.25, -0.5, -0.25, -0.5, -0.25, 0.0, 0.25, 0.0, 0.25, -1.0, -0.75, 0.0, 1.0, 0.75, -0.75, 0.25, -1.0, 0.5, 0.75, 0.75, -0.5, -0.5, -1.0, 0.5, 0.5, -1.0, 0.0, -1.0, -0.75, 0.25, 0.5, -0.5, 0.25, 1.0, -0.5, -0.25, 0.5, -0.75, -0.25, 0.75, -0.5, 0.5, 0.0, -0.25, 0.25, 0.0, -0.5, 1.0, -0.25, 0.75, 0.0, -0.25, 0.0, 0.5, 0.75, -0.5, -1.0, 0.5, 0.0, 0.75, -0.75, 0.5, 1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array4 = new Float32Array([0.5, 0.25, 1.0, -1.0, 0.5, -0.5, -1.0, 1.0, 1.0, -0.25, 1.0, 0.25, -0.5, -1.0, 0.75, 0.5, -0.75, 0.75, -0.5, 0.0, 1.0, -0.25, 0.0, 0.5, -0.25, 0.75, -0.25, 0.75, 0.75, 1.0, -1.0, 0.75, -0.25, 0.5, 0.0, 0.0, -1.0, 0.5, -0.5, 1.0, 1.0, 0.0, 0.0, 0.5, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 1.0, 0.5, 0.75, 0.0, 1.0, 1.0, -0.75, -1.0, -0.25, 0.25, 0.5, 0.5, -1.0, -0.5, -0.5, 0.75, 0.75, 0.75, -1.0, 0.25, -0.5, 0.0, -0.5, -1.0, 0.75, -1.0, -0.75, -0.75, -0.75, -0.5, 0.75, -1.0, 0.75, 0.5, 0.75, 0.25, -0.5, 0.0, -1.0, -1.0, -0.25, 0.0, -0.5, 0.0, 1.0, -0.25, -0.25, 0.75, 0.25, 0.0, ]);
    
    const array5 = new Float32Array([0.75, 0.0, -0.25, -0.5, -0.75, 0.25, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, -1.0, -0.5, -0.5, -0.5, 0.75, 0.0, -0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -0.5, -0.25, 1.0, 0.5, 1.0, 0.5, 0.0, 1.0, -0.25, 1.0, 0.5, 1.0, -1.0, 1.0, -0.5, -0.5, -1.0, 0.75, -0.75, -0.5, -0.75, -0.5, -0.25, -0.5, 0.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.75, -0.75, 0.25, 0.0, -0.25, 1.0, 0.5, 1.0, -1.0, -1.0, 0.25, -0.75, 1.0, -0.5, 0.0, 0.75, -0.5, 0.0, 1.0, -0.75, 0.75, 0.75, 0.5, 0.0, 0.75, -0.25, 0.0, -0.5, 0.25, -0.5, 0.25, -1.0, -1.0, 1.0, 0.0, 0.25, 0.5, -0.5, -0.25, 0.75, -0.25, 0.5, 0.5, 0.75, -0.25, 0.0, ]);
    
    
    
    const array6 = new Float32Array([0.75, 0.0, 0.75, -0.25, 0.75, 1.0, 1.0, -1.0, 0.25, 0.75, -0.5, 0.0, 0.75, 1.0, -0.25, -0.5, 0.25, -0.75, 0.5, 0.25, 0.25, 0.0, -0.5, -0.75, -0.25, 0.0, -0.25, -0.5, 0.5, -0.5, 0.0, 0.0, 0.5, -0.75, -1.0, 0.0, 0.5, 0.75, -0.75, 0.25, -0.75, -0.5, -0.25, 0.75, 0.5, -0.5, 0.75, 0.0, -0.75, 0.0, 1.0, 0.75, -0.75, -0.75, 1.0, -1.0, -1.0, -0.25, 0.25, 0.5, 0.25, 0.0, 1.0, 0.75, 1.0, -0.5, 1.0, -1.0, -0.75, 0.75, 0.75, -0.5, -0.5, 0.75, -0.5, 0.25, 0.0, 0.25, 0.75, 1.0, -0.25, 1.0, -0.25, 0.25, 1.0, -0.75, 0.25, -0.75, -0.75, -0.5, -0.75, 0.0, -1.0, -0.75, 1.0, 0.25, 0.25, 0.75, 0.5, 0.5, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array7 = new Float32Array([0.5, -0.25, 1.0, -0.5, 0.25, -1.0, 0.0, -0.25, 0.5, -0.25, -0.5, 0.0, 0.5, -0.75, 1.0, -1.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 0.75, 0.5, -0.25, 0.5, -0.5, -0.75, -1.0, 0.25, 1.0, -1.0, -0.25, -0.25, -1.0, 1.0, -0.25, 0.0, -0.25, 0.5, 1.0, -0.75, 0.75, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, 0.75, 0.25, -0.5, 0.25, -1.0, -0.25, 0.25, -0.75, 0.75, 0.25, -0.5, 0.25, 1.0, 0.25, -1.0, 0.5, 1.0, 0.75, -0.5, 0.5, 0.5, 0.75, 0.0, 0.0, -1.0, -0.5, 1.0, -0.25, 1.0, 0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.75, 0.75, 0.0, -0.25, 0.0, -1.0, 0.25, 1.0, 0.25, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture100.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.pushErrorScope("out-of-memory");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer101.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    query100.destroy()
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.setStencilReference(1);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    
    
    device10.pushErrorScope("validation");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const array8 = new Float32Array([1.0, 0.0, -1.0, -0.25, 0.75, -0.75, 0.5, -0.25, -0.25, 1.0, 0.75, -0.25, -0.5, -0.75, -0.75, -0.75, 0.0, 0.25, 0.0, -0.75, -0.25, -0.5, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, 0.25, -0.25, -0.5, 1.0, 0.0, 0.25, 0.75, -0.25, 0.0, -0.25, -1.0, 0.5, 0.25, 1.0, 0.5, 0.25, 0.0, -0.25, 0.75, -0.75, -1.0, -0.5, -0.25, 0.0, -0.5, 0.0, -0.5, 0.0, -0.75, 0.5, -0.75, -0.25, 0.75, -1.0, 0.0, -0.5, -1.0, 0.25, -0.25, 0.25, -1.0, -0.5, 0.0, 0.25, 0.5, -0.25, -0.5, -0.25, 1.0, 0.75, -1.0, 0.5, -0.25, 1.0, -1.0, -0.25, 0.5, -0.5, 0.25, 0.5, 1.0, -0.5, -1.0, 0.0, 0.5, -1.0, 0.75, 0.75, 0.5, 0.0, -1.0, -0.25, ]);
    buffer100.destroy()
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1000.setStencilReference(1);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    
    render_pass_encoder1020.setPipeline(render_pipeline101);
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    buffer103.destroy()
    
    render_pass_encoder1020.insertDebugMarker("marker");
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    compute_pass_encoder1010.popDebugGroup()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.setStencilReference(1);
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const array9 = new Float32Array([0.25, -0.5, 0.75, -0.25, 1.0, 0.25, 0.5, 0.75, -0.25, 0.0, -1.0, 1.0, 0.0, -1.0, 0.0, -1.0, 0.5, -1.0, -0.5, -0.25, 1.0, 0.75, 1.0, 0.5, 0.5, -0.25, 0.0, 0.0, -1.0, -0.25, 0.75, -0.25, -0.5, -1.0, 0.5, 0.5, 1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.25, 0.75, 0.25, 0.0, 0.5, 0.0, -0.75, 0.25, 0.25, 0.5, -1.0, 0.5, 0.75, 0.5, 1.0, 1.0, -0.5, -0.25, -0.5, 0.25, 1.0, 0.0, -0.5, 0.75, 0.75, 0.5, -1.0, 0.75, 0.0, 0.25, 1.0, -1.0, -0.75, 1.0, 0.0, 1.0, -0.5, -0.5, -0.25, -0.75, 0.25, 0.5, 0.0, 1.0, 1.0, 0.5, -0.5, -1.0, 0.25, -0.5, -0.25, -0.25, -0.5, 0.75, 0.5, -1.0, 0.75, -1.0, ]);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer107.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline102);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group103);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer1010.destroy()
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer1011.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    buffer105.destroy()
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.setStencilReference(1);
    buffer104.destroy()
    render_pass_encoder1020.draw(3);
    device10.pushErrorScope("validation");
    
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1000.setStencilReference(1);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setPipeline(render_pipeline104);
    render_bundle_encoder100.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder101.setIndexBuffer(buffer101, "uint16");
    texture102.destroy();
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group104);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder101.drawIndexed(3);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array10 = new Float32Array([-0.25, 0.25, -0.75, 0.25, 0.25, -0.5, 0.25, 0.0, -1.0, -0.5, -0.25, 0.5, 0.25, 0.0, 1.0, 0.75, -0.5, -0.5, 0.0, -0.25, -0.5, 0.25, -0.75, 0.25, 0.25, 0.75, -0.5, 0.0, -0.5, -0.25, 0.75, 0.75, -1.0, 1.0, -0.75, -0.75, 0.75, 0.0, -0.25, -1.0, -0.25, 0.0, 0.0, 0.5, -0.25, 0.75, 1.0, -0.75, 0.25, -0.75, 0.0, -1.0, 0.25, 0.25, 0.75, 0.0, -0.25, 0.0, 0.0, -1.0, 0.25, 0.5, -0.75, 0.0, 0.5, -0.75, -0.75, 0.5, 0.25, 0.75, 0.0, 1.0, -0.5, -0.75, -0.25, 1.0, 0.0, -1.0, -0.5, -0.5, 0.0, -0.75, -0.25, 0.75, 0.0, 0.0, 1.0, 0.0, -0.25, -0.5, 0.25, -0.25, -0.75, 0.75, 0.5, 0.25, 0.0, -0.25, -0.75, 1.0, ]);
    buffer102.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    const array11 = new Float32Array([0.75, -1.0, 0.0, -1.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.0, 1.0, 0.0, 0.75, 0.5, 0.75, -0.75, -0.5, -1.0, -1.0, 0.0, 0.75, 1.0, -0.5, -0.5, -0.75, 0.25, 0.0, 0.0, -0.75, -1.0, -1.0, 0.0, 1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -0.75, -0.75, -1.0, -0.5, -1.0, -0.75, -0.5, -1.0, 0.25, 1.0, -0.75, 1.0, 0.75, -1.0, -1.0, 0.25, -0.25, 0.75, -0.75, -0.5, 0.25, 0.75, -0.5, -0.75, -1.0, -0.75, 0.75, 0.5, 0.0, -0.5, 0.25, -1.0, 0.5, -0.75, 1.0, -0.25, 1.0, 1.0, -0.75, -0.75, 0.25, 0.5, 0.5, -1.0, -0.75, -0.25, -0.25, -0.75, 0.5, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, -0.5, 0.75, -1.0, 0.5, -0.75, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.setVertexBuffer(0, buffer100);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer1013.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query103.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const array12 = new Float32Array([-0.25, -0.75, -1.0, -1.0, -0.5, 0.25, -1.0, 0.75, 0.25, 0.25, -0.25, -0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 0.5, -0.75, 1.0, -0.75, -1.0, -0.5, 0.25, -0.25, -0.25, -0.75, -1.0, -0.5, 0.75, -0.5, 0.25, 0.0, -1.0, -0.75, 0.0, -0.5, 0.75, -0.75, -0.5, -1.0, -0.5, -0.75, 0.5, 0.25, 1.0, -0.75, 0.25, 0.75, -1.0, 0.0, 0.5, -1.0, 1.0, 0.0, -0.75, -0.5, -1.0, -0.75, -0.25, 0.0, 0.0, -0.25, -0.25, 1.0, 0.0, -0.25, 0.0, 0.75, 0.5, 0.5, -1.0, 0.25, -0.5, 0.25, -0.25, -1.0, -1.0, -0.5, 0.25, 0.75, 1.0, -0.75, 0.0, -1.0, 1.0, 1.0, -0.25, -0.25, 0.5, 0.75, -0.5, 0.0, 0.5, 0.0, 0.75, 0.25, -0.75, -0.25, -0.5, ]);
    query102.destroy()
    query101.destroy()
    buffer1014.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    buffer108.destroy()
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder102.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    query103.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.draw(3);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    buffer1015.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder101.finish();
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setStencilReference(1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.setPipeline(render_pipeline103);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
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
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    query103.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.end();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group107);
    compute_pass_encoder1010.popDebugGroup()
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer1016,
        0
    )
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setVertexBuffer(0, buffer100);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder102.finish();
    const array13 = new Float32Array([-0.25, 0.75, -0.25, 0.5, -0.5, 0.0, 0.5, -0.25, -1.0, 0.25, -0.25, 0.75, 0.0, 0.25, -1.0, 0.5, -0.75, -0.25, 0.25, -0.5, -1.0, 0.0, 0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 0.25, -1.0, 0.0, 0.25, -1.0, -0.75, 0.5, 0.5, -1.0, 0.5, 0.0, -0.5, 0.25, 0.25, 0.0, -0.75, 0.0, 0.75, 0.5, 0.5, -0.75, -0.5, -0.25, -0.75, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, 0.25, 0.0, 0.25, -0.25, -0.25, -1.0, 0.25, 0.0, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.25, -0.25, 0.25, -0.25, 1.0, -0.75, 0.75, 0.5, 1.0, -0.25, -0.75, 0.0, 0.75, 0.75, -1.0, 0.75, 1.0, -0.25, -0.25, -0.25, 1.0, ]);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer1021, 0, array5, 0, array5.length);
    
    render_pass_encoder1021.setPipeline(render_pipeline104);
    const array14 = new Float32Array([-1.0, 0.0, 0.5, 0.5, -0.75, -0.5, -0.5, 0.0, -0.5, -1.0, 0.0, -0.5, 1.0, 0.0, 0.5, 0.5, 0.5, -0.75, 1.0, 1.0, -0.25, 0.75, 0.25, 0.5, -0.75, -1.0, 0.0, -1.0, -0.5, 1.0, -0.25, 0.5, 0.0, -0.5, 1.0, -1.0, -1.0, -0.75, -0.5, -0.75, 0.75, -0.25, -0.75, -0.5, 0.25, 0.0, 1.0, 0.5, -0.5, -0.75, 0.0, -0.75, -0.5, -0.75, 1.0, 0.5, -1.0, -0.25, -0.75, 0.75, 0.5, -0.75, 1.0, 0.25, 1.0, 0.25, -0.25, 0.5, -0.5, 0.0, 1.0, -0.25, -0.25, 0.75, -0.75, -0.5, 1.0, -0.5, 1.0, -1.0, 1.0, -0.75, -0.5, 1.0, 0.25, 1.0, -1.0, -0.75, -0.25, 1.0, 1.0, -1.0, 0.25, 0.25, -1.0, -1.0, -1.0, 0.25, -1.0, 1.0, ]);
    device10.queue.writeBuffer(buffer1021, 0, array7, 0, array7.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer1020.destroy()
    {
        await buffer1021.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1021.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1021.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1030.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1021, 0, array11, 0, array11.length);
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer1021, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer1021, 0, array11, 0, array11.length);
    device10.queue.writeBuffer(buffer1021, 0, array13, 0, array13.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group108);
    query102.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_pass_encoder1030.setStencilReference(1);
    
    buffer1021.destroy()
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1021.setStencilReference(1);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    const array15 = new Float32Array([0.0, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, 0.5, 0.5, 1.0, 0.75, 0.5, 0.25, -0.5, 1.0, -0.5, 0.75, 1.0, -0.75, 0.75, 0.0, 1.0, 0.75, 0.75, 0.75, 1.0, -0.5, -0.75, -0.75, -0.75, -0.25, 1.0, -0.5, 0.0, -0.25, 0.5, -0.5, 0.75, 0.0, -0.5, 0.0, 0.75, 0.5, 1.0, 0.0, 0.5, 0.75, -0.5, 0.0, 0.25, 0.0, 1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, 1.0, 0.0, 0.75, 1.0, -0.5, 1.0, -0.75, -0.5, -0.5, 0.75, 1.0, -0.25, 0.5, 0.5, 0.75, 0.0, -0.5, 0.25, 0.5, 1.0, -0.25, 0.0, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, -0.5, 1.0, -0.25, ]);
    buffer1017.destroy()
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    
    render_pass_encoder1030.setStencilReference(1);
    buffer1016.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    texture104.destroy();
    buffer1019.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1021.setStencilReference(1);
    buffer109.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query103.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer1012.destroy()
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1024, 0);
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1024, 0, array4, 0, array4.length);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1024.destroy()
    render_pass_encoder1021.insertDebugMarker("marker");
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    
    render_pass_encoder1040.draw(3);
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_bundle_encoder100.popDebugGroup();
    
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer1018.destroy()
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_bundle_encoder100.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.end();
    render_bundle_encoder100.drawIndexed(3);
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query104
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1041.setPipeline(render_pipeline100);
    texture105.destroy();
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query106.destroy()
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.pushDebugGroup("group_marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    query106.destroy()
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    buffer106.destroy()
    
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query103.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1000.setStencilReference(1);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query103.destroy()
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.popDebugGroup();
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.finish();
    compute_pass_encoder1010.popDebugGroup()
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group109);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    command_encoder100.popDebugGroup()
    render_pass_encoder1041.setVertexBuffer(0, buffer100);
    render_pass_encoder1030.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.setVertexBuffer(0, buffer100);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1041.end();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1021.end();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer102, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
}