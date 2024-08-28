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
    const array0 = new Float32Array([0.25, 1.0, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, -0.75, 0.25, 0.75, -0.25, 0.75, 0.25, 0.25, 0.75, 0.25, 0.25, 1.0, 0.25, 1.0, -0.5, 0.0, 0.25, -1.0, 0.25, -0.75, 0.0, -0.5, 0.25, 0.5, -0.25, -1.0, 0.25, -0.25, -0.25, 0.75, -0.25, -0.75, -1.0, 1.0, -0.75, 0.5, 0.5, 0.75, 0.25, 0.0, 0.0, -0.25, -0.25, 1.0, 0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -1.0, 0.5, 0.5, 1.0, 0.5, -1.0, -0.25, 0.75, 0.0, 0.0, 0.0, -1.0, -0.5, -0.5, 0.75, -0.75, 0.25, -0.25, -0.5, -1.0, 0.5, -0.25, -0.25, 1.0, -0.5, 0.25, 1.0, 1.0, -0.25, 0.75, 0.5, -0.5, 1.0, -1.0, ]);
    const array1 = new Float32Array([0.25, 0.25, -0.75, 0.25, -0.75, -0.25, 0.75, 0.75, -0.75, -0.75, 0.25, -0.5, -0.25, 0.0, 0.25, -0.25, 0.0, 0.75, 0.5, 0.5, -0.25, 1.0, -0.25, -1.0, 1.0, -0.5, 1.0, 0.25, -0.25, 0.0, 0.25, 0.25, -0.75, -0.75, 0.0, -0.5, 0.5, 0.0, 0.25, -1.0, 1.0, -0.75, -0.5, -0.5, 0.75, -1.0, 0.5, -0.5, 1.0, -0.75, -0.75, -0.25, 1.0, 0.0, -0.5, -0.5, 0.75, -0.25, 1.0, 0.75, -1.0, 1.0, 0.75, -0.75, 0.75, -0.25, -1.0, -0.5, -0.75, -0.25, -0.5, -0.5, -0.25, -0.75, -0.25, 1.0, 0.75, 0.25, -0.25, -1.0, 1.0, 0.5, 0.5, -1.0, 0.0, -0.75, 0.5, 0.75, -1.0, -1.0, 0.75, -0.75, 0.5, 0.5, -0.25, 0.0, 0.0, 1.0, -0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array2 = new Float32Array([-0.75, 1.0, -0.5, 0.25, -0.5, 0.25, 1.0, 1.0, -0.25, 1.0, -0.25, -0.75, 0.75, -0.5, 0.5, -1.0, -0.5, -1.0, -0.25, 0.0, 1.0, -1.0, 1.0, 0.25, -0.75, 0.75, 0.25, 0.75, -0.25, 1.0, -0.75, -0.25, 0.0, 0.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.25, -0.25, -0.75, 0.25, 0.0, -1.0, 0.0, -0.5, 0.25, 0.25, 0.75, -0.75, -1.0, 0.75, 0.5, -0.75, 0.0, 0.5, 0.75, 0.0, -1.0, 0.75, 0.0, -1.0, -1.0, 1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.25, -0.5, -0.5, -0.75, 0.5, -1.0, 0.5, -0.5, 0.0, -0.75, 0.25, -1.0, 1.0, -0.75, -0.75, 0.75, -0.5, -0.75, 0.25, 0.25, -0.5, -0.5, 0.75, 0.5, -0.25, 0.75, -0.5, -1.0, 0.5, 0.0, ]);
    
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    device20.destroy();
    const array3 = new Float32Array([0.25, -0.5, 0.5, 0.5, -1.0, 0.5, -0.5, -1.0, -0.5, -0.25, 0.25, -0.75, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, 1.0, -1.0, -0.25, 1.0, 0.75, -0.75, 0.0, 0.25, -1.0, 0.0, -0.25, 1.0, 0.25, -1.0, 0.0, -1.0, -0.25, 0.5, 1.0, 0.75, -0.5, 0.25, 0.0, -1.0, 0.5, 0.0, 0.0, 0.25, 0.25, 0.75, 0.75, -0.5, 1.0, 0.0, -1.0, -0.5, 0.5, 0.5, -0.25, 0.0, 0.75, 0.0, 0.5, -0.75, -0.75, 0.0, 0.25, 1.0, 0.25, -1.0, 1.0, -0.25, 0.25, -1.0, -0.5, -0.75, 1.0, 0.5, 0.0, 0.75, 1.0, -0.75, -0.25, -0.75, -0.75, 0.25, -0.5, 0.5, 0.0, -1.0, 1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.75, -0.5, 0.5, -0.75, -0.75, 0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array4 = new Float32Array([-0.75, -1.0, -0.75, -0.75, 0.75, -0.25, 0.75, 0.25, -0.25, -0.75, 0.5, -0.75, 0.5, 1.0, 1.0, -0.5, -0.75, 1.0, 0.5, 0.0, -0.75, 0.5, 0.75, -0.5, -1.0, -0.75, 0.25, -0.25, 0.5, -1.0, 0.75, -0.5, 0.5, 0.5, -1.0, -0.5, -0.5, -0.5, -0.75, 0.75, 0.25, 0.25, 0.25, 0.0, 0.75, -0.5, -0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 0.75, 0.75, -1.0, 0.5, -1.0, -0.5, -0.75, 0.0, -0.75, -0.5, 0.5, -0.5, 0.25, 1.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.25, -1.0, 0.5, 0.75, -1.0, 0.25, 0.25, 0.5, -0.25, 0.5, -0.25, -0.5, -0.25, 0.0, 0.5, 0.5, 1.0, -0.75, 0.0, 1.0, 0.25, 0.0, 1.0, -1.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.destroy();
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.insertDebugMarker("mymarker");
    device10.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_buffer301 = command_encoder301.finish();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    buffer300.destroy()
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    texture300.destroy();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    
    query300.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    
    buffer302.destroy()
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    device30.pushErrorScope("validation");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    
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
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    buffer306.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const array5 = new Float32Array([0.75, 0.0, 0.25, 0.25, 0.75, -0.25, 0.5, -1.0, -1.0, 0.75, -1.0, -1.0, -0.25, 0.0, -0.25, 1.0, 0.5, -0.5, -1.0, 1.0, -0.75, -0.5, 0.25, -0.5, -1.0, 0.0, -0.5, -1.0, -0.5, 1.0, 0.0, -1.0, 0.75, -0.5, -0.25, 0.75, 0.0, -0.5, -0.5, 0.5, -0.5, 0.25, -0.25, -1.0, 0.75, -1.0, -1.0, 0.25, -0.25, -0.5, 0.25, 0.75, 0.25, -0.75, -0.25, 0.0, 0.0, -0.5, 0.75, -1.0, 0.5, -1.0, -0.25, 1.0, 0.0, -0.5, -0.25, -0.75, 0.75, 0.25, 0.0, 0.75, -1.0, 0.75, 1.0, 0.5, -0.25, -0.5, 0.0, 0.0, 0.0, 0.0, 0.5, -0.25, 0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 0.75, 0.25, 0.75, -0.75, -0.25, -0.5, 0.5, 0.25, -0.75, -1.0, ]);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer303.destroy()
    render_bundle_encoder301.popDebugGroup();
    buffer304.destroy()
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    render_bundle_encoder302.setPipeline(render_pipeline301);
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const array6 = new Float32Array([-0.5, 0.25, 0.75, -0.5, 0.25, 0.75, 0.0, -0.75, 0.5, -0.25, -0.5, 0.0, 0.0, 0.75, 0.75, 1.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, -0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 0.0, -1.0, 0.5, 0.0, 1.0, -0.75, 0.5, -0.75, -0.5, 0.25, 0.0, -0.75, -0.5, 0.5, -0.5, 1.0, -0.5, -0.75, -0.25, 0.5, -0.25, -0.25, 0.5, -0.25, 0.75, 0.5, 0.0, 0.75, 0.75, 1.0, 0.5, -0.5, -0.25, -1.0, 0.75, 1.0, -0.75, -0.75, -1.0, -0.5, 0.5, -0.5, -0.5, -0.5, -0.25, -0.75, 0.75, 1.0, 0.5, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, -0.5, 0.5, 1.0, -1.0, 1.0, -0.5, 0.5, 0.75, -0.75, 0.75, 0.5, 0.0, -0.75, 0.75, ]);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer307.destroy()
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    buffer301.destroy()
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3010, 0);
    device30.queue.writeBuffer(buffer3010, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer3010, 0, array0, 0, array0.length);
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group303);
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
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
    device30.queue.writeBuffer(buffer3010, 0, array1, 0, array1.length);
    
    device50.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer3010, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer3010, 0, array5, 0, array5.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer3010, 0, array6, 0, array6.length);
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    
    render_bundle_encoder301.popDebugGroup();
    device30.queue.writeBuffer(buffer3010, 0, array4, 0, array4.length);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile(__dirname + '/shader_module3012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile(__dirname + '/shader_module3013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    buffer3011.destroy()
    device30.queue.writeBuffer(buffer3010, 0, array5, 0, array5.length);
    
    
    
    buffer3012.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3013,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    device30.pushErrorScope("internal");
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
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
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module3014_code = "";
    try {
        shader_module3014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3014 = await device30.createShaderModule({ label: "shader_module3014", code: shader_module3014_code })
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3013,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout303,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    device30.queue.submit([command_buffer301, ]);
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture304.destroy();
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module3011,
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
            module: shader_module3011,
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
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.destroy();
    buffer308.destroy()
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout302,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    device30.queue.writeBuffer(buffer3010, 0, array5, 0, array5.length);
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3012,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout301,
        compute: {
            module: shader_module3012,
            entryPoint: "main"
        }
    });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module3014,
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
            module: shader_module3014,
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
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3000.popDebugGroup()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3013,
            entryPoint: "main"
        }
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout301,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    var shader_module3015_code = "";
    try {
        shader_module3015_code = await fs.readFile(__dirname + '/shader_module3015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3015 = await device30.createShaderModule({ label: "shader_module3015", code: shader_module3015_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query300.destroy()
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3012,
            entryPoint: "main"
        }
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3010, 0, array2, 0, array2.length);
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
    query303.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query305
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    render_pass_encoder3020.setPipeline(render_pipeline3010);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3015,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout300,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3015,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline3010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group304);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    query303.destroy()
    const compute_pipeline3057 = device30.createComputePipeline({
        label: "compute_pipeline3057",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    const compute_pipeline3058 = device30.createComputePipeline({
        label: "compute_pipeline3058",
        layout: pipeline_layout303,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setStencilReference(1);
    const compute_pipeline3059 = device30.createComputePipeline({
        label: "compute_pipeline3059",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setStencilReference(1);
    
    const compute_pipeline3060 = device30.createComputePipeline({
        label: "compute_pipeline3060",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3012,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    
    const compute_pipeline3061 = device30.createComputePipeline({
        label: "compute_pipeline3061",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3062 = device30.createComputePipeline({
        label: "compute_pipeline3062",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    var shader_module3016_code = "";
    try {
        shader_module3016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3016 = await device30.createShaderModule({ label: "shader_module3016", code: shader_module3016_code })
    
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module3011,
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
            module: shader_module3011,
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
    const compute_pipeline3063 = device30.createComputePipeline({
        label: "compute_pipeline3063",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    texture302.destroy();
    
    buffer309.destroy()
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    compute_pass_encoder3000.end();
    const compute_pipeline3064 = device30.createComputePipeline({
        label: "compute_pipeline3064",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array7 = new Float32Array([1.0, 0.0, 0.75, -0.25, 0.25, 1.0, 0.0, -0.75, -0.75, -0.75, 0.0, -0.5, 0.0, 0.25, 0.0, -0.25, 1.0, -0.25, -0.75, -0.25, -0.5, -0.75, 0.75, 0.5, -1.0, -0.5, 0.0, 0.75, 0.5, -0.75, 0.75, 0.5, 1.0, -0.75, 0.0, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, 0.75, 0.0, -0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.75, 0.5, 0.25, -0.25, -0.5, 0.0, 1.0, -0.25, 0.0, -0.5, 0.75, 0.5, 0.0, 0.75, 0.5, -0.25, 0.75, 1.0, -0.25, 0.0, 1.0, 1.0, -0.25, 0.75, -0.25, 0.25, 0.25, -1.0, -0.5, 0.25, -1.0, 0.75, 0.75, 1.0, 0.0, -0.25, 0.5, -0.5, -0.5, 0.0, -0.5, 0.75, -0.75, -1.0, -0.5, -0.75, 0.25, 1.0, -1.0, 0.75, ]);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query304
    });
    query303.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const compute_pipeline3065 = device30.createComputePipeline({
        label: "compute_pipeline3065",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3010, 0, array0, 0, array0.length);
    const compute_pipeline3066 = device30.createComputePipeline({
        label: "compute_pipeline3066",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder3000.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    
    const compute_pipeline3067 = device30.createComputePipeline({
        label: "compute_pipeline3067",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3068 = device30.createComputePipeline({
        label: "compute_pipeline3068",
        layout: pipeline_layout301,
        compute: {
            module: shader_module3015,
            entryPoint: "main"
        }
    });
    const compute_pipeline3069 = device30.createComputePipeline({
        label: "compute_pipeline3069",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    const compute_pipeline3070 = device30.createComputePipeline({
        label: "compute_pipeline3070",
        layout: pipeline_layout302,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setStencilReference(1);
    const compute_pipeline3071 = device30.createComputePipeline({
        label: "compute_pipeline3071",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const compute_pipeline3072 = device30.createComputePipeline({
        label: "compute_pipeline3072",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3073 = device30.createComputePipeline({
        label: "compute_pipeline3073",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3015,
            entryPoint: "main"
        }
    });
    const compute_pipeline3074 = device30.createComputePipeline({
        label: "compute_pipeline3074",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3075 = device30.createComputePipeline({
        label: "compute_pipeline3075",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3076 = device30.createComputePipeline({
        label: "compute_pipeline3076",
        layout: pipeline_layout303,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline3077 = device30.createComputePipeline({
        label: "compute_pipeline3077",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3078 = device30.createComputePipeline({
        label: "compute_pipeline3078",
        layout: pipeline_layout306,
        compute: {
            module: shader_module3015,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer3014.destroy()
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
        vertex: {
            module: shader_module3011,
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
            module: shader_module3011,
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline3079 = device30.createComputePipeline({
        label: "compute_pipeline3079",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3080 = device30.createComputePipeline({
        label: "compute_pipeline3080",
        layout: pipeline_layout303,
        compute: {
            module: shader_module3013,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3081 = device30.createComputePipeline({
        label: "compute_pipeline3081",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3012,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline3082 = device30.createComputePipeline({
        label: "compute_pipeline3082",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    texture400.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer3015.destroy()
    
    
    
    texture401.destroy();
    const compute_pipeline3083 = device30.createComputePipeline({
        label: "compute_pipeline3083",
        layout: pipeline_layout302,
        compute: {
            module: shader_module3015,
            entryPoint: "main"
        }
    });
    const compute_pipeline3084 = device30.createComputePipeline({
        label: "compute_pipeline3084",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setPipeline(render_pipeline300);
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline3085 = device30.createComputePipeline({
        label: "compute_pipeline3085",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const render_pipeline3017 = device30.createRenderPipeline({
        label: "render_pipeline3017",
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
    query302.destroy()
    
    const compute_pipeline3086 = device30.createComputePipeline({
        label: "compute_pipeline3086",
        layout: pipeline_layout306,
        compute: {
            module: shader_module3013,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.popDebugGroup();
    device30.queue.writeBuffer(buffer3010, 0, array7, 0, array7.length);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer3010, 0, array6, 0, array6.length);
    query301.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.popDebugGroup()
    const command_buffer800 = command_encoder800.finish();
    const command_buffer401 = command_encoder401.finish();
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device40.queue.submit([command_buffer401, ]);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group305);
    const command_buffer400 = command_encoder400.finish();
    device80.queue.submit([command_buffer800, ]);
}