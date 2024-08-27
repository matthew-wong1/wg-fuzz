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
    
    
    const array0 = new Float32Array([0.75, 1.0, -0.75, -0.75, 0.5, -1.0, -0.75, -0.5, -0.25, -1.0, 1.0, -0.5, -1.0, 0.75, 0.75, 0.25, 0.5, 0.5, 0.75, 0.25, -1.0, -0.75, -0.5, 1.0, 0.5, 1.0, -0.75, 0.75, 0.75, 0.75, -0.75, -0.25, 0.0, -1.0, 1.0, 1.0, 0.75, -1.0, -1.0, 1.0, 0.5, -1.0, 0.25, 0.5, 1.0, 0.0, 0.0, 0.75, 0.25, 0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.5, 0.0, -0.5, 1.0, -0.75, -1.0, 0.0, 0.25, 0.0, 1.0, -0.75, -0.5, 0.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.5, 0.0, 0.75, -0.75, 0.0, 0.75, -1.0, 0.75, 0.5, -0.5, 0.75, -0.25, -0.75, 0.0, 0.0, 1.0, -1.0, -0.25, -0.5, -0.75, 0.25, 0.0, 1.0, 0.25, 0.5, -1.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    
    
    
    
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.pushErrorScope("out-of-memory");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array1 = new Float32Array([-1.0, -0.75, 0.5, 0.25, -0.75, -0.75, -0.75, -0.25, -0.25, 0.0, 0.25, -0.5, 0.25, 1.0, 0.5, -0.25, -0.25, -1.0, 0.0, 0.0, 0.5, -0.25, -0.5, -0.5, -1.0, 0.0, -0.5, -1.0, 1.0, -0.75, 0.75, -0.75, 0.75, 0.75, 0.5, -1.0, -0.25, -0.75, -1.0, 0.0, 0.5, 0.0, 1.0, 1.0, -0.25, 1.0, 1.0, 0.5, 0.0, -0.5, -0.75, -0.5, 1.0, 0.5, 0.25, -1.0, 0.0, -0.75, -0.25, 0.0, -1.0, -1.0, -0.75, -1.0, 0.0, -0.5, 0.75, -0.75, 1.0, -0.25, 0.75, 1.0, -1.0, 1.0, 0.5, -1.0, -0.5, -0.25, -1.0, 0.5, 0.75, -1.0, -1.0, 0.0, 0.25, 0.75, 0.25, -1.0, 0.25, -0.75, 0.0, 1.0, 0.0, -0.75, 0.75, 0.75, 0.0, -0.75, 0.5, 1.0, ]);
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
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    device10.pushErrorScope("internal");
    
    query100.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
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
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    
    
    
    
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    texture000.destroy();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
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
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.destroy();
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
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    buffer102.destroy()
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    buffer100.destroy()
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("internal");
    const command_buffer201 = command_encoder201.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.queue.submit([command_buffer201, ]);
    buffer101.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    buffer100.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    command_encoder200.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
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
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    query102.destroy()
    
    buffer200.destroy()
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
    compute_pass_encoder2000.popDebugGroup()
    
    
    query300.destroy()
    
    command_encoder300.insertDebugMarker("mymarker");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array2 = new Float32Array([0.5, 1.0, 0.25, 0.25, 1.0, 0.0, 0.25, 0.5, -1.0, -1.0, -0.5, 0.25, 0.0, 1.0, 0.75, -1.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.75, -0.5, -0.5, 0.25, -1.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.25, -1.0, -1.0, -1.0, -0.5, 0.5, -1.0, 1.0, 0.25, 0.5, -0.5, 0.25, 1.0, 1.0, -0.25, 0.25, -1.0, -0.25, -0.5, -1.0, 1.0, 0.25, -0.25, 0.5, 0.0, -0.25, 0.75, -0.5, 0.75, 0.75, -0.75, 0.5, 0.5, 1.0, -0.25, 0.25, -1.0, 1.0, 0.75, 0.0, 1.0, 1.0, -1.0, -0.75, -1.0, -0.5, 0.25, 0.25, -0.5, -0.75, -0.25, -0.75, -0.75, 1.0, -0.5, 1.0, 0.5, -0.5, 0.75, 0.0, -0.75, 0.25, 0.75, -1.0, 0.0, 0.5, 1.0, 0.25, 1.0, ]);
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.insertDebugMarker("mymarker");
    const array3 = new Float32Array([-0.5, -1.0, 0.75, 0.25, -0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 0.75, 0.0, -1.0, 0.75, -0.25, 1.0, 0.0, 0.5, 0.0, 0.75, -0.75, -0.25, -0.25, 1.0, 1.0, -1.0, -0.25, 0.0, -0.25, -0.5, -0.5, -0.25, -0.5, -0.5, 0.75, 0.75, 0.25, -0.5, 0.5, 1.0, 0.0, 0.5, 0.0, 0.75, 0.0, 0.5, -1.0, -0.25, -0.5, 0.75, 0.0, -0.75, -0.25, 0.25, 0.5, -0.75, 0.5, 0.0, -0.5, 0.0, 0.75, 0.5, -0.25, 0.0, -1.0, 0.5, -0.5, -1.0, -0.75, -0.5, -0.75, 1.0, -0.25, 0.75, 0.0, -0.75, -1.0, -1.0, 0.75, 0.75, 0.25, 0.5, -1.0, -0.5, -0.75, -1.0, -1.0, -1.0, 0.0, -0.25, 0.75, 1.0, -1.0, -0.5, -1.0, -0.5, 0.75, -1.0, 0.25, 1.0, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer101.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device40.pushErrorScope("validation");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
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
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
    
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    query300.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder2020.insertDebugMarker("marker")
    command_encoder400.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    query303.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    
    compute_pass_encoder2020.setPipeline(compute_pipeline201);
    
    
    render_pass_encoder1000.executeBundles([])
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    buffer103.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const array4 = new Float32Array([0.25, -0.25, 0.75, 0.5, -1.0, -1.0, -0.75, -0.5, 0.5, -0.75, -0.5, 0.75, -0.75, -0.25, 0.25, 1.0, 1.0, -1.0, 1.0, 0.75, -0.25, 1.0, 0.25, -0.5, 0.5, -0.75, -0.5, 0.5, 0.75, 0.0, -0.75, 0.0, -1.0, -1.0, 0.75, -1.0, 0.25, -0.75, 0.75, -1.0, 0.0, -0.25, -0.25, 1.0, -0.5, -1.0, 0.0, 0.0, -0.5, -1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 1.0, 1.0, 1.0, 0.0, 0.25, 1.0, -0.25, -0.25, 0.5, 0.0, 0.0, -0.75, 0.75, -0.25, 0.0, 0.75, -1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 0.5, 1.0, 0.75, 0.0, 1.0, 0.5, 0.25, 1.0, 0.25, 0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 0.75, -0.75, 0.25, 1.0, -0.5, -0.75, 0.0, -0.25, ]);
    query102.destroy()
    query103.destroy()
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    query302.destroy()
    query302.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture402.destroy();
    query102.destroy()
    
    
    render_pass_encoder1000.setPipeline(render_pipeline1012);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    query103.destroy()
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    buffer104.destroy()
    
    command_encoder400.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    
    render_bundle_encoder101.popDebugGroup();
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1000.setStencilReference(1);
    texture201.destroy();
    
    texture300.destroy();
    device30.queue.submit([]);
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
    device40.queue.submit([]);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: query103
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer103.destroy()
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
        occlusionQuerySet: undefined
    });
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder300.popDebugGroup();
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setStencilReference(1);
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    
    buffer201.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    render_pass_encoder1001.setPipeline(render_pipeline1010);
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer106.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.executeBundles([render_bundle_encoder200, ])
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder102.setPipeline(render_pipeline1012);
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query101
    });
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group200);
    query100.destroy()
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_bundle_encoder101.setVertexBuffer(0, buffer106);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture401.destroy();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    render_pass_encoder2000.setPipeline(render_pipeline202);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query102.destroy()
    render_bundle_encoder102.popDebugGroup();
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query302.destroy()
    query103.destroy()
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    query101.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder1002.setPipeline(render_pipeline1012);
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    
    const array5 = new Float32Array([-0.5, 0.25, -1.0, -0.75, -0.5, 0.0, 0.75, 0.5, 0.75, 0.0, -1.0, 0.0, -0.25, 0.0, 0.5, 0.0, 1.0, -0.5, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, 1.0, -1.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 0.0, -0.25, 1.0, -0.75, 0.0, 0.5, 0.25, 1.0, -0.5, -0.75, 0.0, 0.5, -0.5, -0.75, 0.75, -0.5, -0.25, -0.25, -1.0, -0.75, 0.75, -1.0, -0.75, 0.0, 0.25, 0.75, -0.5, -0.5, -0.5, 0.75, -0.75, -0.25, -0.75, -0.5, -0.75, -0.5, -0.25, 0.5, -0.75, -0.25, 1.0, 0.5, 0.75, 0.25, 1.0, 0.0, -0.25, -0.75, 0.0, -0.5, 1.0, 0.5, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.25, -1.0, 0.75, 0.75, 0.75, -1.0, -0.25, 0.5, 1.0, 0.75, ]);
    
    
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    query103.destroy()
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder4010.popDebugGroup()
    buffer107.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.popDebugGroup();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    query104.destroy()
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
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    
    query101.destroy()
    query400.destroy()
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    
    texture200.destroy();
    command_encoder403.insertDebugMarker("mymarker");
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3000.popDebugGroup()
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    query301.destroy()
    
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture400.destroy();
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_pass_encoder4030.setPipeline(render_pipeline400);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    buffer107.destroy()
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    render_pass_encoder2050.setPipeline(render_pipeline201);
    render_pass_encoder2051.setPipeline(render_pipeline202);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
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
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline1012.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    compute_pass_encoder4020.popDebugGroup()
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

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2001.setPipeline(render_pipeline201);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2040.setPipeline(render_pipeline201);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group202);
    render_pass_encoder2040.setVertexBuffer(0, buffer207);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
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
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder2001.setVertexBuffer(0, buffer209);
    const command_buffer204 = command_encoder204.finish();
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group204);
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2051.setBindGroup(0, bind_group205);
    compute_pass_encoder2000.end();
    render_pass_encoder2040.popDebugGroup();
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group402);
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
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
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group206);
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
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
        layout: render_pipeline1012.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group103);
    render_pass_encoder2001.end();
    command_encoder203.popDebugGroup()
    render_pass_encoder1000.draw(3);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4010, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2051.setVertexBuffer(0, buffer2017);
    render_pass_encoder1002.setVertexBuffer(0, buffer108);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1000.end();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group207);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4010.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.setVertexBuffer(0, buffer2015);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2020, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4011, 0);
    render_pass_encoder2051.draw(3);
    render_pass_encoder2030.popDebugGroup();
    device30.queue.submit([]);
    device10.queue.submit([]);
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group208);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4012, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4012, 0);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder3000.end();
    compute_pass_encoder2030.end();
    render_pass_encoder2001.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2040.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1002.draw(3);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder2000.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group209);
    compute_pass_encoder4020.end();
    render_pass_encoder2030.popDebugGroup();
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group404);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer304, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer304, 0);
    render_pass_encoder2030.setVertexBuffer(0, buffer209);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4015, 0);
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.draw(3);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder2051.end();
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1002.end();
    render_pass_encoder2051.drawIndirect(buffer207, 0);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer402 = command_encoder402.finish();
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
        layout: render_pipeline1010.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    render_pass_encoder1001.setVertexBuffer(0, buffer108);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4016, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4016, 0);
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
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group2011);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer305, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4000.end();
    command_encoder400.popDebugGroup()
    render_pass_encoder4030.setVertexBuffer(0, buffer4010);
    render_pass_encoder2030.end();
    render_pass_encoder4030.drawIndirect(buffer405, 0);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2050.setVertexBuffer(0, buffer2018);
    render_pass_encoder2050.draw(3);
    render_pass_encoder1000.end();
    device10.queue.submit([]);
    render_pass_encoder4030.end();
    render_pass_encoder1000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2050.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder4030.drawIndirect(buffer4011, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder2030.dispatchWorkgroups(100);
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
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
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

    compute_pass_encoder4000.setBindGroup(0, bind_group405);
    device40.queue.submit([command_buffer402, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2050.end();
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder4030.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4030.end();
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder2000.end();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder2001.drawIndirect(buffer2016, 0);
    compute_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2051.draw(3);
    render_pass_encoder2030.end();
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
    render_pass_encoder4030.end();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2029, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2029, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder4020.end();
    render_pass_encoder2000.draw(3);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
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
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group406);
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder2030.end();
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

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    compute_pass_encoder4010.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2040.end();
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2050.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2012);
    render_pass_encoder2050.drawIndexed(3);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder2001.drawIndirect(buffer2029, 0);
    render_pass_encoder2000.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2050.drawIndirect(buffer204, 0);
    render_pass_encoder4030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2029, 0);
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
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
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2013);
    render_pass_encoder2030.drawIndirect(buffer2029, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    render_pass_encoder1000.end();
    render_pass_encoder4030.end();
    render_pass_encoder2000.drawIndirect(buffer2029, 0);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndirect(buffer2023, 0);
    device40.queue.submit([command_buffer401, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4023, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4023, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2034, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2034, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder4010.end();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2051.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4030.drawIndirect(buffer4011, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4012, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder3000.end();
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2050.draw(3);
    render_pass_encoder4030.drawIndirect(buffer4012, 0);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
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
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
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
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group408);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    render_pass_encoder4030.drawIndirect(buffer4016, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer4011, 0);
    render_pass_encoder2030.drawIndirect(buffer2029, 0);
    render_pass_encoder2051.end();
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group409);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2029, "uint16");
    compute_pass_encoder4010.end();
    device20.queue.submit([command_buffer203, ]);
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
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2050.drawIndirect(buffer2034, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer2023, "uint16");
    compute_pass_encoder3000.end();
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder1002.drawIndirect(buffer107, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder1000.end();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder2050.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder1002.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder4030.end();
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2001.end();
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder4030.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder4030.drawIndexedIndirect(buffer408, 0);
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4010);
    render_pass_encoder2050.drawIndirect(buffer2037, 0);
    compute_pass_encoder3000.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder2040.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder1002.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder4030.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder4030.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder2040.setIndexBuffer(buffer2022, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2050.end();
    render_pass_encoder2030.drawIndirect(buffer2034, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer2039, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    compute_pass_encoder2020.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4030, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4030, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2040, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndirect(buffer2034, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2027, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    render_pass_encoder2051.end();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2051.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder2050.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2050.end();
    compute_pass_encoder4000.end();
    render_pass_encoder2051.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder1002.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2041, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder4000.end();
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
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2015);
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer4017, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4030.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2029, 0);
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4011);
    render_pass_encoder2001.end();
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
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2016);
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2050.popDebugGroup();
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndirect(buffer2038, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3012, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2040.drawIndirect(buffer2029, 0);
    render_pass_encoder1000.end();
    render_pass_encoder4030.popDebugGroup();
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
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2050.end();
    render_pass_encoder1002.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.drawIndirect(buffer2040, 0);
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    render_pass_encoder2040.drawIndirect(buffer2039, 0);
    compute_pass_encoder4020.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2048, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2040, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4016, 0);
    render_pass_encoder2000.drawIndirect(buffer2041, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4033, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4033, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder1002.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder2051.drawIndirect(buffer2020, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4015, 0);
    compute_pass_encoder4000.end();
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([]);
    render_pass_encoder2051.drawIndirect(buffer209, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4020, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2018);
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder1002.end();
    render_pass_encoder2000.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder4030.draw(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2001.drawIndirect(buffer2041, 0);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
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
                    buffer: buffer4034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4035,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4012);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    compute_pass_encoder2030.popDebugGroup()
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2019);
    render_pass_encoder2000.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4030.drawIndirect(buffer4023, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2053, 0);
    render_pass_encoder4030.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
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
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2020);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder4030.draw(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4037,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    render_pass_encoder2030.end();
    render_pass_encoder2030.end();
    render_pass_encoder2000.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4038, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4038, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer105, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder2000.end();
    device20.queue.submit([]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder4030.drawIndirect(buffer4030, 0);
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2057, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder2000.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2058, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2058, 0);
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2021);
    render_pass_encoder4030.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2000.drawIndirect(buffer2048, 0);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder4030.drawIndirect(buffer4011, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer2048, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1002.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder1002.end();
    render_pass_encoder2050.drawIndirect(buffer2015, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder4020.popDebugGroup()
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
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder2000.drawIndirect(buffer2058, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2053, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4030.setIndexBuffer(buffer4032, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2059, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2051, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2052, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4030.drawIndexedIndirect(buffer4038, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4030.setIndexBuffer(buffer401, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4030.drawIndirect(buffer4010, 0);
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
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4014);
    render_pass_encoder2050.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4015, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4030.setIndexBuffer(buffer4035, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4041, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4041, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2050.drawIndirect(buffer2058, 0);
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    device10.queue.submit([]);
    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4043,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4015);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder4030.drawIndirect(buffer4020, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2051.drawIndirect(buffer2054, 0);
    device20.queue.submit([]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4030.draw(3);
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
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2023);
    render_pass_encoder2050.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2045, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2034, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
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
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2066, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2066, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder4030.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4044, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4044, 0);
    render_pass_encoder2050.end();
    render_pass_encoder4030.drawIndirect(buffer4041, 0);
    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2068,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2024);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1002.popDebugGroup();
    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2070,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer2048, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2022, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
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
                    buffer: buffer2071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2072,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2026);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2040.drawIndirect(buffer2046, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2070, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2034, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder2000.end();
    compute_pass_encoder4010.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2051.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2000.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4012, 0);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2070, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2029, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer204, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2053, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2059, 0);
    render_pass_encoder2050.drawIndirect(buffer2048, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2051.popDebugGroup();
    compute_pass_encoder4020.end();
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2047, 0);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2051.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2040.end();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2069, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
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
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    compute_pass_encoder2020.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2066, 0);
    render_pass_encoder2000.drawIndirect(buffer2065, 0);
    render_pass_encoder2040.drawIndirect(buffer2059, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1001.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2041, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2035, 0);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    render_pass_encoder1002.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder4030.end();
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2073, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2073, 0);
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2027);
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4016);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2076, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2076, 0);
    render_pass_encoder2030.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4047, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4047, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    render_pass_encoder4030.drawIndirect(buffer4033, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder4030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2050.drawIndirect(buffer2066, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2058, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2039, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2077, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2077, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2054, 0);
    device40.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder4030.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder4030.drawIndirect(buffer4047, 0);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder2001.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2078, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2078, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2040.setIndexBuffer(buffer2032, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2079, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2079, 0);
    render_pass_encoder2000.drawIndirect(buffer2053, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder1001.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2080, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2080, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2047, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2019, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2050.drawIndexed(3);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2050.setIndexBuffer(buffer2030, "uint16");
    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4049,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4017);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2051.drawIndirect(buffer2036, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2051.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2051.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3017, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2058, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1002.end();
    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4051,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4018);
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder3000.end();
    render_pass_encoder2030.drawIndirect(buffer2080, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2054, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2081, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2081, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2066, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2083,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2058, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2076, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4053,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4019);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    device10.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2035, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2081, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2058, 0);
    render_pass_encoder2000.drawIndirect(buffer2076, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder4030.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2020, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2066, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2029, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer2078, 0);
    device40.queue.submit([]);
    render_pass_encoder1001.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2040.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder1002.draw(3);
    render_pass_encoder4030.drawIndirect(buffer4015, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4054, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4054, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder4030.end();
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4020);
    render_pass_encoder1001.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2071, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2076, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2053, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer4041, 0);
    render_pass_encoder2050.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer4047, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder2051.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2051.drawIndirect(buffer2076, 0);
    device40.queue.submit([]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder4030.drawIndirect(buffer4023, 0);
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2051.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2057, 0);
    render_pass_encoder2040.drawIndirect(buffer2081, 0);
    render_pass_encoder2051.drawIndirect(buffer2078, 0);
    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2085,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2029);
    render_pass_encoder2000.drawIndirect(buffer2072, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2051.drawIndirect(buffer2036, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2051.draw(3);
    render_pass_encoder2051.drawIndirect(buffer2029, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2086, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2086, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer2069, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4012, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
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
    render_pass_encoder1002.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder1002.drawIndexed(3);
}