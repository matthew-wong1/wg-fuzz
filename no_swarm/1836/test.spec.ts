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
    const array0 = new Float32Array([-0.75, -0.75, 1.0, -0.5, 0.5, -0.25, 1.0, -0.25, 1.0, -0.5, -0.75, 0.75, 1.0, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, -0.75, -0.25, 0.75, 0.25, 0.75, -0.75, 0.0, -0.5, -1.0, -0.75, -0.25, 0.0, 0.75, 0.25, -1.0, -0.25, 0.75, 0.0, 1.0, 1.0, 1.0, -0.25, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, -0.25, 1.0, -0.75, -0.75, 0.75, -0.5, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, -1.0, 1.0, -0.25, -0.5, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, -0.5, 0.25, 0.0, -1.0, 0.75, -0.75, 0.5, 0.25, 0.5, 0.5, -0.5, -0.75, -1.0, 0.0, -1.0, -0.5, -1.0, -0.5, 0.5, 0.75, -0.25, -1.0, -0.5, -0.25, 0.25, -0.25, 0.0, -1.0, 1.0, 0.0, 0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array1 = new Float32Array([-0.5, -0.5, -0.25, 0.75, 0.25, -1.0, 0.25, 0.5, -0.75, -0.5, 0.25, 0.25, 0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 0.75, 0.5, 0.0, 0.25, -0.75, -1.0, 0.0, -0.75, 0.5, 0.5, 0.25, 1.0, 0.5, 0.75, 0.75, -1.0, -0.25, -0.25, 0.5, -0.75, -0.5, 1.0, -0.75, -0.75, 0.0, 0.25, 0.5, -0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 0.5, 0.75, -0.25, 0.5, 0.5, 0.25, -1.0, 0.25, -1.0, 0.75, -0.25, -0.75, 0.75, -0.75, 0.0, -0.75, -0.5, 1.0, 0.25, -1.0, 0.0, -1.0, 0.75, -0.75, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -0.25, 0.5, 0.5, 0.75, 1.0, -0.25, 0.75, 0.5, 0.75, -1.0, -0.75, 0.5, -0.75, 0.75, -0.5, -0.75, -1.0, 0.0, -0.5, ]);
    
    
    
    device20.destroy();
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array2 = new Float32Array([-1.0, -0.5, -1.0, 0.5, 0.5, -1.0, 0.5, -0.25, 0.75, 0.25, 0.0, 0.0, -0.75, 0.0, 0.75, -0.25, -0.75, 0.75, -0.75, 0.0, 0.75, -0.5, 0.25, 0.75, -0.25, 0.5, -0.25, 0.75, 0.75, -0.5, -1.0, -0.25, -0.25, -0.75, 0.75, 0.5, -0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -1.0, -0.25, -0.75, -0.25, 0.0, 0.0, 0.25, 0.5, 0.25, 0.0, 1.0, 1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.5, -1.0, -0.25, -0.5, -1.0, 0.75, -0.25, -1.0, -1.0, 1.0, 0.0, 1.0, 0.0, 0.5, -1.0, -1.0, 0.75, 1.0, 0.75, 0.5, 0.0, -1.0, 1.0, -0.5, -0.5, -0.75, 0.25, 0.5, -0.75, -0.25, -0.25, -1.0, -0.75, -0.25, 1.0, 0.0, -0.75, 0.5, 0.5, 1.0, -0.25, ]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    query100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query100.destroy()
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device30.destroy();
    
    
    
    buffer100.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const array3 = new Float32Array([0.0, -0.25, 1.0, -0.75, -0.25, -1.0, 1.0, -0.25, -0.75, -0.5, 0.0, 0.75, 0.0, 1.0, -0.75, 0.75, -0.25, -1.0, 0.75, -0.75, 0.5, 0.75, 1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -0.5, 1.0, 0.75, -1.0, 1.0, 0.25, 0.5, 0.0, -0.75, 0.25, -0.5, -0.5, 0.0, 0.5, -1.0, 0.5, 1.0, -1.0, 0.25, 0.0, 0.25, -1.0, 0.75, 0.0, 0.5, 0.25, -0.25, -0.75, 1.0, -0.25, -0.75, 0.5, -0.5, -0.5, -0.25, -0.5, 0.75, -1.0, -0.25, -0.5, 1.0, 0.25, -1.0, -0.25, -1.0, 0.0, 0.0, 0.25, -1.0, 0.0, -0.25, -0.25, 0.25, 0.25, 1.0, 0.75, 0.5, 1.0, 0.25, -0.75, 0.5, -0.75, -0.75, 0.5, -0.25, 0.0, 0.5, 0.5, -0.5, 0.0, 1.0, ]);
    
    
    
    
    query100.destroy()
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    query102.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([-0.75, -0.5, 0.25, -0.25, 0.5, -1.0, 0.5, 1.0, -0.25, -1.0, -0.75, 0.5, 0.25, 1.0, -0.75, -0.25, 0.0, -0.5, -0.5, 0.5, 1.0, -0.5, 0.75, -0.5, 0.0, -0.25, 0.75, -0.25, -0.25, 0.5, 0.25, 0.75, 0.75, -0.5, 0.0, 0.0, 1.0, 0.5, -0.75, -1.0, -1.0, 1.0, -1.0, -0.25, 0.25, -0.75, -0.75, 0.5, -1.0, 0.75, 0.25, 0.25, -1.0, -0.5, 1.0, 0.5, -0.75, 1.0, -0.75, -0.25, 1.0, -0.5, -0.75, -0.25, -0.5, 0.5, 1.0, 0.25, -0.25, -0.5, -0.75, -0.5, 0.75, 0.25, -1.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 1.0, 1.0, -0.25, -0.25, -0.25, -0.75, -0.25, 0.5, 0.75, 1.0, 0.5, -0.75, -0.5, 0.0, ]);
    compute_pass_encoder1000.popDebugGroup()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
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
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    query103.destroy()
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    
    texture101.destroy();
    device10.queue.submit([]);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer101.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setPipeline(render_pipeline101);
    query100.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    buffer102.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    buffer103.destroy()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder100.popDebugGroup()
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    query101.destroy()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer105, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer105, 0);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.submit([]);
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    device10.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.clearBuffer(buffer500);
    const array5 = new Float32Array([0.75, 0.75, 0.25, 0.25, 0.25, 0.25, -0.25, 0.5, -0.25, -1.0, 0.25, -0.75, 0.75, -0.25, 0.0, -0.75, 1.0, 0.25, 0.25, -0.5, 1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 1.0, 0.5, 0.25, 0.25, -1.0, 0.5, -0.75, -1.0, 0.25, 0.5, -0.5, -1.0, -0.25, 0.0, -0.5, 0.0, 0.25, 0.75, -0.5, -0.5, -0.75, -1.0, 0.5, 0.25, 0.75, -1.0, -0.25, 0.0, -0.75, 0.75, 0.5, 0.25, -0.5, -1.0, 1.0, -0.75, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, 0.0, 0.75, 0.75, -0.25, 0.25, 0.75, -0.25, -0.25, 1.0, 0.0, 0.5, 0.75, -0.25, 0.0, -0.75, 0.5, 0.75, 0.5, 1.0, 0.5, -1.0, 1.0, -1.0, 0.75, 0.75, -0.25, -1.0, -0.5, 0.0, 1.0, 1.0, -0.75, ]);
    buffer400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder500.insertDebugMarker("mymarker");
    texture400.destroy();
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    
    command_encoder400.insertDebugMarker("mymarker");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    query200.destroy()
    command_encoder400.clearBuffer(buffer400);
    command_encoder500.clearBuffer(buffer500);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    command_encoder400.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    buffer500.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder1020.popDebugGroup()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer400 = command_encoder400.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    texture400.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query200.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder500.popDebugGroup()
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    
    command_encoder401.insertDebugMarker("mymarker");
    const command_buffer401 = command_encoder401.finish();
    command_encoder500.pushDebugGroup("mygroupmarker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    device00.pushErrorScope("out-of-memory");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    texture000.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    query400.destroy()
    query400.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    
    const array6 = new Float32Array([0.75, 1.0, 0.25, 0.75, -0.75, -0.25, -0.5, 0.5, -0.5, 0.75, 0.75, -0.75, 0.0, 0.5, -1.0, -0.5, 0.0, -1.0, -1.0, -0.25, -0.75, 1.0, 0.25, -0.25, 0.25, -0.75, 1.0, 0.0, 1.0, 1.0, 0.75, 0.5, 0.25, 1.0, -1.0, 0.5, 0.0, 1.0, 0.0, 1.0, 0.5, 0.0, 0.5, -0.25, -0.5, 0.25, -0.75, 1.0, 0.0, 0.75, 1.0, 0.25, 0.75, 1.0, 0.0, 0.5, 0.25, -1.0, -0.25, -1.0, 0.75, 0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.25, 0.5, 0.25, 0.5, 0.25, -0.5, 0.75, 0.75, 0.25, 0.0, -0.5, 0.0, 0.75, 0.0, -0.75, -0.75, 0.0, -0.25, 0.25, -0.5, 1.0, -1.0, 0.5, -1.0, -0.5, -0.75, 1.0, 1.0, 0.0, -0.25, 0.0, -0.25, 0.0, ]);
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline103);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer000.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    render_bundle_encoder400.popDebugGroup();
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    query000.destroy()
    const array7 = new Float32Array([0.25, 1.0, -0.75, 0.25, 0.75, 0.0, 0.0, 0.75, -0.25, 0.75, 0.75, 0.5, -1.0, 0.0, 0.25, 0.25, -0.25, 0.75, -1.0, 0.0, 0.75, -0.75, 0.5, 0.75, 0.75, 0.5, 0.25, 0.0, 0.25, 0.5, 0.25, 0.75, 0.5, 0.25, -1.0, 1.0, -0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 0.0, 0.5, -0.75, 0.0, -0.25, -0.25, -0.25, -0.25, 0.25, 0.5, 0.5, 0.25, 0.75, 1.0, -1.0, -1.0, -0.25, -0.25, 0.75, 0.5, -0.75, -0.75, 0.75, 0.0, 1.0, -0.25, 0.75, 0.0, -0.25, 0.5, 0.75, 0.75, 0.25, 1.0, -0.5, 0.0, 0.25, -1.0, 0.5, 1.0, 0.25, -0.75, -0.25, 0.0, 0.0, -1.0, -0.5, 0.5, -1.0, -0.5, 0.0, -0.5, -0.25, -0.5, -0.75, 0.75, 0.25, -0.25, ]);
    
    
    const array8 = new Float32Array([0.5, -0.75, 0.25, 0.0, 0.75, 1.0, -0.75, 0.5, 0.25, 0.75, 0.75, 0.75, -1.0, -1.0, 1.0, 0.75, 0.5, -0.5, -0.5, -0.5, 0.0, -1.0, 0.0, 0.0, -0.5, -1.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.5, 0.0, -0.5, -1.0, 0.0, 0.75, 0.5, -0.25, 0.75, -0.75, 0.0, -0.75, -1.0, 0.0, 0.0, -1.0, 0.5, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, -0.75, -1.0, -0.25, 0.75, -0.25, 1.0, 0.25, -0.25, -1.0, -0.25, 0.75, 0.5, 0.25, -0.25, 0.0, -1.0, 1.0, 0.75, -0.5, 0.0, 1.0, -0.25, 0.75, -0.25, -0.75, 0.25, -0.25, 0.0, -1.0, 0.25, 0.0, 1.0, 0.0, -0.5, -0.75, -1.0, -0.25, -0.75, 0.25, -0.75, -0.5, 0.25, 0.0, 0.25, 0.5, 0.0, ]);
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
        occlusionQuerySet: query101
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    device50.pushErrorScope("internal");
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    query200.destroy()
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    buffer001.destroy()
    render_bundle_encoder500.popDebugGroup();
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.pushErrorScope("internal");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder403.insertDebugMarker("mymarker");
    render_bundle_encoder502.popDebugGroup();
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
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
        occlusionQuerySet: query400
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    command_encoder001.insertDebugMarker("mymarker");
    query500.destroy()
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_bundle_encoder400.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.setPipeline(render_pipeline401);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    device80.destroy();
    compute_pass_encoder0000.popDebugGroup()
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder4020.executeBundles([])
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    texture201.destroy();
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    render_pass_encoder4020.setPipeline(render_pipeline400);
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    device40.queue.submit([command_buffer400, ]);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_bundle_encoder601.pushDebugGroup("group_marker");
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
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer700.destroy()
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    query500.destroy()
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder400.setPipeline(render_pipeline404);
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
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder4020.insertDebugMarker("marker");
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    buffer600.destroy()
    device70.pushErrorScope("internal");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder503.insertDebugMarker("marker");
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    buffer601.destroy()
    command_encoder501.insertDebugMarker("mymarker");
    buffer402.destroy()
    texture500.destroy();
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    render_pass_encoder1020.setPipeline(render_pipeline103);
    command_encoder500.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group400);
    command_encoder501.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
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

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    render_pass_encoder4030.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0000.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    device60.queue.submit([]);
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4030.setVertexBuffer(0, buffer405);
    render_pass_encoder4030.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4030.setIndexBuffer(buffer401, "uint16");
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4030.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4030.end();
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4030.draw(3);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    device40.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder4020.setVertexBuffer(0, buffer402);
    device00.queue.submit([]);
    render_pass_encoder4020.drawIndirect(buffer406, 0);
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    device60.queue.submit([]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4030.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder4020.end();
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder4020.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4020.end();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder4030.setIndexBuffer(buffer400, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4030.end();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4020.drawIndirect(buffer402, 0);
    render_pass_encoder4030.drawIndexed(3);
    device40.queue.submit([]);
    device50.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder1010.setVertexBuffer(0, buffer107);
    render_pass_encoder4030.popDebugGroup();
}