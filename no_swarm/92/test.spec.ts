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
    
    
    const array0 = new Float32Array([-1.0, 1.0, -0.75, -0.5, 0.25, -0.5, -1.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 0.0, -0.75, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 0.0, -0.25, 0.75, 1.0, -0.25, -0.25, -0.25, 0.75, 0.5, 0.25, 0.25, 0.0, -0.75, 0.5, -0.75, -0.25, 0.75, -0.25, 0.25, 0.75, -1.0, -0.5, 0.5, -1.0, -0.75, 0.75, -0.75, 0.25, -0.5, -1.0, 0.5, -0.25, 0.25, -0.5, -0.25, -0.75, 0.75, 0.25, 0.75, -1.0, 1.0, -0.25, -0.75, 0.0, 0.75, -0.75, 0.0, 0.5, 0.75, 0.25, 0.5, -1.0, 0.5, 0.75, 0.0, 0.0, -0.25, 0.0, 0.0, 0.5, -0.75, -0.75, 0.75, -0.75, -1.0, 0.25, 1.0, 0.0, 0.5, ]);
    const array1 = new Float32Array([0.75, 0.75, -0.5, -1.0, -0.75, -0.25, -0.75, -0.5, -0.25, 0.5, 0.0, 0.25, -0.75, 0.75, 0.5, 1.0, 0.25, -0.25, 1.0, 0.5, 0.5, 0.25, 1.0, -0.25, 0.25, 1.0, -1.0, 0.5, 0.5, 0.75, -0.25, 0.0, 0.5, 0.75, 0.75, 0.0, 0.0, -1.0, -1.0, 1.0, -0.75, 0.0, 0.25, -1.0, -0.25, -1.0, 0.5, 1.0, 0.0, -0.25, 0.0, -0.75, 0.25, 0.0, -0.75, 1.0, -0.25, 0.0, 1.0, 0.75, -0.75, 0.0, 0.25, -0.75, -0.75, 0.0, -0.25, -0.5, 0.25, 0.25, 0.25, 0.0, 0.5, -0.75, 0.25, 0.0, -1.0, 0.0, 0.5, -0.25, -1.0, 0.25, -0.25, -0.25, -0.5, 0.75, 1.0, -0.5, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, -0.5, 1.0, -0.75, 0.75, -0.25, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array2 = new Float32Array([0.0, -0.25, 0.75, 0.0, 1.0, -0.5, 1.0, 1.0, -0.5, -0.25, 0.75, 0.75, -0.25, 1.0, 0.5, -1.0, -0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.75, -0.5, 0.75, -0.5, -0.75, 0.0, 0.0, -1.0, 0.25, -0.5, 0.0, 0.5, 0.75, -0.25, -1.0, -0.25, 0.25, -0.25, 0.0, 0.5, -0.75, -0.75, 0.0, -0.5, 0.5, 0.0, -0.5, 0.75, -1.0, -0.75, 0.75, -1.0, -0.75, 0.75, -1.0, 0.0, 0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 0.25, 0.5, 1.0, 0.25, 0.0, -0.25, 0.0, 0.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.25, -0.5, 0.5, -0.75, 0.75, 0.25, 1.0, 0.5, 0.0, 0.0, -0.25, -0.25, -0.5, 0.75, -1.0, 0.0, -1.0, -0.25, 0.0, 1.0, 0.5, 0.75, -0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("internal");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder100.popDebugGroup()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.25, 0.5, -0.75, -0.75, 1.0, 0.0, -0.75, 1.0, 0.5, 0.5, -0.75, -0.25, -0.25, 0.75, 0.0, -0.75, 1.0, -0.5, -0.5, 1.0, 0.0, 0.5, -0.75, 0.5, -0.75, 0.25, -0.75, -0.75, -0.25, 0.0, -1.0, 0.5, 0.25, -0.75, -0.25, -1.0, -1.0, 0.75, 0.25, -0.25, 0.5, 1.0, -0.5, -0.5, 0.25, -0.5, -1.0, 0.0, 0.75, -0.25, -0.75, 0.0, -1.0, -1.0, -0.5, -0.25, -0.25, -0.25, -0.5, -0.75, -0.25, -1.0, -0.5, 0.0, 1.0, 1.0, 0.0, -0.5, 0.5, -0.5, 1.0, 0.0, -0.25, 0.0, 0.0, -1.0, -0.5, -0.25, -1.0, -0.5, -0.25, -0.25, 0.75, -0.75, -0.75, 0.5, 0.75, -0.5, 0.5, 0.5, -0.25, 0.75, 0.5, 0.5, -0.5, -0.75, -0.25, -0.75, 1.0, 0.25, ]);
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    
    command_encoder100.clearBuffer(buffer100);
    device10.pushErrorScope("internal");
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
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_buffer100 = command_encoder100.finish();
    
    
    buffer101.destroy()
    
    const array4 = new Float32Array([0.5, -0.25, 0.25, -1.0, -0.25, 0.0, -0.5, 0.75, -0.5, 0.25, 0.5, -1.0, 0.75, -0.5, 0.75, 0.0, -0.5, 0.25, 0.5, 0.75, 0.0, 0.5, 0.5, -0.25, 0.75, -1.0, 0.25, 0.5, 0.25, 0.0, -0.25, -0.75, 1.0, -0.5, 0.25, -0.25, -0.5, 0.25, 0.75, -0.5, 0.25, 0.25, -0.5, 0.75, -0.25, 0.0, -1.0, -1.0, 1.0, 0.75, -1.0, 0.25, 0.25, -0.75, -0.75, 0.5, 0.25, -0.75, 0.5, 0.0, -1.0, -0.25, -1.0, -0.25, -0.75, 0.25, -1.0, 0.25, -0.5, -0.25, 0.0, -0.25, 0.25, 0.75, -0.5, 0.25, 0.25, 0.0, 0.0, 0.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.75, 0.75, -0.75, -0.5, 0.75, 0.0, 0.25, 0.75, -1.0, 1.0, -0.5, 0.0, 0.25, -0.5, 0.0, ]);
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    command_encoder101.clearBuffer(buffer100);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer102.destroy()
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    buffer100.destroy()
    
    command_encoder101.insertDebugMarker("mymarker");
    query101.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    query101.destroy()
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
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
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    query102.destroy()
    query102.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    query103.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1020.setPipeline(render_pipeline102);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    texture101.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    query100.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer104.destroy()
    
    query101.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query102.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer106.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    buffer107.destroy()
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1012, 0);
    render_bundle_encoder100.setVertexBuffer(0, buffer109);
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query103
    });
    render_bundle_encoder101.popDebugGroup();
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    texture102.destroy();
    query103.destroy()
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer103.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_bundle_encoder102.setPipeline(render_pipeline103);
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    buffer1011.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline106);
    
    render_pass_encoder1020.setStencilReference(1);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture103.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1050.setPipeline(render_pipeline106);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setVertexBuffer(0, buffer109);
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer1013.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.setStencilReference(1);
    buffer1010.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    buffer105.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1017, 0, array1, 0, array1.length);
    
    render_bundle_encoder101.draw(3);
    buffer108.destroy()
    compute_pass_encoder1010.popDebugGroup()
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    
    device10.pushErrorScope("internal");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    query104.destroy()
    
    
    query101.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setVertexBuffer(0, buffer109);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group105);
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
    query100.destroy()
    device10.queue.writeBuffer(buffer1017, 0, array4, 0, array4.length);
    
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    render_bundle_encoder101.finish();
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    buffer1016.destroy()
    
    
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.end();
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query103
    });
    query103.destroy()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setStencilReference(1);
    buffer1020.destroy()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1022, 0, array0, 0, array0.length);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1011.setPipeline(render_pipeline107);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1022.destroy()
    
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
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
    device10.queue.writeBuffer(buffer1017, 0, array3, 0, array3.length);
    render_bundle_encoder100.drawIndirect(buffer1012, 0);
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
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1021.destroy()
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.popDebugGroup();
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    
    render_pass_encoder1050.setVertexBuffer(0, buffer109);
    buffer1015.destroy()
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setStencilReference(1);
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    buffer1012.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1050.draw(3);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query105.destroy()
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
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query104.destroy()
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer1017.destroy()
    
    query101.destroy()
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    render_pass_encoder1040.insertDebugMarker("marker");
    render_bundle_encoder102.setVertexBuffer(0, buffer109);
    buffer1018.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    render_pass_encoder1050.end();
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query104
    });
    
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query103.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1051.setPipeline(render_pipeline1010);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    query101.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1051.pushDebugGroup("group_marker");
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
    
    
    query103.destroy()
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.end();
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1051.popDebugGroup();
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout100,
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
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query103
    });
    buffer1019.destroy()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query105.destroy()
    render_pass_encoder1021.setPipeline(render_pipeline109);
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    buffer109.destroy()
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group107);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    render_pass_encoder1011.insertDebugMarker("marker");
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline1010.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group108);
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer1027.destroy()
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.popDebugGroup();
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    query106.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer1014.destroy()
    
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.75, -0.25, -0.75, -0.5, 0.75, -0.5, -0.5, 0.75, 1.0, 0.75, 0.75, -1.0, -0.25, 0.75, -0.5, -0.75, 0.0, -1.0, -0.25, -0.25, -0.5, 0.5, 0.25, -0.5, -0.5, 0.75, -0.75, 0.0, 0.0, -1.0, 0.75, 0.75, -1.0, -0.5, 0.25, 0.0, 0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 0.5, -0.75, 0.75, 1.0, 0.0, -0.25, 1.0, 0.5, 0.25, -1.0, -0.25, -0.5, 0.0, -1.0, 0.5, -0.25, 0.5, 0.5, -0.75, 0.25, 0.25, -0.5, 0.0, 0.25, -0.75, 0.5, -0.75, 0.0, -0.5, -0.5, 0.25, 0.5, -0.5, -0.5, 1.0, 0.25, -0.75, 0.75, -0.5, 0.0, 0.25, 0.5, -1.0, 1.0, 0.25, 0.5, 0.25, -1.0, 0.0, 1.0, 0.75, -0.5, -0.75, 0.5, 0.25, 0.0, 1.0, 0.25, ]);
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    query100.destroy()
    device10.queue.submit([command_buffer106, ]);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group109);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1010);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group1011);
    render_pass_encoder1051.setVertexBuffer(0, buffer109);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1021.setVertexBuffer(0, buffer109);
    render_pass_encoder1051.end();
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1011.setVertexBuffer(0, buffer109);
    const command_buffer103 = command_encoder103.finish();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer105, ]);
    render_pass_encoder1040.setVertexBuffer(0, buffer109);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, ]);
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
}