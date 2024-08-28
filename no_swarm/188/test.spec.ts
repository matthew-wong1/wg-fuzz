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
    const array0 = new Float32Array([0.75, -0.25, 0.5, 1.0, 0.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.0, -0.75, 0.0, 0.25, -1.0, 0.75, 0.75, 0.0, -1.0, 0.5, -0.75, 1.0, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, 1.0, -1.0, -0.5, -0.25, 1.0, -0.75, 1.0, -0.75, -0.5, 0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 0.5, -0.75, 0.25, -0.5, 0.5, -0.75, 0.75, 0.25, -0.5, -0.25, 0.75, -0.5, -0.75, 0.75, 0.0, -0.25, -1.0, 0.75, 0.25, -0.75, -1.0, -0.25, -0.25, 0.5, 0.25, 0.0, 1.0, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, 0.0, 1.0, -0.25, -0.25, 0.25, 0.5, 0.25, 0.0, 1.0, -1.0, -0.5, 0.75, 0.25, -0.75, 0.5, 0.5, 0.25, -0.5, 0.75, -0.25, -1.0, -1.0, -0.25, -0.5, ]);
    const array1 = new Float32Array([0.25, -1.0, 1.0, 1.0, -0.75, 0.5, 1.0, 0.75, 0.0, -1.0, 0.75, -1.0, -0.5, 0.5, -0.25, -0.75, -0.5, 0.5, -0.5, 1.0, -0.75, 0.5, 0.5, -1.0, 0.0, -0.75, 0.25, -0.5, -0.25, -0.25, 0.25, -0.75, -0.75, -0.75, 0.5, -0.75, -0.25, -0.5, -0.75, 1.0, 0.5, 0.0, -0.75, -0.25, 0.0, -0.75, -1.0, 0.5, -0.25, 0.5, 1.0, 0.25, -1.0, 0.5, 0.75, -1.0, 0.5, -0.75, 0.75, -0.5, 0.5, -0.5, 0.25, 1.0, 1.0, -0.75, -1.0, 0.0, -1.0, 0.75, 1.0, -0.75, -1.0, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, 0.75, -0.5, -0.75, -0.5, 0.25, 1.0, 1.0, -0.75, -0.75, 0.75, -0.5, -0.75, -1.0, 0.25, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([1.0, 0.5, 0.75, 1.0, 0.75, -0.25, 0.0, 0.0, 0.75, 0.25, 1.0, -0.5, 0.75, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, -0.25, 0.5, 0.75, 0.75, 0.5, 1.0, -1.0, -0.25, 0.75, -0.75, 0.25, -0.75, -0.75, -0.5, 0.5, 0.75, -0.5, -1.0, -1.0, -1.0, 0.25, -0.5, 0.5, -0.25, 0.0, 0.5, -1.0, -0.75, -1.0, 0.5, -0.75, 0.5, -0.5, -0.5, 0.25, -0.5, -0.75, 0.25, -0.75, 1.0, 0.25, 0.25, 0.5, -0.25, -0.5, -0.25, 0.0, 1.0, -0.5, 1.0, 0.5, 0.75, -0.75, 0.0, -0.5, -0.75, -0.75, -0.75, -0.25, -0.5, 0.25, -1.0, 0.75, 1.0, 0.0, -0.75, 0.5, 0.0, -0.25, 0.0, -0.75, 0.0, -0.75, -0.75, 0.25, -1.0, -1.0, 0.25, -0.5, 0.75, 0.25, ]);
    const array3 = new Float32Array([0.75, -0.5, -0.5, 0.0, -1.0, 0.25, -0.5, -1.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.5, 0.25, 0.75, 0.0, -0.25, 0.75, 0.0, 1.0, -0.25, 0.25, -0.5, 0.0, 0.75, -0.5, 0.25, -0.75, 0.25, 0.75, 1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 0.75, 0.0, 0.25, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, -1.0, 0.75, 0.0, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.0, 0.0, -0.5, -0.25, -0.75, -0.25, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, 0.75, 0.5, -0.75, -0.25, -0.75, 0.0, 0.5, 0.0, -0.5, -1.0, 0.0, -0.5, 0.75, -0.75, 0.75, -0.5, 0.0, 0.0, 0.0, 0.5, -0.75, -1.0, -1.0, 0.5, -1.0, 0.75, -0.5, -1.0, 0.25, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const array4 = new Float32Array([1.0, -0.75, 0.25, 0.0, 0.25, 0.5, -1.0, 0.0, 0.75, 0.5, -0.25, 0.5, -0.25, -0.75, 1.0, -0.5, -1.0, 1.0, -0.5, 0.5, -0.5, -0.25, -0.5, -1.0, 1.0, 0.0, -0.25, -1.0, 0.75, -0.75, 0.5, 1.0, -0.5, 0.75, 0.5, -0.25, 0.75, -0.5, -0.75, -0.5, -1.0, 1.0, 1.0, -0.5, 1.0, -0.25, -0.25, 0.75, 0.25, 0.0, 0.5, -0.5, -0.25, 1.0, -0.5, 0.25, -0.75, -0.5, 0.0, -1.0, 0.0, 1.0, -0.25, -0.5, -0.5, -1.0, -0.75, -1.0, 0.0, 0.75, -1.0, -0.25, 0.5, 1.0, -0.5, 0.25, -0.25, -0.75, -0.75, -1.0, -0.75, -1.0, 0.75, 0.5, 0.5, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, 0.25, 0.25, 0.5, 0.0, 0.0, 1.0, 0.0, 1.0, 1.0, ]);
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const command_buffer201 = command_encoder201.finish();
    query200.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    query200.destroy()
    texture200.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query200.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    compute_pass_encoder2000.popDebugGroup()
    
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.pushErrorScope("out-of-memory");
    const array5 = new Float32Array([-0.5, -0.5, 0.0, 1.0, -0.5, 0.5, -0.25, -0.75, -0.5, -0.25, -0.75, 0.75, 0.25, -0.25, 0.5, 0.5, -0.25, 0.5, 0.5, 0.0, 0.25, 0.0, -0.5, 0.5, 0.0, -1.0, 0.5, 0.75, 0.25, 0.5, 0.5, -0.25, -0.5, -0.5, -1.0, -0.5, -0.75, -0.25, -0.25, 0.5, 0.75, 0.25, 0.25, 0.25, -0.5, -1.0, 0.75, 0.5, 0.75, -0.25, -1.0, -1.0, 0.5, 0.75, -1.0, 1.0, 0.0, -0.25, 0.25, 0.25, 0.5, 1.0, -1.0, 0.25, 0.25, 1.0, 0.75, -0.5, 0.25, 0.25, -0.75, 0.5, -0.25, 0.25, 0.0, 1.0, 1.0, 0.75, -0.25, 1.0, -1.0, -0.25, 1.0, 0.0, 0.25, 0.5, 0.5, 0.25, 0.75, 0.0, 0.75, 0.75, -1.0, -0.75, -0.5, 0.5, 0.5, 0.25, 1.0, -0.5, ]);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.5, 0.75, 0.5, 0.75, -0.75, 1.0, -0.25, -0.75, 0.5, 0.0, 0.75, 0.5, -0.75, -1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.75, -1.0, 0.0, 0.75, 1.0, 0.5, -0.25, 0.0, -0.5, 0.5, 0.0, -0.25, 0.5, 1.0, 1.0, -1.0, 1.0, 0.25, 0.75, 0.75, 0.75, 1.0, 0.5, 0.75, -0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -1.0, -0.5, -0.25, -0.5, 1.0, 0.5, 0.25, -0.25, -0.75, -0.75, 0.75, 0.5, 0.25, -1.0, -0.75, 0.25, -1.0, -0.75, -0.25, -0.25, 0.0, 0.25, -1.0, -0.25, 0.75, -0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -1.0, -0.75, 1.0, -0.75, 1.0, -1.0, -0.25, 0.75, 1.0, 1.0, 1.0, -0.25, 0.0, 0.5, 0.0, -0.25, -0.75, 0.0, 0.5, -1.0, ]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    texture203.destroy();
    device20.queue.submit([command_buffer201, ]);
    const array7 = new Float32Array([-0.5, -0.25, 0.5, 0.25, -1.0, -0.5, -0.25, -1.0, -0.25, -1.0, 0.0, -0.5, 1.0, -0.25, -0.5, 0.25, 0.0, -0.5, 0.5, 0.0, -0.5, 0.75, 0.5, -1.0, -1.0, 0.0, 0.5, 0.25, 0.0, -0.25, 0.0, 1.0, 0.25, -0.75, -0.25, 0.75, 0.25, 0.0, 0.0, 0.25, 0.75, 0.75, -0.75, -0.5, -0.5, -0.25, -0.5, -0.25, -1.0, -1.0, 0.0, 0.75, -1.0, -0.5, 1.0, -0.5, 0.25, 1.0, 0.5, 0.25, -0.75, 0.25, -0.25, -0.5, 0.25, -0.5, 0.5, -1.0, -0.25, -1.0, 1.0, -0.5, 0.75, 0.5, 0.5, 0.25, -0.25, -0.25, -0.25, 0.0, -0.25, -0.5, 0.75, 0.75, 0.25, -0.5, -0.5, 0.75, -0.75, 0.75, 0.5, 0.5, 0.0, -0.25, -0.25, -0.75, 0.25, -0.75, -0.5, 0.75, ]);
    device30.destroy();
    
    
    
    query200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.setPipeline(render_pipeline202);
    render_pass_encoder2020.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    command_encoder203.pushDebugGroup("mygroupmarker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture202.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.pushErrorScope("validation");
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    buffer206.destroy()
    command_encoder203.popDebugGroup()
    
    buffer205.destroy()
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2030.setStencilReference(1);
    
    
    
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.destroy();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    query200.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder200.draw(3);
    render_pass_encoder2030.insertDebugMarker("marker");
    buffer203.destroy()
    
    render_pass_encoder2030.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
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
    
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    render_pass_encoder2020.setStencilReference(1);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    render_pass_encoder2030.executeBundles([])
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder200.popDebugGroup();
    texture205.destroy();
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.setPipeline(render_pipeline201);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    render_bundle_encoder202.setPipeline(render_pipeline201);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
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
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_pass_encoder2030.insertDebugMarker("marker");
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
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder204.insertDebugMarker("mymarker");
    buffer207.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_buffer204 = command_encoder204.finish();
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array8 = new Float32Array([-0.5, 0.5, -0.75, -0.25, 0.75, -0.25, -1.0, -0.75, -0.5, -1.0, 0.0, 1.0, 1.0, -0.25, -0.75, 0.25, 0.25, -0.5, -0.25, 1.0, 0.0, 1.0, -1.0, 0.5, -0.5, -0.75, 1.0, -0.75, 0.75, -0.5, 0.25, -0.25, -0.25, 0.25, -1.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.25, -0.25, -0.5, -0.5, 0.75, 0.75, 0.25, 0.5, 0.0, -0.25, -0.5, 1.0, 0.5, 1.0, -0.75, 0.5, -0.25, 0.75, 0.5, 0.75, 0.0, -0.25, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, -1.0, 0.25, 0.75, 0.5, 0.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.75, 0.0, -0.5, 0.5, -0.75, 1.0, 1.0, -0.75, 0.5, 1.0, 1.0, 1.0, 0.5, 0.0, -1.0, 1.0, 0.0, ]);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture206 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.popDebugGroup()
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    query200.destroy()
    
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module2010,
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
            module: shader_module2010,
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
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer208.destroy()
    
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture206 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.submit([command_buffer204, ]);
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout208,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    buffer2011.destroy()
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture206 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.popDebugGroup()
    
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group204);
    render_pass_encoder2050.setPipeline(render_pipeline207);
    buffer204.destroy()
    texture206.destroy();
    
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout206,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    query200.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    
    
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    render_pass_encoder2030.setStencilReference(1);
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout208,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
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
    
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group205);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder202.setVertexBuffer(0, buffer201);
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    buffer2012.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    query201.destroy()
    buffer2013.destroy()
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.setStencilReference(1);
    buffer2010.destroy()
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query201.destroy()
    render_pass_encoder2050.setStencilReference(1);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.draw(3);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder500.pushDebugGroup("mygroupmarker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    render_bundle_encoder201.setVertexBuffer(0, buffer2016);
    
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    query202.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view2042 = texture204.createView({ label: "texture_view2042" });
    render_pass_encoder2030.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setVertexBuffer(0, buffer201);
    
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    buffer209.destroy()
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline2079 = device20.createComputePipeline({
        label: "compute_pipeline2079",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2080 = device20.createComputePipeline({
        label: "compute_pipeline2080",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2081 = device20.createComputePipeline({
        label: "compute_pipeline2081",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2082 = device20.createComputePipeline({
        label: "compute_pipeline2082",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    device20.pushErrorScope("validation");
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline2083 = device20.createComputePipeline({
        label: "compute_pipeline2083",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder2050.setStencilReference(1);
    buffer202.destroy()
    const command_buffer600 = command_encoder600.finish();
    
    const compute_pipeline2084 = device20.createComputePipeline({
        label: "compute_pipeline2084",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.end();
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group206);
    const command_buffer203 = command_encoder203.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2050.setVertexBuffer(0, buffer2016);
    const command_buffer200 = command_encoder200.finish();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2050.draw(3);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2050.end();
    const command_buffer205 = command_encoder205.finish();
}