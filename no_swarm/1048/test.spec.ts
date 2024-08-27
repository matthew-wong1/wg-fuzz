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
    
    const array0 = new Float32Array([0.75, 0.25, -1.0, -1.0, 1.0, -1.0, -0.5, 0.75, 0.0, -1.0, 0.0, 1.0, -0.75, -0.25, 0.5, -0.75, -0.25, 0.75, 0.0, 0.0, -1.0, 0.75, 0.25, -0.5, -0.25, -0.75, 1.0, 0.75, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.25, -1.0, -0.75, 1.0, 1.0, 0.0, 0.75, 0.0, 0.0, -0.75, -0.25, 0.0, 1.0, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, -0.5, 0.25, 0.0, 0.75, 1.0, 0.25, -0.5, 0.75, -0.5, -0.5, -0.25, -0.25, -0.5, 1.0, -1.0, 1.0, 0.5, -0.25, 1.0, 0.25, -0.5, -1.0, 0.75, 0.5, 0.25, 0.5, 0.75, 0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -0.25, -0.75, 1.0, -0.5, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, 1.0, -0.25, -1.0, 0.25, ]);
    
    
    
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    texture100.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer102 = command_encoder102.finish();
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer102, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_buffer103 = command_encoder103.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    query101.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    command_encoder200.popDebugGroup()
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
        occlusionQuerySet: undefined
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    buffer100.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query101.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device30.pushErrorScope("validation");
    compute_pass_encoder1010.popDebugGroup()
    
    
    texture101.destroy();
    device00.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array1 = new Float32Array([-0.75, 1.0, 0.0, -0.75, 0.5, -0.5, -0.75, -1.0, -1.0, 0.75, 0.75, -0.25, 0.25, -1.0, -1.0, 1.0, 0.0, -1.0, -0.25, 0.0, 0.0, 0.25, 0.5, 1.0, 0.25, 0.75, 0.0, -0.75, 0.75, 1.0, -0.75, -0.5, -1.0, 0.25, -0.5, -1.0, 0.75, 0.25, 1.0, 0.25, 1.0, -1.0, -0.25, -0.25, 1.0, -0.5, -0.5, 0.5, 0.0, -0.25, 0.75, 0.5, 0.75, 0.0, 0.25, -0.25, -0.5, 1.0, 0.75, -1.0, 0.25, -0.75, 0.0, 0.75, -0.25, -0.25, -0.25, 1.0, 0.0, 0.0, 0.25, -1.0, 1.0, -0.5, 0.5, -0.25, 0.5, 0.5, -0.5, 0.0, 0.25, 1.0, -1.0, -0.75, -0.25, 1.0, 1.0, -0.5, 0.75, -0.25, 1.0, -0.25, 1.0, 1.0, 0.0, -0.75, -1.0, -0.5, 1.0, -1.0, ]);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    texture100.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer101.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_bundle_encoder200.popDebugGroup();
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
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
    
    device10.pushErrorScope("internal");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1001.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1000.executeBundles([])
    
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
    render_pass_encoder1000.setPipeline(render_pipeline102);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    buffer102.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    
    render_pass_encoder1001.setStencilReference(1);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device20.pushErrorScope("internal");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer201.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.setStencilReference(1);
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setStencilReference(1);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    render_bundle_encoder201.popDebugGroup();
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    texture201.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query301.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    texture203.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_pass_encoder1010.setStencilReference(1);
    buffer107.destroy()
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer105.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    render_bundle_encoder200.popDebugGroup();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer109.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer200.destroy()
    query201.destroy()
    
    texture301.destroy();
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
    command_encoder100.clearBuffer(buffer105);
    
    texture200.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder100.clearBuffer(buffer102);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    texture103.destroy();
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query202
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query202
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
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer103,
        0
    )
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer108,
        0
    )
    render_pass_encoder2030.setPipeline(render_pipeline201);
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    render_pass_encoder2010.beginOcclusionQuery(0)
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    buffer108.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query201.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.setVertexBuffer(0, buffer1012);
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2041,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.drawIndirect(buffer104, 0);
    render_pass_encoder2021.setStencilReference(1);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.setPipeline(render_pipeline100);
    render_pass_encoder2021.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    texture102.destroy();
    render_pass_encoder1001.setPipeline(render_pipeline100);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture102.destroy();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1013, 0);
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    buffer1013.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2030.beginOcclusionQuery(0)
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2023,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline202);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    texture206.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder2021.setStencilReference(1);
    
    query101.destroy()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const array2 = new Float32Array([0.5, -0.5, -0.25, 1.0, 0.0, 1.0, -0.75, 0.75, 0.75, 0.5, -0.25, -1.0, 1.0, -0.5, 0.25, 0.5, 0.25, 1.0, 0.25, -0.75, -0.5, -0.5, 0.75, -0.75, -1.0, 0.75, 0.0, 0.5, 0.25, 0.75, -1.0, 0.5, -1.0, 0.75, 0.75, 0.0, -0.25, -0.25, -1.0, -1.0, 0.5, 0.75, 0.5, 0.5, -0.75, -1.0, -0.5, 1.0, 0.5, -1.0, 0.25, 0.5, -1.0, -0.75, -0.25, -0.25, 0.5, -0.75, 0.25, 0.0, 0.25, -0.75, 0.0, -0.75, -1.0, -0.5, -1.0, 0.5, -0.25, -0.25, -0.25, -0.5, 0.5, 0.0, -1.0, -0.25, -0.75, -0.75, 0.0, -0.5, -0.25, 0.25, 0.75, -1.0, -1.0, -0.5, -0.75, -1.0, 1.0, 0.75, -1.0, -0.5, -1.0, 1.0, -1.0, -1.0, 0.25, -0.25, 0.75, -0.5, ]);
    render_pass_encoder2031.setStencilReference(1);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2031.insertDebugMarker("marker");
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query301.destroy()
    render_pass_encoder2021.setPipeline(render_pipeline201);
    render_pass_encoder2021.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    query102.destroy()
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

    render_pass_encoder2021.setBindGroup(0, bind_group201);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout104]
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout109,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query201
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture204.width / 2, texture204.height / 2);
    render_pass_encoder1011.setStencilReference(1);
    
    render_pass_encoder2010.endOcclusionQuery()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    command_encoder100.copyBufferToBuffer(
        buffer1012,
        0,
        buffer101,
        0,
        400
    );
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    
    render_pass_encoder2011.setStencilReference(1);
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_pass_encoder2031.setPipeline(render_pipeline201);
    
    render_bundle_encoder102.setPipeline(render_pipeline103);
    render_pass_encoder1010.executeBundles([])
    render_bundle_encoder100.setVertexBuffer(0, buffer1012);
    render_pass_encoder1001.insertDebugMarker("marker");
    texture204.destroy();
    texture204.destroy();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1010.setPipeline(render_pipeline102);
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2030.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group203);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    render_pass_encoder2011.setPipeline(render_pipeline202);
    buffer208.destroy()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    const texture_view2024 = texture202.createView({ label: "texture_view2024" });
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group204);
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder1001.setVertexBuffer(0, buffer100);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1010.end();
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group206);
    render_pass_encoder2030.setVertexBuffer(0, buffer208);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder2022.setPipeline(render_pipeline200);
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group207);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group105);
    render_pass_encoder1010.setVertexBuffer(0, buffer1012);
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group208);
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder2001.setPipeline(render_pipeline202);
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder2011.setVertexBuffer(0, buffer2013);
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.end();
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2010.popDebugGroup();
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
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group209);
    render_pass_encoder2031.setVertexBuffer(0, buffer203);
    render_pass_encoder2000.setVertexBuffer(0, buffer2021);
    render_pass_encoder2011.end();
    render_pass_encoder2031.drawIndirect(buffer2017, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2020, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2011.draw(3);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group106);
    render_pass_encoder2010.setVertexBuffer(0, buffer2012);
    render_pass_encoder1011.setVertexBuffer(0, buffer100);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    command_encoder100.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder2031.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2001.setVertexBuffer(0, buffer2021);
    render_pass_encoder2001.drawIndirect(buffer2022, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer204);
    render_pass_encoder2031.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2010.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.setVertexBuffer(0, buffer204);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder2022.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2022.setBindGroup(0, bind_group2010);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2022.setVertexBuffer(0, buffer208);
    render_pass_encoder2022.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer2015, 0);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder2021.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2030.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    const command_buffer203 = command_encoder203.finish();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2022.end();
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder1011.end();
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2031.setIndexBuffer(buffer203, "uint16");
    device20.queue.submit([command_buffer200, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2022.setIndexBuffer(buffer2025, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2011.end();
    device20.queue.submit([]);
    render_pass_encoder2022.drawIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder2021.drawIndirect(buffer208, 0);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2027, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2001.drawIndirect(buffer2027, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexed(3);
    device10.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder2022.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2022.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2022.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2022.end();
    compute_pass_encoder3010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2031.drawIndirect(buffer2024, 0);
    render_pass_encoder2022.drawIndirect(buffer2017, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2022.drawIndirect(buffer2025, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2010.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer207, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1001.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder1001.draw(3);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2022.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2022.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2015, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2022.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2022.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1000.end();
    render_pass_encoder2022.drawIndirect(buffer2022, 0);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer2018, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2022, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2031.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder2000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1000.end();
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2030.end();
    render_pass_encoder1011.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2020, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder2031.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2022.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder2021.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2026, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2022.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2011.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder2011.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder2011.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2000.end();
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1011.draw(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.drawIndirect(buffer209, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2022.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2018, 0);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder1010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder2011.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    render_pass_encoder1001.draw(3);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder2010.drawIndirect(buffer2026, 0);
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder2011.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2021.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer208, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2018, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2024, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2031.end();
    render_pass_encoder1000.draw(3);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2031.drawIndirect(buffer2025, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder2010.end();
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2030, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
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
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1026, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2018, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2031.setIndexBuffer(buffer2023, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2031.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2011.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2022.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1011.end();
    render_pass_encoder2022.end();
    render_pass_encoder2020.setIndexBuffer(buffer2036, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1033, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2031.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.draw(3);
    device00.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder2022.drawIndexed(3);
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    render_pass_encoder2030.drawIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2018, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder1001.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2022.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2001.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder1011.end();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2033, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2035, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2034, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2020, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder2020.drawIndirect(buffer2037, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder2022.drawIndirect(buffer202, 0);
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2011.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2030.drawIndirect(buffer2041, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    render_pass_encoder2022.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2022.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2026, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.end();
    render_pass_encoder2010.end();
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    device30.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2047, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2023, "uint16");
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2031.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2022.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2031.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2001.drawIndirect(buffer2041, 0);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer2029, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2015, "uint16");
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2031.end();
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder2011.drawIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2024, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2022.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder2011.end();
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2011.endOcclusionQuery()
    compute_pass_encoder2000.end();
    render_pass_encoder2020.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2030, "uint16");
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2021.drawIndexed(3);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([]);
    render_pass_encoder2021.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1036, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder1000.end();
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.end();
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2047, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2055,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2042, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.end();
    render_pass_encoder2031.setIndexBuffer(buffer2055, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2024, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2022, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder2022.end();
    render_pass_encoder1001.end();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    render_pass_encoder2031.drawIndirect(buffer2035, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder2022.drawIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2041, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2022.drawIndirect(buffer2021, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2057,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2014, "uint16");
    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2059,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2027);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2056, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2060, 0);
    device10.queue.submit([command_buffer100, ]);
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2060, 0);
    device30.queue.submit([]);
    render_pass_encoder2020.end();
    device20.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2051, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    device20.queue.submit([]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder2010.end();
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2029);
    render_pass_encoder1010.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2065, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2047, "uint16");
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
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
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder2022.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2022.drawIndirect(buffer200, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder2030.drawIndirect(buffer2055, 0);
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2022.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2046, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2011.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2022.drawIndirect(buffer2060, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2057, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2066, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2066, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2067, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2067, 0);
    render_pass_encoder2020.drawIndirect(buffer2066, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2065, 0);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2030);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1041, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1041, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndirect(buffer1035, 0);
    render_pass_encoder2031.drawIndirect(buffer2067, 0);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder2000.drawIndirect(buffer2050, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2000.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder2022.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2066, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2001.drawIndirect(buffer2039, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2067, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    device10.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer2060, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2022.drawIndirect(buffer208, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2020.end();
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder2010.drawIndirect(buffer2047, 0);
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    render_pass_encoder2010.drawIndirect(buffer2065, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2022.drawIndirect(buffer2013, 0);
    render_pass_encoder2022.drawIndirect(buffer2027, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2067, 0);
    render_pass_encoder2020.drawIndirect(buffer2045, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    compute_pass_encoder3010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder2022.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder2011.drawIndirect(buffer2061, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndirect(buffer2062, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder2021.drawIndexedIndirect(buffer2067, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2070, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2070, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder2020.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2071, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2071, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2071, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexedIndirect(buffer2047, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2022.end();
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder2000.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2022.drawIndirect(buffer2021, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2067, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder2021.drawIndirect(buffer2053, 0);
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    device10.queue.submit([command_buffer102, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndirect(buffer2064, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2067, 0);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder2011.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2058, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.end();
    render_pass_encoder2020.drawIndirect(buffer2060, 0);
    render_pass_encoder2020.drawIndirect(buffer2060, 0);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder1000.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2069, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder2022.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2011.drawIndirect(buffer2052, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2071, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2021.end();
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    render_pass_encoder2031.drawIndirect(buffer2060, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder2001.drawIndirect(buffer2067, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2021.drawIndirect(buffer2067, 0);
    render_pass_encoder2022.drawIndirect(buffer2060, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2048, 0);
    device30.queue.submit([]);
    render_pass_encoder2022.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder2022.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2066, 0);
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1001.end();
    render_pass_encoder2020.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2022.drawIndirect(buffer2067, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2042, "uint16");
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder2022.drawIndirect(buffer2022, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2022.drawIndirect(buffer2039, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.end();
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder2022.drawIndirect(buffer2070, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder2011.drawIndirect(buffer2066, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2011.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder2031.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2035, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2020.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2022.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2067, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2022.drawIndirect(buffer2060, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2070, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2054, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2022.drawIndirect(buffer2071, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2071, 0);
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2031);
    render_pass_encoder2021.drawIndirect(buffer2067, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndirect(buffer2066, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2022.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2022.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2021.end();
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2059, 0);
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
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
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    render_pass_encoder2030.drawIndirect(buffer2067, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder2010.drawIndirect(buffer2052, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2022.setIndexBuffer(buffer2039, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2019, 0);
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2074, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    device30.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2022.drawIndirect(buffer2066, 0);
    render_pass_encoder2021.drawIndirect(buffer2074, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2071, 0);
    device20.queue.submit([]);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2031.drawIndirect(buffer2074, 0);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2064, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2022.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2022.drawIndirect(buffer2035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2060, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2051, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2010.drawIndirect(buffer2060, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2031.end();
    render_pass_encoder2031.drawIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder2010.drawIndirect(buffer2045, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    device20.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2066, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2066, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2020.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndirect(buffer2042, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    render_pass_encoder2022.drawIndirect(buffer2035, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2010.drawIndirect(buffer2070, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1052, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2066, 0);
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2031.drawIndirect(buffer2013, 0);
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2056, 0);
    render_pass_encoder2011.end();
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder2022.drawIndirect(buffer2071, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2066, 0);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder2022.drawIndirect(buffer201, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2031, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    compute_pass_encoder1010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2075, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2075, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2022.drawIndirect(buffer206, 0);
    render_pass_encoder2000.drawIndirect(buffer2065, 0);
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder2010.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2021.drawIndirect(buffer2075, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    device10.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.drawIndirect(buffer2060, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder2011.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2074, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2077,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2032);
    render_pass_encoder2011.drawIndirect(buffer2067, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2070, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2060, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder2021.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1010.end();
    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2079,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2033);
    render_pass_encoder2021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2001.drawIndirect(buffer2029, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer2040, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2022.drawIndirect(buffer2012, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2066, 0);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    device20.queue.submit([]);
    render_pass_encoder2010.end();
    render_pass_encoder2011.drawIndirect(buffer2065, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndirect(buffer2070, 0);
    render_pass_encoder2000.drawIndirect(buffer2066, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2011.drawIndirect(buffer2044, 0);
    render_pass_encoder2011.drawIndirect(buffer2060, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2011.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2020.drawIndirect(buffer2067, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndirect(buffer2076, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2069, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    device20.queue.submit([]);
    render_pass_encoder2031.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder2022.drawIndirect(buffer2065, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2066, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.end();
    render_pass_encoder2022.drawIndirect(buffer2066, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2022.drawIndirect(buffer2060, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2010.drawIndirect(buffer2070, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2022.popDebugGroup();
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1018);
    render_pass_encoder2031.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2075, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2070, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2021.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2067, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2001.drawIndirect(buffer2071, 0);
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer2072, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2022.drawIndirect(buffer2045, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2043, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2011.drawIndirect(buffer2067, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2010.drawIndirect(buffer2067, 0);
    render_pass_encoder2022.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2022.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2001.drawIndirect(buffer2074, 0);
    render_pass_encoder2022.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2022.drawIndirect(buffer2079, 0);
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1019);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2049, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2031.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.end();
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2066, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2011.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2035, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2081,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2034);
    render_pass_encoder2011.setIndexBuffer(buffer2026, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2022.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2066, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2032, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2039, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2030.setIndexBuffer(buffer2077, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    device10.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder2000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    render_pass_encoder2010.drawIndirect(buffer2076, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    render_pass_encoder2021.end();
    render_pass_encoder2022.setIndexBuffer(buffer2023, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2021.drawIndirect(buffer2063, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndirect(buffer1042, 0);
    device30.queue.submit([]);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2067, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder1010.end();
    render_pass_encoder2020.setIndexBuffer(buffer2072, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2031.drawIndirect(buffer2049, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndirect(buffer2078, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2001.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2066, 0);
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndirect(buffer2066, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2056, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2048, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2082, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2082, 0);
    render_pass_encoder2030.drawIndirect(buffer2066, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2035, 0);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder1010.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.drawIndirect(buffer2065, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2001.drawIndirect(buffer2070, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2031.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.setIndexBuffer(buffer2077, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2031.drawIndirect(buffer2074, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2020.drawIndirect(buffer2065, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2022.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2075, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2067, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    render_pass_encoder2022.drawIndirect(buffer2011, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1059, 0);
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2034, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2060, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2065, 0);
    render_pass_encoder2011.drawIndirect(buffer2075, 0);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2031.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2021.drawIndirect(buffer2071, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.end();
    device30.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2077, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2082, 0);
    device20.queue.submit([]);
    render_pass_encoder2022.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2010.drawIndirect(buffer2060, 0);
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    render_pass_encoder2000.drawIndirect(buffer2074, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2031.drawIndirect(buffer2067, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2001.drawIndirect(buffer2060, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2024, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndirect(buffer2060, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2074, 0);
    render_pass_encoder2020.drawIndirect(buffer2066, 0);
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2022.draw(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2074, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2000.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2071, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2020.drawIndirect(buffer2066, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2022.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2010.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndirect(buffer2060, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.drawIndirect(buffer2066, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2071, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2031.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2022.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2072, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2031.end();
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder2031.drawIndirect(buffer2070, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder2021.drawIndirect(buffer2066, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2056, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2000.drawIndirect(buffer2075, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.drawIndirect(buffer2066, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2022.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2054, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    render_pass_encoder2001.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2031.drawIndirect(buffer2067, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2035);
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2021.setIndexBuffer(buffer2048, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2076, 0);
    render_pass_encoder2031.drawIndirect(buffer2082, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder2022.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2067, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2010.drawIndirect(buffer2070, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder2001.drawIndirect(buffer2066, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2082, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer2061, "uint16");
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2036);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1022);
    render_pass_encoder2010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2031.drawIndirect(buffer2067, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndirect(buffer2077, 0);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    render_pass_encoder2021.drawIndirect(buffer2066, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2041, 0);
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2066, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2031.drawIndirect(buffer2035, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2071, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2082, 0);
    render_pass_encoder2031.end();
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.setIndexBuffer(buffer2082, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2078, 0);
    render_pass_encoder1000.drawIndirect(buffer1034, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndirect(buffer2048, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2065, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2064, "uint16");
    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2088,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2037);
    render_pass_encoder2021.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2021.drawIndirect(buffer2065, 0);
    render_pass_encoder2021.drawIndirect(buffer2050, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2060, 0);
    render_pass_encoder2022.drawIndirect(buffer2027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2001.drawIndirect(buffer2060, 0);
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2022.drawIndirect(buffer2035, 0);
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1023);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder2021.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder2022.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2075, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder2031.drawIndirect(buffer2066, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2022.end();
    render_pass_encoder2010.drawIndirect(buffer2082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder1001.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2001.drawIndirect(buffer2027, 0);
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder2010.drawIndirect(buffer2048, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2067, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder2000.drawIndirect(buffer2042, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2010.popDebugGroup();
    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2090,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2038);
    render_pass_encoder1000.end();
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2070, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2046, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2060, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder2022.setIndexBuffer(buffer2087, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2085, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2010.drawIndirect(buffer2083, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2070, 0);
    device30.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndirect(buffer2070, 0);
    render_pass_encoder2011.drawIndirect(buffer2075, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2001.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2031.drawIndirect(buffer2051, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2031.draw(3);
    compute_pass_encoder1010.end();
    device20.queue.submit([command_buffer200, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1066, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.setIndexBuffer(buffer2087, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder2030.drawIndirect(buffer2051, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2061, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder2022.drawIndirect(buffer2029, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.end();
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1067, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2060, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2022.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2072, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2001.drawIndirect(buffer2075, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2060, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2001.drawIndirect(buffer2071, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2091, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2091, 0);
    render_pass_encoder2020.drawIndirect(buffer2060, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2022.end();
    render_pass_encoder2030.drawIndirect(buffer2082, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer2082, 0);
    render_pass_encoder2011.drawIndirect(buffer2070, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.end();
    render_pass_encoder2020.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2067, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2072, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2049, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2071, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1068, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2031.end();
    render_pass_encoder1010.setIndexBuffer(buffer1032, "uint16");
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1024);
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2070, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2071, 0);
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    render_pass_encoder2022.drawIndirect(buffer205, 0);
    render_pass_encoder2000.drawIndirect(buffer2075, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder1001.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2001.drawIndirect(buffer2070, 0);
    render_pass_encoder2022.drawIndirect(buffer2065, 0);
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2067, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2000.drawIndirect(buffer2075, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder2031.drawIndirect(buffer2071, 0);
    device20.queue.submit([]);
    render_pass_encoder2021.drawIndirect(buffer2071, 0);
    render_pass_encoder1000.drawIndirect(buffer1058, 0);
    render_pass_encoder2021.drawIndirect(buffer2091, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2022.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndirect(buffer2065, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2088, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2022.drawIndirect(buffer2075, 0);
    render_pass_encoder2022.drawIndirect(buffer2074, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2076, 0);
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder2022.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndirect(buffer2066, 0);
    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2093,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2039);
    render_pass_encoder2022.drawIndirect(buffer2065, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndirect(buffer2010, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2075, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1067, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2022.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2022.drawIndirect(buffer2082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    device00.queue.submit([]);
    render_pass_encoder2022.drawIndirect(buffer2065, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2071, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2034, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2094, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2094, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2094, 0);
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2083, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2093, "uint16");
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndirect(buffer2074, 0);
    render_pass_encoder2001.drawIndirect(buffer2091, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2095, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2095, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder1011.drawIndirect(buffer1059, 0);
    render_pass_encoder2030.drawIndirect(buffer2091, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2090, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder2020.drawIndirect(buffer2060, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2070, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2072, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1058, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2030.drawIndirect(buffer2057, 0);
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1066, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2031.drawIndirect(buffer2095, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2073, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2030.drawIndirect(buffer2091, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2094, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2022.drawIndirect(buffer2046, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder2000.drawIndirect(buffer2060, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2082, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2022.drawIndirect(buffer2082, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder2001.drawIndirect(buffer2091, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2067, "uint16");
    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2097,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2040);
    render_pass_encoder1010.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer204, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2022.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2066, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1066, 0);
    render_pass_encoder2011.drawIndirect(buffer2095, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2087, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1059, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer2067, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1001.drawIndirect(buffer1066, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2001.drawIndirect(buffer2015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2094, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2098, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2098, 0);
    render_pass_encoder2030.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndirect(buffer2085, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder2020.drawIndirect(buffer2095, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2060, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2030.end();
    render_pass_encoder1000.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1001.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2091, 0);
    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20100,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2031.drawIndirect(buffer2070, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2022.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2020.drawIndirect(buffer2094, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2022.drawIndirect(buffer2019, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2011.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    render_pass_encoder1011.drawIndirect(buffer1047, 0);
    render_pass_encoder2010.drawIndirect(buffer2094, 0);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder2031.drawIndirect(buffer2071, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer2045, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2022.end();
    render_pass_encoder2031.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2056, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder2020.drawIndirect(buffer2049, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2001.drawIndirect(buffer2060, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2022.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2001.drawIndirect(buffer2082, 0);
    render_pass_encoder2001.drawIndirect(buffer2044, 0);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer2091, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2074, 0);
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2063, 0);
    render_pass_encoder2031.drawIndirect(buffer2075, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2086, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer2076, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder2031.drawIndirect(buffer2043, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2098, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2022.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder2022.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndirect(buffer1065, 0);
    render_pass_encoder2010.drawIndirect(buffer2091, 0);
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1025);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    render_pass_encoder2011.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndirect(buffer2071, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2010.drawIndirect(buffer2074, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2022.end();
    render_pass_encoder2031.drawIndirect(buffer2065, 0);
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2076, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20102,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2042);
    render_pass_encoder2022.drawIndexedIndirect(buffer2096, 0);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2093, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndirect(buffer2085, 0);
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1001.drawIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2081, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer20100, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2028, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2095, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2074, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2011.drawIndirect(buffer2089, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2094, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2001.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2031.drawIndirect(buffer2091, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndirect(buffer2083, 0);
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
}