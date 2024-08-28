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
    
    const array0 = new Float32Array([0.5, 0.5, -0.5, 0.25, 0.5, -0.5, -0.75, -0.75, -0.75, 0.0, 0.25, -1.0, -0.75, -0.25, 0.25, -0.25, -0.25, -0.25, 0.5, -0.25, -0.5, 1.0, -0.75, -1.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.75, 0.25, 1.0, 0.75, 0.75, -0.5, 0.0, -0.25, -0.25, -0.25, -0.75, -0.75, -0.75, -0.25, -0.25, -0.25, -0.5, 0.5, -1.0, -0.5, -1.0, -0.25, 0.25, -0.75, 0.25, 0.25, -0.75, -0.25, 0.75, -0.75, 0.25, -1.0, -0.25, 1.0, -0.75, 0.75, 0.25, 0.5, -1.0, 0.75, 0.25, 1.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.0, 0.25, 0.25, -0.75, -0.75, 0.25, -0.75, -0.5, 0.75, 1.0, 0.75, 1.0, 0.25, -0.75, -0.5, 0.25, 0.5, 0.75, -0.25, 0.5, 0.25, 0.25, -0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    device00.destroy();
    const array1 = new Float32Array([-1.0, -0.25, -0.75, -0.75, -0.25, 0.25, 0.75, 0.25, 0.25, -0.75, 0.75, -0.25, 0.0, 1.0, 1.0, -0.75, 0.0, 0.75, -0.75, 0.75, -1.0, -0.75, 0.5, -0.25, 1.0, -0.25, 0.0, 0.75, -0.25, -0.5, 1.0, 0.75, -1.0, 0.0, 1.0, 0.0, -1.0, -0.75, -1.0, 0.75, 0.25, -0.25, -0.25, 0.25, 0.0, -1.0, -1.0, -0.5, 0.25, -1.0, -0.75, -0.5, -0.25, -0.25, -0.25, 0.5, -0.5, 1.0, 0.5, 0.25, -0.5, 0.5, -0.75, -0.75, 1.0, 0.75, -0.75, -0.75, 0.5, -0.5, -0.25, 1.0, 0.0, 0.5, 0.25, 0.5, 0.5, 1.0, 0.5, -0.25, -0.25, -0.5, 0.0, 0.75, -0.5, 0.75, 0.25, 0.5, 1.0, 0.5, -1.0, 0.75, -0.25, -1.0, 0.5, -0.5, 1.0, -0.5, 0.0, 1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array2 = new Float32Array([-0.75, 0.75, -0.5, -0.25, 1.0, 0.75, -0.75, -0.75, 0.0, 0.0, -0.25, -0.5, 1.0, 1.0, -1.0, 0.5, -0.25, 0.5, 1.0, 1.0, 0.75, 1.0, 0.25, -0.25, 0.75, -1.0, 0.0, 1.0, -0.25, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, 1.0, -0.5, 0.5, 0.5, -0.5, 0.5, -1.0, -0.25, 0.0, 0.75, 0.75, 0.0, -0.25, -1.0, 0.25, -0.5, -0.25, 1.0, 0.0, 0.0, 0.5, 0.0, -0.5, -0.5, -0.5, 1.0, -0.25, -1.0, -0.25, -0.5, 0.25, 1.0, -0.25, 0.5, 1.0, 0.25, -0.5, -0.25, 1.0, 1.0, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, 1.0, -0.75, -0.5, 0.25, 0.0, -0.5, 0.5, 1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.75, 0.25, -0.75, -1.0, 0.0, 0.0, ]);
    
    
    
    const array3 = new Float32Array([0.0, -0.25, 0.5, 1.0, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, 0.0, -1.0, 0.0, 0.25, 0.0, -0.25, -0.25, 0.25, -0.25, 0.5, -0.5, 1.0, -0.75, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, -0.25, -0.25, 1.0, 0.75, -0.5, -0.5, 0.0, 0.0, -0.5, 0.0, 0.0, -1.0, -1.0, -1.0, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, -0.5, 1.0, -0.75, -0.25, 0.5, -0.25, 0.5, 1.0, 0.0, -1.0, -0.5, 0.0, 1.0, -0.5, 0.75, 0.0, -1.0, 0.75, -0.75, 0.0, -0.25, 0.75, -0.75, -0.75, -0.25, -0.25, 0.5, -1.0, -0.25, 0.25, 0.0, 0.25, -0.5, 0.75, -0.5, 0.5, -0.5, 1.0, 0.5, -0.75, -1.0, 0.25, -0.75, 0.0, -0.5, -0.5, -0.5, -0.75, 0.5, -0.75, 0.25, ]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    device30.pushErrorScope("internal");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array4 = new Float32Array([-1.0, 0.25, 0.75, -1.0, -0.25, 0.5, -0.75, 0.5, -1.0, -0.75, 1.0, -0.75, -0.75, 0.25, 0.75, 0.75, 1.0, 0.75, 0.75, 0.5, 0.75, 1.0, -0.75, 0.75, -1.0, -0.75, -0.25, -0.5, 0.5, 0.25, -0.5, 0.5, 0.25, 0.25, -1.0, 0.0, -1.0, -0.5, -0.5, 0.0, -0.5, 1.0, 1.0, -1.0, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, 0.5, 0.5, 0.5, -0.75, 0.5, 0.0, 0.25, 0.75, 0.0, 0.75, 0.0, -0.5, 0.75, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, 1.0, -0.25, 0.5, -1.0, -0.25, 0.25, 0.5, 0.25, -0.5, 0.0, 1.0, 0.75, -0.25, 0.0, -1.0, -0.25, 1.0, 0.75, -0.5, -0.25, -0.75, 0.75, 0.5, -0.5, 0.5, -1.0, 0.0, -0.25, -0.5, 0.25, -0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.25, 0.0, 1.0, -0.75, -1.0, 0.0, 0.25, -0.25, 1.0, 0.25, 0.25, 0.25, -0.25, -0.75, 0.0, 0.0, -0.25, -0.75, 0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, -0.25, 0.25, 1.0, 0.75, -0.25, -1.0, -0.25, -1.0, 0.0, -0.5, -0.75, -1.0, -1.0, 0.5, -1.0, 1.0, -0.75, -0.75, -1.0, -0.25, 1.0, -1.0, 0.5, -0.75, -0.5, -0.75, -1.0, -0.25, -0.75, 0.25, -0.25, -1.0, -1.0, -0.5, 0.0, -0.75, -0.5, 0.75, 0.5, -0.75, -1.0, 0.0, -0.75, -0.5, -0.75, 0.5, -1.0, 1.0, 0.75, 0.5, 0.25, 1.0, -0.75, 0.0, 1.0, -1.0, 0.25, -0.5, 0.0, 0.5, 1.0, 0.5, -0.75, -1.0, -1.0, 0.75, 0.25, -0.75, 0.25, -0.5, -0.75, ]);
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.pushErrorScope("out-of-memory");
    
    
    command_encoder400.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    command_encoder400.insertDebugMarker("mymarker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture400.destroy();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    query301.destroy()
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query300.destroy()
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query400.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    query301.destroy()
    
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
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.setPipeline(render_pipeline400);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    buffer300.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_bundle_encoder400.popDebugGroup();
    query300.destroy()
    buffer400.destroy()
    const array6 = new Float32Array([-1.0, 0.0, 0.0, -0.75, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, 1.0, -0.25, 0.5, -0.75, -0.25, 0.0, 0.75, -0.75, 0.0, -0.75, -0.25, -1.0, 0.5, -0.75, -0.75, -0.5, -0.5, -0.5, 0.0, 0.75, -1.0, 0.75, 0.5, 0.5, 1.0, 1.0, 1.0, -0.5, -0.25, 0.5, -0.75, 1.0, 0.0, 0.25, 0.75, 1.0, 0.25, -1.0, -1.0, 0.75, -0.75, -1.0, 1.0, -0.25, 0.75, 0.5, -0.25, -0.75, 0.25, -0.5, -0.5, -0.25, -1.0, -0.25, -0.5, 0.0, -0.25, 0.5, -0.75, -0.25, -0.25, 0.25, -0.25, -0.75, -0.5, -0.25, 0.0, 0.75, 0.25, 0.5, -0.25, 0.5, -1.0, 0.0, -0.75, -0.75, -0.25, 1.0, -0.25, 0.75, 0.75, -0.5, 0.75, 0.5, 0.25, -0.25, -0.75, 0.75, 0.25, 0.0, ]);
    
    render_bundle_encoder401.insertDebugMarker("marker");
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    texture300.destroy();
    buffer301.destroy()
    
    
    render_bundle_encoder300.popDebugGroup();
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
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder4010.setStencilReference(1);
    query301.destroy()
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder3000.setPipeline(render_pipeline304);
    device40.pushErrorScope("out-of-memory");
    
    render_pass_encoder4010.setStencilReference(1);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
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
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_pass_encoder4010.setStencilReference(1);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    
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
    render_pass_encoder4010.setStencilReference(1);
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder301.setPipeline(render_pipeline302);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_pass_encoder4010.insertDebugMarker("marker");
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device50.destroy();
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
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

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query300.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    query100.destroy()
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    
    compute_pass_encoder3010.popDebugGroup()
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
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query301.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    
    query301.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    compute_pass_encoder1000.popDebugGroup()
    
    render_bundle_encoder402.setPipeline(render_pipeline403);
    render_pass_encoder3000.setStencilReference(1);
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder3020.setPipeline(render_pipeline305);
    render_pass_encoder4040.setPipeline(render_pipeline403);
    render_pass_encoder4010.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    buffer303.destroy()
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
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
    query100.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer402.destroy()
    const command_buffer406 = command_encoder406.finish();
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    query300.destroy()
    render_pass_encoder4050.setPipeline(render_pipeline401);
    
    const array7 = new Float32Array([-0.75, -0.5, -0.75, -1.0, -0.75, 0.0, 0.25, 1.0, 0.25, 0.25, -0.5, 0.75, 0.75, 1.0, -0.25, 0.5, -0.75, 0.0, 0.0, 0.0, -0.25, -0.75, -0.25, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, 1.0, -1.0, 0.0, 0.75, -0.5, -0.25, -1.0, -0.25, -0.75, 0.25, -0.75, 1.0, 0.5, -0.25, 0.5, 0.25, 0.75, -0.5, -1.0, 0.25, -0.25, -0.5, 0.5, -0.25, 0.0, 1.0, -0.25, -0.75, -1.0, -1.0, 0.0, 0.5, -0.75, 0.25, 0.5, 1.0, -1.0, 0.0, 0.75, 1.0, 0.5, 1.0, 0.0, -0.25, -1.0, 0.5, 0.0, -0.5, -1.0, 0.75, 0.5, -0.75, 0.75, -0.5, -1.0, -0.75, -1.0, -1.0, 1.0, 1.0, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, 0.5, 0.25, 0.0, 0.75, 0.75, ]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    
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
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    render_pass_encoder4030.setPipeline(render_pipeline402);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4030.setStencilReference(1);
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4030.setStencilReference(1);
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
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
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder4030.setStencilReference(1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder4030.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    render_pass_encoder4050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
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
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    
    
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4050.setBindGroup(0, bind_group402);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
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
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_pass_encoder4050.insertDebugMarker("marker");
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder4050.setStencilReference(1);
    
    const array8 = new Float32Array([0.75, -0.25, 0.0, -0.25, 1.0, 0.75, -0.75, -0.25, 0.0, 0.0, -0.5, -0.5, 0.25, 1.0, 1.0, 0.5, 0.25, 0.75, -0.75, -1.0, 1.0, -0.25, 0.75, -1.0, 1.0, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 0.5, -0.25, 0.5, 1.0, 0.75, 0.0, 0.0, -0.5, -0.5, -1.0, -1.0, -0.5, 0.5, 0.25, -0.75, -0.25, 0.0, 0.75, -0.75, 0.25, 0.25, 0.25, -1.0, -0.75, 0.75, -1.0, -1.0, 0.5, 0.0, 1.0, 1.0, 0.75, -0.75, 0.0, -0.25, 1.0, 1.0, 0.25, -1.0, -1.0, -0.25, 0.25, 0.5, -1.0, -0.5, 0.5, 1.0, -0.5, -0.25, -0.5, 0.0, -0.5, -0.75, -0.25, -0.75, -1.0, 0.0, -1.0, -0.75, 0.75, 0.0, 0.0, 0.75, 0.25, 0.0, -0.5, -1.0, 0.25, 0.0, ]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    render_pass_encoder3000.popDebugGroup();
    render_bundle_encoder401.insertDebugMarker("marker");
    query100.destroy()
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query300.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    query301.destroy()
    buffer302.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder4050.setVertexBuffer(0, buffer400);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4040.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4050.insertDebugMarker("marker");
    
    
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder4070 = command_encoder407.beginRenderPass({
        label: "render_pass_encoder4070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline403.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder101.setPipeline(render_pipeline101);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    render_pass_encoder4070.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_pass_encoder4030.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder4040.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
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
    render_bundle_encoder401.popDebugGroup();
    device40.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    query400.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder4070.setPipeline(render_pipeline400);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder4010.popDebugGroup();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    const command_buffer303 = command_encoder303.finish();
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4070.setBindGroup(0, bind_group404);
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder4040.insertDebugMarker("marker");
    
    
    buffer305.destroy()
    render_pass_encoder4040.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    query300.destroy()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4030.popDebugGroup();
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    device40.queue.writeBuffer(buffer4011, 0, array5, 0, array5.length);
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_bundle_encoder300.setVertexBuffer(0, buffer306);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device40.queue.writeBuffer(buffer4011, 0, array8, 0, array8.length);
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder101.insertDebugMarker("marker");
    query301.destroy()
    query302.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline104);
    render_pass_encoder4070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer405.destroy()
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.insertDebugMarker("marker");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query301.destroy()
    render_pass_encoder4050.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query101
    });
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group405);
    device40.queue.writeBuffer(buffer4011, 0, array1, 0, array1.length);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device40.pushErrorScope("internal");
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder4050.draw(3);
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder4070.setStencilReference(1);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer4012.destroy()
    device40.queue.writeBuffer(buffer4011, 0, array0, 0, array0.length);
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4050.end();
    render_pass_encoder4070.setVertexBuffer(0, buffer400);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    render_pass_encoder4010.draw(3);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder3000.setVertexBuffer(0, buffer306);
    render_pass_encoder4010.end();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group406);
    render_pass_encoder4040.setVertexBuffer(0, buffer400);
    const command_buffer405 = command_encoder405.finish();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder4070.draw(3);
    compute_pass_encoder3010.end();
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group408);
    device40.queue.submit([command_buffer405, command_buffer406, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4021, 0);
    render_pass_encoder4070.end();
    const command_buffer407 = command_encoder407.finish();
    render_pass_encoder4030.setVertexBuffer(0, buffer400);
    render_pass_encoder4040.draw(3);
    render_pass_encoder4030.drawIndirect(buffer4021, 0);
    render_pass_encoder4030.end();
    compute_pass_encoder4020.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.end();
    render_pass_encoder4040.end();
    const command_buffer403 = command_encoder403.finish();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer401 = command_encoder401.finish();
    const command_buffer404 = command_encoder404.finish();
    device40.queue.submit([command_buffer404, command_buffer407, ]);
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder3020.setVertexBuffer(0, buffer306);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.end();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3020.end();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer302 = command_encoder302.finish();
}