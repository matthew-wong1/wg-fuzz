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
        powerPreference: undefined
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
    const array0 = new Float32Array([0.5, -0.25, -0.25, 0.0, 0.5, 0.5, -0.75, 1.0, -1.0, -0.5, -1.0, -1.0, 0.75, 0.25, 0.25, 0.5, 0.5, 1.0, -0.25, 0.0, 0.75, -0.75, 0.75, -0.75, 0.75, -1.0, 0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 0.5, -0.25, -0.25, 1.0, -0.25, 0.0, -0.75, 0.5, -0.75, -0.25, -1.0, 0.25, -0.25, -0.75, 0.25, 0.0, 0.0, -0.25, -0.25, -0.25, -0.25, -0.75, -0.5, 0.75, 0.25, -0.5, 0.25, 0.75, 0.25, 0.75, 1.0, 0.0, -0.75, 1.0, 0.5, -0.25, 0.0, -0.25, -0.25, -0.5, 0.75, 0.5, -0.75, 0.75, -0.25, -1.0, 0.75, 1.0, -1.0, -0.5, 0.0, -0.75, -0.75, 0.75, -1.0, -0.25, -0.5, -0.25, 0.75, -0.75, 0.25, 1.0, -0.75, 0.75, -0.25, 0.5, 0.25, 0.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("validation");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([0.75, -0.5, 0.25, 0.0, 0.25, -0.75, 0.5, 0.5, -0.75, -0.25, -1.0, -0.25, 0.25, -0.5, 0.0, -1.0, -0.25, -1.0, 1.0, -0.5, -0.5, 0.75, 0.0, -1.0, 0.0, 1.0, -0.5, -0.25, 0.0, 0.25, 0.25, 0.0, -1.0, -1.0, 0.25, 0.0, -0.25, -0.75, 0.0, -1.0, 0.75, 0.5, -0.5, 0.75, -0.5, 1.0, -1.0, -0.75, -0.75, 0.5, 0.5, 0.75, -1.0, 0.25, 0.0, -0.5, -1.0, -1.0, -0.75, -0.5, -0.75, 0.5, 0.25, 0.75, 0.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.0, 0.75, -0.5, -0.25, -0.25, -0.25, 0.0, 0.75, 0.5, 0.75, 0.0, 0.75, 0.75, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, -0.75, 1.0, 0.25, -1.0, -0.25, 1.0, 0.25, 1.0, 0.75, 0.25, 1.0, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    const array2 = new Float32Array([0.25, -0.5, -0.5, 1.0, -0.25, -1.0, -1.0, 0.75, -0.75, 0.75, 0.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.5, 1.0, 0.25, 0.5, 0.25, -0.5, 0.0, 0.25, 0.0, 0.25, 0.5, -0.75, 0.75, -0.5, -0.25, 0.25, -1.0, 0.5, -1.0, 0.75, 0.0, 0.5, 0.0, -0.5, -0.75, 0.0, 1.0, 0.0, 0.0, 0.25, -0.75, 0.75, 0.0, 0.0, -1.0, 0.5, 0.75, -0.25, -0.25, 1.0, 0.75, 0.5, -1.0, -1.0, -0.75, 1.0, 1.0, -0.75, 1.0, 1.0, 0.0, -1.0, 0.5, -0.75, 0.75, -0.5, 1.0, 0.0, 0.0, 0.75, 1.0, -0.5, 0.5, 0.5, -0.75, 1.0, 0.0, 0.0, -1.0, 0.75, 0.5, 0.25, 1.0, 0.0, 0.25, 0.5, -0.75, -1.0, 0.75, 0.25, -0.5, -1.0, -0.25, 0.75, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
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
    texture100.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    buffer000.destroy()
    render_bundle_encoder100.popDebugGroup();
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    texture101.destroy();
    buffer100.destroy()
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query101.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    command_encoder101.clearBuffer(buffer100);
    
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.pushErrorScope("out-of-memory");
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
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    const array3 = new Float32Array([0.0, 0.0, 0.5, -0.5, 0.75, -0.75, 0.75, -1.0, 0.75, -0.5, -0.5, -0.25, 0.5, -0.5, -0.75, 1.0, -0.75, -0.5, 1.0, 0.25, 0.25, -1.0, -0.75, 1.0, -0.25, 0.0, 1.0, -1.0, 0.5, 0.0, 0.25, 0.0, -1.0, -0.25, 0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -1.0, -0.25, -0.75, 0.5, -0.25, 1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.25, 0.75, 1.0, 0.5, 0.0, 0.5, -0.25, 1.0, 1.0, -1.0, -0.25, 0.0, 1.0, -0.5, -0.5, 0.25, -0.75, 0.5, -1.0, -0.5, 0.25, -1.0, 1.0, 0.25, 0.75, -0.5, -0.25, -0.5, -0.5, -0.25, 0.5, -0.25, -0.5, -0.25, 1.0, -0.25, 0.5, -1.0, 1.0, 1.0, 1.0, -0.75, -1.0, 0.0, -0.75, -0.25, 0.0, 0.25, -0.5, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query100.destroy()
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1010.executeBundles([])
    const array4 = new Float32Array([0.5, 0.75, -0.25, 0.75, -1.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.0, 1.0, -0.5, 1.0, 0.25, 0.5, -0.75, 1.0, 0.75, 0.25, -0.25, -1.0, -1.0, -1.0, 1.0, 1.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.5, 0.5, 0.5, 0.25, 1.0, 1.0, 0.75, -0.5, -0.75, 0.75, -0.25, -0.5, 1.0, 0.25, 0.25, 1.0, 1.0, -0.75, -0.25, -0.75, 0.5, -0.75, 1.0, 1.0, -0.75, -0.75, 0.5, -0.5, -1.0, 0.25, 0.0, 0.5, 0.25, 0.0, 0.5, 0.5, -1.0, 1.0, -0.5, -1.0, 0.5, 1.0, 0.0, -0.5, 0.25, -0.5, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.5, 0.5, -0.25, -0.75, -0.5, 0.75, 1.0, -0.75, 1.0, -1.0, -0.25, ]);
    query101.destroy()
    device10.pushErrorScope("out-of-memory");
    buffer101.destroy()
    render_pass_encoder1010.beginOcclusionQuery(0)
    
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
    render_pass_encoder1010.executeBundles([])
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder102.popDebugGroup();
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer102.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query100
    });
    render_pass_encoder1010.endOcclusionQuery()
    const array5 = new Float32Array([0.5, -1.0, -1.0, -0.75, -0.25, -0.5, 1.0, -0.25, -1.0, 0.75, 1.0, 1.0, 0.5, 1.0, 0.0, 0.5, 1.0, 0.25, -0.5, -0.25, 0.5, 0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, 0.0, -0.25, -0.75, -0.75, -1.0, -0.5, 0.5, -1.0, 0.75, -0.5, -0.75, 0.5, -0.5, -1.0, -1.0, 0.0, -1.0, 0.5, -1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, 0.0, 0.5, -0.75, -0.5, 0.5, 0.25, -1.0, 0.0, -0.5, 0.75, -0.75, 0.0, 0.0, -0.25, -0.25, -0.25, -0.25, 0.0, 0.25, 1.0, 1.0, -1.0, 0.25, 0.25, -0.25, 0.5, 0.25, -0.75, -0.5, -0.25, 0.75, 0.75, -0.5, -0.25, -1.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.0, -0.25, -0.25, -1.0, 0.5, 0.75, -0.5, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer101
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query101.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
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
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_bundle_encoder102.setPipeline(render_pipeline102);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    render_pass_encoder1010.executeBundles([render_bundle_encoder101, render_bundle_encoder102, ])
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.setStencilReference(1);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_pass_encoder1020.setPipeline(render_pipeline102);
    render_bundle_encoder101.setPipeline(render_pipeline102);
    render_pass_encoder1011.insertDebugMarker("marker");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    command_encoder100.clearBuffer(buffer100);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
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
    texture104.destroy();
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    buffer102.destroy()
    device10.queue.writeTexture({ texture: texture106 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer103.destroy()
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1011.pushDebugGroup("group_marker");
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
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    texture103.destroy();
    render_pass_encoder1011.setPipeline(render_pipeline102);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    render_pass_encoder1000.setPipeline(render_pipeline101);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    compute_pass_encoder1001.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.endOcclusionQuery()
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture107 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const array6 = new Float32Array([1.0, 0.5, 0.25, 0.25, 1.0, 0.0, -0.25, -0.75, 0.25, -0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.25, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, 0.0, -1.0, -0.5, -0.5, 0.5, 0.25, 0.75, 0.5, 1.0, 0.25, -0.5, -0.25, 1.0, -1.0, -1.0, -0.75, 0.0, 0.0, 0.0, -0.75, 0.5, -0.75, -0.75, -1.0, -1.0, 0.75, 1.0, 0.75, -0.75, -1.0, -0.75, 0.5, 0.75, 1.0, -0.75, -0.5, -0.25, -0.5, -0.75, -0.75, 0.0, -1.0, 0.25, 0.25, 0.5, -0.5, -0.5, -1.0, 0.5, -0.5, -1.0, -0.75, -1.0, 0.25, 0.0, 0.0, 0.75, -0.25, 1.0, -0.5, -0.75, -1.0, 0.75, 0.0, -0.5, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, 0.25, 0.0, 0.25, -1.0, -0.25, -0.75, 0.75, ]);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_pass_encoder1011.setBindGroup(0, bind_group102);
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.writeTexture({ texture: texture107 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture105.destroy();
    buffer108.destroy()
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1001.setStencilReference(1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture107
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    
    buffer104.destroy()
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
    device10.pushErrorScope("out-of-memory");
    buffer101.destroy()
    compute_pass_encoder1001.insertDebugMarker("marker")
    texture102.destroy();
    
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1001.setPipeline(render_pipeline106);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture106.destroy();
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
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    device10.queue.writeTexture({ texture: texture107 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_pass_encoder1000.popDebugGroup();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1011.setVertexBuffer(0, buffer107);
    compute_pass_encoder1001.setPipeline(compute_pipeline100);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
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

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    render_bundle_encoder100.setVertexBuffer(0, buffer103);
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    buffer1011.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array7 = new Float32Array([0.75, -0.25, -0.5, 0.5, 1.0, 0.25, 1.0, -0.75, 0.25, 0.0, -0.75, 0.0, -0.75, -0.5, 0.25, -0.25, 0.5, -0.25, -0.75, -0.25, -0.5, 1.0, 0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.25, -0.5, 0.0, -0.5, 0.0, -1.0, -0.75, -1.0, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -1.0, 1.0, 0.5, -0.75, 0.75, 0.25, 0.5, -0.75, -0.25, 0.25, -0.25, 0.5, 0.5, 0.0, 0.5, 0.75, -0.75, 0.5, 1.0, 0.0, -0.25, -0.25, -1.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, -1.0, 0.0, 0.0, 1.0, -0.75, -0.25, 0.0, 0.25, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.75, 0.0, -0.5, -0.5, -1.0, -0.25, 0.25, 1.0, 1.0, 0.75, ]);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1011.setStencilReference(1);
    query100.destroy()
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder100.setIndexBuffer(buffer102, "uint16");
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    render_pass_encoder1001.setVertexBuffer(0, buffer105);
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    buffer1013.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.drawIndirect(buffer108, 0);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1001.insertDebugMarker("marker")
    buffer200.destroy()
    device10.queue.writeTexture({ texture: texture107 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
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
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer1016, 0, array5, 0, array5.length);
    buffer1017.destroy()
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    buffer109.destroy()
    device10.queue.writeTexture({ texture: texture107 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    buffer1016.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1019, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer1015, 0, array6, 0, array6.length);
    render_pass_encoder1010.setVertexBuffer(0, buffer1010);
    buffer1018.destroy()
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1001.end();
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    texture104.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const command_buffer102 = command_encoder102.finish();
    
    buffer1014.destroy()
    device10.queue.writeTexture({ texture: texture108 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    query200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group107);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group108);
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setVertexBuffer(0, buffer103);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture108 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    
    
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group109);
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1001.popDebugGroup();
    
    render_pass_encoder1000.draw(3);
    
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer103);
    render_bundle_encoder102.setIndexBuffer(buffer1019, "uint16");
    device10.queue.writeBuffer(buffer1010, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer1022, 0, array5, 0, array5.length);
    render_pass_encoder1011.setStencilReference(1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    buffer1023.destroy()
    buffer1019.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.setVertexBuffer(0, buffer1017);
    buffer106.destroy()
    
    
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder100.resolveQuerySet(
        query106,
        0,
        32,
        buffer104,
        0
    )
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder102.drawIndexedIndirect(buffer1020, 0);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
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
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    
    command_encoder101.copyBufferToBuffer(
        buffer1010,
        0,
        buffer107,
        0,
        400
    );
    
    
    
    query106.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1011.end();
    
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer1015,
        0
    )
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    render_bundle_encoder101.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    device40.destroy();
    {
        await buffer1022.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1022.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1022.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer1010,
        0
    )
    
    
    render_bundle_encoder101.drawIndexed(3);
    buffer105.destroy()
    device10.queue.writeBuffer(buffer1021, 0, array6, 0, array6.length);
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer1013,
        0
    )
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.queue.writeTexture({ texture: texture109 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    query200.destroy()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder101.copyTextureToTexture(
        {
            texture: texture107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    {
        await buffer1020.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1020.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1020.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer1010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1010.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder101.clearBuffer(buffer1017);
    render_bundle_encoder102.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer1016.destroy()
    device10.queue.writeBuffer(buffer1015, 0, array7, 0, array7.length);
    query100.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer1011
        },
        {
            texture: texture109
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.5, 0.5, -1.0, -0.75, -1.0, 0.0, -1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.25, -0.25, -0.5, -1.0, -0.25, -1.0, -0.5, 0.0, 1.0, 1.0, 0.5, -0.25, -0.5, 1.0, 1.0, -0.75, -0.25, -1.0, 0.0, -0.5, 0.25, 0.75, -1.0, 1.0, -0.5, -0.75, 1.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.75, -0.5, -0.25, -0.75, -0.75, 0.75, 0.25, -0.75, 1.0, -0.5, -0.75, -0.25, 0.25, 1.0, 0.75, 1.0, 0.75, -0.5, 0.0, 0.0, -0.5, 1.0, -0.5, -0.25, 0.5, 1.0, 0.25, 0.0, -1.0, 0.25, -0.75, 1.0, -0.75, 0.0, 1.0, 1.0, 0.75, 0.25, 0.0, -0.5, -0.75, -0.25, 0.75, 0.75, 0.0, 1.0, 0.0, 0.5, 1.0, 0.0, -0.5, 0.75, 0.75, ]);
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer1010
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer1017,
        0
    )
    render_pass_encoder1000.popDebugGroup();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer1010
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer1013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer1025
        },
        {
            texture: texture107
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer107.destroy()
    
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder100.drawIndexedIndirect(buffer1012, 0);
    command_encoder100.copyBufferToBuffer(
        buffer104,
        0,
        buffer1022,
        0,
        400
    );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1020.draw(3);
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.submit([command_buffer102, ]);
    command_encoder101.copyBufferToBuffer(
        buffer1019,
        0,
        buffer1015,
        0,
        400
    );
    
    buffer1021.destroy()
    device50.destroy();
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1001.end();
    render_pass_encoder1010.draw(3);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    const command_buffer200 = command_encoder200.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    command_encoder100.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1028, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([]);
    render_pass_encoder1010.end();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    compute_pass_encoder1001.end();
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1010);
    render_pass_encoder1011.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.end();
}