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
    
    
    
    const array0 = new Float32Array([0.25, -1.0, -0.5, 0.0, 0.25, 0.25, -0.25, -0.5, 0.5, 0.75, 0.75, 0.0, 1.0, 0.75, 0.0, -1.0, 0.5, 0.0, 0.0, 0.5, 0.0, 0.25, 0.0, -0.25, 0.5, -1.0, 0.75, 0.75, 0.5, 0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.75, 0.5, -0.75, -1.0, -0.25, -0.75, 0.25, -0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.25, 0.5, 0.25, 0.5, 0.5, 1.0, 0.0, -0.25, -0.75, 0.5, -0.25, 0.0, 0.5, -0.75, -0.25, -0.5, -0.5, 0.5, 0.0, 0.75, 1.0, -0.5, 0.5, 1.0, 1.0, -0.75, 0.0, -0.75, -1.0, -0.75, 0.5, -0.5, -0.75, -0.5, 0.25, -0.75, -0.75, 0.25, -0.25, 0.75, -0.25, -0.25, -0.75, -1.0, -0.75, 0.5, 0.5, -0.75, 0.75, ]);
    
    const array1 = new Float32Array([-0.75, 0.5, 0.5, 0.75, -0.25, 0.5, -0.75, 1.0, -0.25, -0.25, -0.75, 0.0, -1.0, -0.25, -0.5, -0.5, -0.75, 0.75, 0.75, 0.25, 1.0, 0.25, 0.25, -0.5, -1.0, 0.75, 0.5, 0.25, 0.75, 0.75, 0.0, 0.0, 0.0, 0.75, -1.0, 0.0, -0.25, -0.5, 0.5, -0.75, 0.0, 0.25, -1.0, 0.75, 0.75, 0.0, -0.25, -0.75, 0.75, -0.5, 0.25, 0.5, 0.25, -0.25, 0.75, 0.75, -0.75, 0.0, 0.25, -0.25, -0.25, -1.0, 0.5, -1.0, 0.0, 0.5, 0.75, -0.75, -0.25, 0.75, 0.5, 0.25, -0.25, -0.75, -0.75, 0.25, -0.25, -0.25, -0.75, -0.25, 0.5, -0.75, 0.75, 0.25, 0.25, -0.25, 0.75, 1.0, 0.0, -0.25, -1.0, 0.75, -1.0, -0.75, -1.0, -0.25, 1.0, -0.5, -0.25, -1.0, ]);
    
    
    
    
    const array2 = new Float32Array([0.75, 0.0, 0.75, 0.0, 1.0, 0.75, -0.5, 1.0, -0.5, -0.25, 0.75, 0.5, 0.0, 0.75, 0.0, -0.5, 0.75, -0.25, -0.25, -0.75, -0.25, -0.5, 0.5, -0.75, 0.25, 0.25, 0.25, -1.0, -0.75, -0.75, 0.25, 0.75, -0.5, -0.5, -0.25, -0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 1.0, -0.25, -0.75, -1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.0, -1.0, 0.25, -0.5, 0.75, -0.25, 1.0, 0.25, 0.5, 0.25, 0.75, -0.5, 0.5, -0.75, 0.75, -0.75, -0.25, -0.75, 0.0, 0.5, -0.25, 0.75, 0.25, 0.75, 1.0, -0.75, 1.0, 0.25, 0.5, 0.5, -0.25, -0.75, -0.75, -0.5, 1.0, 0.75, 0.75, 0.5, -0.25, -1.0, 1.0, -1.0, -0.75, 0.0, 0.0, 0.5, 0.25, 1.0, -0.5, 1.0, ]);
    const array3 = new Float32Array([-0.25, -0.25, -0.5, 0.75, 1.0, 0.5, 0.5, 1.0, 0.75, 0.0, -0.5, 0.0, -1.0, 1.0, 0.75, -0.75, -0.75, 0.0, 0.0, -0.25, 0.25, -0.25, 0.0, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.25, -0.25, -0.25, 0.25, -0.25, 0.0, 0.0, -0.75, 0.0, -0.25, 1.0, -1.0, -1.0, 0.25, 0.5, 1.0, -0.25, 0.0, 1.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.0, 0.0, 0.0, -1.0, 0.0, -0.75, 0.0, 0.75, -0.5, 0.75, 0.5, -0.75, -1.0, -0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.25, 1.0, -0.75, 0.0, -0.5, 0.75, 0.75, 0.75, -0.5, -0.75, 0.0, -1.0, 0.0, 0.0, -0.25, 0.25, 0.0, -0.75, 0.75, -0.5, 1.0, -0.25, -0.25, 0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array4 = new Float32Array([-0.25, 0.25, -0.5, 0.0, 1.0, -0.25, -0.5, -0.5, 0.25, 0.0, 1.0, -1.0, 0.0, -0.5, 0.75, -1.0, -1.0, 0.25, -0.75, 0.5, 0.75, -1.0, 0.0, -0.25, 0.5, -0.5, -0.5, 1.0, 1.0, 0.25, -0.5, -0.75, -1.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.75, 0.75, -0.75, 0.0, -0.5, -1.0, -0.75, -0.75, -1.0, 0.25, 1.0, -1.0, -1.0, 0.5, 0.25, -1.0, -1.0, -0.25, -0.25, 0.25, -0.75, 0.0, 0.25, 1.0, 0.0, 0.5, -1.0, 0.75, 0.25, -1.0, -1.0, 0.0, -0.75, 0.25, 0.25, -1.0, 0.25, -0.75, 0.75, 0.0, 0.5, -0.25, -0.25, -0.25, 0.75, 1.0, 0.25, -0.75, 0.25, 0.75, -0.5, -0.25, -0.75, 0.25, 0.0, -0.75, -0.5, 0.75, 0.0, -1.0, -0.5, -0.5, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    query200.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const array5 = new Float32Array([1.0, -0.25, 0.5, 0.5, 0.0, -1.0, -0.5, 1.0, -0.75, 0.25, 0.75, 1.0, -0.5, -0.75, -0.5, -0.75, -0.75, 0.0, 0.25, -0.25, 0.75, 1.0, 0.25, 0.25, -0.25, 0.75, 0.5, 0.5, -1.0, -0.25, 0.5, -0.75, 0.25, -0.5, 1.0, 0.75, -0.25, 1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 0.5, -0.25, -0.75, -1.0, 0.75, 0.5, -0.25, 0.5, -1.0, 0.75, 0.5, -0.25, -1.0, 0.25, 1.0, 0.0, -0.5, -0.75, 1.0, 0.75, -1.0, 0.5, 0.5, -1.0, 0.75, -0.75, -1.0, 0.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.0, -1.0, -1.0, -1.0, 0.75, -0.5, 0.75, 1.0, 0.0, -0.75, -1.0, -1.0, 1.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.0, -0.75, 0.0, 1.0, -0.5, -1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
        occlusionQuerySet: query201
    });
    
    
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    texture200.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder2000.setStencilReference(1);
    buffer200.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    query203.destroy()
    
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
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query201.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    query201.destroy()
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query200.destroy()
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer100.destroy()
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture201.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    query203.destroy()
    render_pass_encoder2000.popDebugGroup();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    render_pass_encoder2000.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query201.destroy()
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture202.destroy();
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline106);
    
    
    const array6 = new Float32Array([1.0, 0.5, 0.25, -0.75, -0.75, -0.25, 0.5, 0.5, 0.0, 1.0, 1.0, -0.5, 0.0, 0.0, 0.5, 0.75, 0.5, -1.0, 0.75, 0.5, 0.25, 0.5, 0.75, -1.0, -0.5, 0.0, -0.25, -1.0, 0.75, 0.75, 1.0, -0.5, 0.0, 0.5, 0.5, -1.0, -0.5, 0.75, 0.25, -0.25, 1.0, 0.25, -0.5, 1.0, 0.5, -1.0, -0.25, -0.5, -1.0, 0.5, 0.0, -1.0, -0.5, -0.25, -1.0, -0.75, -0.5, 0.75, 1.0, 1.0, 1.0, -1.0, -0.75, 0.75, 0.25, 0.5, 0.75, -0.75, 0.5, 0.25, 0.5, 0.0, -0.5, 0.0, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, 0.75, 0.75, 0.75, 1.0, 0.0, -0.75, 0.5, 0.75, 0.5, 1.0, 0.25, 1.0, -0.25, 0.25, -1.0, 0.5, 0.0, -0.25, -0.75, 0.0, ]);
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query203.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder2000.setStencilReference(1);
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer202.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder2020.setPipeline(render_pipeline202);
    
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    buffer104.destroy()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder2010.setPipeline(render_pipeline205);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    device20.pushErrorScope("out-of-memory");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_buffer102 = command_encoder102.finish();
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query203.destroy()
    
    render_pass_encoder2010.setStencilReference(1);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    query200.destroy()
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.5, 0.75, 0.0, 1.0, 0.0, -0.75, -0.75, 0.25, 1.0, -1.0, 0.5, 1.0, -0.5, -1.0, -0.5, 0.25, 0.5, -0.25, 0.75, 0.25, 0.0, 0.0, -0.75, -1.0, -0.5, 0.75, 0.0, 1.0, 1.0, 0.0, 0.5, 0.0, 0.0, -0.5, -1.0, 1.0, 0.75, 0.5, -1.0, 0.25, 0.25, 0.75, 0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.0, 0.0, 0.5, -0.75, 0.5, -0.25, -0.75, -0.75, -0.25, 0.25, -0.25, -1.0, -0.75, -1.0, -0.75, -1.0, -0.25, 0.5, 0.0, -1.0, -1.0, -0.75, 0.5, -0.75, -0.5, -0.75, -0.75, -0.25, 1.0, -0.75, -0.25, 0.5, 0.0, -0.5, -0.75, -0.5, 1.0, -0.75, 0.25, 0.0, -1.0, -0.75, 0.5, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, 0.25, 0.5, 1.0, ]);
    buffer103.destroy()
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_buffer101 = command_encoder101.finish();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.popDebugGroup();
    texture204.destroy();
    
    
    query200.destroy()
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.setStencilReference(1);
    
    buffer206.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer203.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout103]
    });
    const array8 = new Float32Array([0.5, -0.75, -0.25, -0.25, -0.5, -0.25, -0.75, -0.5, 0.0, 0.75, 0.0, 1.0, 0.0, 0.25, 0.75, -0.25, -0.5, 0.5, -0.75, -1.0, 1.0, -0.25, -0.75, 1.0, 0.0, 0.75, -0.25, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, 1.0, -0.5, -0.75, 0.0, 1.0, 0.5, 0.25, 0.0, -1.0, -1.0, 1.0, -0.25, -0.5, 0.0, 1.0, 0.75, 1.0, 0.0, -1.0, -0.75, -0.75, -0.25, 0.5, -1.0, -0.75, -1.0, 0.75, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, 0.0, 0.25, -0.75, 0.5, -0.5, 0.0, 0.5, -0.5, 0.0, -1.0, -1.0, 0.25, 1.0, -0.25, -0.75, -0.25, 0.25, 1.0, 0.0, -0.5, 0.25, -0.25, 1.0, 0.0, 0.25, 0.75, -0.5, 0.0, 0.5, 1.0, 1.0, -0.5, -0.75, 1.0, ]);
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module102,
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
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    buffer205.destroy()
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture206.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query202.destroy()
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group203);
    query102.destroy()
    render_pass_encoder2010.setStencilReference(1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query101.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1010, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder2020.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder2000.popDebugGroup();
}