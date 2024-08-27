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
    
    const array0 = new Float32Array([0.75, 0.0, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, -0.25, -0.75, -0.25, -0.75, -1.0, 0.5, -0.25, 0.5, -0.5, -0.5, -0.75, -0.25, -1.0, 0.0, 0.75, -0.5, -0.25, -0.5, -0.5, -0.25, -1.0, 0.5, 0.75, -0.25, -0.75, -0.5, -0.75, -0.75, -0.25, 0.75, 0.75, 1.0, 0.75, 0.0, -0.5, 0.75, -1.0, -0.5, 0.75, 0.75, -0.75, -0.25, -1.0, -1.0, 1.0, -0.75, 0.5, -0.5, 1.0, 0.25, -0.5, 0.75, -0.5, 0.0, 1.0, -0.75, -1.0, 0.75, 0.75, 0.25, 1.0, -0.5, -0.25, 0.0, 0.75, 0.0, 0.75, 0.5, -0.75, -0.5, 0.5, -0.75, -0.5, 0.5, -0.75, 0.75, 0.25, -0.75, 0.75, 1.0, 0.25, -0.5, -0.5, 0.75, -0.5, 0.0, -1.0, -0.5, -0.5, 0.75, -1.0, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array1 = new Float32Array([0.5, 0.0, 1.0, 0.25, 0.75, 1.0, -0.75, 0.0, 0.25, 0.75, 0.0, -0.25, -1.0, 0.0, -0.75, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, 1.0, -0.75, -0.5, 0.75, 0.75, 0.5, 0.0, 0.25, -1.0, 0.25, -0.25, -1.0, 0.25, 0.5, 0.5, 0.5, -0.75, -0.5, -0.5, -0.5, -0.25, 0.0, -0.5, 0.75, 0.5, 0.75, -1.0, 0.5, -1.0, -0.5, -0.5, 1.0, 0.25, 0.0, 1.0, -0.5, -1.0, 0.5, 0.25, -0.75, 0.25, 0.5, 1.0, 0.5, -0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 0.25, -0.75, 0.0, -0.75, 0.25, -0.5, 1.0, 0.0, 0.0, 0.75, 0.75, 0.75, -0.25, -0.25, -0.25, -0.25, 0.0, 0.25, 0.75, 0.0, 0.5, -0.25, -0.75, 0.25, 0.75, -0.5, 1.0, 0.0, -0.25, ]);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder001.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer002 = command_encoder002.finish();
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device30.destroy();
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder100.insertDebugMarker("mymarker");
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    query000.destroy()
    const array2 = new Float32Array([0.5, -0.25, 0.75, 0.25, -0.5, 0.0, 0.75, 1.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.5, 0.5, 0.0, 0.75, 1.0, -0.5, -0.5, 0.0, 0.5, 0.25, 0.75, -0.5, 0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -0.75, 0.75, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, 0.5, -0.75, -1.0, 1.0, -0.5, 0.25, 0.75, 0.5, 1.0, -0.25, 1.0, -1.0, 0.75, -0.5, -0.75, 1.0, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, -1.0, -0.75, 0.0, 0.25, -0.25, 0.0, -1.0, 1.0, 0.25, -0.75, -0.5, -1.0, -0.75, 0.0, -0.25, 0.75, 0.75, -1.0, 0.25, 0.0, -0.5, -0.5, -0.5, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 0.25, 0.25, 0.25, -0.5, 0.75, 0.5, 0.25, -0.75, 0.75, 0.0, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    texture100.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_buffer101 = command_encoder101.finish();
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder100.popDebugGroup()
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    device10.queue.submit([command_buffer101, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    query002.destroy()
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
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
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
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
        occlusionQuerySet: query102
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    texture101.destroy();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder1030.setPipeline(compute_pipeline102);
    texture102.destroy();
    device00.pushErrorScope("validation");
    const command_buffer004 = command_encoder004.finish();
    texture100.destroy();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.pushErrorScope("out-of-memory");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setVertexBuffer(0, buffer102);
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.draw(3);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0011.setPipeline(compute_pipeline000);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_buffer005 = command_encoder005.finish();
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setPipeline(render_pipeline101);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder103.setPipeline(render_pipeline101);
    compute_pass_encoder0011.insertDebugMarker("marker")
    buffer100.destroy()
    device40.pushErrorScope("internal");
    compute_pass_encoder0011.insertDebugMarker("marker")
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    compute_pass_encoder0011.insertDebugMarker("marker")
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    compute_pass_encoder0011.popDebugGroup()
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    buffer106.destroy()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    buffer200.destroy()
    query002.destroy()
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query101.destroy()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer107.destroy()
    compute_pass_encoder0011.popDebugGroup()
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder103.setBindGroup(0, bind_group104);
    render_bundle_encoder001.popDebugGroup();
    query102.destroy()
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_pass_encoder1040.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.popDebugGroup()
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query102
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer104
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    device10.pushErrorScope("internal");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder002.setPipeline(render_pipeline000);
    command_encoder200.insertDebugMarker("mymarker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    query003.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    texture103.destroy();
    
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
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    query103.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
        occlusionQuerySet: query102
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder1021.setStencilReference(1);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query002.destroy()
    query001.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
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
    
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline103);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
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
        occlusionQuerySet: query101
    });
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1050.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer1010,
        0
    )
    
    render_pass_encoder1021.insertDebugMarker("marker");
    
    render_bundle_encoder103.setVertexBuffer(0, buffer108);
    compute_pass_encoder0011.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder1041.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setPipeline(render_pipeline102);
    
    render_bundle_encoder100.drawIndirect(buffer109, 0);
    render_pass_encoder1000.setPipeline(render_pipeline103);
    render_pass_encoder1040.insertDebugMarker("marker");
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    render_bundle_encoder103.setIndexBuffer(buffer105, "uint16");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    buffer1011.destroy()
    render_bundle_encoder101.finish();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1021.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1051.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1021.setStencilReference(1);
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder103.drawIndirect(buffer1011, 0);
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_buffer402 = command_encoder402.finish();
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query001.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
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
        occlusionQuerySet: query200
    });
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array3 = new Float32Array([0.0, -0.25, -0.25, -1.0, 1.0, 0.0, 0.0, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, 0.25, -0.25, 0.5, 0.5, 0.75, -0.25, 0.5, -0.75, 0.25, 1.0, -0.25, 0.25, 0.25, -0.5, 0.75, 0.25, 1.0, 0.25, 0.25, -0.75, 0.5, 0.5, -0.25, 1.0, -0.75, 1.0, -0.5, 0.25, -0.75, -0.25, -0.25, 0.25, 0.75, -1.0, 0.75, 0.75, -0.75, 0.0, 0.0, 1.0, 0.25, 0.0, 0.5, 0.5, 0.5, 1.0, 0.5, -1.0, 0.25, 0.0, 0.5, -1.0, 0.0, 0.5, 0.0, 0.0, 0.5, -0.5, -0.5, -0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 0.75, 0.25, -0.25, 0.25, -1.0, -0.25, -0.75, 0.5, -0.25, -0.5, 0.25, 0.25, -0.25, 1.0, -1.0, -0.75, 0.25, 1.0, ]);
    query000.destroy()
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
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
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.executeBundles([render_bundle_encoder101, render_bundle_encoder102, ])
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer1012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    
    render_pass_encoder1041.pushDebugGroup("group_marker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.setPipeline(compute_pipeline006);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1051.executeBundles([render_bundle_encoder101, render_bundle_encoder103, ])
    buffer001.destroy()
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer109,
        0
    )
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline006.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    
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
        occlusionQuerySet: query101
    });
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder1060.setStencilReference(1);
    query001.destroy()
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setPipeline(render_pipeline105);
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group002);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer104.destroy()
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    render_pass_encoder1041.popDebugGroup();
    command_encoder001.clearBuffer(buffer001);
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    compute_pass_encoder1050.setPipeline(compute_pipeline1033);
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1020.setVertexBuffer(0, buffer108);
    render_pass_encoder1060.setPipeline(render_pipeline103);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
    compute_pass_encoder1050.popDebugGroup()
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group107);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group108);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group109);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group003);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
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
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1010);
    device00.queue.submit([command_buffer004, ]);
    const command_buffer201 = command_encoder201.finish();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1030.setVertexBuffer(0, buffer107);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1021.setVertexBuffer(0, buffer1015);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1011);
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    const command_buffer006 = command_encoder006.finish();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer008, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1012);
    compute_pass_encoder0030.end();
    render_pass_encoder1000.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder1000.setVertexBuffer(0, buffer108);
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
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
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1013);
    compute_pass_encoder0010.popDebugGroup()
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0011, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1060.setVertexBuffer(0, buffer1011);
    render_pass_encoder1030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0012, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0012, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group1014);
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    device20.queue.submit([command_buffer201, ]);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline1033.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1015);
    render_pass_encoder1060.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer103, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
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
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group1016);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1041.setVertexBuffer(0, buffer108);
    render_pass_encoder1041.drawIndirect(buffer105, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setVertexBuffer(0, buffer1010);
    compute_pass_encoder0030.end();
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder0010.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1041.end();
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    compute_pass_encoder0000.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1035, 0);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    device00.queue.submit([command_buffer006, ]);
    const command_buffer103 = command_encoder103.finish();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0015, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    device00.queue.submit([command_buffer003, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0016, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0016, 0);
    render_pass_encoder1050.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder1040.end();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1036, 0);
    command_encoder200.popDebugGroup()
    compute_pass_encoder1050.end();
    render_pass_encoder1060.popDebugGroup();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.end();
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer105, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1051.drawIndirect(buffer100, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder0010.end();
    render_pass_encoder1051.drawIndirect(buffer106, 0);
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer102, ]);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1017);
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1039, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    compute_pass_encoder1050.popDebugGroup()
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1050.end();
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1041, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1041, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.draw(3);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    compute_pass_encoder0030.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1018, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    const command_buffer300 = command_encoder300.finish();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline1033.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1018);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1040, 0);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group007);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1036, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1035, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0021, 0);
    render_pass_encoder1020.drawIndexed(3);
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1019);
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
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group008);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1045, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1051.setIndexBuffer(buffer108, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.end();
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0027, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1047, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    render_pass_encoder1041.drawIndirect(buffer1047, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1047, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    device20.queue.submit([]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1047, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1060.drawIndirect(buffer1047, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1016, 0);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1060.setIndexBuffer(buffer1037, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1030.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    compute_pass_encoder1030.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.popDebugGroup();
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0012);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0013);
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    device00.queue.submit([command_buffer003, ]);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1021);
    render_pass_encoder1050.drawIndirect(buffer1048, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1053, 0);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0014);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1022);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    compute_pass_encoder1000.popDebugGroup()
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    render_pass_encoder1000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1048, 0);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1040.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1040.popDebugGroup();
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1024);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    render_pass_encoder1041.popDebugGroup();
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
    render_pass_encoder1041.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1056, "uint16");
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
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0043, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1041, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1021.popDebugGroup();
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1064, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndirect(buffer1064, 0);
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1051.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1050.end();
    device20.queue.submit([command_buffer200, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.drawIndirect(buffer1041, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1041.end();
    render_pass_encoder1060.popDebugGroup();
    device40.queue.submit([]);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0016);
    render_pass_encoder1041.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.draw(3);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1026);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1027);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.draw(3);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1069, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1069, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1021.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    render_pass_encoder1041.drawIndirect(buffer1061, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndirect(buffer1050, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.end();
    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1071,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
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
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1029);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1012, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1047, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1033, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1060.drawIndirect(buffer1047, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder1050.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder1030.end();
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1037, "uint16");
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder1051.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1060.drawIndirect(buffer1047, 0);
    compute_pass_encoder0000.popDebugGroup()
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1038, 0);
    device40.queue.submit([]);
    render_pass_encoder1040.end();
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1046, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1074, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    compute_pass_encoder1050.end();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1064, 0);
    device40.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1061, 0);
    device00.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1050.drawIndirect(buffer1038, 0);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([]);
    render_pass_encoder1050.drawIndirect(buffer1064, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1071, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1030);
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1022, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0018);
    render_pass_encoder1050.drawIndirect(buffer1050, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0019);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder0011.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1076, 0);
    render_pass_encoder1050.drawIndirect(buffer1036, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndirect(buffer1041, 0);
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1031);
    render_pass_encoder1051.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1032);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0000.end();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1051.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer101, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndirect(buffer1058, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1081, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1081, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1064, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1041.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndirect(buffer1081, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1074, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1074, 0);
    render_pass_encoder1041.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    device20.queue.submit([command_buffer201, ]);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0021);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
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
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1033);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0061, 0);
    compute_pass_encoder1030.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1060.end();
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
    render_pass_encoder1041.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1050.drawIndirect(buffer1072, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1051.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1060.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1041.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1045, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer006, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0062, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1060.drawIndirect(buffer1020, 0);
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1081, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1070, 0);
    render_pass_encoder1021.drawIndirect(buffer1059, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1060.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1041.drawIndirect(buffer1046, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1084, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1035, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1030.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
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
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1034);
    render_pass_encoder1060.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndirect(buffer1064, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1064, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1064, 0);
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1041.drawIndirect(buffer1073, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    device00.queue.submit([command_buffer005, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1055, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    device40.queue.submit([]);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndirect(buffer1062, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
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
                    buffer: buffer1087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1088,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1035);
    render_pass_encoder1051.end();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1081, 0);
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
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1036);
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1035, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1051.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1060.end();
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
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1037);
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder1021.popDebugGroup();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1041.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1038);
    render_pass_encoder1020.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1050.drawIndirect(buffer1048, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1050.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1081, "uint16");
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    render_pass_encoder1051.drawIndirect(buffer1064, 0);
    render_pass_encoder1041.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1035, 0);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0024);
    render_pass_encoder1020.drawIndirect(buffer1084, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0025);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1060.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    device10.queue.submit([]);
    compute_pass_encoder0011.end();
    render_pass_encoder1021.setIndexBuffer(buffer1091, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer1055, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0074, 0);
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1041.drawIndirect(buffer109, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0026);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    device40.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    device20.queue.submit([]);
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1039);
    render_pass_encoder1051.drawIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1041.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1051.drawIndirect(buffer1081, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer1074, 0);
    render_pass_encoder1051.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1097, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1097, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1067, "uint16");
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder1060.drawIndirect(buffer1050, 0);
    render_pass_encoder1051.drawIndirect(buffer1081, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1060.drawIndirect(buffer1069, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1082, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder1040.drawIndirect(buffer1081, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1078, 0);
    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0080,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0081, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0029);
    render_pass_encoder1021.drawIndirect(buffer1061, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1098, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1098, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.draw(3);
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0011.end();
    render_pass_encoder1021.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer106, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1000.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndirect(buffer1074, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1099, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1099, 0);
    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10101,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1040);
    render_pass_encoder1000.drawIndirect(buffer1093, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1045, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder1041.drawIndirect(buffer1090, 0);
    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10103,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1041);
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10105,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1042);
    render_pass_encoder1030.drawIndirect(buffer1098, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1098, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1087, "uint16");
    compute_pass_encoder0000.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1098, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1035, 0);
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer200, ]);
    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0085,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0030);
    compute_pass_encoder0010.end();
    render_pass_encoder1021.drawIndirect(buffer10101, 0);
    render_pass_encoder1041.drawIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1040.drawIndexed(3);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10106, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1041.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.drawIndirect(buffer1099, 0);
    render_pass_encoder1060.end();
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1040.drawIndirect(buffer1067, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    device20.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0087,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0031);
    render_pass_encoder1041.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1041.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder0010.popDebugGroup()
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
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1093, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
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
                    buffer: buffer10108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1043);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1051.drawIndirect(buffer10107, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1065, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1034, 0);
    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0089,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0032);
    render_pass_encoder1041.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1051.drawIndirect(buffer1074, 0);
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0033);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1020, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1060.end();
    render_pass_encoder1040.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1063, "uint16");
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer1051, "uint16");
    compute_pass_encoder0011.end();
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1051.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10104, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10105, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10107, "uint16");
    compute_pass_encoder1050.end();
    render_pass_encoder1060.end();
    render_pass_encoder1060.drawIndirect(buffer1025, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder1060.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0092, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1050.end();
    compute_pass_encoder1030.end();
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1060.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndirect(buffer1070, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10106, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1095, 0);
    device40.queue.submit([command_buffer402, ]);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndirect(buffer1061, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1000.drawIndirect(buffer1097, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    device10.queue.submit([command_buffer103, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10110, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10110, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1074, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1058, 0);
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0035);
    render_pass_encoder1021.drawIndirect(buffer10110, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0097, 0);
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
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1044);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder1030.setIndexBuffer(buffer1091, "uint16");
    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00101,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0037);
    render_pass_encoder1050.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1060.drawIndirect(buffer1073, 0);
    render_pass_encoder1020.drawIndirect(buffer1097, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1060.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1064, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1048, 0);
    render_pass_encoder1041.drawIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1089, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.drawIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1099, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00102, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00102, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1020.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1074, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1038, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10101, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1055, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1097, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder1050.end();
    device00.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1081, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00103, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00103, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1058, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.drawIndirect(buffer1083, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndirect(buffer1081, 0);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1060.drawIndirect(buffer1081, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00104, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00104, 0);
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1051.drawIndirect(buffer1083, 0);
    render_pass_encoder1051.end();
    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00106,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0038);
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1097, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndirect(buffer10106, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder0011.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1041.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.drawIndirect(buffer1084, 0);
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10113, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10113, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0011.end();
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1048, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10106, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.drawIndirect(buffer1064, 0);
    render_pass_encoder1051.drawIndirect(buffer10110, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder1050.end();
    render_pass_encoder1050.end();
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer10110, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10114, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10114, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10110, 0);
    compute_pass_encoder1000.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1065, "uint16");
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer1013, 0);
    render_pass_encoder1051.drawIndirect(buffer1098, 0);
    device40.queue.submit([]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1099, 0);
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer1061, 0);
    render_pass_encoder1041.drawIndirect(buffer109, 0);
    compute_pass_encoder0011.end();
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00107, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer00107, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10115, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10115, 0);
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1050.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder1020.drawIndirect(buffer1098, 0);
    render_pass_encoder1030.popDebugGroup();
    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00109,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0039);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.end();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1050.drawIndirect(buffer10115, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10114, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1060.popDebugGroup();
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0040);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1030.drawIndirect(buffer10106, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1020.drawIndirect(buffer1098, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00112, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00112, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndirect(buffer10113, 0);
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1098, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10107, 0);
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0041);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00115, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00115, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1099, 0);
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1050.drawIndirect(buffer1098, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndirect(buffer1058, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1098, 0);
    render_pass_encoder1040.drawIndirect(buffer1047, 0);
    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10117,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1045);
    render_pass_encoder1021.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer1081, 0);
    render_pass_encoder1060.drawIndirect(buffer1080, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder1060.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndirect(buffer1041, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1050.drawIndirect(buffer10116, 0);
    render_pass_encoder1041.drawIndirect(buffer1061, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10119,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1046);
    render_pass_encoder1040.drawIndirect(buffer1097, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1063, 0);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1040.setIndexBuffer(buffer10110, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00116, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00116, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10121,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1047);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10122, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10122, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1060.drawIndirect(buffer1081, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1084, 0);
    device00.queue.submit([]);
    render_pass_encoder1040.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00117, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00117, 0);
    device10.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1060.drawIndirect(buffer10112, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10123, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10123, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer10106, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1073, "uint16");
    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10125,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1048);
    render_pass_encoder1051.setIndexBuffer(buffer1050, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndirect(buffer1047, 0);
    render_pass_encoder1050.drawIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndirect(buffer10113, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10113, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1048, "uint16");
    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10127,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1049);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00118, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00118, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00119, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00119, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10128, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10128, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0042);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndirect(buffer1047, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer1093, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10123, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10106, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer1097, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10129, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10129, 0);
    compute_pass_encoder0011.end();
    device40.queue.submit([command_buffer402, ]);
    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10131,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1050);
    render_pass_encoder1030.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1051.drawIndirect(buffer10122, 0);
    render_pass_encoder1030.drawIndirect(buffer1099, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.draw(3);
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1060.drawIndirect(buffer1063, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10123, "uint16");
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1060.drawIndirect(buffer10109, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00123,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0043);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0011.end();
    render_pass_encoder1050.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1047, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1060.drawIndirect(buffer10131, 0);
    render_pass_encoder1051.end();
    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10133,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1051);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndirect(buffer10122, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1097, 0);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1020.drawIndirect(buffer10129, 0);
    render_pass_encoder1020.drawIndirect(buffer10122, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1037, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer10113, 0);
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10134, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10134, 0);
    render_pass_encoder1021.drawIndirect(buffer1074, 0);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1051.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1000.end();
    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00125,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer1099, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1041.drawIndirect(buffer10103, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00127,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0045);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder1041.drawIndirect(buffer10122, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1000.end();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10135, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10135, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer10106, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndirect(buffer1089, 0);
    render_pass_encoder1051.drawIndirect(buffer1080, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer1081, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10137,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1052);
    render_pass_encoder1030.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    render_pass_encoder1060.drawIndirect(buffer10126, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1075, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10126, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1051.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1050.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10108, "uint16");
    device20.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10123, 0);
    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00129,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0046);
    render_pass_encoder1030.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1030.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1079, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1077, 0);
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0047);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.end();
    compute_pass_encoder0000.end();
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1074, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder1020.draw(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder0011.end();
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline1033.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10139,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1053);
    render_pass_encoder1050.drawIndirect(buffer1081, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer10113, 0);
    compute_pass_encoder0011.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1041.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer10135, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10134, 0);
}