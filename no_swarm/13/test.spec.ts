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
    
    const array0 = new Float32Array([1.0, -1.0, -1.0, -0.5, -0.25, 0.75, 0.5, 1.0, 0.25, -1.0, 0.5, 1.0, -1.0, 0.5, 0.75, -0.75, 0.75, -0.25, -0.25, 1.0, 1.0, 0.0, 0.5, 0.25, -1.0, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, 0.25, -0.25, 0.75, 0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 0.5, 1.0, 1.0, 1.0, 0.75, -0.5, -1.0, 0.0, 0.0, 0.0, 0.25, 0.75, 1.0, 1.0, -1.0, 1.0, -0.25, -0.75, 0.0, 0.75, 0.0, 0.25, 0.5, -1.0, 1.0, -0.25, 0.0, 0.25, 1.0, -0.75, 0.5, -0.25, -1.0, 0.25, -0.5, -0.25, 0.75, 0.5, 0.5, -0.5, 1.0, 0.75, -0.5, -1.0, 1.0, 0.5, 0.5, 0.25, 1.0, -0.5, 0.5, 0.0, 0.25, 0.0, 0.75, 0.0, -0.25, 0.0, -1.0, -0.5, ]);
    
    
    
    const array1 = new Float32Array([0.5, 0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 0.25, 0.25, -0.5, -0.25, 0.0, -0.75, -0.5, -1.0, 0.5, -1.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.25, -0.75, -1.0, 1.0, 1.0, -0.25, 0.0, -0.75, 0.5, 0.75, 0.5, 0.25, 1.0, -0.75, -0.5, -1.0, 0.5, -0.25, -0.75, -0.5, 1.0, 0.5, -1.0, -1.0, 0.25, -1.0, -0.5, 0.0, 0.25, 0.5, 0.25, -0.5, -0.25, 0.75, -0.5, 0.75, -0.5, -0.5, 0.25, -1.0, 0.5, 0.75, 0.0, -0.5, 0.25, 0.0, 0.75, -1.0, -0.25, -0.25, -0.25, -0.25, -0.75, -0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, -1.0, 0.25, -1.0, -1.0, -1.0, -0.5, 0.75, 1.0, 0.5, 0.25, -0.5, 0.0, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const array2 = new Float32Array([0.5, -1.0, 0.25, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, -0.75, 0.75, -0.5, -0.25, -0.75, 0.0, 0.0, 1.0, 0.5, -0.5, 0.0, 1.0, 0.5, -0.75, 0.25, 0.25, 0.75, -1.0, 0.25, 1.0, -0.5, -0.25, -0.25, -0.5, 0.75, -0.5, -0.25, -0.25, 1.0, -0.5, 0.25, -1.0, 1.0, -0.25, -0.25, 0.25, 0.5, -1.0, -0.25, 0.25, -0.25, -0.5, 0.25, -1.0, -0.25, -0.75, -0.25, 0.0, -0.25, 0.25, -0.75, 0.25, -1.0, 0.0, 0.0, 0.0, 0.25, 0.5, -0.5, 0.5, -0.25, 1.0, 1.0, 0.25, -0.25, -0.5, -0.75, -0.75, 0.5, 0.25, 0.0, 0.25, 0.75, 0.5, 1.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.5, -1.0, -0.75, 0.25, 0.75, -0.75, 0.75, 0.75, 1.0, -0.75, -0.75, ]);
    device00.destroy();
    const array3 = new Float32Array([0.5, 1.0, 0.75, -1.0, 0.0, 0.25, -0.25, 0.5, -0.75, -1.0, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, -0.25, -0.25, -0.25, -0.75, 1.0, -1.0, 0.75, -0.75, -0.25, 0.25, 0.25, 0.75, -0.5, -0.75, -0.5, 0.5, -0.25, -1.0, 0.5, 0.75, 1.0, -0.25, 0.0, 0.75, 0.75, 0.0, 1.0, -0.25, 0.25, -1.0, -0.25, 1.0, 0.0, 0.5, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.5, 0.0, -0.5, 1.0, 1.0, -1.0, -1.0, -0.25, -1.0, 0.0, 0.5, 0.25, -0.5, -0.5, -1.0, 0.0, -0.5, -0.25, -0.5, -1.0, 0.25, 0.25, -0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 0.75, 0.0, 0.25, 0.5, -0.5, 0.25, 0.75, -0.75, -0.75, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder100.popDebugGroup()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array4 = new Float32Array([0.25, -1.0, 1.0, 0.25, -0.25, -1.0, 0.0, -0.25, 1.0, 1.0, 1.0, -0.25, -0.75, -0.5, -0.5, -0.75, -1.0, -0.75, -0.5, 0.0, -0.5, -0.75, -0.25, 0.0, -1.0, -0.25, -0.25, 0.75, -1.0, -1.0, -0.5, 1.0, 0.75, -0.75, 0.75, -0.75, -1.0, 1.0, -1.0, 0.75, 0.5, -0.5, -0.75, -0.75, -0.5, 0.5, 0.75, 0.5, -0.75, -1.0, -1.0, 1.0, -0.5, 0.25, 0.0, 1.0, -1.0, 1.0, -0.5, 1.0, 0.25, 0.0, -1.0, -0.25, -0.25, 0.5, 0.0, 0.0, 0.5, -0.5, 0.75, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, 0.5, -1.0, -1.0, -0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 0.5, 0.25, 0.5, 0.5, -1.0, -0.25, -0.75, -0.25, -0.75, 0.5, -0.25, -0.25, 1.0, 1.0, ]);
    
    device10.pushErrorScope("out-of-memory");
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
    command_encoder101.insertDebugMarker("mymarker");
    
    
    
    
    
    
    const command_buffer100 = command_encoder100.finish();
    buffer101.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
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
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer101 = command_encoder101.finish();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
        occlusionQuerySet: query100
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    
    render_pass_encoder1020.setPipeline(render_pipeline102);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device20.pushErrorScope("validation");
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
    
    const array5 = new Float32Array([0.5, 0.25, 1.0, 0.5, 1.0, -1.0, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, 0.25, 0.5, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, -0.75, -1.0, 0.0, -0.25, -0.5, 0.25, -1.0, 1.0, 1.0, -0.75, 0.25, -0.75, 0.0, 1.0, -1.0, -1.0, -0.25, 0.0, 0.25, 0.75, 1.0, -0.25, -0.75, 0.75, -1.0, 0.0, -0.5, 0.5, -0.75, -0.25, -0.75, -0.5, -0.5, -0.25, -0.75, -0.75, -1.0, 0.5, 0.25, 1.0, -0.25, 0.25, -0.25, -0.5, 0.5, -0.25, 0.5, -0.75, -0.5, 0.75, 0.25, 1.0, -0.25, 0.5, -1.0, 0.0, 0.5, -0.25, 0.25, -1.0, -0.25, -0.25, 0.75, -0.75, 0.75, 0.25, 0.25, -0.75, 0.5, -0.75, -0.5, 0.5, 0.5, 1.0, -1.0, 0.75, -1.0, -0.5, 1.0, 0.75, ]);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1030.beginOcclusionQuery(0)
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("internal");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    query102.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1030.endOcclusionQuery()
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    buffer100.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder100.setPipeline(render_pipeline105);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1030.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const array6 = new Float32Array([-0.25, 0.5, 0.25, 0.5, 1.0, 1.0, -0.5, 0.75, 1.0, 0.5, -0.25, 0.0, -1.0, 0.75, 0.75, 1.0, 0.5, -0.5, -0.75, -1.0, -0.5, 0.0, 0.25, 0.75, 0.75, 0.75, 0.25, -0.75, 0.0, 0.25, 1.0, 0.75, 0.5, -0.25, 0.25, -0.75, 0.5, -1.0, 0.5, -0.5, -0.5, 0.75, -1.0, -0.75, 0.0, -0.75, -1.0, -1.0, -0.5, -1.0, -0.25, 0.5, 0.25, 0.75, 0.25, -1.0, -1.0, 0.25, 0.75, -0.25, 1.0, 0.5, 0.25, 0.0, 0.75, -0.5, 0.0, 0.0, -1.0, -0.5, 0.5, 1.0, 1.0, 1.0, -0.5, 0.25, 0.75, -0.75, 0.25, -1.0, 0.5, -0.75, -0.25, 1.0, 0.0, -0.75, 0.0, 1.0, 0.25, 0.0, -0.25, -0.5, 0.25, 0.5, -0.25, 0.0, 0.0, -0.25, -0.25, 0.5, ]);
    buffer104.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1030.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.beginOcclusionQuery(1)
    query103.destroy()
    render_pass_encoder1030.setStencilReference(1);
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setPipeline(render_pipeline108);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer103.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
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
    
    render_bundle_encoder101.setPipeline(render_pipeline108);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const array7 = new Float32Array([-0.75, 1.0, -0.75, 0.5, -0.75, -1.0, 1.0, -0.75, -0.75, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, -0.75, 0.5, -0.25, 0.25, 0.25, -0.75, -1.0, -0.75, 0.75, 0.0, 0.5, 0.5, 0.25, 0.5, 0.25, 0.25, -0.75, -0.5, -0.75, 0.75, 0.25, 0.25, -1.0, 0.5, -1.0, 0.0, -0.75, 0.25, 0.25, 0.75, -0.5, 0.0, -0.25, 0.25, -1.0, -1.0, 0.75, -0.5, -0.5, 0.0, 0.25, 0.75, -0.5, 0.0, 0.5, 1.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.25, 1.0, -0.25, 0.5, 0.25, -0.25, -1.0, 0.25, -0.5, 0.5, -1.0, 1.0, -0.25, -0.5, -0.25, 0.5, 0.75, 0.75, -0.75, 0.25, -1.0, 0.5, 1.0, 0.75, -0.5, -0.5, 0.0, 0.25, 0.0, 0.75, 0.0, -0.25, 1.0, 0.25, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.setStencilReference(1);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const array8 = new Float32Array([-0.25, -0.5, -0.25, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, -0.5, 0.5, -0.25, -1.0, -0.75, 1.0, 0.0, -0.5, -0.5, 0.25, 0.75, 0.5, 0.0, 0.5, -1.0, -0.75, 0.75, -0.25, 1.0, 0.25, -0.25, 0.5, 1.0, 0.25, -0.5, -0.5, -0.25, 0.75, 1.0, 1.0, 0.25, -0.5, -0.25, -0.25, 0.25, 0.75, 0.5, 1.0, 0.75, 0.25, 0.75, 0.5, -1.0, -0.5, -0.75, 0.0, -0.75, -0.25, -1.0, 0.5, -0.5, -0.75, 0.75, -0.75, -0.75, 0.0, 0.0, 0.0, -0.25, -1.0, -1.0, 0.5, 0.25, -0.5, 1.0, 0.75, 0.25, -0.75, 0.0, 0.75, -0.5, 0.25, 0.0, 1.0, 0.5, -0.75, -1.0, -0.25, 1.0, -0.75, -0.75, 0.0, 0.0, -1.0, 0.75, 0.5, -0.5, 0.5, 0.25, -1.0, 1.0, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2010.executeBundles([])
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder2000.executeBundles([])
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder2010.executeBundles([])
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder2010.setStencilReference(1);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder2010.popDebugGroup();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_buffer400 = command_encoder400.finish();
    texture101.destroy();
    const command_buffer203 = command_encoder203.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    render_pass_encoder2000.executeBundles([])
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const array9 = new Float32Array([-0.25, 0.25, 0.0, -1.0, -0.75, -0.75, 0.75, -0.75, 0.75, 0.5, 0.75, 0.5, -0.75, 0.25, 0.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.75, -0.5, -0.75, 0.5, 0.5, -0.75, 0.75, -0.75, -0.5, 0.5, 0.5, 0.25, 0.25, 0.0, -0.5, 0.75, 0.5, 0.5, 0.0, -0.5, -0.75, 0.5, 0.5, -1.0, 1.0, 0.5, 0.75, -0.75, -0.25, 0.25, 0.75, 0.5, 0.0, 0.5, 0.5, 0.25, 1.0, 0.25, -0.5, 0.75, 0.0, -0.75, 0.25, -0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -0.5, 0.0, 0.5, 0.5, -0.5, -0.5, 0.5, -0.75, -0.25, -1.0, -0.75, -0.75, 0.25, 0.25, -0.75, -1.0, 0.75, -0.75, -0.75, 0.0, 0.0, -0.5, 0.0, 0.75, -0.75, 0.25, 0.75, 0.75, -0.75, -0.25, 0.75, ]);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    texture100.destroy();
    render_pass_encoder2000.pushDebugGroup("group_marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer108.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline200);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    render_bundle_encoder100.popDebugGroup();
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    buffer105.destroy()
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    query200.destroy()
    render_pass_encoder2010.setStencilReference(1);
    device20.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder2000.setStencilReference(1);
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    compute_pass_encoder2020.insertDebugMarker("marker")
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_bundle_encoder200.setPipeline(render_pipeline201);
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture103.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3000.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
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
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    query101.destroy()
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    query103.destroy()
    render_pass_encoder1020.endOcclusionQuery()
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setStencilReference(1);
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    render_pass_encoder3000.insertDebugMarker("marker");
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
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    texture200.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    render_pass_encoder3000.popDebugGroup();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    query300.destroy()
    command_encoder204.insertDebugMarker("mymarker");
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer1010.destroy()
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture202.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([-0.5, -1.0, -1.0, -0.5, 0.25, 0.25, -0.25, 1.0, 0.5, -0.25, -0.75, 0.0, 0.0, -1.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.25, -0.5, 0.75, 0.25, 0.0, -0.25, -0.75, -1.0, 1.0, -1.0, 0.25, 0.5, -0.25, 0.5, 1.0, 0.25, -0.75, 1.0, -0.25, 0.25, 1.0, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, -0.25, 1.0, -0.5, -1.0, -0.25, -0.25, -0.5, 0.75, 0.0, 0.0, 0.5, -0.25, 0.75, 0.0, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 1.0, -1.0, -0.75, 0.5, -0.75, 0.0, 0.0, 0.0, 0.0, 0.25, -0.5, -0.25, 1.0, -1.0, -0.5, -0.75, -0.5, 0.25, -0.5, 0.25, -0.5, -0.25, 0.5, -0.25, -0.75, -0.75, -1.0, -1.0, 0.5, 0.75, -0.5, -0.25, -0.75, ]);
    
    render_pass_encoder2040.setPipeline(render_pipeline201);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    query300.destroy()
    render_pass_encoder2000.setStencilReference(1);
    device40.pushErrorScope("out-of-memory");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
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

    render_pass_encoder2040.setBindGroup(0, bind_group200);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setPipeline(render_pipeline204);
    query101.destroy()
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_pipeline1023 = device10.createRenderPipeline({
        label: "render_pipeline1023",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder201.setPipeline(render_pipeline202);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer107.destroy()
    
    texture302.destroy();
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    query101.destroy()
    render_pass_encoder2000.setStencilReference(1);
    query300.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder1030.beginOcclusionQuery(2)
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    buffer201.destroy()
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query103.destroy()
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    texture300.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    compute_pass_encoder5000.popDebugGroup()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
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
        occlusionQuerySet: query100
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    render_pass_encoder2050.setPipeline(render_pipeline200);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder1040.setPipeline(render_pipeline1019);
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
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
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
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline1019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group104);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group203);
}