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
    
    
    const array0 = new Float32Array([1.0, -1.0, 0.25, 0.75, -0.75, 0.5, 1.0, -0.75, -0.75, -0.5, 1.0, 0.75, -1.0, 0.0, -0.25, -1.0, -0.75, 0.0, 0.5, 0.0, 0.0, 0.5, 0.5, -0.75, -0.5, 0.25, -1.0, -0.75, -0.75, 0.5, 0.5, 1.0, -0.75, 0.0, 0.0, -1.0, 0.5, 0.5, 0.5, 0.5, -1.0, -0.5, -0.75, -1.0, 0.75, 1.0, -0.25, -1.0, -0.5, 0.25, 1.0, 1.0, 0.0, -0.25, -0.5, 0.75, 0.5, -0.5, 0.75, -0.75, -0.5, -1.0, 0.5, -0.75, 0.5, 1.0, -0.5, 0.0, -0.5, 0.5, -0.5, -0.5, 0.0, 0.5, -0.25, -0.25, 0.0, 0.75, -1.0, -1.0, 1.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.75, -0.75, 0.0, -0.75, 0.75, -0.5, 0.75, -0.5, -0.25, -0.25, 0.0, 0.75, 0.25, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.5, -0.25, 0.5, 0.25, 0.25, 0.75, 0.0, 1.0, -0.5, 0.75, 0.5, 0.25, -0.5, 1.0, -1.0, 0.25, -0.75, 1.0, 1.0, -0.5, 0.25, -0.5, -0.5, 0.0, -0.5, -1.0, 0.0, 1.0, -0.75, -0.25, -0.5, 0.75, 0.75, 0.25, -0.25, 0.5, 0.5, 1.0, 0.75, -1.0, 0.75, 1.0, 0.5, 1.0, 0.5, -0.25, 0.75, 0.0, 0.25, -1.0, 0.75, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, -0.25, 1.0, 0.5, -1.0, 1.0, -0.5, -1.0, 1.0, 0.5, 1.0, -0.75, -0.5, 0.75, 1.0, -0.75, 0.25, -0.5, -0.5, 0.25, -0.75, -0.25, 0.5, 1.0, -0.75, -0.5, -1.0, -0.25, 0.75, -0.25, -0.75, -0.5, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -1.0, 0.75, -0.25, 0.5, ]);
    
    
    
    const array2 = new Float32Array([1.0, -0.5, 1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.0, 1.0, -0.25, 0.25, -0.5, 0.75, 0.25, -0.5, -1.0, 1.0, -0.25, -1.0, -0.25, 0.75, 1.0, 0.25, 0.5, -1.0, -1.0, -0.5, -0.5, -0.75, 0.5, -1.0, 0.25, -0.75, -1.0, -0.75, -0.75, 0.5, 1.0, -0.5, -0.25, 1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 0.75, 1.0, -0.5, -1.0, -0.25, -1.0, -0.25, -0.5, 0.5, 1.0, 0.5, -0.75, 0.0, -0.75, -0.75, 1.0, -0.75, 0.0, -0.5, -1.0, -0.25, -0.25, -0.5, 0.25, 0.25, -0.5, -0.5, 0.25, 0.5, -0.25, 0.75, -0.5, -0.25, -0.5, 0.5, 0.5, 0.25, -0.5, 1.0, -0.5, -0.25, 0.25, 0.5, -0.5, 0.0, 1.0, -0.75, -0.75, -0.25, 0.5, 0.5, 0.0, -0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    query100.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device20.pushErrorScope("out-of-memory");
    
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
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    query100.destroy()
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer100.destroy()
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array3 = new Float32Array([0.5, -0.75, -1.0, -0.25, -0.25, -0.5, 0.25, 0.75, 1.0, -0.5, -0.5, 0.25, 1.0, 1.0, -1.0, -0.25, -0.75, 0.0, -0.5, -0.5, 0.25, 0.5, -0.25, -1.0, -0.5, 0.5, -0.25, -1.0, 0.75, 1.0, -0.25, 0.25, -0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.5, -0.75, -0.25, 0.75, -0.25, 0.0, -0.25, -1.0, -1.0, -0.5, -0.25, 0.5, -0.5, 0.25, -0.75, 1.0, -1.0, -1.0, -0.25, -0.25, -1.0, -0.75, 1.0, 0.5, -0.75, -0.75, 0.25, -0.75, -0.25, 0.0, 0.0, 0.5, 0.0, -0.5, 0.5, 0.75, 0.5, -0.75, -0.5, -1.0, 1.0, -1.0, 0.25, 0.75, 0.25, -0.5, 1.0, -0.5, 0.5, -0.5, 0.75, -0.5, -1.0, 0.75, -1.0, 0.25, -1.0, -0.75, -0.25, 0.25, 0.0, -0.5, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device30.pushErrorScope("out-of-memory");
    command_encoder300.insertDebugMarker("mymarker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_buffer100 = command_encoder100.finish();
    device30.pushErrorScope("internal");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
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
    const array4 = new Float32Array([0.25, -0.75, -0.75, 0.75, 0.0, -0.5, -0.75, -0.5, 0.5, -0.75, 1.0, 0.0, 0.5, -1.0, 0.75, 0.25, 1.0, -0.75, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, 0.0, 0.0, -1.0, 1.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.0, 1.0, -1.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.5, 0.75, -0.5, 0.5, -0.75, 0.0, 0.25, -0.5, -0.5, -1.0, 1.0, -0.5, 0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, -0.5, 0.75, -1.0, -0.5, 0.75, -0.75, -0.75, 0.25, -0.75, 1.0, -0.25, -1.0, -1.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.25, 0.0, -1.0, -1.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.5, -0.75, -0.25, 1.0, 0.25, 0.5, 0.5, 0.25, -0.5, 0.75, 0.25, -1.0, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query100.destroy()
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    compute_pass_encoder3000.popDebugGroup()
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
    query100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    
    texture100.destroy();
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    device40.pushErrorScope("internal");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1010.executeBundles([])
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer300.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1010.setPipeline(render_pipeline102);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    device00.pushErrorScope("internal");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    query100.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture102.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer100);
    
    
    
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
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
    
    query202.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    device40.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    texture300.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    
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
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    
    
    command_encoder301.pushDebugGroup("mygroupmarker")
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query101.destroy()
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    const command_buffer000 = command_encoder000.finish();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    query202.destroy()
    query102.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    command_encoder101.copyBufferToBuffer(
        buffer103,
        0,
        buffer100,
        0,
        400
    );
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query201.destroy()
    buffer101.destroy()
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const command_buffer201 = command_encoder201.finish();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
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
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query103
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
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
    query200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.beginOcclusionQuery(0)
    render_pass_encoder1011.setPipeline(render_pipeline100);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setStencilReference(1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
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
    render_pass_encoder1011.endOcclusionQuery()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const array5 = new Float32Array([0.25, -0.25, 0.75, 0.0, -0.25, -1.0, -0.75, -1.0, 0.5, 0.25, 0.5, -0.75, -0.25, -0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -1.0, -0.75, 0.75, -0.75, -1.0, 0.5, 0.0, 0.5, 1.0, 0.25, 1.0, -0.75, -0.25, -0.75, -0.25, -0.5, -1.0, 0.5, 0.0, -1.0, 1.0, -1.0, 0.75, -0.75, 0.0, 1.0, 1.0, 0.75, 0.0, -0.25, 0.5, -0.25, -1.0, -0.25, -0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.25, -0.5, -1.0, 0.0, -0.5, 0.5, -0.75, 0.5, 1.0, -0.75, 0.5, 0.75, -0.25, -1.0, 0.25, -1.0, 0.75, 0.0, 1.0, 0.5, 1.0, 1.0, 0.5, -0.25, -1.0, -0.25, -0.75, -0.75, 0.25, 0.5, 0.75, 0.75, -1.0, 0.0, 0.25, 1.0, 0.25, 0.5, 0.0, -0.75, -0.25, ]);
    buffer105.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    query201.destroy()
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device30.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    query204.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.insertDebugMarker("mymarker");
    
    texture000.destroy();
    query205.destroy()
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    command_encoder300.insertDebugMarker("mymarker");
    buffer106.destroy()
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_pass_encoder1011.setStencilReference(1);
    device10.queue.writeBuffer(buffer1010, 0, array1, 0, array1.length);
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
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    query201.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    render_pass_encoder1020.executeBundles([])
    device40.destroy();
    render_pass_encoder1020.setPipeline(render_pipeline104);
    query103.destroy()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    buffer1010.destroy()
    command_encoder002.clearBuffer(buffer000);
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder202.setPipeline(render_pipeline201);
    buffer200.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const array6 = new Float32Array([0.25, 0.25, 1.0, 0.75, 0.75, 0.5, -0.5, -1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.25, 0.5, 1.0, 0.0, -0.75, 0.75, 0.25, -1.0, -0.5, 0.25, -0.25, 0.25, -1.0, -0.5, 0.25, 1.0, 1.0, 0.75, 0.0, 0.75, -0.5, 0.75, -1.0, -0.75, 0.25, 0.25, 0.0, 0.75, -0.5, 1.0, -0.75, 1.0, 0.0, -0.5, -1.0, 0.5, 0.5, -0.75, 0.25, -0.25, 1.0, 0.75, 1.0, -0.25, -0.75, 0.5, 1.0, -0.5, -1.0, -0.25, -0.25, 0.0, -0.75, 1.0, 0.25, 0.5, -1.0, -0.25, -0.75, 0.25, -1.0, -0.5, -0.75, -0.75, 0.75, -1.0, 1.0, -0.75, -0.5, -1.0, -0.25, 0.75, 0.75, -0.25, 0.25, 0.25, -1.0, 0.0, 1.0, -0.25, 0.5, -0.75, 0.75, -1.0, 1.0, -0.75, -0.25, ]);
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
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
    buffer1012.destroy()
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    command_encoder203.pushDebugGroup("mygroupmarker")
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1012.setPipeline(render_pipeline104);
    const array7 = new Float32Array([0.0, 1.0, -0.5, 0.75, 0.5, 0.75, 0.0, -0.25, 1.0, -0.25, 0.5, 1.0, 0.5, -0.25, -1.0, -0.25, 0.0, 0.25, 0.75, -0.75, -1.0, -0.5, -0.25, 1.0, 0.25, 0.0, -0.25, -0.25, -1.0, -1.0, 0.5, -1.0, -0.75, -1.0, 1.0, -0.5, 0.25, 0.75, 0.0, -0.25, 0.75, 0.0, 0.5, -0.5, 0.25, 0.5, 1.0, 0.5, -1.0, 0.75, 1.0, 0.5, 0.75, 1.0, -0.25, 0.5, -0.25, -0.25, 1.0, -0.5, 0.5, -1.0, -0.25, -0.5, 0.25, -0.25, 0.5, -1.0, -1.0, -0.25, -1.0, 0.25, 0.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.5, 0.5, -1.0, 0.0, -0.5, 0.5, 1.0, 1.0, -0.75, 1.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.5, -0.5, 1.0, 1.0, 1.0, -0.25, -0.25, ]);
    render_pass_encoder1012.setStencilReference(1);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device10.queue.writeBuffer(buffer1010, 0, array7, 0, array7.length);
    
    render_pass_encoder1012.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.draw(3);
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer200,
        0
    )
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
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
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1012.setStencilReference(1);
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    command_encoder002.popDebugGroup()
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const command_buffer202 = command_encoder202.finish();
    device10.queue.submit([command_buffer100, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    query301.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.dispatchWorkgroups(100);
    
    command_encoder203.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    render_pass_encoder1012.setStencilReference(1);
    
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_pass_encoder1021.setPipeline(render_pipeline107);
    render_pass_encoder1012.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    render_pass_encoder1012.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.setPipeline(compute_pipeline107);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0011.popDebugGroup()
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([]);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1012.setBindGroup(0, bind_group105);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    compute_pass_encoder0010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1011.setVertexBuffer(0, buffer100);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder2000.end();
    device30.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    command_encoder203.popDebugGroup()
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
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
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group106);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1012.setVertexBuffer(0, buffer1013);
    render_pass_encoder1021.setVertexBuffer(0, buffer108);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    const command_buffer200 = command_encoder200.finish();
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1012.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1012.drawIndirect(buffer1010, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer306, 0);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder1012.end();
    render_pass_encoder1012.drawIndirect(buffer101, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndirect(buffer101, 0);
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder0011.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1021, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder3010.end();
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer300 = command_encoder300.finish();
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndexed(3);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1021.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1022, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    device00.queue.submit([]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1012.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder3000.end();
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
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
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.end();
    command_encoder301.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([]);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer206, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer206, 0);
    render_pass_encoder1021.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer207, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer207, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1012.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer101, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer209, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer309, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3010, 0);
    device00.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.popDebugGroup();
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    compute_pass_encoder3010.end();
    render_pass_encoder1012.drawIndirect(buffer101, 0);
    device30.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer203, ]);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    compute_pass_encoder1000.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1012.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device10.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder1012.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1012.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder1000.end();
    compute_pass_encoder3010.end();
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1012.setIndexBuffer(buffer107, "uint16");
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3015, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1012.drawIndirect(buffer103, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder3000.end();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1020.draw(3);
    compute_pass_encoder3000.end();
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.popDebugGroup();
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    render_pass_encoder1021.end();
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2011, 0);
    compute_pass_encoder2000.end();
    device30.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1031, 0);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder1020.end();
    compute_pass_encoder3000.popDebugGroup()
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder1010.drawIndexed(3);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1012.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2012, 0);
    compute_pass_encoder1020.end();
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
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
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder1020.end();
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer003, ]);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1012.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1012.drawIndirect(buffer1032, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1021.end();
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    device30.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder1012.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1012.drawIndirect(buffer1021, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1011.draw(3);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3024, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3024, 0);
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1012.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3025, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3026, 0);
    render_pass_encoder1011.end();
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    render_pass_encoder1012.drawIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    device30.queue.submit([]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1012.drawIndirect(buffer101, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1012.drawIndirect(buffer1018, 0);
    compute_pass_encoder0011.popDebugGroup()
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    device00.queue.submit([command_buffer001, ]);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    render_pass_encoder1021.setIndexBuffer(buffer1039, "uint16");
    device30.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1012.drawIndirect(buffer101, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder1021.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3031, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1012.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer102, ]);
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3011);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    compute_pass_encoder1020.popDebugGroup()
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1012.drawIndexedIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1042, 0);
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3013);
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1012.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3038, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1011.endOcclusionQuery()
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1031, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder3010.end();
    compute_pass_encoder2000.end();
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3041, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    device30.queue.submit([]);
    render_pass_encoder1012.drawIndirect(buffer1010, 0);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1012.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
}