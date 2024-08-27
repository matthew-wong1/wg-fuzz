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
    const array0 = new Float32Array([-0.5, 0.0, 1.0, -0.25, -0.75, -0.25, 1.0, 0.5, 0.75, 0.0, -0.75, 0.25, 0.5, 0.25, -1.0, 0.5, -1.0, 0.5, 0.5, -0.75, -0.5, 0.75, -1.0, 1.0, -1.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.75, -1.0, 0.25, 1.0, 0.25, 0.0, 0.25, -1.0, 0.75, 0.75, -0.75, 0.0, 0.25, -0.5, 0.25, -0.5, -1.0, -0.25, 1.0, -0.5, 0.0, -1.0, 1.0, -0.5, -0.5, 0.0, 0.0, -0.5, -0.75, -0.25, 0.75, 0.75, 1.0, -0.5, 1.0, -1.0, 0.5, -1.0, -0.25, -0.25, 0.75, -0.25, 0.5, -1.0, 0.25, 0.75, 0.75, 0.0, 0.75, -0.75, 0.5, 0.25, 0.0, -1.0, -0.5, -0.75, -0.25, -0.25, 0.75, -0.5, -0.75, 0.75, -0.5, -0.25, 1.0, -1.0, 1.0, -0.75, 0.5, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array1 = new Float32Array([-0.5, 0.75, -0.5, -0.5, -1.0, 0.5, 0.25, -0.25, 1.0, 0.25, 0.0, 0.25, -0.75, -0.25, 0.25, 0.0, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 0.75, -0.5, 0.25, 0.25, -1.0, 0.0, 0.25, -0.75, -0.25, 0.5, 0.75, 0.5, 0.75, 0.0, -0.25, 0.25, -1.0, 0.25, 0.75, -0.75, 0.75, 0.25, -0.5, -0.75, -1.0, -0.25, -1.0, 1.0, 0.25, -1.0, 0.25, -0.5, -0.5, 1.0, -0.75, 0.25, -0.25, 0.75, -1.0, 0.75, -0.75, 0.25, 0.5, 1.0, 0.0, 0.75, 0.75, -0.25, -0.75, 0.25, 1.0, 0.25, 0.75, 0.75, 0.75, 0.0, 0.75, -1.0, -1.0, 0.75, 0.25, 0.25, -1.0, -0.75, 0.0, -0.5, -0.5, 0.75, 0.25, 0.0, -1.0, 0.5, ]);
    const array2 = new Float32Array([0.5, 0.25, -0.5, 1.0, 0.75, 1.0, -0.75, 0.25, -1.0, -1.0, 0.75, -0.75, 1.0, 0.75, 0.25, 0.5, 0.5, -1.0, 1.0, 0.25, 0.75, -1.0, 0.5, 0.25, -0.75, 1.0, 0.5, -0.75, 0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.25, -0.75, 0.25, 0.5, -1.0, -0.5, -0.25, -0.25, -0.75, -0.75, -1.0, 1.0, 0.0, 0.75, 0.25, -1.0, 1.0, -1.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.0, 1.0, 0.0, 0.25, 0.0, 0.25, 0.75, 0.75, 0.25, 0.0, -1.0, 0.75, -0.5, 0.75, -0.5, 0.75, -1.0, 1.0, -0.25, -0.5, 1.0, 0.0, 0.5, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, -0.25, 0.75, -0.25, 0.5, 0.5, 0.25, -0.25, -1.0, 0.75, -0.75, 0.25, 0.75, 0.0, -0.25, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array3 = new Float32Array([0.5, -0.25, -0.25, 0.0, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, -0.25, 0.25, 0.0, -0.5, 0.75, 0.75, -1.0, 1.0, -1.0, 0.25, 0.25, 0.0, -1.0, 0.5, -0.25, 0.5, -0.75, -0.5, -0.75, 1.0, 0.75, -0.25, -0.5, 1.0, 0.5, 1.0, -0.5, -1.0, -1.0, 0.25, 0.0, -0.75, 0.75, 0.75, 0.75, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, -0.25, -0.5, -1.0, -0.75, -1.0, 0.0, 0.5, 0.0, -0.25, 0.0, -1.0, 0.75, 0.5, -1.0, 0.75, 1.0, -0.25, -0.25, 0.0, -1.0, 0.25, -0.25, -0.5, 0.5, 0.5, -0.5, 0.25, -0.75, -0.5, -0.5, -1.0, -0.25, -0.75, -1.0, 0.0, -1.0, -0.25, -0.75, 0.25, -1.0, -0.75, -0.25, 0.5, 1.0, -0.5, 1.0, 1.0, 0.25, -0.5, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.pushErrorScope("out-of-memory");
    
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
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
        layout: render_pipeline101.getBindGroupLayout(0),
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
    
    
    
    device10.queue.submit([]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder100.popDebugGroup();
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder101.setPipeline(render_pipeline102);
    command_encoder101.clearBuffer(buffer102);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer100,
        0,
        400
    );
    
    command_encoder101.pushDebugGroup("mygroupmarker")
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
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer103,
        0,
        400
    );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
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
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    buffer100.destroy()
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    const array4 = new Float32Array([-1.0, -0.25, 1.0, 0.75, -1.0, 0.5, -0.5, -0.5, 0.25, 0.0, 0.25, -0.5, 0.5, 0.25, -1.0, 0.25, -0.75, 0.5, -1.0, 0.25, 0.75, 1.0, 0.25, 0.0, 0.25, 0.25, 0.0, -0.5, -1.0, 1.0, 0.75, -1.0, 1.0, 0.0, -0.75, 0.25, -0.75, 0.75, 0.5, 0.75, -0.25, 0.0, 1.0, 0.75, -0.25, -0.5, 1.0, 0.25, -0.75, -0.5, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, 0.0, -0.75, -0.75, -0.25, -0.25, 0.75, 0.25, 1.0, -0.75, 1.0, -0.25, 0.0, 0.0, -0.25, -0.75, -0.25, -0.5, 1.0, 1.0, -0.75, 1.0, -0.75, -0.25, 0.0, 0.25, -0.5, 0.5, 0.25, -0.75, 0.5, 0.75, -0.5, 0.5, -1.0, 0.0, 0.5, 1.0, 0.5, 1.0, 1.0, 0.5, 0.75, -0.75, -0.25, ]);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder101.popDebugGroup()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.destroy();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    command_encoder103.copyTextureToTexture(
        {
            texture: texture100
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
    buffer103.destroy()
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1020.insertDebugMarker("marker");
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
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    texture101.destroy();
    render_pass_encoder1020.executeBundles([])
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    texture102.destroy();
    
    const array5 = new Float32Array([-0.25, -0.75, 0.75, 0.75, -0.25, 0.0, -1.0, 0.5, -0.25, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.25, -0.25, -0.25, 0.0, -0.25, -0.5, 0.25, -1.0, 1.0, 0.5, 0.0, 0.25, 0.75, -0.75, -1.0, -0.25, 0.0, 1.0, 0.25, 0.75, 0.25, 1.0, -0.5, -1.0, -0.25, -1.0, 0.5, 0.25, -0.75, 0.75, -1.0, 1.0, 0.75, -1.0, 0.75, 1.0, -0.75, -0.75, 0.5, -0.75, -0.5, 0.0, 0.75, -0.75, 1.0, 1.0, -1.0, -1.0, 1.0, -0.75, 1.0, 0.5, 0.75, -0.75, 0.5, -0.5, -0.75, -0.75, -0.5, 1.0, -1.0, 1.0, -0.25, 0.0, 0.75, 1.0, -1.0, 0.25, -1.0, 1.0, 0.5, -0.75, -1.0, 0.5, -1.0, -0.75, -0.75, -1.0, 0.75, 0.25, 1.0, 0.0, 0.5, -0.5, -0.25, ]);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1020.setStencilReference(1);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    
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
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1030.executeBundles([render_bundle_encoder102, ])
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.executeBundles([render_bundle_encoder100, ])
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1011.executeBundles([])
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder102.setPipeline(render_pipeline102);
    
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder101.popDebugGroup();
    command_encoder103.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1010.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    render_pass_encoder1011.setStencilReference(1);
    render_bundle_encoder100.popDebugGroup();
    buffer100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer106.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1011.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    compute_pass_encoder1030.setPipeline(compute_pipeline103);
    buffer100.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.pushErrorScope("internal");
    render_pass_encoder1010.pushDebugGroup("group_marker");
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
    render_pass_encoder1010.insertDebugMarker("marker");
    buffer104.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1021.pushDebugGroup("group_marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    command_encoder102.popDebugGroup()
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.executeBundles([render_bundle_encoder102, ])
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    device40.pushErrorScope("internal");
    buffer101.destroy()
    render_pass_encoder1011.executeBundles([])
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder1030.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    render_pass_encoder1021.executeBundles([render_bundle_encoder100, ])
    
    device40.pushErrorScope("validation");
    render_pass_encoder1011.setStencilReference(1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1000.executeBundles([])
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    
    render_pass_encoder1011.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query101.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer105.destroy()
    command_encoder300.insertDebugMarker("mymarker");
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
    
    render_pass_encoder1031.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer104
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    command_encoder300.insertDebugMarker("mymarker");
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setStencilReference(1);
    
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1030.insertDebugMarker("marker")
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder1041.pushDebugGroup("group_marker");
    render_pass_encoder1000.setStencilReference(1);
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.beginOcclusionQuery(0)
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query101.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query401.destroy()
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    render_pass_encoder1011.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    buffer400.destroy()
    buffer108.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1011.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1000.beginOcclusionQuery(0)
    query402.destroy()
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1041.executeBundles([])
    render_pass_encoder1011.setStencilReference(1);
    
    render_pass_encoder1020.setStencilReference(1);
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
        occlusionQuerySet: query102
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    texture100.destroy();
    
    buffer401.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    texture103.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
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
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_pass_encoder1001.beginOcclusionQuery(0)
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.endOcclusionQuery()
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
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
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1041.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    buffer103.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder300.pushDebugGroup("mygroupmarker")
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    buffer107.destroy()
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder1030.setVertexBuffer(0, buffer109);
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    buffer403.destroy()
    
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    render_pass_encoder1040.endOcclusionQuery()
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.75, 0.25, 0.5, 0.25, -0.75, -1.0, 0.0, -0.5, -0.5, -1.0, 0.25, 0.5, 0.25, 1.0, -1.0, 0.25, 0.5, 0.25, -0.5, -1.0, -0.75, 0.5, -0.5, 0.75, 1.0, -0.5, -0.5, 0.5, -0.25, 0.25, -0.25, -1.0, 0.5, 0.0, 0.25, -0.5, -0.5, -0.75, -0.75, 0.25, 0.5, 0.25, 0.25, 0.75, -0.5, 0.75, -0.75, -0.75, 1.0, -0.75, -0.5, -0.75, 0.0, -1.0, 1.0, 0.0, 1.0, -0.75, 0.75, -0.25, 1.0, -0.5, 0.5, -1.0, 1.0, -1.0, 0.0, -1.0, -1.0, -1.0, 0.0, -0.5, 0.5, 1.0, 0.75, -1.0, 0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.75, 0.75, -1.0, 1.0, 0.25, 1.0, -0.25, 0.75, -1.0, -0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 0.25, -0.75, 0.25, ]);
    
    buffer1010.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1041.insertDebugMarker("marker");
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
    device50.destroy();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder1021.popDebugGroup();
    command_encoder302.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.copyBufferToBuffer(
        buffer106,
        0,
        buffer102,
        0,
        400
    );
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1011.executeBundles([render_bundle_encoder100, ])
    buffer402.destroy()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group104);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout104]
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder1041.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    render_pass_encoder1041.setStencilReference(1);
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1000.setStencilReference(1);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1040.setStencilReference(1);
    command_encoder302.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder1011.popDebugGroup();
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout105]
    });
    query400.destroy()
    device10.queue.submit([]);
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
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const array7 = new Float32Array([-0.25, 1.0, -1.0, -0.75, -0.75, -0.5, 0.25, 0.5, -0.25, -0.5, -0.5, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, -0.25, -0.5, -1.0, -0.75, 1.0, -0.75, 0.5, 0.0, 0.75, -0.5, -0.75, 0.75, 1.0, 1.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.75, -1.0, -0.25, 0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -1.0, 0.5, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 0.0, -1.0, 0.75, 0.25, -0.5, -1.0, 0.25, -1.0, 0.25, -1.0, -0.75, 0.5, -1.0, -1.0, 0.0, -1.0, 0.0, 0.5, -0.25, -0.25, 0.25, -0.25, 0.0, -1.0, 0.5, 0.0, 1.0, 0.75, 0.75, 0.25, -0.5, -0.25, 0.25, 1.0, 0.0, -1.0, -0.5, 0.25, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, 0.5, 0.25, -1.0, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3010.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    query403.destroy()
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    query100.destroy()
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
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const sampler1011 = device10.createSampler( { label: "sampler1011" } );
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1032.insertDebugMarker("marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const render_pass_encoder1042 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1042",
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
    device60.pushErrorScope("internal");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1041.insertDebugMarker("marker");
    device60.destroy();
    render_pass_encoder1041.setStencilReference(1);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder1042.executeBundles([])
    render_pass_encoder1042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder400.insertDebugMarker("mymarker");
    buffer300.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    buffer1011.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout104]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1032.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.setVertexBuffer(0, buffer102);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
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

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1031.setVertexBuffer(0, buffer104);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    command_encoder300.popDebugGroup()
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group106);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.setVertexBuffer(0, buffer1012);
    device40.queue.submit([]);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    device40.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1011.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    device40.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    device60.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder1011.end();
    device30.queue.submit([]);
    command_encoder103.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1031.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1012.endOcclusionQuery()
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    device30.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1032.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1031.end();
    device40.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1032.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.end();
    device30.queue.submit([]);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1030.end();
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1012.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder1011.end();
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
}