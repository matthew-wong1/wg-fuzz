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
    
    
    const array0 = new Float32Array([-0.25, 1.0, -0.25, 0.5, 0.25, -0.25, 0.0, -0.25, 0.0, 0.75, -0.5, 0.5, 0.5, 0.75, 1.0, -1.0, -0.75, 0.25, -0.25, 0.5, -0.5, 0.25, -0.5, 0.25, 0.0, -0.5, 0.5, -0.75, 0.0, -0.75, 0.5, 0.0, 0.5, -0.25, -0.75, 0.75, -0.75, -1.0, 0.75, 0.5, 0.0, 0.0, 0.5, 1.0, -0.5, 0.25, -0.25, -0.25, 0.5, -0.25, 0.75, -0.5, -1.0, 0.75, 1.0, -0.75, -0.5, -0.75, -0.5, 0.25, 0.5, 0.0, -0.5, 0.25, 1.0, -0.25, 0.75, 0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -0.25, 1.0, 1.0, -1.0, 1.0, 0.75, -1.0, 0.5, 0.75, -1.0, -0.25, 0.25, -1.0, -0.5, 1.0, -0.25, 0.75, 0.25, 0.25, 0.0, 0.75, 0.75, 0.75, 0.75, 0.0, 1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.destroy();
    
    
    
    const array1 = new Float32Array([0.5, -0.75, -0.5, -0.75, -0.25, -0.25, -0.25, 0.5, 0.25, 1.0, 0.75, -0.25, -0.5, -0.5, 0.75, 0.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.75, 1.0, 0.5, -1.0, -0.25, 0.25, 1.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.25, -0.25, -0.75, 0.25, -0.5, -0.75, 0.75, 0.25, 0.25, 0.25, 0.25, 1.0, -0.25, 0.0, -0.5, -0.5, 0.5, 1.0, -0.75, 0.5, -1.0, 0.25, 0.0, -1.0, 0.75, -0.75, 0.0, 0.75, -0.75, 0.25, -0.5, -0.5, 0.0, 0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.5, 0.5, 0.25, 0.75, -1.0, -0.75, 0.0, 0.0, 1.0, 0.5, -0.5, 0.75, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -1.0, 0.0, 0.75, ]);
    
    const array2 = new Float32Array([-1.0, -0.75, -0.75, -0.5, -1.0, -0.5, 0.75, -0.75, -1.0, -0.5, -0.75, -0.25, -0.75, 0.25, 1.0, -0.25, -0.75, -0.25, 0.0, -0.25, 0.0, 0.0, -1.0, -1.0, 0.0, 1.0, 0.0, 1.0, 0.75, 0.75, -0.25, -0.75, -1.0, 0.25, 0.75, -0.25, 0.75, -0.25, 0.75, 0.25, -0.25, 0.25, -0.5, -1.0, -0.25, 0.75, -0.5, 0.0, 0.5, -0.75, 0.5, -0.5, 0.0, -0.5, 1.0, -0.25, -1.0, -1.0, 0.25, -1.0, -1.0, -0.5, 0.75, 1.0, -0.25, -0.75, -0.25, 0.5, 0.0, -0.75, 0.0, 0.0, -0.25, -0.25, -1.0, 0.75, 0.5, 1.0, 0.0, -0.75, 0.0, 0.25, 0.25, 1.0, 0.5, -0.5, -0.5, 0.25, -1.0, 1.0, 1.0, 0.5, -1.0, 0.75, 0.25, -0.75, -0.75, 0.25, 0.0, 1.0, ]);
    const array3 = new Float32Array([-0.25, 0.0, 0.25, 0.0, -0.5, 0.75, -0.75, -0.75, 0.5, 1.0, -0.25, 0.5, 1.0, -1.0, 0.5, 0.75, -0.25, 0.75, -0.75, -0.5, -0.5, -0.5, -0.75, -0.25, 1.0, -0.5, -1.0, -1.0, -1.0, -0.5, 0.0, 0.25, -0.75, -0.25, -0.25, -0.25, 1.0, 0.25, 0.25, -0.25, -0.75, 0.25, -1.0, -0.5, 0.25, -0.5, 1.0, 0.0, 0.0, 0.0, 0.0, -0.75, -1.0, 0.5, 0.0, -0.25, 0.0, -0.75, 0.5, 0.75, 0.75, 0.75, 0.75, 0.75, -0.5, 0.75, -0.5, 0.75, 0.5, 0.25, 1.0, 0.75, -0.25, 0.5, -0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.25, 1.0, -1.0, -0.25, 0.75, 1.0, -0.25, 0.5, 1.0, 0.0, 0.0, -0.75, 1.0, 0.75, 1.0, 0.75, 0.75, -1.0, 0.25, ]);
    
    const array4 = new Float32Array([-0.25, -0.5, 1.0, -0.25, 0.5, 0.25, -1.0, 1.0, 0.75, 0.5, -0.75, 0.25, 0.75, 0.5, -0.5, 1.0, -0.75, 0.25, -1.0, -1.0, -0.75, 0.75, 0.75, -0.5, 0.0, 0.5, -0.5, 0.75, 0.5, 0.5, 0.25, -0.75, -0.25, -1.0, 0.5, 0.5, -0.75, -0.25, -0.25, 0.0, -0.75, 0.5, 0.0, -0.25, -0.25, 0.0, -0.25, 0.75, 0.75, 0.0, 0.5, 0.5, -0.5, -1.0, 0.0, -0.75, 1.0, 0.5, 0.5, -1.0, 0.5, -0.25, 0.25, -1.0, 0.5, 0.75, -0.75, 0.25, -1.0, -0.25, -1.0, -0.25, -0.5, 1.0, 0.0, -0.75, -0.25, 0.5, 0.0, -0.75, -0.5, -0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 1.0, -0.5, 0.75, -0.25, -1.0, 0.5, 1.0, 0.25, 0.75, 0.5, -0.25, 0.25, 0.25, ]);
    
    const array5 = new Float32Array([0.0, 0.5, -0.5, -1.0, -0.5, -0.5, -0.5, 0.0, -0.5, 0.75, 0.0, -0.5, 0.0, 0.75, -0.5, 1.0, 0.5, -1.0, -0.25, 1.0, 0.0, 0.0, 1.0, -0.25, -1.0, 0.75, 0.25, 0.0, -0.75, -0.75, 0.25, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 1.0, -1.0, 0.5, 0.75, -1.0, 0.25, -0.25, -0.5, -0.5, 0.25, -0.5, 0.0, -0.25, -0.5, -0.25, 0.0, 1.0, -0.5, 1.0, 0.25, 1.0, -0.5, -1.0, -0.25, 0.25, -0.25, -0.75, -0.75, 0.75, -0.5, -0.25, 0.75, 0.25, 1.0, 1.0, -0.25, 0.0, 0.0, 1.0, 1.0, -0.25, -0.25, 1.0, -0.5, -0.5, -0.5, -0.75, 0.25, 0.25, 0.25, 0.0, 0.25, -0.5, -0.5, -0.5, -0.5, -0.75, 0.25, 0.25, -0.25, -0.25, -1.0, 0.5, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    command_encoder200.insertDebugMarker("mymarker");
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.pushErrorScope("out-of-memory");
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const array6 = new Float32Array([0.0, 0.5, 0.5, -0.25, -1.0, 0.0, 0.0, -0.75, 0.0, 1.0, 1.0, -0.5, -0.25, -0.5, -0.5, -0.5, 1.0, -0.75, 0.5, 0.5, 0.25, 0.25, -0.75, -0.25, 0.25, -0.75, 0.25, -0.25, -1.0, 1.0, 0.75, -1.0, 0.25, -0.5, 0.5, -0.75, 0.25, 0.5, 0.0, 0.25, 1.0, -0.75, 0.25, 0.75, 0.75, 0.0, 0.25, -0.25, -0.25, -0.5, 0.25, 0.75, -1.0, 0.0, -0.25, 0.75, 0.75, 0.5, 1.0, -1.0, -0.5, -1.0, -0.5, 1.0, -0.75, 0.75, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, 1.0, 0.5, 1.0, 1.0, 0.0, -0.5, 0.0, 0.5, 0.25, -0.5, 0.75, 0.0, -0.75, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, -0.75, 0.0, -0.5, -0.5, 0.0, -0.25, -1.0, 0.0, 0.25, ]);
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
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.0, -0.75, -0.75, 0.75, -1.0, 0.25, -0.25, 0.75, 0.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.25, 0.5, 0.5, 0.0, -0.75, -0.75, 1.0, 0.0, -0.75, -1.0, 0.5, 0.75, -1.0, 0.25, -1.0, -0.5, -0.25, -0.25, 1.0, 0.25, -0.5, -1.0, 0.75, -0.5, 0.75, 0.25, 0.75, 0.75, 0.25, -0.75, 0.0, 0.25, -0.75, 1.0, -1.0, 1.0, -0.75, 0.5, -0.75, -0.25, 1.0, -1.0, 1.0, 0.25, 0.25, 0.25, -0.25, 0.25, -1.0, -0.75, -0.25, -1.0, 0.25, -0.25, 1.0, 0.75, 0.75, -0.5, 0.5, -0.75, 1.0, 1.0, -0.5, -0.5, -0.25, -1.0, -0.5, -1.0, -0.75, 0.25, -0.75, -0.75, 1.0, -1.0, -0.75, -1.0, -0.75, -0.75, 0.75, 0.25, -0.75, 0.5, 0.75, -1.0, 1.0, 0.0, ]);
    texture200.destroy();
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer200.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline2013);
    
    render_bundle_encoder200.popDebugGroup();
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_buffer201 = command_encoder201.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    texture201.destroy();
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.pushErrorScope("internal");
    
    device40.pushErrorScope("internal");
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer201, ]);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout207,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    const command_buffer203 = command_encoder203.finish();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([-1.0, -0.5, 0.25, -0.5, 1.0, 0.5, 0.75, 0.25, -0.25, 0.5, 0.75, -1.0, 0.5, -0.75, 0.0, 1.0, 1.0, 0.5, -0.75, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, -0.25, -0.5, 1.0, 0.25, 0.25, 1.0, 0.0, 0.75, -1.0, 0.75, 1.0, -0.75, 0.75, 0.25, 0.75, 0.5, 0.75, 0.0, 1.0, 0.0, -0.5, 0.25, -0.75, 0.5, 0.75, -1.0, -0.75, 0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -0.25, 0.0, 0.75, 0.5, 1.0, 0.5, -0.25, -0.75, -0.25, 0.25, 0.5, 1.0, -1.0, 0.5, -1.0, -0.5, -0.25, 0.25, 1.0, 0.75, 1.0, -0.25, 1.0, -0.25, 0.25, -0.25, 1.0, 0.5, 0.25, -0.25, 0.0, -0.75, -0.25, -0.25, -0.5, 0.5, -0.75, 1.0, 0.5, 1.0, 0.75, 0.5, ]);
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    const array9 = new Float32Array([-0.5, -0.75, 1.0, 0.0, -0.5, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, -0.5, -1.0, -0.5, -0.5, -1.0, -1.0, -0.25, 1.0, 0.0, 0.5, 0.25, 0.5, -1.0, -0.75, 0.0, 0.25, -0.75, 0.0, 1.0, 1.0, -0.5, -0.75, 0.75, 0.0, 0.0, 0.5, -0.25, -0.75, -0.75, 0.75, -0.75, 0.25, -0.5, 0.25, 1.0, -0.75, -0.5, -0.5, 0.5, 0.25, -0.75, -0.75, 0.0, -0.5, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, -0.5, 0.75, -0.25, 0.25, -0.5, -1.0, -0.25, -0.5, -0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 0.5, 0.5, -0.75, -1.0, -0.75, -0.75, -0.75, 0.75, 0.5, -0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.0, -0.5, -1.0, -0.25, 0.75, 0.5, 0.0, 0.5, -0.5, -0.75, ]);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout208,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout206,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer400.destroy()
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout209,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout205,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout206]
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder204.insertDebugMarker("mymarker");
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout209,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2079 = device20.createComputePipeline({
        label: "compute_pipeline2079",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2080 = device20.createComputePipeline({
        label: "compute_pipeline2080",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2081 = device20.createComputePipeline({
        label: "compute_pipeline2081",
        layout: pipeline_layout208,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline2082 = device20.createComputePipeline({
        label: "compute_pipeline2082",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2083 = device20.createComputePipeline({
        label: "compute_pipeline2083",
        layout: pipeline_layout201,
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
    const compute_pipeline2084 = device20.createComputePipeline({
        label: "compute_pipeline2084",
        layout: pipeline_layout209,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2085 = device20.createComputePipeline({
        label: "compute_pipeline2085",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    const compute_pipeline2086 = device20.createComputePipeline({
        label: "compute_pipeline2086",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const compute_pipeline2087 = device20.createComputePipeline({
        label: "compute_pipeline2087",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline2088 = device20.createComputePipeline({
        label: "compute_pipeline2088",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2089 = device20.createComputePipeline({
        label: "compute_pipeline2089",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2090 = device20.createComputePipeline({
        label: "compute_pipeline2090",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2091 = device20.createComputePipeline({
        label: "compute_pipeline2091",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2092 = device20.createComputePipeline({
        label: "compute_pipeline2092",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2093 = device20.createComputePipeline({
        label: "compute_pipeline2093",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2094 = device20.createComputePipeline({
        label: "compute_pipeline2094",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2095 = device20.createComputePipeline({
        label: "compute_pipeline2095",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2096 = device20.createComputePipeline({
        label: "compute_pipeline2096",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2097 = device20.createComputePipeline({
        label: "compute_pipeline2097",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2098 = device20.createComputePipeline({
        label: "compute_pipeline2098",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2099 = device20.createComputePipeline({
        label: "compute_pipeline2099",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline20100 = device20.createComputePipeline({
        label: "compute_pipeline20100",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20101 = device20.createComputePipeline({
        label: "compute_pipeline20101",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20102 = device20.createComputePipeline({
        label: "compute_pipeline20102",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline20103 = device20.createComputePipeline({
        label: "compute_pipeline20103",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout207]
    });
    const compute_pipeline20104 = device20.createComputePipeline({
        label: "compute_pipeline20104",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20105 = device20.createComputePipeline({
        label: "compute_pipeline20105",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2040.setPipeline(render_pipeline204);
    const compute_pipeline20106 = device20.createComputePipeline({
        label: "compute_pipeline20106",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20107 = device20.createComputePipeline({
        label: "compute_pipeline20107",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline20108 = device20.createComputePipeline({
        label: "compute_pipeline20108",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline203);
    const compute_pipeline20109 = device20.createComputePipeline({
        label: "compute_pipeline20109",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20110 = device20.createComputePipeline({
        label: "compute_pipeline20110",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20111 = device20.createComputePipeline({
        label: "compute_pipeline20111",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20112 = device20.createComputePipeline({
        label: "compute_pipeline20112",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    texture401.destroy();
    const compute_pipeline20113 = device20.createComputePipeline({
        label: "compute_pipeline20113",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20114 = device20.createComputePipeline({
        label: "compute_pipeline20114",
        layout: pipeline_layout205,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20115 = device20.createComputePipeline({
        label: "compute_pipeline20115",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline20116 = device20.createComputePipeline({
        label: "compute_pipeline20116",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20117 = device20.createComputePipeline({
        label: "compute_pipeline20117",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20118 = device20.createComputePipeline({
        label: "compute_pipeline20118",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20119 = device20.createComputePipeline({
        label: "compute_pipeline20119",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20120 = device20.createComputePipeline({
        label: "compute_pipeline20120",
        layout: pipeline_layout207,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20121 = device20.createComputePipeline({
        label: "compute_pipeline20121",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const compute_pipeline20122 = device20.createComputePipeline({
        label: "compute_pipeline20122",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20123 = device20.createComputePipeline({
        label: "compute_pipeline20123",
        layout: pipeline_layout206,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20124 = device20.createComputePipeline({
        label: "compute_pipeline20124",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline20125 = device20.createComputePipeline({
        label: "compute_pipeline20125",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20126 = device20.createComputePipeline({
        label: "compute_pipeline20126",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20127 = device20.createComputePipeline({
        label: "compute_pipeline20127",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20128 = device20.createComputePipeline({
        label: "compute_pipeline20128",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device40.destroy();
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout207]
    });
    const compute_pipeline20129 = device20.createComputePipeline({
        label: "compute_pipeline20129",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20130 = device20.createComputePipeline({
        label: "compute_pipeline20130",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const compute_pipeline20131 = device20.createComputePipeline({
        label: "compute_pipeline20131",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20132 = device20.createComputePipeline({
        label: "compute_pipeline20132",
        layout: pipeline_layout209,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20133 = device20.createComputePipeline({
        label: "compute_pipeline20133",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20134 = device20.createComputePipeline({
        label: "compute_pipeline20134",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline20135 = device20.createComputePipeline({
        label: "compute_pipeline20135",
        layout: pipeline_layout2019,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout205]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline20136 = device20.createComputePipeline({
        label: "compute_pipeline20136",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline20137 = device20.createComputePipeline({
        label: "compute_pipeline20137",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20138 = device20.createComputePipeline({
        label: "compute_pipeline20138",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20139 = device20.createComputePipeline({
        label: "compute_pipeline20139",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20140 = device20.createComputePipeline({
        label: "compute_pipeline20140",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline20141 = device20.createComputePipeline({
        label: "compute_pipeline20141",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const compute_pipeline20142 = device20.createComputePipeline({
        label: "compute_pipeline20142",
        layout: pipeline_layout2019,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20143 = device20.createComputePipeline({
        label: "compute_pipeline20143",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20144 = device20.createComputePipeline({
        label: "compute_pipeline20144",
        layout: pipeline_layout2019,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20145 = device20.createComputePipeline({
        label: "compute_pipeline20145",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20146 = device20.createComputePipeline({
        label: "compute_pipeline20146",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20147 = device20.createComputePipeline({
        label: "compute_pipeline20147",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20148 = device20.createComputePipeline({
        label: "compute_pipeline20148",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline20149 = device20.createComputePipeline({
        label: "compute_pipeline20149",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20150 = device20.createComputePipeline({
        label: "compute_pipeline20150",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20151 = device20.createComputePipeline({
        label: "compute_pipeline20151",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20152 = device20.createComputePipeline({
        label: "compute_pipeline20152",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20153 = device20.createComputePipeline({
        label: "compute_pipeline20153",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20154 = device20.createComputePipeline({
        label: "compute_pipeline20154",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20155 = device20.createComputePipeline({
        label: "compute_pipeline20155",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    buffer300.destroy()
    const compute_pipeline20156 = device20.createComputePipeline({
        label: "compute_pipeline20156",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20157 = device20.createComputePipeline({
        label: "compute_pipeline20157",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20158 = device20.createComputePipeline({
        label: "compute_pipeline20158",
        layout: pipeline_layout206,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20159 = device20.createComputePipeline({
        label: "compute_pipeline20159",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20160 = device20.createComputePipeline({
        label: "compute_pipeline20160",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20161 = device20.createComputePipeline({
        label: "compute_pipeline20161",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20162 = device20.createComputePipeline({
        label: "compute_pipeline20162",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device30.destroy();
    const compute_pipeline20163 = device20.createComputePipeline({
        label: "compute_pipeline20163",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20164 = device20.createComputePipeline({
        label: "compute_pipeline20164",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20165 = device20.createComputePipeline({
        label: "compute_pipeline20165",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20166 = device20.createComputePipeline({
        label: "compute_pipeline20166",
        layout: pipeline_layout2019,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20167 = device20.createComputePipeline({
        label: "compute_pipeline20167",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20168 = device20.createComputePipeline({
        label: "compute_pipeline20168",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20169 = device20.createComputePipeline({
        label: "compute_pipeline20169",
        layout: pipeline_layout2019,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20170 = device20.createComputePipeline({
        label: "compute_pipeline20170",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const compute_pipeline20171 = device20.createComputePipeline({
        label: "compute_pipeline20171",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20172 = device20.createComputePipeline({
        label: "compute_pipeline20172",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20173 = device20.createComputePipeline({
        label: "compute_pipeline20173",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20174 = device20.createComputePipeline({
        label: "compute_pipeline20174",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20175 = device20.createComputePipeline({
        label: "compute_pipeline20175",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20176 = device20.createComputePipeline({
        label: "compute_pipeline20176",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline20177 = device20.createComputePipeline({
        label: "compute_pipeline20177",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20178 = device20.createComputePipeline({
        label: "compute_pipeline20178",
        layout: pipeline_layout2018,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline20179 = device20.createComputePipeline({
        label: "compute_pipeline20179",
        layout: pipeline_layout2018,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20180 = device20.createComputePipeline({
        label: "compute_pipeline20180",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    const compute_pipeline20181 = device20.createComputePipeline({
        label: "compute_pipeline20181",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20182 = device20.createComputePipeline({
        label: "compute_pipeline20182",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline20183 = device20.createComputePipeline({
        label: "compute_pipeline20183",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20184 = device20.createComputePipeline({
        label: "compute_pipeline20184",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20185 = device20.createComputePipeline({
        label: "compute_pipeline20185",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20186 = device20.createComputePipeline({
        label: "compute_pipeline20186",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20187 = device20.createComputePipeline({
        label: "compute_pipeline20187",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20188 = device20.createComputePipeline({
        label: "compute_pipeline20188",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20189 = device20.createComputePipeline({
        label: "compute_pipeline20189",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20190 = device20.createComputePipeline({
        label: "compute_pipeline20190",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline20191 = device20.createComputePipeline({
        label: "compute_pipeline20191",
        layout: pipeline_layout208,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20192 = device20.createComputePipeline({
        label: "compute_pipeline20192",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20193 = device20.createComputePipeline({
        label: "compute_pipeline20193",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20194 = device20.createComputePipeline({
        label: "compute_pipeline20194",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline20195 = device20.createComputePipeline({
        label: "compute_pipeline20195",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20196 = device20.createComputePipeline({
        label: "compute_pipeline20196",
        layout: pipeline_layout2021,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20197 = device20.createComputePipeline({
        label: "compute_pipeline20197",
        layout: pipeline_layout204,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout204]
    });
    const compute_pipeline20198 = device20.createComputePipeline({
        label: "compute_pipeline20198",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20199 = device20.createComputePipeline({
        label: "compute_pipeline20199",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline20200 = device20.createComputePipeline({
        label: "compute_pipeline20200",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20201 = device20.createComputePipeline({
        label: "compute_pipeline20201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline20202 = device20.createComputePipeline({
        label: "compute_pipeline20202",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout2023 = device20.createPipelineLayout({ 
        label: "pipeline_layout2023",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline20203 = device20.createComputePipeline({
        label: "compute_pipeline20203",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20204 = device20.createComputePipeline({
        label: "compute_pipeline20204",
        layout: pipeline_layout2021,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20205 = device20.createComputePipeline({
        label: "compute_pipeline20205",
        layout: pipeline_layout2023,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20206 = device20.createComputePipeline({
        label: "compute_pipeline20206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline20207 = device20.createComputePipeline({
        label: "compute_pipeline20207",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20208 = device20.createComputePipeline({
        label: "compute_pipeline20208",
        layout: pipeline_layout205,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline20209 = device20.createComputePipeline({
        label: "compute_pipeline20209",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20210 = device20.createComputePipeline({
        label: "compute_pipeline20210",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20211 = device20.createComputePipeline({
        label: "compute_pipeline20211",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20212 = device20.createComputePipeline({
        label: "compute_pipeline20212",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline20213 = device20.createComputePipeline({
        label: "compute_pipeline20213",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20214 = device20.createComputePipeline({
        label: "compute_pipeline20214",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline20215 = device20.createComputePipeline({
        label: "compute_pipeline20215",
        layout: pipeline_layout2021,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20216 = device20.createComputePipeline({
        label: "compute_pipeline20216",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline20217 = device20.createComputePipeline({
        label: "compute_pipeline20217",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20218 = device20.createComputePipeline({
        label: "compute_pipeline20218",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline20219 = device20.createComputePipeline({
        label: "compute_pipeline20219",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline20220 = device20.createComputePipeline({
        label: "compute_pipeline20220",
        layout: pipeline_layout209,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline20221 = device20.createComputePipeline({
        label: "compute_pipeline20221",
        layout: pipeline_layout2020,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline20222 = device20.createComputePipeline({
        label: "compute_pipeline20222",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline20223 = device20.createComputePipeline({
        label: "compute_pipeline20223",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline2013.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    const compute_pipeline20224 = device20.createComputePipeline({
        label: "compute_pipeline20224",
        layout: pipeline_layout208,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    compute_pass_encoder2000.dispatchWorkgroups(100);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group203);
    render_pass_encoder2020.setVertexBuffer(0, buffer200);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2040.setVertexBuffer(0, buffer200);
    render_pass_encoder2040.draw(3);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2040.end();
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer204, ]);
}