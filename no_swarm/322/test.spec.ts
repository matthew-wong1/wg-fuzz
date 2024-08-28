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
    
    const array0 = new Float32Array([0.75, 1.0, 0.5, 0.25, -0.5, 0.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -0.25, 0.5, 0.5, 1.0, 0.5, 0.5, -0.25, -0.25, -0.75, -0.25, 0.0, 1.0, 0.0, 1.0, 0.5, 1.0, 0.25, 0.0, -1.0, -0.5, 0.5, 0.75, 0.25, 1.0, 0.0, 0.25, -0.75, 0.5, 0.5, -0.5, -0.5, 0.25, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, 0.25, 0.0, 0.25, -0.5, 0.75, 0.25, 0.0, 0.25, 1.0, 0.5, -0.5, -0.5, 0.75, 0.5, 0.5, 0.75, 0.75, 0.75, 1.0, -0.5, -1.0, 0.75, -0.5, -0.75, 0.25, 0.0, 1.0, -0.5, 1.0, -0.5, -1.0, -0.75, -1.0, 0.5, -0.5, 0.25, -0.25, -0.25, -0.75, -0.5, -0.75, -0.25, -1.0, -0.25, 1.0, -1.0, -0.5, 0.25, -0.75, -0.75, ]);
    const array1 = new Float32Array([0.25, -0.25, -0.75, 0.75, 0.75, 0.0, -1.0, -0.5, 0.25, -0.5, 0.25, -0.75, -0.25, 0.75, -1.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.5, -0.25, -0.75, 0.25, -1.0, 0.5, 1.0, 0.0, -0.5, 0.25, -1.0, -0.5, -0.25, -0.75, -0.75, -1.0, 0.25, 0.5, 0.0, 1.0, -0.5, 0.0, 0.75, -0.5, -0.25, 0.5, 0.75, -0.25, 1.0, -0.75, -1.0, 0.75, 0.0, 0.25, 1.0, -0.25, 0.0, -0.5, 0.0, 0.25, 0.5, -0.5, 0.5, -0.5, 0.25, -0.25, 1.0, 1.0, -0.5, 0.0, 0.5, -0.25, 0.25, 0.5, 0.25, 0.75, 0.75, 0.25, 0.75, -0.75, 0.75, 1.0, -0.25, -0.75, 0.25, 0.0, 1.0, -0.5, -0.75, 0.5, 1.0, -0.75, -0.5, -0.75, -1.0, 0.75, -0.25, 0.75, 0.75, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([-0.5, 0.0, 0.25, 1.0, 1.0, 0.0, -0.5, 0.25, 0.0, 0.75, 0.0, 0.0, 0.75, 0.0, -0.75, -1.0, -1.0, 0.5, -1.0, -1.0, 0.5, 0.75, -1.0, 0.75, 0.75, 0.0, 1.0, 0.5, -1.0, 1.0, -0.25, -0.25, -1.0, -1.0, 0.25, -0.75, 0.0, -0.5, 0.25, 0.5, -0.25, -0.25, -0.75, 0.0, -0.75, -1.0, 1.0, 0.0, -0.5, 1.0, 0.75, 0.5, 0.25, 1.0, -0.75, 0.0, -0.75, 0.0, 0.5, 0.25, 0.75, -0.75, 0.75, 0.25, -0.25, -0.5, 0.5, 0.0, 1.0, -0.5, 0.5, 0.5, 0.0, 1.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 1.0, -1.0, 0.0, 1.0, -1.0, -0.75, -0.5, 0.25, -0.75, 0.0, -0.5, 0.5, -0.25, -0.25, 0.25, 0.25, 0.5, -0.5, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([1.0, 0.75, 0.0, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, 1.0, 0.25, 0.5, 0.25, 1.0, -0.25, -0.25, 1.0, 0.5, 1.0, 0.75, -1.0, 0.25, -0.5, -1.0, -0.75, 0.0, 1.0, 1.0, -1.0, 0.75, -0.75, -1.0, 0.5, -0.5, 0.75, 1.0, -1.0, -0.75, 1.0, -1.0, 0.75, -0.5, 0.5, -0.25, -0.25, 0.75, 1.0, 0.5, -0.75, -0.5, 0.75, 0.25, -0.25, -1.0, -1.0, 1.0, -1.0, -0.75, -0.25, 0.25, 0.25, 0.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.5, -1.0, 0.75, -0.5, -0.25, 0.5, 0.5, -1.0, -0.25, 0.75, 0.25, -1.0, -1.0, 1.0, 0.5, -0.5, -0.5, 0.75, 0.75, -1.0, -0.25, -0.25, -0.75, 0.75, -0.25, 0.5, 0.5, 0.25, 0.5, 1.0, 0.25, 1.0, 0.5, ]);
    
    query001.destroy()
    
    query001.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    
    const array4 = new Float32Array([-0.25, 1.0, 1.0, -0.5, -1.0, -0.75, -0.5, 0.25, -0.75, -0.25, -1.0, 1.0, -0.75, 0.5, -0.75, -0.75, -0.5, 0.25, 0.75, 0.25, -1.0, 0.75, 0.5, -0.5, -0.75, -1.0, -1.0, -0.25, -1.0, 0.25, 0.0, -0.75, -0.5, 0.0, -1.0, -0.25, -0.25, 0.0, -0.75, 1.0, 0.0, -0.75, -0.5, 1.0, -0.5, -0.25, -0.5, 0.5, -0.25, 0.75, 0.0, -0.25, -0.5, 0.5, 0.5, -1.0, -0.5, -1.0, -1.0, 0.0, 0.5, -0.75, 0.75, -0.75, 0.25, 0.25, -0.5, -0.25, 1.0, 0.75, 0.25, 0.75, 0.0, -0.5, 0.25, 0.75, 0.0, 1.0, 0.5, -0.5, 0.75, 0.0, 0.5, 1.0, -0.5, 0.75, -0.75, -0.25, 0.75, 0.5, 0.25, 0.75, 1.0, 0.25, -0.75, -0.75, 0.75, 0.75, 0.0, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array5 = new Float32Array([0.0, 0.5, 0.25, -0.25, 0.5, 0.75, 0.75, 0.75, 0.25, 0.5, 1.0, 0.25, -0.25, 0.5, -0.75, 0.5, 0.75, 1.0, 0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 0.25, 0.0, 0.0, -0.25, -0.25, 1.0, -0.5, -0.75, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, -0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 1.0, -0.75, 0.25, 0.75, -0.5, 0.75, -0.25, -0.25, -1.0, 1.0, 1.0, -0.5, -1.0, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, -0.5, 0.75, 0.25, 0.25, 0.75, 0.0, -0.75, -1.0, -0.5, 0.5, 0.0, 0.5, -0.25, 1.0, 0.5, 0.5, -0.5, 1.0, -0.5, 0.5, -1.0, 0.5, 0.75, 0.75, -1.0, 0.5, -0.25, -0.75, 0.0, 0.25, -0.5, 0.75, -0.25, 0.25, 1.0, 0.5, -0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query101.destroy()
    device20.pushErrorScope("internal");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.pushErrorScope("out-of-memory");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device20.destroy();
    texture101.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query102.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_bundle_encoder100.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder1000.setStencilReference(1);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
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
    render_bundle_encoder101.setPipeline(render_pipeline102);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    render_pass_encoder1020.setPipeline(render_pipeline102);
    
    
    
    query100.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
    render_pass_encoder1000.executeBundles([])
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query101.destroy()
    query103.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query102.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query103.destroy()
    render_pass_encoder1010.setPipeline(render_pipeline103);
    
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1000.setPipeline(render_pipeline103);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1000.popDebugGroup();
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder1010.setStencilReference(1);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    
    render_pass_encoder1010.popDebugGroup();
    
    render_bundle_encoder100.setPipeline(render_pipeline102);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer300.destroy()
    
    
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer301.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    query100.destroy()
    texture100.destroy();
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.popDebugGroup();
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1000.popDebugGroup();
    
    render_bundle_encoder102.setPipeline(render_pipeline104);
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
        occlusionQuerySet: query101
    });
    
    render_pass_encoder1030.setPipeline(render_pipeline101);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer106.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.popDebugGroup();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer107.destroy()
    render_pass_encoder1010.setVertexBuffer(0, buffer106);
    buffer105.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1020.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.draw(3);
    
    
    render_pass_encoder1000.setStencilReference(1);
    const array6 = new Float32Array([0.25, 0.0, 0.75, 0.75, -0.25, 0.75, 1.0, -0.5, -0.75, -0.75, 0.5, -1.0, -0.25, -0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 0.5, 0.5, -1.0, 1.0, 0.5, -0.25, 1.0, 0.5, -0.75, -0.5, -0.75, 1.0, -0.5, 1.0, 1.0, 1.0, -0.5, 1.0, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, -1.0, -1.0, 0.0, -0.75, 0.25, 0.5, 1.0, 1.0, 1.0, 0.0, -0.5, 0.0, 0.75, 0.5, 0.0, -0.75, 0.75, -1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.25, -0.75, -0.5, -0.75, -0.25, 0.75, -0.75, -0.25, 0.0, 0.0, 0.25, -1.0, -0.75, -1.0, 1.0, -0.5, 0.0, 0.75, 0.75, 0.25, 0.25, -0.75, -0.5, 1.0, 0.25, -1.0, -0.5, -0.25, 0.0, -0.5, -1.0, 0.75, 1.0, ]);
    query102.destroy()
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    const command_buffer301 = command_encoder301.finish();
    query300.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder101.setVertexBuffer(0, buffer106);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder101.draw(3);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
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
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer109.destroy()
    texture300.destroy();
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.end();
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    
    render_bundle_encoder100.popDebugGroup();
    device40.pushErrorScope("validation");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1000.setVertexBuffer(0, buffer106);
    render_pass_encoder1011.setPipeline(render_pipeline104);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.draw(3);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query103.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    buffer100.destroy()
    query104.destroy()
    render_pass_encoder1011.setStencilReference(1);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    buffer101.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    compute_pass_encoder1040.setPipeline(compute_pipeline105);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query101.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    buffer104.destroy()
    query102.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query105.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setStencilReference(1);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder102.setVertexBuffer(0, buffer106);
    
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    query103.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
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
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group106);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const array7 = new Float32Array([0.0, 1.0, 0.25, 0.75, 1.0, 0.0, 0.0, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, 0.5, -1.0, -0.25, 0.75, -0.75, -1.0, -0.5, 0.5, 1.0, -0.25, 0.0, 0.75, -0.25, -0.75, -1.0, -0.5, 0.25, -0.5, 0.75, 0.0, 0.25, 1.0, 1.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.75, 0.5, 0.5, -0.25, -1.0, 1.0, 0.25, 0.75, 0.25, 0.5, -0.5, 0.75, 0.25, 0.5, 0.5, -0.5, -0.5, -0.75, -0.5, -0.5, 0.0, 1.0, -0.5, -0.75, -0.25, -1.0, 0.5, 0.75, 1.0, -0.25, 0.5, -0.75, -0.75, 0.25, 0.25, -0.5, -0.25, 0.75, -0.75, 0.0, 0.25, 0.5, 0.25, 0.0, 0.5, -0.75, 0.5, -1.0, -1.0, -0.5, -0.5, 0.25, -0.75, 0.0, -1.0, 0.0, -0.5, 0.0, 0.0, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.draw(3);
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder1040.insertDebugMarker("marker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
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
        layout: compute_pipeline105.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group107);
    
    buffer1012.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    texture102.destroy();
    buffer1020.destroy()
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer1018.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1011.setVertexBuffer(0, buffer106);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1021, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer106);
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.popDebugGroup();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group108);
    compute_pass_encoder1040.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1000.end();
    render_pass_encoder1030.setVertexBuffer(0, buffer106);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.draw(3);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, ]);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
}