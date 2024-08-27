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
    const array0 = new Float32Array([0.5, -0.75, 0.75, 0.75, 1.0, -0.25, 0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 0.75, -1.0, 0.75, 0.75, -0.25, -0.75, -0.5, 1.0, 1.0, 0.75, 0.5, 0.5, -0.5, -0.25, -1.0, -0.25, -1.0, 0.0, -0.75, -0.5, 0.5, 0.25, 0.75, 0.0, -0.5, 1.0, -0.25, -0.75, 0.0, 0.5, -0.5, 1.0, 1.0, -0.5, 0.25, -0.75, 0.5, 0.25, -0.75, -0.5, -0.5, -0.75, 1.0, -0.75, -0.75, -0.75, -1.0, 0.75, 0.75, 0.5, 0.5, 1.0, 1.0, -0.5, 0.75, 0.0, 0.0, 0.75, 1.0, -0.75, -0.75, -0.75, 1.0, -0.5, 1.0, -0.25, 0.75, 0.25, -0.25, -1.0, -0.75, -0.25, 1.0, 1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.25, 0.75, 0.5, 0.5, 0.75, -1.0, -0.25, -0.5, 0.5, ]);
    const array1 = new Float32Array([0.5, 1.0, 0.75, 0.0, 0.5, 0.25, 0.0, 1.0, 0.75, 0.0, -0.5, 0.0, 0.75, -0.25, 0.0, 0.0, -0.25, 0.25, 0.75, -0.5, -0.25, 0.25, 1.0, 0.75, 0.5, 0.75, 0.25, -1.0, 1.0, 1.0, -0.5, -0.25, 1.0, 0.5, -0.5, -0.5, 0.0, -0.5, -0.75, 0.0, -0.25, 0.5, 0.75, 0.25, -0.75, -0.25, 0.75, 0.0, 1.0, 0.0, 0.25, 0.75, -0.25, 0.5, 0.5, -0.75, -0.5, 0.25, -0.75, -1.0, -0.5, 0.5, -0.75, -0.75, 0.75, -0.5, 0.5, -0.75, 0.5, 0.5, 1.0, -0.75, -0.25, 0.75, -0.75, -0.25, -0.5, 0.25, -0.5, 0.5, 0.0, 0.0, 0.0, 0.0, -1.0, 0.25, -0.25, 0.5, 0.0, 1.0, -0.75, 0.75, 0.75, 0.0, -0.25, 0.0, 0.75, 0.0, -0.5, 0.0, ]);
    
    const array2 = new Float32Array([-0.25, -0.25, 0.5, 0.25, -0.5, -0.75, 1.0, 1.0, 0.5, 0.25, 0.25, -0.5, -0.75, -0.25, 0.0, 0.75, 0.75, -0.75, -1.0, -0.25, -0.5, -0.75, 0.75, -1.0, -0.75, 0.25, 0.0, 0.75, 0.25, 0.25, 0.75, -0.25, 1.0, -0.5, -0.25, 0.75, 0.0, 0.25, 0.25, -0.75, 0.25, -0.25, 0.5, -0.5, 0.75, -0.5, 0.25, -1.0, -0.25, 0.5, 1.0, -0.25, 0.0, -0.75, -0.75, -0.75, -0.75, 1.0, 0.0, -0.75, 0.75, -0.75, 0.5, 0.75, 1.0, -0.75, 0.5, 0.25, -1.0, 1.0, 0.0, -0.25, 0.25, 0.5, 0.75, -0.75, -1.0, -1.0, 1.0, 1.0, 0.0, 0.75, 0.5, -0.5, 1.0, -0.75, 0.0, 0.75, 0.25, 0.0, -0.25, 0.25, 0.0, -0.5, 0.5, 0.75, -0.25, 0.75, -0.25, -0.25, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([-0.25, -0.5, 1.0, -0.5, 0.5, -1.0, -0.25, 0.75, -0.5, -0.5, -0.25, 0.5, 1.0, -0.5, -0.5, 0.25, -0.75, -0.75, 0.25, -0.5, 0.75, -1.0, -1.0, -0.25, 1.0, 1.0, 0.5, 0.75, 0.0, -1.0, 0.75, -1.0, -0.75, 0.25, -0.5, 0.0, 0.75, -1.0, 0.5, -0.75, 0.0, 1.0, 0.5, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.25, 0.75, -0.25, -1.0, 0.75, 1.0, -0.75, 0.0, -0.25, 0.75, -1.0, 1.0, 0.5, 0.5, 1.0, -0.75, 0.0, 1.0, -1.0, 0.0, 0.25, -0.75, -1.0, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -0.25, 0.75, 0.25, -1.0, -0.5, 0.0, -0.75, -0.5, -1.0, 0.75, 0.5, 1.0, 0.0, 0.5, -0.75, 0.25, -0.5, 0.75, 0.5, 0.5, 0.25, 0.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    device10.pushErrorScope("internal");
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query100.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    query101.destroy()
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
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    query100.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    query101.destroy()
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer100 = command_encoder100.finish();
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const array4 = new Float32Array([-0.75, -1.0, -0.25, 0.75, -0.25, 0.5, -0.5, 0.5, -0.75, -0.5, -0.5, -0.25, 0.75, 1.0, 1.0, 0.75, -0.5, 0.75, 0.75, -0.25, 0.75, 1.0, 1.0, 0.75, 0.75, -0.25, 0.75, 0.75, 1.0, -0.25, 0.0, 0.75, -0.5, 1.0, -0.5, -1.0, 0.0, -1.0, -0.25, 0.5, -1.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.25, 0.0, -1.0, 0.75, 0.25, 0.75, 1.0, -0.5, 1.0, -0.25, 0.75, -0.5, 0.75, 0.25, 0.0, 0.75, 0.75, 0.0, -1.0, -0.75, 0.0, -1.0, 0.5, 0.0, 0.25, 0.5, -1.0, -1.0, -1.0, 0.0, -0.25, -0.25, -0.25, -0.5, 0.5, 0.5, 1.0, -0.5, -0.5, 0.5, 0.25, -0.75, -0.5, 0.75, -0.75, 0.5, 0.5, 1.0, 0.0, 0.25, -0.5, 0.25, 1.0, -0.25, ]);
    query100.destroy()
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    query101.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer101.destroy()
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
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder1010.popDebugGroup()
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
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
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    device10.pushErrorScope("out-of-memory");
    device30.destroy();
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const array5 = new Float32Array([-1.0, 0.75, 0.5, -0.5, 0.75, -1.0, -0.5, -0.25, -0.5, -0.5, -0.25, 0.25, 0.75, 0.0, 0.5, 0.0, 0.75, 0.0, 1.0, 0.5, -0.75, 0.0, 0.5, -0.25, 0.75, 1.0, 0.25, 0.75, 1.0, -0.5, -0.5, 0.0, 0.0, -0.75, -1.0, -0.5, 0.75, 0.25, -1.0, 0.0, -0.75, 0.0, -0.75, 0.5, 0.25, 0.25, 0.25, 0.25, -0.75, 0.0, 0.75, 0.0, -1.0, -1.0, -0.5, 0.75, -1.0, 0.75, 1.0, -0.5, -0.5, 0.5, 1.0, 0.0, 1.0, 0.0, 0.75, -1.0, 0.0, -0.5, 0.75, 0.5, 0.75, 1.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.75, 0.5, 0.25, -1.0, -1.0, 0.75, -1.0, 0.75, 0.5, -0.75, -0.25, -1.0, 0.75, 0.25, -0.5, 0.25, 0.5, 1.0, -0.5, -1.0, -0.25, ]);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture101.destroy();
    buffer101.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    query100.destroy()
    command_encoder101.clearBuffer(buffer100);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    render_bundle_encoder100.popDebugGroup();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
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
    
    texture100.destroy();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query101.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    buffer104.destroy()
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
        occlusionQuerySet: query103
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer103.destroy()
    render_pass_encoder1050.executeBundles([])
    command_encoder103.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
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
        occlusionQuerySet: query100
    });
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer107.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture102
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
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer106.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1040.setStencilReference(1);
    
    
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.executeBundles([])
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1031.executeBundles([render_bundle_encoder101, ])
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer105
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
    render_pass_encoder1040.beginOcclusionQuery(0)
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
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
        occlusionQuerySet: query103
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.beginOcclusionQuery(0)
    
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout106,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer106,
        0
    )
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture103.destroy();
    render_pass_encoder1020.setStencilReference(1);
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
        occlusionQuerySet: query101
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder1011.setStencilReference(1);
    
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer102.destroy()
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline101);
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    render_pass_encoder1040.endOcclusionQuery()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1040.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout106,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setVertexBuffer(0, buffer102);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder105.insertDebugMarker("mymarker");
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.dispatchWorkgroups(100);
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer109,
        0
    )
    render_bundle_encoder101.drawIndirect(buffer107, 0);
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer1010,
        0
    )
    render_pass_encoder1010.setStencilReference(1);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1041.setPipeline(render_pipeline103);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.drawIndirect(buffer100, 0);
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline104);
    
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setPipeline(render_pipeline101);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1041.setBindGroup(0, bind_group104);
    
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    render_pass_encoder1041.setVertexBuffer(0, buffer1010);
    device10.queue.writeBuffer(buffer1015, 0, array0, 0, array0.length);
    
    
    render_pass_encoder1051.setPipeline(render_pipeline101);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    query102.destroy()
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    buffer1015.destroy()
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.beginOcclusionQuery(0)
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    buffer1016.destroy()
    buffer100.destroy()
    buffer1013.destroy()
    buffer1017.destroy()
    
    render_pass_encoder1020.draw(3);
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    buffer107.destroy()
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
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

    render_pass_encoder1040.setBindGroup(0, bind_group107);
    render_pass_encoder1040.setStencilReference(1);
    buffer1012.destroy()
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.setVertexBuffer(0, buffer1011);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.popDebugGroup();
    texture102.destroy();
    
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1051.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.end();
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    buffer1018.destroy()
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer100, ]);
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer1010,
        0
    )
    
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout105,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1041.end();
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    render_pass_encoder1031.setBindGroup(0, bind_group108);
    render_pass_encoder1011.setVertexBuffer(0, buffer1014);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1031.setVertexBuffer(0, buffer105);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1011.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1010);
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder1011.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1051.setVertexBuffer(0, buffer102);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.end();
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1012);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
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
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1031.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer1010);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder1041.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.draw(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.setVertexBuffer(0, buffer1026);
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.end();
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
    command_encoder104.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1020.drawIndirect(buffer100, 0);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.end();
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1020.end();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1010.end();
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer101, command_buffer104, command_buffer105, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1041.end();
    render_pass_encoder1051.setIndexBuffer(buffer1034, "uint16");
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    render_pass_encoder1031.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1051.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndexed(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1038, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1051.end();
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1050.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.popDebugGroup();
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    device10.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1020.end();
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndirect(buffer1038, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1032, 0);
    render_pass_encoder1041.drawIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndirect(buffer105, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    device10.queue.submit([]);
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder1011.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1048, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1032, 0);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1041.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer104, ]);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1051.end();
    render_pass_encoder1050.end();
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1041.drawIndirect(buffer1048, 0);
    render_pass_encoder1010.popDebugGroup();
}