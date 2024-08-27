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
    
    const array0 = new Float32Array([-0.25, -1.0, -0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -0.75, 0.5, 1.0, 1.0, 0.0, 0.75, -1.0, 0.75, -1.0, 1.0, -0.5, 0.0, 0.25, 1.0, 0.0, 1.0, 0.0, -0.25, 0.0, 0.0, 0.25, -0.5, 0.75, -1.0, 0.5, 0.25, 1.0, 1.0, 0.0, -0.5, -0.75, -0.75, 0.0, -0.5, 0.25, -0.75, -0.75, -0.25, -1.0, 0.5, 0.75, -0.25, -1.0, 0.75, 0.5, -0.75, 0.5, -0.75, 0.75, 0.75, -0.5, 0.0, -0.5, -0.5, -0.75, -0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.75, -0.5, -0.25, -0.5, -1.0, 0.75, -0.25, -0.5, -0.75, 0.0, 0.5, -0.25, 0.0, 0.0, 0.0, 0.0, -0.5, -0.5, -0.75, -0.75, -1.0, 0.0, -1.0, 0.5, 0.0, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, ]);
    
    const array1 = new Float32Array([0.75, 0.5, -0.5, 0.0, -0.5, 1.0, -0.5, -1.0, -1.0, 1.0, 0.25, -0.75, -0.5, 0.25, -1.0, 1.0, -0.5, 0.5, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, -0.25, -1.0, 0.5, -0.75, 0.5, 0.25, 1.0, -0.75, -0.5, 0.25, 0.25, 0.0, -1.0, -1.0, 0.75, 1.0, 0.25, 0.25, 0.75, 1.0, -0.75, 0.5, 0.0, 1.0, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -0.25, -0.5, -1.0, 0.75, 0.0, -0.25, -0.25, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, 0.0, 0.5, 1.0, -0.25, -0.25, 1.0, -0.5, 0.0, 0.25, -0.75, -0.25, -0.25, 0.5, -0.5, 0.5, 0.25, 0.5, 1.0, -0.5, 0.25, -0.25, 0.0, 0.75, -1.0, 0.5, 1.0, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, 0.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array2 = new Float32Array([0.25, 0.75, 1.0, 1.0, 0.0, -1.0, 0.75, -0.5, -0.75, -1.0, 0.5, -0.25, 0.5, 0.75, -0.75, 0.5, -0.75, -1.0, 0.0, 0.5, 1.0, -0.5, 1.0, 0.5, 0.0, -0.5, -0.75, 0.25, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, -1.0, -0.5, -0.75, 0.0, -0.75, -0.5, -1.0, 0.75, 0.75, 0.0, 1.0, -1.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.5, 1.0, -0.75, 1.0, -0.75, -1.0, 1.0, 1.0, -1.0, -0.5, -0.25, -0.5, -0.5, 0.5, 0.0, 0.0, -0.75, -0.75, 0.0, -1.0, 0.0, 0.5, 0.75, -1.0, -0.25, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 0.5, 0.0, -0.5, -0.5, 0.5, -0.75, -0.25, -1.0, 0.25, -0.75, -1.0, -0.75, 0.0, -0.75, -0.5, -0.25, -1.0, ]);
    
    texture000.destroy();
    
    
    device00.pushErrorScope("validation");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    const array3 = new Float32Array([0.25, 0.25, -0.75, 0.75, 0.5, 0.25, -1.0, 0.0, 1.0, -0.5, 1.0, 1.0, 0.75, 0.5, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, 1.0, 0.5, 0.25, -0.5, 0.25, -0.25, -0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 0.25, -0.25, 0.0, 1.0, 0.0, -1.0, -0.75, -0.5, 0.25, -0.75, -0.25, 0.25, -0.5, -0.5, -0.5, -0.5, -0.25, 0.75, -1.0, 0.75, -0.25, 0.5, 0.25, 0.5, -0.75, -0.75, 1.0, 0.5, 0.75, 0.5, 0.25, -1.0, -0.75, 0.75, 1.0, -0.75, 1.0, 1.0, 0.0, 0.75, -0.75, 0.75, -0.5, -0.75, 0.75, 0.75, -0.5, 0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.5, -0.5, -0.25, 0.5, 0.75, 0.0, 1.0, 0.75, 1.0, -1.0, 0.5, -0.25, -1.0, 0.75, 0.0, ]);
    
    buffer000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    query000.destroy()
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
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
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer002.destroy()
    
    
    
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const array4 = new Float32Array([0.5, -0.5, -0.25, -0.25, 0.25, 0.0, 0.5, 1.0, -1.0, 0.25, 0.5, 1.0, 0.0, 1.0, -1.0, 0.25, -0.75, -0.5, 0.25, -0.5, -1.0, 0.25, -0.5, 0.0, 0.25, 1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 0.75, 0.0, 0.5, 0.25, 0.25, -0.25, -1.0, 0.75, -0.25, 0.5, 0.25, -0.75, 1.0, 0.5, -0.5, 0.5, -0.75, 0.75, 0.5, 0.25, 1.0, -0.25, -0.5, -1.0, -0.25, 0.25, 0.0, -0.25, 0.75, 1.0, -0.25, 0.25, 0.5, -1.0, 0.0, 0.0, 0.25, -0.5, 0.5, 1.0, -1.0, -1.0, 0.75, -1.0, 0.5, 0.5, -1.0, -0.5, 0.25, -1.0, 0.5, -0.5, -0.5, -0.5, -0.75, -0.75, -0.25, 1.0, 0.75, -0.75, 0.0, -0.25, -1.0, -0.75, -0.25, -0.75, 1.0, -0.5, 1.0, ]);
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    query002.destroy()
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    texture002.destroy();
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    device10.destroy();
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
    
    const array5 = new Float32Array([-0.25, 0.75, 0.25, 0.75, 0.25, 0.25, 0.25, 0.0, -1.0, -0.25, 1.0, 0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 0.25, 0.0, -0.25, -0.25, -0.75, -0.5, 0.0, -0.25, -0.25, -0.75, -0.5, 0.75, 1.0, 0.0, 0.5, -1.0, 0.5, 0.75, -0.75, -1.0, -1.0, 0.5, 1.0, -0.75, 0.75, -0.75, -1.0, 0.75, -0.25, -0.5, 0.5, 0.75, 0.75, -0.5, -1.0, -1.0, 1.0, -0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -1.0, 0.0, -1.0, 0.0, -0.25, 0.0, 1.0, 0.0, -0.25, 1.0, 0.0, 1.0, 0.5, 0.0, 0.5, 1.0, 0.25, -0.75, -1.0, 1.0, -0.25, 0.75, -0.5, -1.0, 0.25, 0.0, 0.75, -1.0, 0.75, -1.0, 0.75, 0.25, -0.5, -0.25, 0.5, -0.5, 0.25, 0.0, 1.0, 0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder002.setPipeline(render_pipeline004);
    
    const array6 = new Float32Array([-1.0, 0.5, 0.5, 0.0, -1.0, 1.0, 0.0, 0.0, -0.25, 1.0, -1.0, -0.25, 1.0, 0.75, 0.5, 0.75, -0.5, 0.25, 1.0, 0.5, -0.5, 1.0, 0.5, 0.75, -0.5, 0.75, -0.25, -0.75, 0.75, 1.0, 1.0, 0.25, 0.0, 0.5, -0.75, -1.0, -0.25, -0.25, -1.0, -1.0, -0.5, -0.5, 1.0, -0.75, 0.25, 0.25, -1.0, -0.25, -0.25, 0.5, 0.5, -0.75, 0.0, 0.5, -0.5, -0.5, 0.25, -0.25, 1.0, -1.0, 0.5, 0.25, 0.0, -0.25, 0.5, 0.0, 0.75, 1.0, 0.5, -1.0, 1.0, -0.25, 0.5, 0.75, 0.5, 0.25, -0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -0.5, -1.0, 0.0, 0.75, -0.75, -1.0, -1.0, 0.5, 0.5, 0.25, 0.25, 0.25, 0.75, 1.0, -1.0, -0.25, 1.0, 1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array7 = new Float32Array([-1.0, -0.75, 0.75, -1.0, -1.0, -0.25, -0.5, -0.5, 0.75, -0.25, 0.75, -1.0, -0.5, 0.25, 0.75, 0.0, 0.25, -1.0, -0.25, 0.0, -1.0, -0.25, 0.75, 0.75, -0.75, -0.75, 0.0, -1.0, 1.0, 0.75, 0.5, -0.75, 0.75, -0.75, 1.0, -0.75, 0.5, -0.75, -0.25, -0.5, -1.0, 0.5, -0.5, -1.0, 0.25, 1.0, 0.5, -0.5, -1.0, -0.25, 1.0, 0.5, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, 0.5, 0.25, -0.25, 0.0, -1.0, -1.0, -0.5, 0.5, -0.25, 0.75, -1.0, -0.5, -0.25, 0.25, -0.5, 1.0, 0.75, 0.0, 1.0, 0.0, 0.75, 0.0, -0.5, -0.5, -1.0, -0.25, -0.5, -1.0, -1.0, 0.25, -0.25, 0.75, -0.75, -0.25, 0.25, -0.75, 1.0, -0.25, 0.0, 0.0, 0.25, 0.0, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    
    device20.destroy();
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder301.insertDebugMarker("mymarker");
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device10.pushErrorScope("out-of-memory");
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    compute_pass_encoder3000.popDebugGroup()
    command_encoder301.popDebugGroup()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    compute_pass_encoder3000.popDebugGroup()
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array8 = new Float32Array([0.0, 0.25, 0.75, 0.5, 0.0, 0.5, -0.75, 0.5, 0.0, 0.25, 0.75, 0.75, -0.75, 0.75, -0.75, 0.75, 0.5, 0.0, 0.0, -0.5, 0.25, -0.5, -0.25, 0.0, -1.0, 0.0, 0.5, -0.5, 0.0, -0.25, -0.25, -0.75, 0.0, -1.0, -0.75, 1.0, -0.75, 0.25, -0.25, 0.5, -0.75, 0.25, -0.75, 0.0, -0.5, -0.75, 0.25, -1.0, 1.0, 1.0, 0.75, 0.25, -0.5, -1.0, 0.0, 0.25, 1.0, -0.75, -0.25, -0.25, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.75, -0.5, -0.5, 1.0, -1.0, -0.25, 0.0, -0.5, 0.25, -1.0, 1.0, 0.25, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.25, -1.0, -0.5, 0.25, 0.0, 1.0, 0.25, -0.75, 0.75, 1.0, 0.0, 0.0, 0.0, -1.0, 0.25, -1.0, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer301.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const array9 = new Float32Array([0.0, 0.5, -0.25, 0.5, 0.25, -0.5, 1.0, 0.5, -0.25, 1.0, 0.5, 0.75, -0.5, 1.0, 0.5, 0.0, -0.75, -0.25, 1.0, -0.75, -1.0, -0.5, 0.25, 0.0, -0.75, 0.75, 0.5, -1.0, 0.0, -0.75, 0.75, 0.25, -1.0, -0.5, 1.0, -1.0, -0.25, 0.0, 0.75, -0.5, 0.5, -1.0, 0.0, 0.0, -0.25, 1.0, -0.5, 1.0, -1.0, -0.25, 0.25, 0.75, -0.75, 0.5, 0.0, -0.5, 1.0, -0.5, 0.25, 0.25, -0.75, 0.25, 0.0, -0.25, -1.0, -0.75, -0.25, -1.0, -1.0, -1.0, -1.0, -0.75, -1.0, 0.5, -0.25, 0.0, 0.75, -0.5, 0.5, 0.25, 0.25, 0.25, 1.0, -0.75, -0.5, 0.75, -0.25, -1.0, -0.25, 0.5, -0.5, 0.0, 0.25, -0.25, -0.75, -0.75, 1.0, -0.75, 0.75, 0.0, ]);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    
    render_bundle_encoder300.setVertexBuffer(0, buffer304);
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    
    render_bundle_encoder300.popDebugGroup();
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    compute_pass_encoder3010.popDebugGroup()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    buffer304.destroy()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.popDebugGroup();
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder300.draw(3);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_bundle_encoder301.setPipeline(render_pipeline304);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.setIndexBuffer(buffer300, "uint16");
    
    const array10 = new Float32Array([0.0, 1.0, 0.5, -0.5, 0.75, -0.75, 0.5, 0.5, 0.5, -0.25, 0.75, 0.75, 0.5, -1.0, 0.0, 0.5, -0.75, -1.0, 0.75, 0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -0.75, 0.5, 0.25, 1.0, 0.25, 0.25, 0.25, -1.0, -0.5, 0.25, 0.5, 0.25, 0.5, 1.0, 1.0, -0.25, -1.0, 1.0, 0.75, -0.75, -1.0, -0.75, -0.75, 1.0, 0.5, 0.25, 0.0, -1.0, 0.25, 0.5, -0.25, 0.5, -1.0, 1.0, 1.0, -0.75, 0.5, -1.0, 0.75, 1.0, 1.0, -0.25, 0.0, 1.0, 1.0, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, 0.75, 0.5, 0.5, 0.0, 0.25, 0.5, -0.25, 0.75, 0.5, 0.5, -0.5, 0.5, 0.75, -1.0, -0.5, 0.75, 1.0, 0.0, 1.0, 0.0, -1.0, 0.5, 0.75, 1.0, ]);
    render_bundle_encoder302.setPipeline(render_pipeline301);
    buffer300.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array11 = new Float32Array([0.5, -1.0, 1.0, -0.75, 0.75, 0.25, -0.75, -0.75, 0.75, 0.75, 0.0, 0.75, -0.25, 1.0, -1.0, -0.25, -0.5, 0.75, -1.0, -0.75, 0.5, -0.25, -0.25, -0.25, 1.0, 0.75, 1.0, -0.25, 0.75, -1.0, 1.0, 0.75, 1.0, -0.75, -0.5, 1.0, 0.5, 0.0, 1.0, -0.25, -0.5, -1.0, 0.25, -1.0, 0.75, -1.0, -0.25, 0.5, -0.5, -0.75, -0.25, 0.75, -0.25, -0.5, 0.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.25, -0.75, 0.0, -0.5, 0.25, -0.75, -0.25, 1.0, -0.5, -0.25, 0.0, -1.0, -0.75, 0.0, 1.0, -0.5, 1.0, -1.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.25, -1.0, 0.75, -1.0, 0.5, 0.25, -0.25, -1.0, -0.75, 0.0, -1.0, 1.0, -1.0, 1.0, -1.0, -0.5, -0.25, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.popDebugGroup();
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    
    device30.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer302, 0, array10, 0, array10.length);
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.clearBuffer(buffer303);
    device40.destroy();
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    buffer306.destroy()
    render_bundle_encoder300.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer308, 0, array9, 0, array9.length);
    
    
    
    
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    query300.destroy()
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.writeBuffer(buffer308, 0, array7, 0, array7.length);
    buffer303.destroy()
    device30.queue.writeBuffer(buffer308, 0, array6, 0, array6.length);
    
    device30.queue.writeBuffer(buffer308, 0, array8, 0, array8.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder302.clearBuffer(buffer301);
    buffer308.destroy()
    render_bundle_encoder301.popDebugGroup();
    command_encoder302.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const array12 = new Float32Array([0.0, -0.75, -0.5, -0.5, 0.5, -0.75, 0.25, 0.0, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 1.0, 0.0, -0.75, 0.5, -0.5, 0.25, -0.75, -0.75, 1.0, 0.5, -0.25, 0.25, -0.75, -0.25, -0.5, -1.0, 1.0, -0.75, 0.0, 0.25, -1.0, -0.5, -0.75, 0.25, -1.0, -1.0, -0.75, 0.75, 0.75, 0.25, -0.75, 0.25, 1.0, -0.75, 0.75, -1.0, 0.75, -0.25, -1.0, -0.75, -0.5, 0.5, 0.25, 0.25, 0.75, 1.0, -1.0, 0.75, -0.5, -0.5, 0.75, -0.25, -0.5, -0.25, 0.25, 0.25, 0.0, 0.25, 0.75, -1.0, 0.75, 0.25, -1.0, -0.5, 0.0, 0.5, -0.75, -0.75, 1.0, -0.75, -0.75, -0.75, -0.75, 0.75, -0.25, 0.5, 0.0, 0.75, 0.0, 0.75, -0.75, -0.25, -1.0, ]);
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group302);
    
    render_bundle_encoder300.setIndexBuffer(buffer300, "uint16");
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    buffer305.destroy()
    query300.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    compute_pass_encoder3010.popDebugGroup()
    buffer302.destroy()
    const array13 = new Float32Array([0.75, 1.0, 0.25, 0.75, -1.0, 0.75, -0.25, 0.0, -1.0, -0.5, 0.25, 0.5, 1.0, -0.5, 1.0, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, -0.5, 1.0, -0.75, 0.25, 1.0, -1.0, -0.75, 1.0, -0.5, 0.5, -1.0, 0.25, 0.75, 0.75, 0.5, -1.0, -0.5, -0.25, 0.25, 0.25, -1.0, 1.0, -0.5, -1.0, 0.0, -0.25, -0.5, -0.5, -1.0, -0.25, -0.25, 0.75, 1.0, 0.5, 0.5, 0.0, 1.0, 0.5, -0.5, -0.25, 0.25, 1.0, -0.75, 0.25, 0.5, 0.5, 0.5, -0.75, 0.0, 1.0, -0.25, 0.75, -0.25, -0.5, 0.0, 0.0, -0.25, -0.25, 0.25, 0.5, 0.25, -1.0, 0.0, -1.0, 0.0, -0.75, 1.0, -0.5, 0.5, -0.5, 0.25, -1.0, -0.75, -1.0, 1.0, -1.0, 0.0, 0.25, 1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder301.setVertexBuffer(0, buffer303);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3011.insertDebugMarker("marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    
    device30.queue.writeBuffer(buffer302, 0, array13, 0, array13.length);
    
    
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer3010.destroy()
    
    
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder301.setIndexBuffer(buffer306, "uint16");
    render_bundle_encoder301.setIndexBuffer(buffer300, "uint16");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    query300.destroy()
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.setIndexBuffer(buffer300, "uint16");
    render_bundle_encoder301.setIndexBuffer(buffer305, "uint16");
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder301.popDebugGroup();
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    
    command_encoder300.popDebugGroup()
    
    
    
    render_bundle_encoder300.draw(3);
    
    const array14 = new Float32Array([-0.75, -1.0, -0.5, 1.0, 0.5, -0.25, 0.75, 0.0, -0.5, 0.75, -0.75, -0.25, 0.25, 0.75, -0.25, -0.5, 0.75, 0.5, -0.75, -0.5, -0.75, 0.25, 1.0, 0.5, 1.0, -0.5, 1.0, -0.25, -0.5, -0.25, -0.25, 0.5, -1.0, -0.75, 1.0, 0.25, -0.5, 0.5, -0.75, -0.25, 0.5, 0.5, 0.75, -0.75, 0.75, -0.5, -0.5, 0.25, 0.5, 0.25, -1.0, -1.0, 0.75, -0.5, 0.25, 1.0, 0.5, 0.75, -1.0, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 1.0, -1.0, -0.75, 0.75, -1.0, -1.0, -0.5, 0.75, -0.25, 0.75, -1.0, -0.25, 0.75, -1.0, -0.5, 0.75, -0.5, 1.0, -0.5, -0.75, -1.0, -0.25, 1.0, 1.0, 0.75, -0.25, 0.0, -0.75, -1.0, 0.25, 1.0, 0.5, -0.25, 1.0, 1.0, ]);
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.setIndexBuffer(buffer303, "uint16");
    device30.queue.writeBuffer(buffer308, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer301, 0, array12, 0, array12.length);
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder300.setIndexBuffer(buffer303, "uint16");
    render_bundle_encoder301.draw(3);
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer309, 0, array2, 0, array2.length);
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    buffer309.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout005]
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
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder3011.pushDebugGroup("group_marker")
    texture300.destroy();
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    compute_pass_encoder3010.popDebugGroup()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    texture301.destroy();
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device30.queue.writeTexture({ texture: texture302 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3000.executeBundles([render_bundle_encoder300, ])
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    buffer305.destroy()
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module308,
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
            module: shader_module308,
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
    
    
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder3010.beginOcclusionQuery(0)
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group303);
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    device30.destroy();
    
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    const array15 = new Float32Array([-0.25, -1.0, -0.25, -0.25, 0.75, -0.25, 0.75, 0.0, 0.25, 1.0, -1.0, 0.0, 0.75, -0.5, 0.5, -0.25, -0.5, 0.0, -0.5, -1.0, -0.5, 0.25, 0.0, -0.5, 1.0, 1.0, -1.0, -0.25, 0.25, -0.25, 0.25, 1.0, -0.25, 0.75, 0.5, -0.5, 0.0, -1.0, 0.25, -0.5, -0.5, 0.75, -0.5, 0.25, -0.25, 1.0, 0.25, 0.25, -0.5, 0.0, -1.0, 0.75, 0.75, -0.5, 0.0, 1.0, 0.5, 0.75, 1.0, 0.5, 0.5, -1.0, 0.25, 0.75, -0.75, 0.0, 1.0, 0.5, 0.75, -1.0, 0.0, 0.0, -0.5, -0.75, 0.75, 0.75, 1.0, 0.25, 0.25, -1.0, -0.25, 0.0, -1.0, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, 0.5, -0.25, -0.75, -1.0, 0.25, 0.0, 1.0, 0.5, -0.25, 0.75, -0.5, ]);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    const array16 = new Float32Array([0.75, -0.25, 1.0, 0.25, -0.75, -0.25, 0.0, 1.0, 0.75, -0.5, 0.25, -0.5, 0.25, 0.5, 0.25, 0.0, -0.25, 0.5, 0.75, 0.75, -1.0, 0.5, -0.25, -0.25, -0.5, 0.5, -0.25, -0.5, 0.25, 0.0, -1.0, 0.0, 0.25, 0.25, -0.25, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, -1.0, 0.5, -0.25, 0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 0.0, -0.75, 0.0, 1.0, -0.5, -0.25, -0.5, 0.0, 0.0, 0.0, 0.5, 1.0, 0.25, -0.5, 0.75, 0.25, 1.0, -1.0, -0.25, -0.25, 0.0, 0.0, 1.0, -1.0, -1.0, -0.5, -1.0, -1.0, -0.5, 0.75, 1.0, -1.0, -0.5, 0.0, 0.5, -1.0, 0.0, 0.5, -0.75, -0.5, -1.0, -0.25, 0.5, -0.25, 1.0, 0.0, 0.5, 0.75, -0.25, 0.25, ]);
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    device60.destroy();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const array17 = new Float32Array([-0.75, 1.0, 0.0, -0.5, 1.0, 0.0, 0.25, -0.25, -0.75, 0.25, -1.0, -1.0, -0.75, 0.25, -0.5, -0.25, -0.25, -0.25, 0.25, -1.0, -1.0, 0.5, -1.0, -1.0, 0.5, 0.25, -0.25, -0.75, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, 0.25, -0.25, 0.0, -0.75, -0.25, -0.75, -1.0, 0.0, -0.25, 0.25, 1.0, -0.5, 0.25, -0.5, 1.0, 0.75, -0.5, -0.5, 0.25, 1.0, 0.75, 0.25, 0.75, -1.0, 0.25, 1.0, 0.25, -1.0, 0.0, -0.25, -0.25, 0.0, 0.75, -1.0, 0.0, -0.75, -0.75, 1.0, 1.0, 1.0, 0.75, 0.25, 0.0, -0.5, 1.0, 0.0, 0.75, 0.0, -0.25, -0.5, -0.5, -0.5, 0.5, -0.5, 0.25, -1.0, -0.25, 0.75, -0.25, -1.0, -0.75, -0.25, 0.5, 0.5, 0.25, -1.0, ]);
    
    const array18 = new Float32Array([-0.75, -1.0, 0.5, 0.0, 0.0, 1.0, -1.0, -0.75, 0.0, 0.0, -0.75, -0.5, 0.25, 0.5, -0.75, -0.25, 0.75, -0.5, 0.25, 0.5, -1.0, -0.75, -1.0, -1.0, 0.5, -1.0, 0.0, 0.0, -0.75, -0.5, 0.0, 0.5, -0.25, -1.0, 1.0, 0.75, 0.5, -1.0, 0.5, 1.0, -0.25, 0.75, 0.5, -0.5, 0.25, 0.5, -1.0, 0.0, -0.75, 1.0, 0.5, -1.0, 0.5, -0.25, -1.0, -0.75, 0.25, 0.0, 0.75, 0.25, -1.0, 0.75, 0.0, -1.0, -0.75, 1.0, 0.0, 0.5, 1.0, 0.75, -0.5, -1.0, -0.5, -0.25, 1.0, 0.25, 0.75, -1.0, -1.0, 0.5, 0.0, -0.75, -0.25, -0.25, -0.5, 1.0, 0.25, 0.25, -0.25, -0.5, 0.25, -0.25, -0.75, -0.75, 0.25, 0.0, 0.5, 1.0, -0.5, 0.5, ]);
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.queue.submit([]);
    device50.queue.submit([]);
}