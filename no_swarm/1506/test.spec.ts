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
    
    const array0 = new Float32Array([-0.75, -1.0, -0.5, -1.0, 1.0, -0.75, -1.0, 0.25, 0.25, -1.0, 0.0, 0.25, 1.0, 1.0, -1.0, -0.5, 0.75, 0.25, 0.5, 1.0, -0.25, -0.75, 0.0, -0.5, 1.0, -1.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.0, 0.5, -0.25, 0.0, 0.0, 0.25, -0.25, 1.0, -1.0, 0.25, 0.75, -0.75, 0.5, 0.5, 0.5, 0.5, -0.5, 0.75, 0.0, -1.0, 0.0, 0.25, 0.25, 0.25, 1.0, -0.25, -0.75, 0.25, 0.75, 0.0, -0.25, 0.25, -0.25, 0.75, -0.5, 0.25, 0.0, -0.25, 0.75, -0.75, -1.0, 0.0, 0.5, -0.5, 0.25, -1.0, 1.0, -0.25, 0.0, -0.75, -0.75, -0.5, 0.25, 0.75, 0.75, -0.75, 0.5, 0.0, -1.0, -0.5, 1.0, 0.75, 0.75, 0.75, -0.75, 0.75, 1.0, -0.25, -1.0, ]);
    const array1 = new Float32Array([0.0, -0.75, 1.0, 0.75, -0.75, 0.0, 0.0, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, 0.5, -0.25, 0.0, -0.25, -0.25, -0.25, -0.5, 0.5, 0.75, 0.0, 0.25, 0.0, -0.25, 0.5, 0.25, -0.5, 0.75, -1.0, 1.0, -0.5, 1.0, 0.0, -0.5, 1.0, 0.25, 0.0, -0.5, -1.0, -0.5, -0.25, -0.25, 0.25, -1.0, 0.0, -0.25, -1.0, -0.75, -0.25, 1.0, -0.75, 0.25, 1.0, 0.75, -0.5, 0.5, -0.25, 1.0, 0.25, 1.0, 0.25, -0.25, 0.75, 0.5, 0.5, -0.5, 0.75, 0.75, -0.75, 0.25, 1.0, 0.75, 1.0, 1.0, 1.0, 0.5, -0.25, -0.5, -0.75, 0.0, 0.25, 0.75, -0.5, -0.75, 0.5, 1.0, -0.75, -1.0, 0.25, 0.75, 0.25, -0.25, -0.25, 1.0, 0.25, 0.0, -0.25, -0.75, ]);
    const array2 = new Float32Array([0.75, -0.75, -0.75, -0.25, 0.25, 1.0, 0.25, -0.75, -0.25, 0.5, -0.25, -1.0, -0.25, -0.5, 0.5, -1.0, 0.5, -0.5, -0.75, 0.75, -1.0, 0.0, 1.0, -0.5, 0.75, 1.0, 0.25, 0.75, -0.75, 0.0, -0.25, 0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 0.25, -0.5, -0.75, -0.25, 0.0, 0.0, 0.25, -0.75, -0.5, -0.5, 0.0, 0.0, -0.5, -0.25, 1.0, 1.0, 0.25, -0.75, 0.5, 0.25, -0.75, 0.0, 0.75, 0.75, -0.5, 1.0, -0.75, 0.25, -0.25, 0.5, -0.5, -0.75, 1.0, 0.0, -0.25, 0.0, -1.0, 0.0, 1.0, 0.5, 1.0, -1.0, -0.75, 0.0, -0.25, 0.75, 0.5, -0.25, 0.25, 0.25, 0.75, -0.75, 0.0, -0.25, 0.25, 0.75, 0.25, 0.0, 0.5, 0.0, 0.75, 0.75, -0.25, ]);
    const array3 = new Float32Array([-1.0, 0.75, 1.0, 0.75, -0.5, 1.0, 0.5, 0.5, -1.0, -0.25, -0.75, -0.75, -0.5, -0.5, -0.25, 0.75, -1.0, 0.75, 1.0, 0.0, -0.5, -1.0, -0.75, 0.5, -0.75, -1.0, -0.75, 0.75, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, 0.0, -0.5, -1.0, 0.75, 0.0, -0.25, 0.25, -0.25, -1.0, -0.75, 0.25, 1.0, -1.0, 0.5, -1.0, -0.75, 0.25, -0.5, 1.0, 0.75, -0.75, -1.0, -0.25, 1.0, 1.0, 0.5, 0.5, 0.5, 0.75, -0.5, -1.0, -1.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.25, 0.0, 0.25, 0.0, 0.5, -1.0, 1.0, -1.0, 0.5, 0.75, -0.25, 0.5, 0.5, 0.25, -0.5, -1.0, 0.5, 1.0, -0.75, -1.0, 0.75, -0.25, 0.0, -1.0, 0.25, 1.0, 0.0, 0.5, -0.25, ]);
    
    const array4 = new Float32Array([0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.5, 0.25, -0.75, 1.0, -1.0, -1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 0.5, -0.5, 0.5, 0.25, 1.0, -0.75, -1.0, -0.25, 0.5, 1.0, 0.5, -0.25, -0.75, 0.5, 0.75, -0.5, 0.75, -0.75, 0.75, 0.75, 0.0, -1.0, -0.5, -1.0, 0.0, 0.75, 0.25, -0.25, -0.75, 0.0, 0.5, 1.0, -0.5, 0.75, 0.0, -0.5, -0.25, 0.5, 0.0, -0.75, -1.0, -0.25, 0.0, -0.25, -0.25, -1.0, 0.5, 1.0, 0.5, 0.75, 0.75, 0.0, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 0.5, -0.5, 0.75, 0.0, 0.75, 0.0, 1.0, -1.0, -1.0, -0.25, 1.0, -1.0, -0.25, -0.25, -0.5, 0.0, 0.5, -0.75, -1.0, -1.0, 0.75, -1.0, 0.75, 1.0, -0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer100 = command_encoder100.finish();
    
    
    command_encoder101.insertDebugMarker("mymarker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.pushErrorScope("internal");
    const array5 = new Float32Array([0.5, -1.0, 1.0, 0.5, -0.25, -0.25, -1.0, -0.5, -0.75, -1.0, 1.0, 0.5, 0.75, 1.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, 0.25, -1.0, 0.0, -0.25, 0.75, -0.75, -1.0, 0.75, -0.75, 0.0, 1.0, 0.5, -1.0, 0.0, 1.0, 0.25, 0.5, -0.5, -0.25, 0.25, -0.75, -0.5, -0.5, -0.25, -0.75, -0.25, 0.0, -0.5, -1.0, 0.0, -0.5, 0.75, -0.75, 0.5, 0.5, -1.0, 0.5, 0.25, -0.75, 1.0, 0.5, 0.0, 0.0, 1.0, -0.5, -0.5, -0.25, -0.25, -0.75, -1.0, 0.75, -0.5, 1.0, 0.75, 1.0, -0.5, 0.0, -0.25, -0.75, 0.0, -0.25, -0.25, -0.75, 0.5, -1.0, -0.25, 0.0, 0.25, 0.0, -0.75, -0.75, 0.5, -0.5, 0.5, 0.0, -0.25, 1.0, -0.75, 0.75, -0.5, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.submit([command_buffer100, ]);
    
    device00.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    
    buffer101.destroy()
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_buffer102 = command_encoder102.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query101.destroy()
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer100.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.submit([command_buffer102, ]);
    const array6 = new Float32Array([0.25, -0.25, -0.5, -0.75, 0.5, 0.0, 0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 0.5, 0.5, 1.0, 0.75, 0.75, -0.5, -1.0, 0.25, -0.5, -0.5, 0.75, -0.5, 0.0, -0.75, 0.25, 0.0, 0.75, 0.75, -0.75, 0.0, 1.0, 1.0, 0.0, 0.25, 0.25, -0.75, 0.5, -1.0, 1.0, -1.0, 0.25, -0.25, 0.25, -0.25, 0.5, -0.25, -1.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.5, -0.25, 0.0, -0.5, 0.75, -0.75, -1.0, -0.25, 1.0, 0.75, 0.5, -1.0, -0.75, -0.25, 0.5, -0.75, -0.75, -1.0, -0.75, -1.0, -0.5, -0.5, 0.0, 0.25, 0.5, 1.0, 0.25, -0.75, -0.75, 0.75, 0.5, 1.0, 1.0, 0.75, 0.75, 0.25, -0.5, 0.75, 0.5, 0.0, 0.0, 0.5, 0.5, -0.25, -0.75, 0.5, ]);
    
    command_encoder300.insertDebugMarker("mymarker");
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    
    buffer102.destroy()
    const array7 = new Float32Array([0.0, 0.75, 1.0, 0.5, -1.0, -0.25, -0.25, 0.75, 0.25, -0.5, 0.25, -0.5, 0.75, 1.0, 0.75, -0.5, -0.5, -0.25, 0.0, 1.0, -0.75, 0.75, -0.5, -0.5, 1.0, 0.0, 1.0, -0.75, -0.25, 0.25, 0.25, -0.25, 0.75, -1.0, -1.0, 1.0, -0.25, -0.25, 0.25, -1.0, -0.25, -0.75, -0.75, 0.0, -0.75, 0.0, -0.25, 0.5, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, -0.5, 0.25, -1.0, -1.0, 1.0, -1.0, -0.75, 0.5, 0.5, 0.0, -0.25, -0.5, 1.0, 0.0, 0.5, 0.75, -0.75, 0.25, -1.0, -0.75, 1.0, -0.25, -0.75, -1.0, 0.0, 1.0, 0.0, 0.0, 0.0, -1.0, 1.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.5, 0.0, 0.0, -0.75, -1.0, -0.5, -0.25, 0.75, -0.5, -0.75, ]);
    const command_buffer301 = command_encoder301.finish();
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer103.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    texture100.destroy();
    device30.pushErrorScope("internal");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    device20.destroy();
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    buffer103.destroy()
    
    buffer300.destroy()
    render_bundle_encoder300.popDebugGroup();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query100.destroy()
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1030.setStencilReference(1);
    query104.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer302 = command_encoder302.finish();
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query300.destroy()
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1040.setPipeline(compute_pipeline1011);
    render_pass_encoder1030.setStencilReference(1);
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    compute_pass_encoder3000.popDebugGroup()
    device10.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.destroy();
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_pass_encoder1030.executeBundles([])
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.popDebugGroup()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.pushErrorScope("internal");
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer301.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.insertDebugMarker("mymarker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    query300.destroy()
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
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
    compute_pass_encoder3030.insertDebugMarker("marker")
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer106, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer106, 0);
    
    const array8 = new Float32Array([0.25, 1.0, -0.5, 0.0, 0.25, 1.0, -1.0, -0.75, -1.0, 0.5, 0.5, -0.5, -0.25, 1.0, 0.5, -0.75, -1.0, 0.75, -1.0, 0.5, -0.5, 1.0, 0.0, -0.5, 0.75, -0.75, -0.75, -0.75, 0.5, 0.25, 0.5, -1.0, -0.75, 0.0, -1.0, 0.5, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, -0.5, -0.25, 0.0, 0.5, 1.0, -0.25, -1.0, -0.75, 0.0, 0.25, 1.0, -1.0, -0.5, 0.75, -0.75, -0.5, -0.75, 0.25, -0.5, -0.25, 1.0, -0.25, 0.75, 1.0, -0.25, -1.0, -0.75, -1.0, 0.5, 0.75, -1.0, -0.5, -1.0, 1.0, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.0, -0.5, 0.75, -1.0, -1.0, 0.25, -1.0, 0.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.5, 0.75, 0.0, -0.5, 0.75, ]);
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder301.popDebugGroup();
    device60.destroy();
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const array9 = new Float32Array([0.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.0, -0.5, -1.0, -0.25, 0.0, 0.75, 0.75, -0.75, 0.0, 0.0, -0.5, 0.0, 0.25, 0.75, -0.5, 0.75, 0.25, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, 0.25, -0.5, -0.25, -1.0, 0.0, -0.5, -0.25, -0.75, -1.0, -0.75, -0.75, 0.25, -1.0, 0.75, -0.25, -1.0, 0.75, 0.75, -0.75, -0.75, 0.25, -1.0, 0.0, -1.0, -0.5, 1.0, 0.25, -0.75, 0.0, 0.0, -1.0, 0.25, 0.25, -0.25, 0.0, -0.5, 0.0, 0.75, -0.5, 1.0, -0.25, 0.5, 0.5, -0.5, 0.25, -0.25, -0.25, -1.0, 0.25, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.75, -0.5, 0.25, 0.5, -0.25, -0.75, 0.0, 0.5, -0.5, -0.25, -0.75, 0.25, 0.5, 0.0, ]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device30.queue.submit([command_buffer301, ]);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    command_encoder303.insertDebugMarker("mymarker");
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3030.popDebugGroup()
    
    
    query301.destroy()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    const command_buffer304 = command_encoder304.finish();
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    query301.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
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
    
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setPipeline(render_pipeline300);
    
    
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    query300.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline300);
    texture301.destroy();
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    command_encoder303.insertDebugMarker("mymarker");
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query303.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    query302.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.setStencilReference(1);
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    query301.destroy()
    query303.destroy()
    compute_pass_encoder3001.setPipeline(compute_pipeline300);
    render_pass_encoder3030.setStencilReference(1);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const command_buffer303 = command_encoder303.finish();
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query304
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group300);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const array10 = new Float32Array([0.25, -0.75, -0.25, 0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 0.25, -0.25, 0.75, -0.75, -0.25, 1.0, -1.0, 0.0, -0.25, -0.75, 0.75, 0.25, 0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, -1.0, -1.0, -0.25, -0.25, -1.0, -1.0, -1.0, 0.0, 0.0, -1.0, 0.0, 0.25, 0.0, -0.5, -1.0, 0.0, -0.75, -1.0, 0.75, 0.75, 0.75, 0.25, 0.5, 0.25, -0.75, 0.0, -0.75, 1.0, -0.5, -0.75, -0.5, -0.25, 0.5, -0.75, 1.0, -1.0, -0.5, 0.25, 0.0, -0.75, -1.0, 1.0, -1.0, 0.25, -0.75, 0.75, 1.0, 0.0, -0.5, 0.25, 0.75, 1.0, 1.0, -0.75, -0.75, 0.0, 0.5, 0.5, -0.5, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, 0.5, 0.75, -0.25, -0.5, -0.5, 0.25, 0.75, ]);
    
    buffer304.destroy()
    
    
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
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder3000.setPipeline(render_pipeline301);
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    query303.destroy()
    
    
    
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
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query301.destroy()
    device30.pushErrorScope("validation");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder3001.insertDebugMarker("marker");
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query104.destroy()
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder101.copyTextureToTexture(
        {
            texture: texture101
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
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
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
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setPipeline(render_pipeline102);
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    render_pass_encoder3001.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
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
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    render_bundle_encoder302.insertDebugMarker("marker");
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group302);
    compute_pass_encoder3000.popDebugGroup()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3050.executeBundles([])
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer308, 0, array3, 0, array3.length);
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3001.setBindGroup(0, bind_group303);
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.popDebugGroup();
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    
    query303.destroy()
    
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout304]
    });
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group304);
    query301.destroy()
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device30.queue.writeBuffer(buffer3012, 0, array4, 0, array4.length);
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
    
    device30.queue.writeBuffer(buffer3012, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer3012, 0, array7, 0, array7.length);
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer3012.destroy()
    render_pass_encoder3030.setStencilReference(1);
    
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    render_pass_encoder3001.setPipeline(render_pipeline300);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group305);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3030.setVertexBuffer(0, buffer302);
    render_pass_encoder3050.setPipeline(render_pipeline301);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder3030.drawIndirect(buffer309, 0);
    compute_pass_encoder3030.popDebugGroup()
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3015, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3016, 0);
    compute_pass_encoder3030.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group306);
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group101);
    render_pass_encoder3000.setVertexBuffer(0, buffer309);
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder3030.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3001.setVertexBuffer(0, buffer305);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group307);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    render_pass_encoder3030.end();
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    render_pass_encoder3001.drawIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3023, 0);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3001.end();
    render_pass_encoder3050.setVertexBuffer(0, buffer3022);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3050.drawIndirect(buffer304, 0);
    compute_pass_encoder3000.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer402, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer402, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3030.drawIndirect(buffer308, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer109, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder3001.end();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder3050.end();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.end();
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
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
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group309);
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3016, 0);
    render_pass_encoder3050.drawIndirect(buffer309, 0);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    compute_pass_encoder3001.end();
    render_pass_encoder3030.draw(3);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3050.drawIndirect(buffer3023, 0);
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
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
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    device30.queue.submit([]);
    render_pass_encoder3050.drawIndirect(buffer300, 0);
    compute_pass_encoder3001.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3050.endOcclusionQuery()
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer305, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder3001.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3030.end();
    device30.queue.submit([command_buffer305, ]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3028, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3028, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3050.end();
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
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
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

    compute_pass_encoder3030.setBindGroup(0, bind_group3011);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3050.drawIndirect(buffer3016, 0);
    device30.queue.submit([command_buffer303, ]);
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
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    render_pass_encoder3050.drawIndirect(buffer3016, 0);
    compute_pass_encoder4000.end();
    compute_pass_encoder1040.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device40.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3050.drawIndirect(buffer301, 0);
    compute_pass_encoder3001.end();
    render_pass_encoder3050.drawIndirect(buffer3011, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3010, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3034, 0);
    device40.queue.submit([]);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3035, 0);
    render_pass_encoder3000.drawIndirect(buffer3031, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3022, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3036, 0);
    render_pass_encoder3030.drawIndirect(buffer3034, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3037, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3037, 0);
    compute_pass_encoder3001.end();
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer305, ]);
    render_pass_encoder3000.drawIndirect(buffer3012, 0);
    render_pass_encoder3050.end();
    compute_pass_encoder3030.end();
    compute_pass_encoder4000.end();
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3038, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3039, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3039, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3013);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3042, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3042, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    device40.queue.submit([]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3000.drawIndirect(buffer3042, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3035, 0);
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder3030.end();
}