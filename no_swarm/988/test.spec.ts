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
    
    
    
    
    
    const array0 = new Float32Array([-0.75, 0.0, 0.75, -1.0, -0.25, 0.0, 0.0, 0.75, 0.75, -1.0, -0.5, 0.75, -1.0, 1.0, 0.25, -0.5, 0.25, 0.25, -1.0, 0.25, 1.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.5, -0.75, 0.75, 0.75, -0.5, 0.75, -0.25, -1.0, 1.0, -0.25, 0.0, -1.0, 0.5, 0.25, 1.0, 0.0, -0.5, -1.0, -1.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.75, -0.25, -0.75, -0.25, 0.0, 0.75, -0.5, -0.25, 0.5, -0.5, 1.0, 0.75, -0.5, -0.75, -0.5, -0.25, 1.0, -0.75, 0.0, -1.0, -0.75, -0.5, 0.0, 1.0, 0.25, -0.5, 0.5, -0.25, -0.5, 0.25, 0.5, -1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 1.0, -0.75, 1.0, -0.5, -0.75, -0.25, -0.25, ]);
    const array1 = new Float32Array([-0.75, 0.0, -1.0, -0.25, 0.5, -1.0, 0.25, 0.5, 0.75, 0.25, -0.5, -0.25, 1.0, 1.0, -1.0, -0.75, -0.25, 1.0, 0.0, -0.75, -0.75, 0.75, -0.75, -0.25, 0.25, 0.5, -1.0, 1.0, 0.75, 0.75, -0.5, -0.5, -0.5, 0.0, -1.0, 0.5, 0.0, -0.25, -0.5, -0.75, 1.0, -0.25, 0.5, -0.75, -0.5, 0.25, 1.0, -0.5, 0.0, -1.0, 0.0, -0.25, 0.0, -0.25, -1.0, -0.25, 0.0, 0.5, 0.25, 0.75, -1.0, -0.75, 0.75, -1.0, 0.5, 0.25, -1.0, -0.25, -0.5, -0.25, -0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.75, 0.0, 0.75, -0.5, -0.25, 0.75, 0.0, 0.5, 1.0, 1.0, -0.5, 0.25, 0.0, 0.5, 0.75, 0.0, -0.5, 0.5, -0.75, 1.0, 0.25, 0.0, 1.0, -0.75, ]);
    
    
    
    const array2 = new Float32Array([0.25, -0.25, -0.75, 0.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.5, 0.75, -0.25, -0.75, 0.5, -0.25, 0.5, 0.0, -1.0, 0.5, -0.75, 1.0, 0.0, -0.75, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, 0.75, 0.5, 1.0, -0.5, 0.5, -0.5, 0.25, -0.75, -0.75, 0.5, 0.25, 0.5, 0.5, 0.25, 0.75, 0.25, -1.0, -0.5, 1.0, 0.0, -1.0, 0.75, 0.5, 0.25, -0.75, 0.75, -1.0, -0.25, -0.75, 1.0, 0.5, -0.25, -1.0, 0.0, 0.75, 0.5, -1.0, -0.25, 0.5, 0.75, -0.25, 0.25, -1.0, -0.75, -0.5, 0.25, 0.25, 0.0, 0.25, 0.25, -1.0, 0.75, -0.5, 1.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.75, 0.75, -0.25, -0.75, 1.0, 0.25, 0.0, -0.75, 0.0, 1.0, -0.5, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("out-of-memory");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    device00.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query100.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    query100.destroy()
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1000.setStencilReference(1);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1000.executeBundles([])
    device30.destroy();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture100.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer101.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer400 = command_encoder400.finish();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    query101.destroy()
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
    render_pass_encoder1000.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    texture102.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array3 = new Float32Array([-0.5, -0.5, -0.75, -0.25, 1.0, 0.0, -0.5, 0.0, -0.75, 0.0, -0.5, 0.25, -1.0, 0.5, 0.25, -1.0, 0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 0.5, 0.25, -0.5, 0.75, 0.5, -1.0, 0.25, 1.0, 0.75, 0.0, 0.5, -0.25, -0.25, -0.5, -0.25, 0.0, 0.5, -1.0, 0.5, -0.5, 0.25, 0.75, 0.75, 0.75, 0.0, -0.5, 1.0, 0.0, 0.25, 0.75, 0.25, 0.0, -0.5, -0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 0.5, 0.75, -0.75, -0.25, 0.5, 0.75, 0.75, -0.5, -0.75, -0.25, -0.25, -0.25, -1.0, -0.75, 0.0, -0.75, 1.0, -0.75, -0.5, 0.75, 1.0, 0.0, -0.75, 1.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.5, -1.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.5, 1.0, -1.0, ]);
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder200.popDebugGroup();
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer102.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query200.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query400.destroy()
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query100.destroy()
    
    render_bundle_encoder402.insertDebugMarker("marker");
    query103.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query103
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query103.destroy()
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.executeBundles([])
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    query403.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
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
    render_pass_encoder1020.setStencilReference(1);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query403
    });
    query103.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
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
        occlusionQuerySet: query402
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.insertDebugMarker("marker");
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture400.destroy();
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder4030.executeBundles([])
    query201.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder4030.executeBundles([])
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query402.destroy()
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder4040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4040.executeBundles([])
    
    render_pass_encoder1010.setStencilReference(1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder4030.executeBundles([])
    query403.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder4030.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query403
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    texture402.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer107.destroy()
    render_pass_encoder4040.insertDebugMarker("marker");
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
    texture103.destroy();
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture200.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query201.destroy()
    device50.pushErrorScope("validation");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder1000.popDebugGroup();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.popDebugGroup();
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query202.destroy()
    render_bundle_encoder100.popDebugGroup();
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    buffer106.destroy()
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    command_encoder406.insertDebugMarker("mymarker");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder4060.pushDebugGroup("group_marker");
    buffer200.destroy()
    
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const array4 = new Float32Array([-0.25, -1.0, -1.0, 0.75, -0.25, -0.5, 0.5, -0.75, -1.0, 0.5, -1.0, 0.5, 0.75, 1.0, 0.5, 0.5, -0.75, -0.25, -0.75, -0.5, -0.5, -0.75, 0.0, 1.0, -0.25, -0.5, -0.5, 1.0, -1.0, 0.75, 1.0, 1.0, -0.5, -0.25, -0.25, 0.75, 0.25, 0.25, -0.25, -0.5, -0.5, 0.5, 0.75, -1.0, -0.75, 0.5, -1.0, 0.5, 0.5, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, 0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 0.5, -0.25, -0.25, 0.0, 0.5, 0.0, 0.0, 0.25, 0.75, 0.75, 0.75, -0.5, 0.5, -0.75, 1.0, 0.25, -0.75, 1.0, -0.75, -0.25, -0.5, 0.75, -0.75, -0.5, 1.0, -0.75, -0.5, -0.25, 0.25, 0.5, -0.25, -0.5, 1.0, -0.25, -1.0, -1.0, -0.25, 0.25, -0.25, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    query103.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    texture500.destroy();
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    buffer203.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    render_pass_encoder4060.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    query104.destroy()
    query403.destroy()
    render_pass_encoder4050.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer105.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_bundle_encoder400.popDebugGroup();
    device60.pushErrorScope("internal");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder4030.insertDebugMarker("marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    query403.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder4050.executeBundles([])
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    buffer202.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder4020.setStencilReference(1);
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4060.insertDebugMarker("marker");
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query401.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const array5 = new Float32Array([-0.25, -0.75, -0.75, -0.25, 0.5, -1.0, -0.75, -0.75, 0.25, 1.0, -1.0, 0.75, -0.5, 0.75, -0.75, 0.75, 0.5, -1.0, 0.0, -0.5, 1.0, -0.75, 0.5, 0.5, 1.0, 0.0, -0.25, 1.0, -0.25, 0.0, 1.0, 0.25, -0.75, 0.0, -1.0, 0.5, -1.0, -0.5, 0.0, 0.0, -0.5, 0.25, -0.5, 0.75, -0.25, 0.75, -1.0, 0.5, 0.75, 0.25, -0.75, 0.25, -0.25, 0.0, 0.75, 1.0, -0.25, -0.25, 0.25, -0.75, -0.25, -0.5, -0.75, 0.0, -1.0, 0.25, 0.0, 0.25, -1.0, -0.25, 0.75, 1.0, -0.25, 0.25, 0.75, 0.25, 0.0, -0.25, -0.25, -0.75, 0.5, 0.0, 0.75, 0.5, 0.25, -0.5, -1.0, -1.0, 0.0, 1.0, 0.5, 0.25, 0.0, -0.5, 0.0, 0.5, 0.5, 0.5, 1.0, 0.5, ]);
    render_pass_encoder4050.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
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
    
    render_pass_encoder4030.popDebugGroup();
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder4060.setPipeline(render_pipeline401);
    texture201.destroy();
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout104]
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder4030.setPipeline(render_pipeline401);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder4040.setPipeline(render_pipeline401);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query403.destroy()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture104.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder4020.setStencilReference(1);
    render_bundle_encoder201.popDebugGroup();
    
    buffer600.destroy()
    render_pass_encoder1000.popDebugGroup();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder4050.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder1020.setStencilReference(1);
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4060.setBindGroup(0, bind_group400);
    render_pass_encoder4020.popDebugGroup();
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

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    render_pass_encoder4020.setPipeline(render_pipeline401);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder4050.setPipeline(render_pipeline401);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer501 = command_encoder501.finish();
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4040.setBindGroup(0, bind_group403);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4060.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group404);
    device50.queue.submit([command_buffer501, ]);
}