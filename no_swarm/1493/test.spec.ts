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
    const array0 = new Float32Array([-0.25, 0.75, -1.0, -0.75, 0.5, 0.0, -0.25, -0.25, 0.5, 0.75, 0.75, -1.0, 0.0, -0.75, 0.5, 0.25, 0.25, 0.0, -1.0, -0.75, 0.75, 0.25, -1.0, -0.5, 0.5, -0.25, 0.75, -1.0, 0.0, 1.0, 0.25, 0.75, -0.75, -0.25, -0.75, -0.5, 0.75, -1.0, 0.75, 0.75, 0.25, 1.0, -1.0, -0.75, 0.25, 0.25, 0.5, -0.5, 0.25, -0.75, -0.5, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.25, -0.75, -0.75, 0.25, 0.75, -1.0, 0.75, 0.0, -0.5, 0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 1.0, 0.75, 1.0, 0.75, 1.0, 0.25, 0.0, -1.0, 0.25, -0.75, -0.25, 0.25, -0.75, 0.75, -0.5, -1.0, 1.0, -0.75, -0.25, 0.25, 0.5, -0.5, -0.75, -0.5, -0.75, -0.25, 0.25, ]);
    
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.queue.submit([]);
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device10.pushErrorScope("validation");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture100.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const array1 = new Float32Array([0.5, -0.25, 0.75, -0.75, 1.0, 0.75, -1.0, -0.75, 0.75, -0.5, -0.5, 0.75, 0.0, 0.25, 0.0, -0.25, 0.25, -1.0, 0.0, -0.25, 0.5, 0.25, 1.0, 0.0, -0.5, 0.25, 1.0, 1.0, 1.0, -0.5, 1.0, -0.75, 0.25, -0.5, 0.75, 0.5, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, 1.0, -0.25, -0.5, 0.0, 0.25, 0.5, 0.25, 0.5, 0.75, 0.25, -0.25, 0.75, -0.75, -0.25, 0.0, -0.25, -1.0, -0.75, 0.5, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, 0.0, -0.5, 1.0, 0.25, -0.75, 1.0, -0.5, -1.0, -1.0, -0.5, -1.0, -0.75, -0.75, -0.75, 0.25, -0.5, 0.75, -0.25, 1.0, 0.5, 0.25, 1.0, -0.5, -0.25, -0.75, 0.5, 0.0, -0.75, 0.75, -0.5, 0.0, 1.0, -0.5, ]);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    
    render_pass_encoder1000.setStencilReference(1);
    buffer101.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1001.insertDebugMarker("marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    query101.destroy()
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([1.0, -0.75, -0.75, -1.0, 0.5, -1.0, -1.0, 0.5, 0.0, 1.0, 0.75, 1.0, 0.25, 0.0, 1.0, 0.5, -0.5, 0.25, 1.0, 0.25, -0.5, 0.5, 0.5, -1.0, -0.25, 0.75, -0.75, 0.0, -0.5, -0.25, -1.0, 0.5, -0.25, -0.75, 0.5, -0.5, 0.0, 0.5, 0.5, -0.75, 0.0, -0.5, -0.25, 1.0, -0.5, -1.0, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, 0.0, -0.5, 0.0, 0.0, -0.25, -0.25, -0.25, 1.0, 0.5, 1.0, 1.0, 0.5, -1.0, -1.0, 1.0, -0.75, 1.0, -0.75, -0.75, -0.25, 0.75, -0.25, 0.75, -0.5, -0.25, 0.25, 0.25, 0.75, -1.0, 0.5, -1.0, 1.0, 0.5, -1.0, 0.5, 1.0, 0.75, -0.75, -1.0, 0.0, -0.5, -0.25, 0.75, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
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
        occlusionQuerySet: undefined
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder1001.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_pass_encoder1020.setStencilReference(1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1001.setPipeline(compute_pipeline100);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.executeBundles([])
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder101.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder1020.executeBundles([])
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    compute_pass_encoder1000.popDebugGroup()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1010.insertDebugMarker("marker");
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_pass_encoder1001.setStencilReference(1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder402.popDebugGroup()
    render_pass_encoder1000.setStencilReference(1);
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device50.destroy();
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
    device30.destroy();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("validation");
    compute_pass_encoder4010.popDebugGroup()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
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
    device20.destroy();
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query400.destroy()
    texture103.destroy();
    query100.destroy()
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
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
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
    
    render_pass_encoder1001.insertDebugMarker("marker");
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1050.setStencilReference(1);
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    buffer103.destroy()
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture104.destroy();
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1041.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    texture102.destroy();
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setStencilReference(1);
    command_encoder404.insertDebugMarker("mymarker");
    
    buffer104.destroy()
    render_pass_encoder1041.insertDebugMarker("marker");
    compute_pass_encoder1001.insertDebugMarker("marker")
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder1050.executeBundles([])
    
    
    buffer102.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    render_pass_encoder1020.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    command_encoder404.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.setStencilReference(1);
    command_encoder403.insertDebugMarker("mymarker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const array3 = new Float32Array([1.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 1.0, -0.5, 0.25, 0.0, -0.5, 0.0, -0.75, -0.75, 0.0, -0.25, 0.5, 0.5, -0.5, -0.5, -1.0, 0.0, -0.25, 0.25, -0.5, 1.0, 1.0, -0.75, 0.75, -1.0, 0.75, -0.75, 0.75, 1.0, 0.0, 0.0, 0.5, -0.5, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, 0.75, -0.75, 0.5, 0.25, -0.25, -0.75, -0.75, 0.25, 0.25, -0.75, 0.0, -1.0, -0.25, -0.5, -1.0, -0.75, -0.25, 1.0, 0.75, 0.0, -0.75, 0.5, -0.5, -0.25, 0.0, -0.25, -1.0, 0.0, 0.0, 1.0, 1.0, 0.0, -1.0, 0.75, 1.0, 0.5, 0.0, -0.75, -0.5, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, 0.0, 0.25, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1041.setStencilReference(1);
    
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder1010.setStencilReference(1);
    query102.destroy()
    
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    compute_pass_encoder4020.popDebugGroup()
    
    compute_pass_encoder1020.setPipeline(compute_pipeline109);
    render_pass_encoder1010.setStencilReference(1);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_pass_encoder1050.insertDebugMarker("marker");
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

    compute_pass_encoder1001.setBindGroup(0, bind_group101);
    query100.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1001.executeBundles([render_bundle_encoder100, ])
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
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
    query400.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1050.executeBundles([])
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1020.executeBundles([])
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    query400.destroy()
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.executeBundles([])
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
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1040.setStencilReference(1);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1040.popDebugGroup();
    query102.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder103.copyBufferToBuffer(
        buffer107,
        0,
        buffer103,
        0,
        400
    );
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder400.setVertexBuffer(0, buffer403);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.popDebugGroup();
    command_encoder402.insertDebugMarker("mymarker");
    buffer402.destroy()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
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
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query101.destroy()
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder1050.executeBundles([render_bundle_encoder101, render_bundle_encoder102, ])
    command_encoder101.clearBuffer(buffer101);
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.25, -0.5, -0.5, 0.25, -0.75, -0.5, -0.25, 0.5, 0.75, -0.75, -1.0, -0.75, 1.0, -0.25, 0.25, -1.0, 0.75, -0.75, 0.75, 0.75, -0.5, -0.25, -0.25, -1.0, 0.5, -0.25, 1.0, 0.0, 0.0, -1.0, 0.75, -1.0, 0.25, 0.5, -0.25, -0.75, -1.0, -0.5, 0.0, -1.0, 1.0, 0.75, 0.75, 0.0, 1.0, -0.75, 0.25, 0.0, 0.5, 0.5, 0.0, -1.0, -0.5, -0.25, 1.0, 0.75, 0.75, 0.0, -0.25, -1.0, 0.5, 0.0, 0.5, 0.75, 0.75, 0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, 0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 1.0, 0.5, 1.0, 0.0, 0.5, -0.75, -1.0, 1.0, -1.0, 1.0, 0.75, 0.0, 0.5, 0.5, 0.25, -0.25, -1.0, -0.5, -0.75, -0.25, -0.25, 0.25, ]);
    render_pass_encoder1001.popDebugGroup();
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.executeBundles([])
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group401);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder404.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.pushErrorScope("validation");
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    render_bundle_encoder400.popDebugGroup();
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer109
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
    compute_pass_encoder4040.setPipeline(compute_pipeline403);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1021.executeBundles([])
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture101
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
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
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
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1002.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_buffer300 = command_encoder300.finish();
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder1000.popDebugGroup();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1010, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1010, 0);
    render_pass_encoder1002.insertDebugMarker("marker");
    render_pass_encoder1021.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1051.insertDebugMarker("marker");
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1021.executeBundles([render_bundle_encoder102, ])
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder105.copyBufferToBuffer(
        buffer107,
        0,
        buffer1010,
        0,
        400
    );
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1011, 0);
    render_pass_encoder1000.executeBundles([])
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    command_encoder403.popDebugGroup()
    render_pass_encoder1041.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1011.insertDebugMarker("marker");
    
    query100.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    buffer403.destroy()
    compute_pass_encoder1030.setPipeline(compute_pipeline1013);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer407, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer407, 0);
    
    command_encoder403.copyBufferToBuffer(
        buffer406,
        0,
        buffer407,
        0,
        400
    );
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_buffer403 = command_encoder403.finish();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1012, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1001.popDebugGroup();
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    compute_pass_encoder1000.end();
    compute_pass_encoder4020.end();
    render_pass_encoder1040.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group403);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    render_pass_encoder1011.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1015, 0);
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
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group404);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder1020.popDebugGroup();
    command_encoder102.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1050.popDebugGroup();
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4014, 0);
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
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1001.end();
    compute_pass_encoder4040.end();
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline1013.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group104);
    const command_buffer103 = command_encoder103.finish();
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const command_buffer404 = command_encoder404.finish();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1040.endOcclusionQuery()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1018, 0);
    compute_pass_encoder1030.end();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1019, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1020, 0);
    compute_pass_encoder4010.end();
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
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group406);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4019, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4019, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    render_pass_encoder1031.endOcclusionQuery()
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    device10.queue.submit([]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([]);
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder4010.end();
    compute_pass_encoder1000.popDebugGroup()
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4023, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4023, 0);
    compute_pass_encoder1020.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4020.popDebugGroup()
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group105);
    device00.queue.submit([]);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4024, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4024, 0);
    device40.queue.submit([command_buffer403, ]);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder1040.endOcclusionQuery()
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group408);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline1013.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
    compute_pass_encoder4010.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1051.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    compute_pass_encoder4020.end();
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group108);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder4040.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder4020.end();
    device10.queue.submit([]);
    compute_pass_encoder4020.end();
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1032, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4027, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4027, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1001.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1051.endOcclusionQuery()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder4020.end();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1041.popDebugGroup();
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1010);
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder4040.dispatchWorkgroups(100);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1011);
    compute_pass_encoder1020.end();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4028, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4028, 0);
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([]);
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1012);
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1000.end();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4029, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4029, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1011.endOcclusionQuery()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder4010.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1039, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder4040.dispatchWorkgroups(100);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group409);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1002.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder1001.end();
    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4033,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4010);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1001.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1041.popDebugGroup();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder4040.end();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4020.end();
    compute_pass_encoder4010.end();
    compute_pass_encoder4040.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1040, 0);
    device50.queue.submit([command_buffer500, ]);
    device10.queue.submit([command_buffer102, ]);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4034, 0);
    compute_pass_encoder1001.popDebugGroup()
    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4036,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4011);
    render_pass_encoder1031.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1041.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.popDebugGroup();
    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4038,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4012);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4040,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4013);
    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4042,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4014);
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4044,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4015);
    compute_pass_encoder1020.end();
    compute_pass_encoder4020.end();
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1013);
    compute_pass_encoder1001.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder1040.endOcclusionQuery()
    const command_buffer104 = command_encoder104.finish();
    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4046,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4016);
    compute_pass_encoder1000.end();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4048,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4017);
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1045, 0);
    compute_pass_encoder4040.dispatchWorkgroups(100);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer404, ]);
    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4050,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4018);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1050.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.endOcclusionQuery()
    compute_pass_encoder4040.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1040.endOcclusionQuery()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1049, 0);
    compute_pass_encoder1001.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1001.end();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1050, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    compute_pass_encoder1020.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder4010.popDebugGroup()
    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4052,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4019);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1016);
    render_pass_encoder1001.endOcclusionQuery()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4040.dispatchWorkgroups(100);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder1020.popDebugGroup()
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1057, 0);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer102, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4053, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4053, 0);
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    compute_pass_encoder1020.end();
    compute_pass_encoder1030.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    compute_pass_encoder4020.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder4040.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1060, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1020.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer404, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer105, ]);
    render_pass_encoder1041.endOcclusionQuery()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4054, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4054, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1001.end();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1020);
    compute_pass_encoder1000.end();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1001.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1031.endOcclusionQuery()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1051.endOcclusionQuery()
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder4040.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder4020.popDebugGroup()
    const buffer4055 = device40.createBuffer({
        label: "buffer4055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4056 = device40.createBuffer({
        label: "buffer4056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4056,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4020);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1051.endOcclusionQuery()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1022);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1067, 0);
    render_pass_encoder1030.popDebugGroup();
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1023);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1071,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1024);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    device40.queue.submit([]);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1072, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1072, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1030.endOcclusionQuery()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1051.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1020.end();
    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4058,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4021);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4059, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4059, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1073, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1073, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1074, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1074, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([]);
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1025);
    const uint32_4040 = new Uint32Array(3);

    uint32_4040[0] = 100;
    uint32_4040[1] = 1;
    uint32_4040[2] = 1;

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4060, 0, uint32_4040, 0, uint32_4040.length);

    compute_pass_encoder4040.dispatchWorkgroupsIndirect(buffer4060, 0);
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1026);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4062,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4022);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4063, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4063, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder4040.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    render_pass_encoder1011.popDebugGroup();
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder1020.end();
    const buffer4064 = device40.createBuffer({
        label: "buffer4064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4065 = device40.createBuffer({
        label: "buffer4065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4065,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4023);
    device10.queue.submit([command_buffer102, ]);
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    const buffer4066 = device40.createBuffer({
        label: "buffer4066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4067 = device40.createBuffer({
        label: "buffer4067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4067,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4024);
    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1084,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1029);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1002.popDebugGroup();
    compute_pass_encoder4040.popDebugGroup()
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder4010.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4068 = device40.createBuffer({
        label: "buffer4068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4068, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4068, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder4010.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1020.end();
    const buffer4069 = device40.createBuffer({
        label: "buffer4069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4070 = device40.createBuffer({
        label: "buffer4070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4025 = device40.createBindGroup({
        label: "bind_group4025",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4070,
                },
            },
        ],
    });

    compute_pass_encoder4040.setBindGroup(0, bind_group4025);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1050.popDebugGroup();
}