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
    
    
    const array0 = new Float32Array([0.0, -0.25, 0.25, 0.5, 0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 0.25, 0.25, -0.5, -1.0, -0.5, 0.0, 0.5, 0.75, 0.5, 0.25, -0.5, 0.5, 0.25, 1.0, -0.25, 0.25, 0.25, 0.25, 1.0, -0.5, 0.25, 0.25, -0.5, -1.0, 1.0, 0.5, -1.0, -0.5, 0.0, 0.75, -0.25, 0.25, 0.25, -0.5, 0.25, -0.25, -0.25, -0.75, -1.0, 0.75, -0.5, 0.25, 0.5, 0.75, -0.5, -0.25, -0.75, 0.5, 0.5, 0.0, -0.25, 0.75, 0.75, 0.75, 1.0, 0.75, 0.5, -0.75, 0.75, 0.75, -0.75, -0.5, -0.75, -0.25, 0.0, 0.0, 0.0, 0.5, -0.75, -0.75, -0.5, -0.75, -0.25, 0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 1.0, -1.0, -0.25, 1.0, 0.0, -0.5, -0.5, 0.5, 0.5, -1.0, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array1 = new Float32Array([-1.0, -1.0, 0.75, 0.25, 1.0, -1.0, 0.0, -0.25, 0.0, -0.25, 0.0, -0.75, -0.25, 0.0, 1.0, 0.0, -1.0, 0.0, -1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 0.0, -0.25, 1.0, 0.75, -0.5, 0.25, 0.0, -0.75, -0.25, -0.5, 0.25, -0.75, -1.0, 0.5, 0.0, 0.0, -0.25, -0.25, -1.0, 0.0, -1.0, -0.5, -0.75, 1.0, -0.25, -0.75, -1.0, 0.5, -0.5, 0.0, -0.25, 0.25, 0.25, -0.25, -0.5, -0.75, 0.25, -0.5, -0.25, 0.75, 0.5, -0.5, -0.5, 0.5, 0.5, 0.75, 0.25, 0.75, 0.5, 1.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.5, 0.5, -0.25, 0.25, -1.0, 0.75, 0.5, -0.5, -0.25, -1.0, 0.5, 0.25, 0.75, -0.25, 0.25, -0.75, -1.0, ]);
    
    
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
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder100.popDebugGroup()
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query100.destroy()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    command_encoder102.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const command_buffer103 = command_encoder103.finish();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.pushErrorScope("internal");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_buffer101 = command_encoder101.finish();
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query101.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    const array2 = new Float32Array([0.25, 1.0, -1.0, -0.5, -0.75, -0.75, -0.25, 0.75, -0.5, -0.5, -0.5, 0.5, -1.0, -0.25, 1.0, 0.0, -1.0, -1.0, 0.0, -0.25, -0.75, -0.5, 0.5, 1.0, -1.0, -1.0, 1.0, -0.25, 1.0, 0.75, -0.25, -0.5, -0.5, 0.5, -0.25, -0.25, 0.5, -0.25, 0.5, 0.25, 0.0, -0.25, 0.25, -0.25, -0.5, 1.0, -0.75, -0.25, -1.0, 0.25, -1.0, 1.0, 1.0, 0.0, 0.25, 0.5, 0.5, -0.75, 1.0, 0.75, -0.75, 0.75, -0.75, 0.0, 0.0, -0.5, 1.0, -1.0, -0.5, 0.75, 0.25, -0.25, 1.0, 0.5, -1.0, 0.5, -1.0, -0.25, 0.75, 0.75, 1.0, 0.0, 0.75, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, 0.5, 0.75, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.5, -0.5, 0.0, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    
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
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query102.destroy()
    compute_pass_encoder1001.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder104.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    command_encoder104.popDebugGroup()
    compute_pass_encoder1001.setPipeline(compute_pipeline100);
    command_encoder104.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([0.5, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 0.75, 0.75, 0.5, 0.75, 0.75, 0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.75, -0.75, 0.25, 0.75, 0.75, 0.5, -0.5, 0.5, 1.0, 0.75, -0.25, 0.25, -0.25, 0.0, -0.25, -0.25, 0.75, 1.0, -0.5, 0.5, -0.25, 0.0, 0.0, -0.5, 0.25, -0.75, -0.25, -0.25, 1.0, 0.25, -1.0, -1.0, 0.75, -0.5, -0.25, -0.5, -1.0, -0.25, 0.5, -1.0, 1.0, 1.0, 1.0, 0.5, -0.75, 0.25, -0.5, 1.0, -0.5, -0.25, 0.75, 1.0, -1.0, -0.25, 0.5, -0.75, 0.25, -0.5, 0.75, -1.0, -0.25, -0.25, 1.0, 0.5, -0.75, 0.0, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, -0.5, -0.5, -0.75, 0.75, -0.75, 0.5, 1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
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
        occlusionQuerySet: query103
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1041.insertDebugMarker("marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline105);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1041.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.insertDebugMarker("marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    
    device10.pushErrorScope("out-of-memory");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1001.insertDebugMarker("marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1041.setPipeline(render_pipeline105);
    
    render_pass_encoder1041.insertDebugMarker("marker");
    command_encoder102.clearBuffer(buffer102);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1041.insertDebugMarker("marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline103);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
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

    compute_pass_encoder1001.setBindGroup(0, bind_group102);
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1010.popDebugGroup()
    
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query101.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1001.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    buffer107.destroy()
    device10.queue.submit([command_buffer100, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query103.destroy()
    query100.destroy()
    
    texture101.destroy();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.pushDebugGroup("group_marker");
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    
    
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    buffer100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group104);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.setPipeline(compute_pipeline108);
    render_pass_encoder1040.setPipeline(render_pipeline100);
    buffer103.destroy()
    
    render_pass_encoder1020.setPipeline(render_pipeline105);
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder104.copyTextureToTexture(
        {
            texture: texture102
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
    buffer101.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.insertDebugMarker("marker");
    
    query100.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.copyBufferToBuffer(
        buffer1012,
        0,
        buffer108,
        0,
        400
    );
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    query101.destroy()
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer1010.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query200.destroy()
    buffer105.destroy()
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
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture102.destroy();
    
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    buffer1011.destroy()
    
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    query100.destroy()
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.queue.writeBuffer(buffer1013, 0, array0, 0, array0.length);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1013.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer1015.destroy()
    const array4 = new Float32Array([0.25, -1.0, 1.0, 0.25, 0.5, -0.25, -0.5, 0.25, 0.25, 0.0, -0.5, -0.25, 0.25, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, 0.75, -0.5, -1.0, 0.0, -0.5, -0.25, 0.0, -0.25, 1.0, 0.75, 0.25, 1.0, -0.75, -0.5, 0.0, 0.5, 0.25, -0.75, -0.75, 0.75, -1.0, -0.5, 0.75, 0.75, -1.0, 0.0, -0.75, -1.0, -0.5, 0.5, 0.5, 0.0, -0.75, -0.25, -0.5, -0.25, 0.25, 0.5, -1.0, 1.0, 1.0, -0.25, -0.75, -0.5, -0.75, 1.0, 0.5, -0.25, -0.75, -0.5, -0.75, 1.0, -0.25, 1.0, 0.25, 0.25, 0.0, -0.25, -0.25, 0.75, -0.5, 0.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.5, 0.75, 0.0, -0.75, -0.25, -0.25, -0.75, 0.25, 0.0, -1.0, 0.0, 0.0, -0.25, -0.5, ]);
    
    
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    render_pass_encoder1041.setVertexBuffer(0, buffer106);
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder101.setVertexBuffer(0, buffer101);
    
    
    compute_pass_encoder1020.dispatchWorkgroups(100);
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setIndexBuffer(buffer1011, "uint16");
    
    render_bundle_encoder101.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer1012,
        0
    )
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer106.destroy()
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
    
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setStencilReference(1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    buffer102.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1050.setPipeline(render_pipeline104);
    buffer1017.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.pushErrorScope("validation");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1013.destroy()
    
    buffer109.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.insertDebugMarker("marker");
    
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    buffer107.destroy()
    query100.destroy()
    query103.destroy()
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query100.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.draw(3);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    query102.destroy()
    device10.queue.writeBuffer(buffer1016, 0, array4, 0, array4.length);
    query105.destroy()
    device20.destroy();
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    
    buffer108.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    
    device30.destroy();
    device40.pushErrorScope("out-of-memory");
    device40.queue.submit([]);
    
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer104.destroy()
    query104.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline108.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query101.destroy()
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder102.setPipeline(render_pipeline108);
    
    buffer400.destroy()
    render_pass_encoder1051.setPipeline(render_pipeline104);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1019, 0, array4, 0, array4.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1040.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.queue.writeBuffer(buffer1016, 0, array1, 0, array1.length);
    render_bundle_encoder102.popDebugGroup();
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1041.setStencilReference(1);
    buffer1012.destroy()
    buffer1014.destroy()
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
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

    render_pass_encoder1051.setBindGroup(0, bind_group107);
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1041.setStencilReference(1);
    device10.queue.writeBuffer(buffer1020, 0, array1, 0, array1.length);
    
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setPipeline(render_pipeline108);
    const array5 = new Float32Array([0.25, 0.0, -0.75, 0.5, -0.25, 0.5, -1.0, -1.0, 1.0, -1.0, -1.0, 0.0, -1.0, 0.5, -0.75, 1.0, 0.5, 1.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.75, 0.75, -0.75, -0.75, 1.0, 0.75, -0.25, -0.75, 1.0, -0.75, -0.5, -0.5, 1.0, 0.5, 0.0, -0.75, 0.25, 0.5, 1.0, 1.0, 1.0, -0.5, -0.5, 1.0, -0.25, 0.25, -1.0, 0.25, 1.0, 1.0, -0.75, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, -0.25, 0.0, 0.75, -1.0, 0.0, -1.0, 0.5, -0.5, -1.0, -0.5, 0.0, -0.5, -1.0, 0.5, -0.5, 0.25, -0.75, 0.25, -1.0, 0.5, 0.25, 0.0, 0.0, -1.0, 0.75, 0.5, -0.5, -1.0, 1.0, 0.75, 0.25, 0.0, -0.5, 0.75, 1.0, -0.25, -0.25, 0.25, -0.5, -1.0, ]);
    compute_pass_encoder1001.insertDebugMarker("marker")
    device40.destroy();
    buffer1018.destroy()
    command_encoder105.clearBuffer(buffer1014);
    render_bundle_encoder101.drawIndirect(buffer105, 0);
    
    query105.destroy()
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query105.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder000.insertDebugMarker("mymarker");
    query105.destroy()
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1001.insertDebugMarker("marker")
    buffer1019.destroy()
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
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1051.pushDebugGroup("group_marker");
    render_bundle_encoder101.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer1018,
        0
    )
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.drawIndirect(buffer107, 0);
    const array6 = new Float32Array([0.5, -0.75, -1.0, -1.0, 0.75, 0.0, 0.0, -0.5, -0.5, 0.75, -0.5, -0.25, 0.0, -0.25, -1.0, 0.0, 1.0, 0.75, 1.0, -0.75, -1.0, 0.5, -0.5, -0.25, -0.5, 1.0, 0.75, 0.5, -1.0, 0.5, -1.0, 0.25, 0.25, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, -0.75, 0.75, 0.0, -0.75, 1.0, -1.0, -0.5, -0.25, 1.0, 0.25, 1.0, 0.75, 0.0, 0.25, -0.5, 0.75, -1.0, -0.5, 0.5, 0.75, -1.0, 0.5, 0.0, -0.75, -0.25, -0.5, -0.5, 0.75, 0.25, 0.75, 0.75, 0.25, -1.0, 0.75, -0.5, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, -0.5, -0.75, 0.5, 1.0, 1.0, 0.25, 1.0, -0.25, 1.0, -0.25, 0.25, 1.0, -0.5, -0.25, -0.5, -1.0, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group108);
    
    
    device10.queue.writeBuffer(buffer1015, 0, array5, 0, array5.length);
    render_pass_encoder1040.setVertexBuffer(0, buffer1012);
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer1016,
        0
    )
    
    device10.queue.writeBuffer(buffer1022, 0, array0, 0, array0.length);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.submit([]);
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
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
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group109);
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1010);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.setVertexBuffer(0, buffer100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder1001.popDebugGroup()
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
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1050.setVertexBuffer(0, buffer1023);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1050.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1051.end();
    render_pass_encoder1050.end();
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
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group1011);
    render_pass_encoder1020.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer105);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder1010.popDebugGroup()
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
    render_pass_encoder1051.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.draw(3);
    compute_pass_encoder1001.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1027, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1020.end();
    render_pass_encoder1021.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer105, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.popDebugGroup();
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
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
    render_pass_encoder1051.setIndexBuffer(buffer1031, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1028, 0);
    command_encoder104.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.end();
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1050.popDebugGroup();
}