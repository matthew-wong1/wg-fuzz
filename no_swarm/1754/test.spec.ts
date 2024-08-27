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
    
    
    const array0 = new Float32Array([-0.5, -0.5, 1.0, -0.75, -0.5, -0.75, 0.75, 0.75, -0.5, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -0.25, 0.25, -0.5, -0.5, -1.0, 0.5, 0.5, -0.5, 0.5, 1.0, -1.0, 0.5, -0.75, -0.25, 0.25, -1.0, -0.25, -0.25, 1.0, 0.0, -0.75, -0.5, 1.0, -1.0, 0.75, 1.0, 0.0, -0.75, -0.75, 0.0, -0.25, 0.25, 0.5, 0.5, 0.25, 0.5, -0.25, -0.25, 0.5, -0.5, 0.5, 0.5, 0.0, -0.75, -0.25, 0.75, -0.5, -0.75, 0.0, -0.75, -0.5, -0.5, -0.5, -0.75, -0.75, 0.75, 0.0, 0.0, -1.0, 0.75, 1.0, 1.0, -1.0, -0.25, -0.25, 0.25, -0.75, 1.0, 0.25, -0.25, 0.5, 0.25, -0.5, 0.0, -0.5, -1.0, -0.5, -0.5, -1.0, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array1 = new Float32Array([-0.75, 0.75, -0.75, 0.0, 0.25, -1.0, 0.25, -0.75, -0.25, -0.5, -0.25, 1.0, 0.5, 0.25, -0.5, 1.0, 0.5, -1.0, -1.0, -0.5, -0.5, -1.0, -0.25, 0.5, 0.25, -1.0, 0.5, -0.5, -0.25, -0.25, 0.0, 0.75, -0.75, -1.0, 0.75, 0.5, -0.5, 0.5, -1.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.0, 0.0, -0.75, 0.0, 0.0, -0.5, -0.5, -0.5, -1.0, 1.0, 0.75, 1.0, -1.0, -1.0, 0.25, 0.0, -1.0, -0.5, 0.25, 0.25, -0.75, -0.75, 1.0, -0.25, 0.0, -1.0, 0.5, -0.25, 0.0, 0.0, 0.75, -0.25, -1.0, -0.75, 0.5, 1.0, 1.0, 0.5, -0.75, -0.5, 0.0, -1.0, 1.0, 0.75, -0.75, 0.0, -0.25, 0.25, 0.75, 0.75, -0.5, 0.75, 0.75, 0.75, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    command_encoder101.insertDebugMarker("mymarker");
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query100.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
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
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
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
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
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
    
    device10.queue.submit([]);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    command_encoder100.insertDebugMarker("mymarker");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer000.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.submit([]);
    
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    command_encoder102.copyTextureToTexture(
        {
            texture: texture100
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1030.setPipeline(compute_pipeline102);
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    
    command_encoder102.clearBuffer(buffer100);
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_buffer104 = command_encoder104.finish();
    
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
    render_bundle_encoder101.setPipeline(render_pipeline102);
    buffer001.destroy()
    device10.queue.submit([command_buffer104, ]);
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    render_pass_encoder1000.setPipeline(render_pipeline103);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    buffer001.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const command_buffer100 = command_encoder100.finish();
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.submit([command_buffer100, ]);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer103.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1000.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array2 = new Float32Array([-1.0, -0.75, -0.25, 1.0, 1.0, -0.25, -0.75, -0.25, -1.0, -1.0, -1.0, 0.75, -0.25, 0.5, 0.0, 0.0, 0.75, 0.75, 1.0, 0.5, 0.75, -1.0, 0.25, 1.0, 0.25, -0.75, -0.25, -0.25, 0.25, 1.0, -0.75, 0.75, -1.0, -0.25, -0.25, 0.25, -0.25, 0.25, -0.5, 0.0, -0.5, 0.25, 0.0, 1.0, -0.75, 0.75, -1.0, -1.0, 0.5, -0.5, 0.25, 0.5, 0.0, 0.5, -0.75, 0.25, -0.5, 0.5, 0.75, -1.0, -0.25, 1.0, -0.25, 0.5, 0.75, -0.75, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, 1.0, 0.25, -0.75, 0.75, -0.75, 0.25, 0.5, 0.75, 0.0, 0.75, 0.0, 0.0, -0.75, 0.0, 0.25, 0.25, 1.0, 0.0, 1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 1.0, -0.5, 0.75, -0.25, ]);
    
    
    
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
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const array3 = new Float32Array([-1.0, 0.0, 0.75, -1.0, 0.5, -1.0, 0.75, -1.0, -0.25, 0.25, 1.0, 0.75, -1.0, 0.0, -1.0, -0.5, 0.25, 0.0, 0.5, 0.0, -0.5, 1.0, -1.0, -0.75, -0.5, 0.0, 0.75, 0.5, -0.75, 0.0, 0.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.25, 0.5, 0.25, -0.75, -1.0, -0.25, -1.0, -0.5, 0.25, -0.5, 1.0, -0.75, -0.5, 1.0, -0.25, -0.5, -0.5, -0.25, 1.0, -0.25, 0.0, 0.75, 0.0, 1.0, 0.5, -0.25, -0.75, -0.5, -1.0, -0.75, 0.5, -0.75, -0.75, 0.5, 0.75, 0.25, -0.75, -0.25, 0.75, 1.0, 0.75, 1.0, -0.75, -0.25, 0.25, -0.5, -1.0, 0.0, -0.75, 0.5, -0.75, -0.75, -1.0, -0.75, 0.75, 0.0, 0.5, -0.75, 1.0, 1.0, -0.25, -0.25, -0.5, 0.25, ]);
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.copyTextureToTexture(
        {
            texture: texture100
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query000.destroy()
    device10.pushErrorScope("validation");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder1000.setStencilReference(1);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setStencilReference(1);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const array4 = new Float32Array([-1.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.75, 0.25, 0.75, -1.0, 0.25, -0.75, -0.5, -1.0, -0.5, -0.75, -0.25, 0.5, -0.75, 0.0, -0.25, 1.0, -1.0, 0.25, 0.5, 0.75, 0.0, 1.0, 0.0, -0.5, -1.0, -1.0, 0.25, 1.0, 0.0, -0.25, -0.25, -0.25, -1.0, -1.0, 0.5, -0.75, 0.75, -0.5, -0.75, 0.5, -0.5, 0.0, 0.25, -1.0, -0.5, -0.75, 1.0, -0.25, 1.0, -0.25, 0.25, -0.25, 0.25, 0.75, -0.5, 0.5, -0.75, 1.0, 0.0, -1.0, 0.5, 0.75, 0.25, 0.5, 0.75, -0.75, -0.5, 0.25, 0.25, 0.5, -1.0, 0.75, -0.5, -0.75, -0.75, 0.75, 0.75, -0.25, 0.5, 0.5, 0.75, 0.25, -0.75, 1.0, -0.25, 1.0, 0.5, 1.0, -0.75, 0.75, -1.0, 0.75, -0.75, -0.25, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder1011.setPipeline(render_pipeline102);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_pass_encoder1010.setPipeline(render_pipeline105);
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1030.executeBundles([])
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query101
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
    buffer104.destroy()
    
    render_pass_encoder1031.insertDebugMarker("marker");
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group102);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    texture103.destroy();
    render_pass_encoder1030.setPipeline(render_pipeline103);
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const array5 = new Float32Array([-0.25, -0.25, 0.0, -0.25, -0.5, -1.0, 0.75, -1.0, 0.25, -0.25, 0.25, 1.0, 0.0, 0.0, -0.25, 0.25, 1.0, -0.75, -0.5, 0.0, -0.75, 0.0, 0.5, 1.0, 1.0, -0.5, 0.25, 0.25, 1.0, 0.75, -1.0, 1.0, -1.0, -0.25, -1.0, 0.25, 1.0, -1.0, 0.5, 0.25, -0.25, 0.75, 0.75, -0.5, 0.0, 1.0, -0.25, -0.75, 0.5, 0.25, 0.0, 0.0, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.5, -1.0, -0.25, -0.75, 0.0, -1.0, -0.25, -1.0, 0.25, 0.5, -1.0, -0.75, 0.75, 0.0, -1.0, 0.75, -0.5, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, -1.0, -0.25, 0.0, -0.75, 0.0, -1.0, -0.25, -0.75, -0.25, 0.25, 0.75, -0.75, -0.75, -1.0, 1.0, 0.0, -0.25, 0.5, 0.25, ]);
    texture101.destroy();
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group103);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer107.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer109, 0);
    render_pass_encoder1020.executeBundles([])
    buffer109.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1020.setPipeline(render_pipeline108);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query101.destroy()
    
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1031.setPipeline(render_pipeline107);
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    
    query101.destroy()
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group105);
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
        occlusionQuerySet: query101
    });
    device00.destroy();
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    buffer1011.destroy()
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    texture102.destroy();
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1021.setStencilReference(1);
    buffer106.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder1021.setPipeline(render_pipeline103);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer1011,
        0
    )
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_bundle_encoder100.setVertexBuffer(0, buffer101);
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.setPipeline(render_pipeline104);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const array6 = new Float32Array([0.5, 0.75, -0.5, 1.0, -0.25, 0.5, 0.5, -0.25, -0.5, -0.5, 1.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.75, -0.75, 0.5, -0.25, -0.25, -1.0, -0.5, 0.0, 1.0, -1.0, 0.5, -1.0, 0.25, 0.25, 0.75, -0.25, -0.25, -0.5, 0.75, 1.0, -0.25, 0.25, 0.0, -0.25, 0.75, 0.5, 1.0, 1.0, 0.25, 0.0, -0.5, 1.0, 0.0, 0.25, -0.25, 0.25, -1.0, 0.25, 0.25, 1.0, 0.0, -0.25, -0.5, -0.75, 0.75, -0.5, -0.5, -0.5, -1.0, -1.0, 0.0, -0.25, 1.0, -0.75, -1.0, 0.0, 0.0, 0.75, 1.0, 0.0, 0.75, -0.25, -1.0, 1.0, 1.0, 1.0, 0.25, -0.25, 0.5, 0.0, 0.5, 0.25, 1.0, 1.0, -0.25, 0.5, -0.75, 1.0, 0.25, -1.0, -0.5, 0.0, 0.25, 1.0, ]);
    buffer1010.destroy()
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    buffer1013.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1031.setStencilReference(1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer1015, 0, array2, 0, array2.length);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    
    query101.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.drawIndirect(buffer1014, 0);
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1000.setStencilReference(1);
    command_encoder101.copyBufferToBuffer(
        buffer105,
        0,
        buffer100,
        0,
        400
    );
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.25, 0.25, 0.75, -0.25, -0.25, 0.75, 0.0, 1.0, -1.0, 0.0, -0.25, 0.25, 0.25, -0.25, -0.5, 0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 0.75, 0.5, 1.0, 0.5, -0.5, 1.0, -1.0, -0.5, -0.25, -0.25, -0.25, 0.5, 1.0, 0.0, -0.25, -0.5, -1.0, -1.0, -0.5, 0.75, -0.75, 0.0, -0.75, -1.0, 1.0, 0.5, 0.5, -0.5, -0.75, 0.75, -1.0, 0.5, -1.0, -0.5, 0.5, -1.0, 0.25, 0.0, 0.0, -0.25, 0.25, 0.25, -1.0, -0.75, 0.5, -0.5, 1.0, 0.75, -0.75, -0.5, 0.75, 0.0, 0.0, -0.5, 0.75, 0.25, -0.25, -0.75, 0.5, -0.75, -0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 0.5, -0.5, 0.75, 0.75, 1.0, 0.0, 0.75, -0.75, 1.0, 0.5, -0.5, 0.0, 0.75, ]);
    command_encoder101.insertDebugMarker("mymarker");
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder102.popDebugGroup()
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_bundle_encoder102.setVertexBuffer(0, buffer104);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.submit([command_buffer104, ]);
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer400.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group107);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1050.setPipeline(render_pipeline104);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer401.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1031.popDebugGroup();
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1031.setStencilReference(1);
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    
    device10.queue.writeBuffer(buffer1014, 0, array4, 0, array4.length);
    command_encoder105.clearBuffer(buffer1011);
    render_pass_encoder1010.popDebugGroup();
    
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group108);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1017.destroy()
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1051.setPipeline(render_pipeline108);
    render_pass_encoder1031.setStencilReference(1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1021.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.executeBundles([])
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1060.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder103.setBindGroup(0, bind_group109);
    render_pass_encoder1060.setPipeline(render_pipeline105);
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer105.destroy()
    
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    buffer1018.destroy()
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1010);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    render_pass_encoder1061.setPipeline(render_pipeline105);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer1021);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder102.drawIndirect(buffer1024, 0);
    buffer402.destroy()
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group1011);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    buffer1022.destroy()
    render_pass_encoder1051.insertDebugMarker("marker");
    
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    device10.pushErrorScope("out-of-memory");
    buffer1015.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder1060.setVertexBuffer(0, buffer1016);
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group1012);
    command_encoder400.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.setVertexBuffer(0, buffer1015);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.drawIndirect(buffer1017, 0);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1021.popDebugGroup();
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group1014);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.setVertexBuffer(0, buffer1013);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1015);
    render_pass_encoder1030.setVertexBuffer(0, buffer1024);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1035, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.setVertexBuffer(0, buffer1016);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
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
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1016);
    render_pass_encoder1000.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1031.setVertexBuffer(0, buffer1037);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1051.setVertexBuffer(0, buffer1033);
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
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
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group1018);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1014, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1061.setVertexBuffer(0, buffer107);
    compute_pass_encoder1000.end();
    render_pass_encoder1061.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
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
    
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1019);
    render_pass_encoder1061.end();
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1020);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.setVertexBuffer(0, buffer1044);
    render_pass_encoder1050.setVertexBuffer(0, buffer1022);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1046, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder1050.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
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
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1021);
    render_pass_encoder1031.end();
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1010.end();
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1060.setIndexBuffer(buffer1028, "uint16");
    command_encoder101.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1050.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1049, 0);
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
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder1020.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1051, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndexed(3);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1051.popDebugGroup();
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
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
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1022);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder1050.end();
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1035, 0);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1061.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    device10.queue.submit([command_buffer105, ]);
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1023);
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, ]);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.end();
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
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1024);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1000.popDebugGroup();
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.drawIndirect(buffer1058, 0);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1050.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1061, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1061, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1062, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer104, command_buffer106, ]);
    render_pass_encoder1011.end();
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1060.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1052, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1061.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1061.setIndexBuffer(buffer1039, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1063, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1063, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1048, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1057, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    render_pass_encoder1061.drawIndirect(buffer1061, 0);
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
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1026);
    render_pass_encoder1021.drawIndirect(buffer1063, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1060, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1066, 0);
    render_pass_encoder1021.drawIndirect(buffer1062, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1063, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1062, 0);
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1027);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1063, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1050.drawIndirect(buffer1066, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder1050.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.end();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1069, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1035, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1070, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1061.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
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
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1028);
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndirect(buffer1041, 0);
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1011.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndirect(buffer1073, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1070, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    device40.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1072, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1020.drawIndirect(buffer1071, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1060.drawIndirect(buffer1070, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndirect(buffer1062, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1029);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1061.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1059, "uint16");
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1030);
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.popDebugGroup();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1071, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1060.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    compute_pass_encoder1050.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1070, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1061.drawIndirect(buffer1062, 0);
    render_pass_encoder1031.drawIndirect(buffer1071, 0);
    render_pass_encoder1050.drawIndirect(buffer1066, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1062, 0);
    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1081,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1031);
    render_pass_encoder1060.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    device10.queue.submit([command_buffer104, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1051.drawIndirect(buffer1070, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndirect(buffer1074, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1031.drawIndirect(buffer1036, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    compute_pass_encoder1020.end();
    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1083,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1032);
    render_pass_encoder1051.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1030.draw(3);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1084, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1066, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1075, 0);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1063, 0);
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1033);
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1011.drawIndirect(buffer1063, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1062, 0);
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1087, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1087, 0);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1088, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1087, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1031.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1050.drawIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1020.popDebugGroup();
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1034);
    render_pass_encoder1050.drawIndirect(buffer1087, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1067, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1087, 0);
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1035);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1000.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndirect(buffer1084, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.end();
    render_pass_encoder1060.drawIndirect(buffer1062, 0);
    render_pass_encoder1010.drawIndirect(buffer1084, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1085, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1093, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1093, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1050, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndirect(buffer1050, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndirect(buffer1062, 0);
    render_pass_encoder1050.drawIndirect(buffer1062, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndirect(buffer1066, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1094, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1030.end();
    render_pass_encoder1021.drawIndirect(buffer1093, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer105, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1095, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1095, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1093, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1070, 0);
    device40.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndirect(buffer1070, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1066, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1063, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1060.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1060.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.drawIndirect(buffer1093, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1093, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1030.end();
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1050.drawIndirect(buffer1050, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1096, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1096, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1011.end();
    render_pass_encoder1051.drawIndirect(buffer108, 0);
    render_pass_encoder1030.drawIndirect(buffer1095, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1070, 0);
    compute_pass_encoder1050.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1087, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1062, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1095, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1088, 0);
    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1098,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1036);
    render_pass_encoder1061.end();
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1093, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    device40.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1030.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.drawIndirect(buffer1075, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10100,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1037);
    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10102,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1038);
    render_pass_encoder1000.popDebugGroup();
    device40.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1096, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer1062, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer101, 0);
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1039);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10105, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndirect(buffer1088, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1061.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1096, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10106, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10106, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1020.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1050.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.end();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10108, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10108, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndirect(buffer10105, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1049, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1030.end();
    compute_pass_encoder1010.popDebugGroup()
    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10110,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1040);
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder1030.drawIndirect(buffer1093, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10112,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1041);
    render_pass_encoder1021.drawIndirect(buffer1011, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10113, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10113, 0);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer1087, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.end();
    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10115,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1042);
    render_pass_encoder1011.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndirect(buffer10106, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1038, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10116, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10116, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1030.drawIndirect(buffer10108, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1000.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10113, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndirect(buffer1059, 0);
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1051.drawIndirect(buffer10108, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1070, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10118,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1043);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1051.drawIndirect(buffer1087, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10120,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1044);
    render_pass_encoder1060.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndirect(buffer1070, 0);
    render_pass_encoder1010.drawIndirect(buffer1063, 0);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer103, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1021.drawIndirect(buffer10105, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10116, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1030.drawIndirect(buffer1087, 0);
    render_pass_encoder1020.drawIndirect(buffer1084, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    compute_pass_encoder1020.end();
    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10122,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1045);
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1051.drawIndirect(buffer1066, 0);
    render_pass_encoder1050.drawIndirect(buffer10113, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer10116, 0);
    render_pass_encoder1020.drawIndirect(buffer1070, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1031.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndirect(buffer10108, 0);
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1062, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10112, "uint16");
}