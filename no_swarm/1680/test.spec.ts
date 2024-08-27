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
    
    
    const array0 = new Float32Array([1.0, -0.5, 0.75, 0.0, -0.5, -0.5, -0.25, 0.75, 1.0, -1.0, 1.0, -0.75, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, -0.75, -1.0, 0.75, -0.5, 0.75, 0.75, -0.25, 0.75, 1.0, 0.25, -0.5, -0.75, 1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.5, -0.25, 0.25, 0.0, -0.5, -0.5, 0.5, 0.0, -0.75, 0.75, -0.25, -0.75, 0.25, 1.0, 0.5, 0.0, 0.25, -0.5, -0.5, 0.25, 0.25, -1.0, 0.0, 0.25, -0.25, -0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 0.25, 0.25, -0.75, -1.0, 0.25, -0.75, 1.0, -0.75, 0.0, 0.5, 1.0, 0.75, -0.75, 0.25, -0.5, 1.0, 0.0, 1.0, -1.0, 0.75, -0.25, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, ]);
    const array1 = new Float32Array([0.25, 0.0, 0.75, 0.5, 0.25, 0.5, 0.5, -0.25, -0.5, 0.75, 0.25, 0.75, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.75, -0.25, 0.0, 1.0, -1.0, -0.75, -0.75, -1.0, 0.5, 0.25, -0.75, 0.0, 1.0, -0.25, -0.25, -0.75, -0.5, -0.5, 0.25, -0.25, -0.75, -0.25, -0.75, -0.5, -0.75, -0.75, 0.0, 0.5, 1.0, 0.75, -0.25, 1.0, 0.25, -1.0, 0.75, -0.75, -1.0, -0.25, 0.25, -0.5, 0.75, -0.5, 0.25, 0.25, -0.25, -0.25, 0.25, -0.5, -1.0, 0.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.75, 1.0, -0.25, 0.0, -0.25, 0.25, -0.25, -0.75, 0.25, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, -1.0, -1.0, -0.75, 0.5, -1.0, 0.0, -0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.25, -0.5, 1.0, 0.75, -1.0, -0.5, 0.75, 0.0, 0.0, -0.5, 0.25, -0.75, 1.0, -0.5, -0.5, -0.5, 0.25, -1.0, 0.25, -0.75, -0.5, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 1.0, 0.5, 0.5, 0.75, -0.5, 0.0, -0.75, 0.25, -0.25, 0.75, -0.25, 0.0, -0.25, 0.75, 0.0, -1.0, -0.25, 0.5, -0.75, -1.0, 0.75, 1.0, -0.5, 0.0, -0.5, 0.0, 0.5, -1.0, -0.75, 1.0, -0.75, -1.0, 0.5, -1.0, 0.5, -0.75, 0.75, 1.0, 0.5, -1.0, 0.0, 1.0, -0.25, 0.0, 0.75, 0.25, -1.0, -1.0, -1.0, 0.75, -0.25, -0.5, 1.0, -0.75, -1.0, 0.0, -0.5, 1.0, 0.0, 0.0, 0.75, 0.5, 0.75, 0.25, -0.75, 0.5, -0.25, 0.25, -1.0, 0.5, 0.0, 1.0, -0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    command_encoder100.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder102.popDebugGroup();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array3 = new Float32Array([-0.5, 0.75, -0.25, 0.75, -1.0, -0.25, -1.0, -1.0, -1.0, -0.75, -1.0, 0.75, 0.75, -0.25, -0.5, 1.0, -0.25, -1.0, -0.25, -0.25, 0.75, -1.0, -0.75, -1.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.75, -0.5, -0.75, -0.5, 0.25, -0.5, -1.0, -0.75, 0.75, 0.75, -0.75, 0.75, -0.75, -1.0, 0.5, 1.0, 1.0, 0.5, -0.25, 1.0, 0.5, -1.0, 1.0, -0.5, -0.25, -0.5, -0.5, -0.75, 1.0, -0.75, 0.25, -0.25, 0.25, 0.25, -0.75, -0.25, -0.25, 0.5, 0.75, 0.0, 0.0, 0.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.0, -1.0, 0.0, 0.5, -0.5, 1.0, 1.0, -0.75, 0.0, 0.75, 0.25, 0.5, 0.0, -1.0, -0.75, 0.0, 1.0, 0.25, 0.75, -0.75, 0.0, 0.75, 0.75, 0.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    render_pass_encoder1010.setStencilReference(1);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
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
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([1.0, -0.75, -0.75, 0.75, -0.25, -0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 0.5, 1.0, -0.5, -0.25, 0.5, -1.0, -0.5, -0.75, -0.75, -0.25, 0.75, -0.25, 0.25, 0.75, -0.5, 0.0, -0.25, 0.75, -0.5, -0.5, -1.0, 1.0, 0.75, 0.0, 0.25, 0.5, -1.0, -0.5, 0.75, -1.0, 0.5, 0.5, -0.75, 0.0, -0.25, 0.5, 0.5, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, 0.75, -1.0, 0.5, -0.75, 0.5, -0.25, 0.5, 1.0, 0.75, -0.25, 0.0, 0.5, 0.5, 0.75, -1.0, -0.5, -0.5, -1.0, -0.75, 0.5, 1.0, -0.25, 0.0, 0.75, 0.25, -1.0, 0.75, 0.25, 1.0, 0.75, 0.75, -0.75, -0.75, 0.0, 1.0, 0.25, 0.25, 1.0, -0.75, 0.5, -0.5, 0.0, 0.5, -0.25, -0.5, -1.0, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query200.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.popDebugGroup();
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder1020.executeBundles([])
    
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    render_pass_encoder1020.executeBundles([render_bundle_encoder101, ])
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture300.destroy();
    device20.pushErrorScope("validation");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder102.popDebugGroup();
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_buffer001 = command_encoder001.finish();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_buffer300 = command_encoder300.finish();
    command_encoder102.popDebugGroup()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
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
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1010.executeBundles([render_bundle_encoder102, ])
    
    
    render_pass_encoder1021.setPipeline(render_pipeline100);
    
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    
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
    render_pass_encoder1020.popDebugGroup();
    
    query401.destroy()
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer100);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer101.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
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
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    texture100.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query201.destroy()
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder1020.setPipeline(compute_pipeline104);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_bundle_encoder401.insertDebugMarker("marker");
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    
    command_encoder103.insertDebugMarker("mymarker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3010.beginOcclusionQuery(0)
    render_pass_encoder2000.insertDebugMarker("marker");
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.popDebugGroup();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device30.pushErrorScope("validation");
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device40.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    texture301.destroy();
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
    command_encoder103.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout100,
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

    render_bundle_encoder101.setBindGroup(0, bind_group104);
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline102);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout105]
    });
    texture001.destroy();
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.popDebugGroup();
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    render_pass_encoder3010.setPipeline(render_pipeline300);
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    query201.destroy()
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query200.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.popDebugGroup();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1011.setStencilReference(1);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    
    
    command_encoder103.copyBufferToBuffer(
        buffer1010,
        0,
        buffer109,
        0,
        400
    );
    
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder1011.setPipeline(render_pipeline103);
    
    render_pass_encoder1021.setStencilReference(1);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1030.setPipeline(render_pipeline102);
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
        occlusionQuerySet: query202
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer107.destroy()
    const array5 = new Float32Array([-1.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.5, -1.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.25, -0.25, 0.25, -0.75, 0.5, -0.5, 0.75, 0.25, -0.25, -1.0, 0.25, 0.0, -0.25, -0.25, 0.75, 0.75, 1.0, 0.75, 1.0, 0.75, -0.5, 0.75, 0.0, 0.75, -1.0, -0.25, 0.75, -0.5, 1.0, -0.25, -1.0, -1.0, -0.5, 0.25, -0.75, -0.25, -0.5, -1.0, 0.0, -0.5, -1.0, -0.5, 0.75, -1.0, 0.0, 0.5, -0.5, -0.25, 0.0, 1.0, 0.75, -0.75, 0.0, 0.75, -0.5, 0.0, -0.75, -0.5, 1.0, -0.5, 1.0, 0.5, -0.25, -0.25, -0.75, -1.0, 0.5, -0.25, -1.0, 0.5, 0.5, -0.75, 0.75, -1.0, 0.75, 0.25, 0.0, 0.25, -1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.75, 1.0, 0.75, ]);
    query200.destroy()
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    compute_pass_encoder3010.popDebugGroup()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_pass_encoder1000.setVertexBuffer(0, buffer104);
    render_pass_encoder2020.beginOcclusionQuery(0)
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1000.draw(3);
    compute_pass_encoder0000.popDebugGroup()
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group107);
    
    device30.queue.submit([]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer1012.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
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
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2001.insertDebugMarker("marker");
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.beginOcclusionQuery(0)
    render_pass_encoder2001.setPipeline(render_pipeline200);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    compute_pass_encoder0000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer108);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder1030.setVertexBuffer(0, buffer106);
    device30.queue.submit([command_buffer300, ]);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group108);
    render_pass_encoder1030.draw(3);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group109);
    render_pass_encoder1000.end();
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    render_pass_encoder3010.popDebugGroup();
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
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

    render_pass_encoder1021.setBindGroup(0, bind_group1010);
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1011);
    const command_buffer203 = command_encoder203.finish();
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group201);
    render_pass_encoder1030.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.setVertexBuffer(0, buffer1022);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer1018);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.setVertexBuffer(0, buffer106);
    render_pass_encoder2000.setVertexBuffer(0, buffer201);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    command_encoder103.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.draw(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer202);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder2020.popDebugGroup();
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder2000.end();
    render_pass_encoder2001.end();
    render_pass_encoder3010.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    command_encoder100.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2001.popDebugGroup();
    command_encoder101.popDebugGroup()
    render_pass_encoder2001.draw(3);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    device20.queue.submit([]);
    compute_pass_encoder2001.popDebugGroup()
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1010.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer205);
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder2020.draw(3);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder2020.end();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1020.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1020.end();
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    device30.queue.submit([]);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2001.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder3010.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    render_pass_encoder2001.popDebugGroup();
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder1030.end();
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([command_buffer203, ]);
    command_encoder301.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1037, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1021.draw(3);
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
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2000.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder2001.draw(3);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    device10.queue.submit([command_buffer100, ]);
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
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    device10.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1030.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2001.end();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder2001.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2010.popDebugGroup()
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1011.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndirect(buffer1037, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder2020.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1000.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    device30.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.draw(3);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1010.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1010.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1021.drawIndirect(buffer1037, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    device30.queue.submit([]);
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder2001.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1010.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.end();
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2020.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.end();
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2001.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder3010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer203, ]);
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2020.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    device20.queue.submit([]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1011.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1021.end();
    device10.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
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
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder1000.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    device30.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2001.end();
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
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1021);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder2001.end();
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    render_pass_encoder1011.end();
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1048, 0);
    render_pass_encoder2001.end();
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.end();
    render_pass_encoder3010.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1021.end();
    device10.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1059, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder3010.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    device00.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1061, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1061, 0);
    render_pass_encoder1020.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.end();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder3010.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2020.end();
    render_pass_encoder1020.drawIndirect(buffer1061, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1055, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
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
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1024);
    render_pass_encoder2000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2001.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer1061, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1064, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1065, 0);
    device10.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3010.draw(3);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1066, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndirect(buffer1066, 0);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder3010.end();
    compute_pass_encoder1000.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.popDebugGroup();
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
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1068, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1010.end();
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
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1026);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder1030.draw(3);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1064, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1010.drawIndirect(buffer1059, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder2001.end();
    render_pass_encoder1021.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder3010.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.draw(3);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2020.end();
    render_pass_encoder3010.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1038, "uint16");
    device20.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
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
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder1021.end();
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndirect(buffer1072, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    device20.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
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
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    render_pass_encoder1030.drawIndirect(buffer1075, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1066, "uint16");
    device30.queue.submit([]);
    compute_pass_encoder1020.end();
    device30.queue.submit([]);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder1000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1035, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    compute_pass_encoder3000.popDebugGroup()
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
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
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
                    buffer: buffer1078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1079,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1030);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device40.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1059, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.draw(3);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1066, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1021.end();
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1080, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1030.popDebugGroup();
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
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
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1031);
    render_pass_encoder1020.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1030.drawIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1030.drawIndirect(buffer1071, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2000.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer1059, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder2000.end();
    device30.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder1021.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1083, 0);
    render_pass_encoder1010.end();
    device20.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder1030.drawIndirect(buffer1071, 0);
    render_pass_encoder3010.draw(3);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1034, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.end();
    render_pass_encoder2001.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
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
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1032);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1059, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1087,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder2001.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1066, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1066, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.drawIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device10.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1075, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1011.drawIndirect(buffer1080, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1089,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1034);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder2001.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1090, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1090, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1080, 0);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.popDebugGroup();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1035);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
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
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1036);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.setIndexBuffer(buffer1087, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1060, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1020.end();
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1080, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer1076, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    compute_pass_encoder1020.end();
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    device20.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1071, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.popDebugGroup();
}