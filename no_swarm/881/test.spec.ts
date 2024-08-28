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
    const array0 = new Float32Array([0.5, 1.0, 0.25, -0.75, -0.25, -0.25, -1.0, -0.25, -0.75, 0.25, -0.75, 0.25, 0.0, -0.25, -0.25, 0.75, 0.25, 0.25, -1.0, -0.75, 0.75, 1.0, -0.75, 0.25, 0.75, -0.75, -0.25, -0.75, 1.0, -1.0, -0.75, -1.0, 0.25, -0.75, 1.0, 0.25, -0.5, 0.25, 0.5, -0.75, 0.75, 1.0, -0.75, -0.75, -0.5, 0.25, -0.25, -0.75, 0.75, -1.0, 0.5, 0.5, 0.5, 0.0, -0.25, -0.5, -1.0, 0.75, -1.0, 0.0, -0.75, 0.5, -1.0, 0.0, 0.0, 1.0, 0.75, 1.0, 0.25, 0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.25, -1.0, -0.75, -0.25, 1.0, 0.0, 0.25, 0.75, -1.0, -0.25, 0.5, 1.0, 0.75, 1.0, 1.0, 0.0, -1.0, -0.25, 0.75, 1.0, 0.75, 1.0, -0.75, 0.75, 0.5, ]);
    const array1 = new Float32Array([-0.5, -1.0, -0.5, -0.75, -0.25, 1.0, 0.5, 0.0, 1.0, 0.25, 0.0, -0.75, -0.75, -0.75, -0.75, 1.0, 0.5, -0.5, 0.0, -0.25, -0.5, -0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -0.5, -0.25, 0.5, 0.25, -0.25, -1.0, 0.25, 0.75, 0.5, 0.75, -0.25, -0.75, 0.25, -0.75, 1.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.0, -0.25, 0.0, 0.25, -0.75, -0.5, -0.75, 0.75, -0.5, 0.5, -0.25, 0.25, 0.0, -1.0, -1.0, -0.75, 0.25, -0.75, 0.5, 1.0, 0.25, 0.5, -0.25, 0.75, 0.0, 0.75, 0.25, -0.75, 0.0, -0.75, -0.75, 0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, 0.75, 1.0, 0.0, 1.0, 0.75, -0.5, -0.75, 0.25, 1.0, 0.25, -0.25, -0.25, -0.5, 0.0, 0.75, ]);
    
    
    
    
    
    
    const array2 = new Float32Array([0.25, 1.0, -1.0, -0.75, 0.25, 1.0, -0.75, 0.0, 0.5, 0.25, -0.5, -0.5, -0.5, -0.25, -0.5, -0.75, -0.75, -0.5, 0.25, -0.75, 0.5, 1.0, -1.0, -1.0, 1.0, -0.5, 1.0, 0.75, 1.0, 0.5, 1.0, -0.5, -0.5, -0.75, 0.0, 0.25, 0.5, 0.75, -0.75, 0.25, -0.25, 1.0, -1.0, 0.25, 1.0, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 0.75, -0.5, 0.25, -0.75, -1.0, -0.25, 0.25, 0.0, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 0.5, 0.5, 0.0, 0.5, -0.5, -1.0, 0.5, 0.5, -1.0, 0.25, 0.0, 0.5, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, 1.0, -0.75, 0.0, 0.75, 1.0, 0.75, 0.25, 0.0, ]);
    
    const array3 = new Float32Array([-0.5, -0.5, -0.75, 0.0, -0.75, 1.0, -0.25, 0.75, 0.25, -0.75, -1.0, 1.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.75, 1.0, -0.5, 0.75, -1.0, -1.0, 0.25, -0.75, -0.5, -0.5, 0.75, -0.25, -1.0, -0.5, 0.0, -0.75, 0.25, 0.5, -0.75, 0.5, -1.0, -1.0, -0.5, -1.0, -0.25, -1.0, -0.25, -0.25, -1.0, -0.5, -1.0, -0.5, 0.5, 0.5, 0.75, 0.25, -0.75, -0.75, 0.75, -0.25, -1.0, 0.75, 0.5, 1.0, -0.25, -0.5, 0.75, -1.0, -0.5, 0.25, 0.0, 0.0, 0.75, 0.0, -0.75, 0.25, 0.5, 1.0, 0.75, 0.0, 1.0, 0.75, 0.75, 0.75, 1.0, 0.0, -1.0, -1.0, -0.25, 1.0, 0.75, 1.0, -1.0, 0.75, -0.5, -0.25, -1.0, 1.0, -0.25, -1.0, -0.25, 0.75, -0.5, ]);
    const array4 = new Float32Array([0.0, 0.25, -0.75, 0.75, 1.0, 0.25, 1.0, 0.75, 0.5, -0.75, -0.25, 0.25, 0.25, 1.0, 0.75, -0.5, 0.75, -1.0, 0.75, 0.5, -1.0, -1.0, 1.0, 1.0, -0.5, -0.5, 0.25, 0.75, -0.5, 0.5, 1.0, -0.5, -0.25, -1.0, 0.5, 0.5, -0.5, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, -0.75, 1.0, -0.75, -0.75, -0.25, 0.0, 1.0, -1.0, -1.0, 0.0, -0.75, -0.25, -0.25, 0.75, 0.0, 0.5, 0.5, 0.0, 0.25, -0.25, -0.25, 0.75, 0.0, 0.5, 0.5, 0.5, -1.0, 0.25, 0.25, -1.0, 0.5, 0.25, 1.0, -0.75, -0.5, -0.75, 0.25, 0.75, -0.5, -1.0, -0.5, -0.75, -0.5, 1.0, -0.75, 0.25, 0.5, 1.0, 0.75, 0.75, 0.0, 0.0, 0.5, -0.75, 0.5, 0.25, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("out-of-memory");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query101.destroy()
    
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    buffer100.destroy()
    texture100.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array5 = new Float32Array([0.5, -0.25, 1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 0.5, 0.5, -0.75, 0.75, 0.0, 0.0, -0.75, 0.25, -0.75, -0.5, -0.5, 0.75, -0.5, -0.5, -0.75, 0.0, 1.0, 0.25, -0.5, -0.25, -0.5, -0.25, -0.5, 1.0, -0.75, 0.75, 0.0, -0.25, 0.75, 0.75, 0.75, 0.5, 0.0, -0.25, 1.0, -0.25, 0.0, -0.75, -1.0, -0.75, -0.75, -1.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.75, -0.75, -0.5, 0.25, -0.75, 0.25, -0.75, -0.75, -0.75, -1.0, 0.0, -0.5, -1.0, -1.0, -0.75, 0.25, -0.75, -0.75, 0.75, 0.0, 0.0, -0.25, 0.25, -0.75, 0.25, -0.25, 0.75, -1.0, -0.5, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, 0.25, 0.75, 0.5, -0.25, 0.5, 0.5, -0.25, 0.25, ]);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-0.5, 0.5, 1.0, 0.25, 1.0, 1.0, 0.0, 0.75, 0.5, 0.5, -1.0, -0.75, 0.75, 0.75, 0.25, 1.0, 0.5, 0.75, 0.75, 1.0, 0.5, 1.0, 0.25, 0.25, 0.0, 0.25, 0.75, -0.75, 0.75, 0.0, 0.5, -0.5, -1.0, -1.0, 1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.75, -0.25, -0.5, -0.75, -0.5, 0.25, -0.25, 1.0, -0.5, 0.25, -0.75, 0.0, 1.0, -0.5, -1.0, -1.0, -0.25, -0.5, -0.25, 0.5, -0.5, 0.0, 0.5, -0.25, -0.5, 0.25, -0.25, -0.5, 1.0, -0.75, 1.0, -0.25, -0.75, 0.75, -0.5, -0.5, 1.0, 1.0, 0.75, 0.0, -0.75, -0.5, -1.0, -0.5, -1.0, -0.25, -1.0, -0.75, -0.25, -0.5, -0.5, -1.0, -0.25, -0.25, 0.0, 0.0, 0.25, 0.75, 0.25, 0.5, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    buffer101.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device30.pushErrorScope("internal");
    render_bundle_encoder200.insertDebugMarker("marker");
    query100.destroy()
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture300.destroy();
    
    
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer102.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
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
        layout: render_pipeline300.getBindGroupLayout(0),
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
    command_encoder302.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device30.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture200.destroy();
    
    
    
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    query300.destroy()
    
    render_bundle_encoder301.popDebugGroup();
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([0.5, 1.0, -0.5, 1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.25, 1.0, -0.5, -1.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.25, 0.75, 0.0, 0.5, -0.75, 0.5, -1.0, 1.0, 0.0, -1.0, 0.75, 1.0, -1.0, -1.0, -0.5, -1.0, 0.5, 1.0, 0.25, 0.75, 1.0, -0.75, 0.75, -0.75, 0.5, 0.75, -0.75, -0.75, 0.25, -0.25, 0.5, 0.25, 0.5, 0.25, 1.0, 0.75, 0.5, -0.75, 0.0, 0.75, -0.5, 0.5, 0.5, 0.0, 0.0, -0.75, 0.75, -0.25, 0.75, 0.25, 0.5, -0.75, 0.25, 0.0, -0.25, -0.5, -1.0, 0.0, 0.75, -1.0, 0.25, 0.75, 0.5, 0.75, 0.75, 0.75, -0.75, 0.25, 0.5, 1.0, -0.25, 0.25, 0.25, -1.0, -0.25, 0.0, -1.0, -0.75, -0.5, 0.0, -1.0, -1.0, ]);
    compute_pass_encoder3020.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_buffer303 = command_encoder303.finish();
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    
    buffer201.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder3010.popDebugGroup()
    buffer301.destroy()
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const array8 = new Float32Array([-0.75, 1.0, 0.25, 0.25, -1.0, 1.0, -1.0, 0.0, 1.0, -0.5, 1.0, -0.75, -0.5, 0.5, -1.0, 0.5, -0.5, 0.0, -0.75, -1.0, 1.0, -1.0, 0.75, 0.5, -1.0, 0.0, -1.0, 0.0, -0.25, 1.0, 0.5, 0.5, 0.25, -0.75, -0.25, 0.25, -0.5, -0.75, -0.25, 0.75, 0.75, -0.5, 0.0, 0.25, -0.25, -1.0, -0.75, -0.25, 0.25, 0.75, 0.5, 0.5, 0.5, -0.25, -0.75, 1.0, -0.25, -0.25, 0.0, -1.0, -1.0, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, 0.0, 0.0, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, 0.0, 1.0, 0.25, 0.5, -0.25, -0.25, 1.0, 0.75, -0.5, 0.25, 0.25, 0.5, -0.5, 0.75, 0.5, 0.5, -1.0, 0.75, -0.5, 0.0, ]);
    render_bundle_encoder200.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    
    texture201.destroy();
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("internal");
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const array9 = new Float32Array([-0.5, -1.0, -0.5, -0.25, 1.0, 0.75, -1.0, -0.5, 0.5, -0.5, 0.75, 1.0, -0.25, -0.25, -0.25, 0.75, -0.25, -1.0, -0.5, 0.75, -0.5, 0.0, -0.25, 0.0, -0.25, 0.5, 0.0, 0.75, 0.0, 0.75, 0.0, 0.25, 0.5, 1.0, 0.5, -0.25, 0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 1.0, -1.0, 0.5, 1.0, -0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 0.0, -0.5, -0.5, -0.5, -0.5, -0.25, -1.0, 0.0, 0.75, -1.0, 0.75, 0.75, 1.0, -1.0, -0.75, -0.5, -0.5, 0.5, 0.75, -0.25, 0.75, 0.75, 0.75, -0.5, -1.0, 0.0, -1.0, 0.75, 0.25, 0.0, 0.25, 0.5, 0.75, -0.5, -0.25, 0.25, 1.0, 0.5, -1.0, -0.75, 1.0, 1.0, 1.0, 0.5, ]);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    query302.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    render_bundle_encoder300.popDebugGroup();
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array10 = new Float32Array([0.0, -1.0, 1.0, 0.75, 0.0, 0.25, -1.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.0, -0.5, 1.0, 0.0, -0.75, -0.25, -0.75, 0.75, -0.5, 1.0, 0.25, 0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.5, -0.5, 0.5, 0.25, -0.25, -0.75, -0.5, 0.25, 0.0, 0.0, 0.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, -0.25, -0.25, -0.25, -0.5, 1.0, 0.5, 0.5, -0.5, 1.0, 0.75, -0.5, 0.5, -0.5, 0.0, 0.5, 1.0, 0.75, -0.75, -0.25, -0.25, 0.75, 1.0, 1.0, -1.0, -0.75, 1.0, -0.75, -0.25, -1.0, -1.0, 1.0, 0.0, 0.0, 0.0, -1.0, -0.5, 1.0, -0.25, 0.5, 0.25, 0.75, -1.0, 0.75, 0.5, 0.0, 0.25, -1.0, 0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.0, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    buffer300.destroy()
    buffer303.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder201.popDebugGroup();
    query302.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    buffer202.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.popDebugGroup()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
            module: shader_module301,
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
            module: shader_module301,
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
    texture301.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    query301.destroy()
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    render_pass_encoder2000.setPipeline(render_pipeline201);
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    texture302.destroy();
    
    
    
    compute_pass_encoder3000.popDebugGroup()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.popDebugGroup();
    const array11 = new Float32Array([0.25, 1.0, -0.25, -0.75, -0.25, -0.25, -1.0, 0.5, 0.25, -0.5, 0.5, 0.25, 0.75, 0.25, 0.0, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 1.0, 0.5, -0.5, -1.0, -0.5, 0.5, 0.0, 1.0, -0.25, 0.75, -0.5, 0.75, 0.0, -0.25, -0.5, 0.5, -0.5, 0.25, 0.75, 0.0, 0.5, -0.5, -0.25, 0.25, 0.5, 0.0, 0.0, 0.5, 1.0, 0.25, -0.75, 1.0, 1.0, 0.25, -0.25, -0.25, -0.75, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, -0.75, -0.75, -0.75, 0.5, -0.25, 0.25, -1.0, 1.0, 0.5, 0.25, -0.5, 0.0, 0.75, 0.25, 0.25, -0.75, -0.5, 0.25, -0.5, -0.75, 0.0, -0.75, 0.0, 0.5, 1.0, 1.0, -0.75, 0.75, 0.75, 1.0, 0.5, 0.25, -1.0, -0.25, -0.5, 0.25, ]);
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const array12 = new Float32Array([-0.25, 0.5, -0.25, 0.75, -0.5, 0.75, 1.0, 0.5, 0.25, 0.75, 0.0, -0.75, 0.5, 0.25, 0.75, -0.25, 0.0, -1.0, 0.25, 0.5, 0.0, 0.75, -0.75, 0.75, 0.25, 0.5, -1.0, 0.5, -1.0, -0.5, 0.5, 0.75, -1.0, 0.5, -1.0, 0.25, 0.75, 0.0, 1.0, -0.5, 1.0, 0.75, 0.75, -0.5, -0.5, -0.25, -1.0, 0.0, 0.25, 0.0, 1.0, 0.75, 0.25, -0.25, -0.5, 0.0, -0.75, 0.5, -1.0, 0.75, 0.75, 0.5, -0.75, 0.0, -0.75, -0.5, 0.5, 0.75, 0.0, 1.0, 0.5, -0.5, 0.25, -1.0, 0.25, -0.5, 0.0, -0.25, 1.0, 0.0, -0.5, 0.25, 0.75, 0.25, 0.0, 0.75, 0.5, 1.0, -1.0, 0.25, 0.0, -0.75, -0.25, -0.25, -0.25, -0.25, 0.5, -0.25, 1.0, 0.75, ]);
    device40.destroy();
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3020.insertDebugMarker("marker")
    buffer305.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query302.destroy()
    compute_pass_encoder3040.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    render_pass_encoder2000.insertDebugMarker("marker");
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
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder305.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device30.queue.submit([command_buffer303, ]);
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    
    
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder301.popDebugGroup();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer203.destroy()
    buffer304.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.popDebugGroup();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
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
        layout: render_pipeline201.getBindGroupLayout(0),
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
    
    buffer208.destroy()
    
    
    
    device30.queue.writeTexture({ texture: texture303 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer307.destroy()
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture303 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile(__dirname + '/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    query303.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module3012,
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
            module: shader_module3012,
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
    
    buffer204.destroy()
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query300.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    texture303.destroy();
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer206.destroy()
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
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
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query302
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    var shader_module3013_code = "";
    try {
        shader_module3013_code = await fs.readFile(__dirname + '/shader_module3013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3013 = await device30.createShaderModule({ label: "shader_module3013", code: shader_module3013_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
        vertex: {
            module: shader_module3012,
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
            module: shader_module3012,
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
    render_pass_encoder3060.setPipeline(render_pipeline3011);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline3017 = device30.createRenderPipeline({
        label: "render_pipeline3017",
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
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder3050.setPipeline(render_pipeline3014);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline3011.getBindGroupLayout(0),
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

    render_pass_encoder3060.setBindGroup(0, bind_group303);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.endOcclusionQuery()
    compute_pass_encoder3010.popDebugGroup()
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline3014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group304);
}