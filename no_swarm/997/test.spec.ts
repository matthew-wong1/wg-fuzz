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
    const array0 = new Float32Array([0.0, 0.0, 1.0, -0.75, 1.0, -0.5, 0.75, 1.0, -0.5, -1.0, 0.5, -0.75, -1.0, 1.0, -1.0, -0.75, 0.25, -1.0, -0.5, 0.75, -0.5, -0.75, -0.5, 0.75, 0.75, -0.75, -0.75, 0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 0.0, 0.0, -1.0, 1.0, 1.0, -0.25, 0.5, 1.0, 0.25, -0.25, -0.75, 0.25, 0.5, -0.75, -1.0, 0.75, 0.25, 0.25, 0.0, 0.25, -0.25, 0.75, 0.75, 1.0, 0.25, -0.75, 1.0, 0.5, -1.0, 0.75, 0.5, -0.75, 0.25, -0.75, 0.5, 1.0, 1.0, 0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 0.25, -0.75, 0.5, -0.75, 0.5, -0.5, 1.0, 0.0, 0.0, 0.25, -0.75, -1.0, 0.0, 0.5, -0.75, 0.5, -1.0, -1.0, 0.5, ]);
    
    
    const array1 = new Float32Array([-1.0, 1.0, 0.75, -1.0, -0.5, 0.25, 1.0, -0.25, 1.0, -0.75, 0.25, -1.0, 0.25, -0.25, -0.75, 0.75, -0.5, -0.75, 0.0, -1.0, 0.0, -1.0, -0.25, 0.25, -0.75, -1.0, -0.75, 1.0, 0.5, -0.5, 0.0, -0.5, -1.0, -0.5, -0.75, -0.25, -0.25, 0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 0.75, 0.75, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, -0.5, 1.0, 0.75, 0.75, 0.0, 0.0, 0.5, 0.25, 0.0, 1.0, 0.75, 0.25, -1.0, 1.0, -0.25, 1.0, 0.0, -0.75, -0.75, 0.75, -0.5, 0.75, -1.0, -1.0, -0.75, -0.5, 0.0, -0.75, 0.0, 0.0, -0.5, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, 0.25, -0.75, -1.0, 1.0, 0.5, 0.5, 0.25, 0.0, 0.0, 0.5, 0.5, ]);
    const array2 = new Float32Array([0.75, 0.25, 0.0, -0.25, -1.0, -1.0, -0.5, 1.0, -0.25, -1.0, 0.0, 0.0, 0.0, -0.25, 0.75, -0.5, 0.75, -0.25, 0.25, 0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.5, 1.0, 0.75, -0.25, 0.0, -0.5, -0.5, 0.0, 0.75, 0.25, 0.5, -0.75, 0.25, -1.0, -0.5, 1.0, 0.25, 0.0, -1.0, -1.0, -0.75, 0.0, 1.0, -0.5, -0.25, -0.5, -0.25, -0.5, -0.5, 1.0, -1.0, -0.25, 0.5, 0.5, 1.0, -1.0, 0.5, 0.25, -0.5, -1.0, 0.75, 0.5, -0.25, 0.75, 0.5, 0.5, -0.75, -0.75, 1.0, 1.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.5, -0.5, -0.25, 0.25, 0.5, 1.0, -0.5, -0.25, -1.0, -0.75, -0.5, 1.0, 0.0, 0.5, -1.0, 0.75, -0.75, 0.75, 0.5, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device30.pushErrorScope("internal");
    
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
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.pushErrorScope("validation");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([0.0, 0.0, 0.5, -0.5, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, 0.25, -0.5, 1.0, 0.25, 0.5, -0.75, 0.75, 0.5, -1.0, 0.75, -0.25, 0.75, -0.75, 1.0, 1.0, 0.0, 0.5, 0.25, 0.75, -0.25, -1.0, 0.5, 0.25, 0.75, 0.75, 0.5, 1.0, 0.0, -0.5, -0.25, 0.0, 0.0, 0.75, -0.5, -0.75, 0.75, 0.25, -0.25, -0.75, -0.25, 1.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.75, -0.5, -0.5, 0.0, 0.5, -0.5, -0.75, 0.0, 0.0, -0.75, 0.5, -1.0, 0.25, 0.25, 0.25, -0.25, -0.75, -0.25, -0.5, 0.75, 1.0, 0.25, -1.0, -0.75, 0.25, -0.5, -0.25, 0.25, 0.5, -0.25, 0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 0.75, -0.25, 0.25, 0.25, 0.75, -1.0, -1.0, ]);
    query300.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    
    const array4 = new Float32Array([-1.0, 0.5, 1.0, 1.0, 0.5, 0.25, 0.5, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, 0.0, -1.0, -0.25, 0.25, -0.25, 1.0, -0.5, -1.0, 0.5, 1.0, -0.5, 0.75, 0.25, 1.0, 1.0, -1.0, 1.0, 0.5, 0.25, 1.0, 0.5, -0.25, 1.0, 0.25, -0.5, -0.5, -1.0, -0.25, 0.5, 0.5, 0.25, 0.25, 0.25, 0.25, 0.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 1.0, 0.25, -1.0, 1.0, 0.25, 1.0, -0.25, -1.0, 0.5, 0.25, 0.5, 1.0, 0.75, 0.0, -1.0, -1.0, -0.5, -1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.25, 0.75, 0.0, -0.25, 0.0, -0.25, 0.5, 0.5, 0.5, 1.0, 0.75, 1.0, 0.5, 0.5, -0.75, 1.0, 0.75, 0.25, -1.0, 1.0, -0.25, 1.0, -1.0, ]);
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    texture300.destroy();
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.insertDebugMarker("mymarker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    texture101.destroy();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query000.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    query000.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder300.popDebugGroup();
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.popDebugGroup()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
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
    device40.destroy();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    
    texture000.destroy();
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1000.setStencilReference(1);
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder1000.executeBundles([])
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    device30.destroy();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    texture102.destroy();
    render_bundle_encoder000.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder0020.popDebugGroup()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture001.destroy();
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1000.setStencilReference(1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.executeBundles([])
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("validation");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1010.executeBundles([])
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_pass_encoder1000.setStencilReference(1);
    const array5 = new Float32Array([1.0, -0.25, -1.0, -0.5, 0.0, 0.5, 0.5, -0.25, 0.5, 1.0, 1.0, -0.5, -0.75, -1.0, -0.5, 0.25, 0.5, 0.0, 0.75, 0.0, 0.5, -0.5, 0.5, 0.5, -0.75, 0.0, -0.75, 1.0, -0.25, -0.5, -0.25, 0.0, 0.5, 1.0, 1.0, -0.25, -0.5, -0.5, 0.75, 0.75, 1.0, -1.0, -1.0, -0.25, -0.25, -0.5, 0.5, -0.5, 0.0, 0.25, 0.75, -0.75, 0.25, 0.25, 0.75, 0.75, 1.0, -0.75, 0.0, 0.5, 1.0, 0.0, 0.5, 0.5, -0.5, 1.0, 0.25, 0.25, -1.0, 0.5, -1.0, 0.75, 0.25, 0.5, 0.25, -0.5, 0.25, -0.25, 0.0, 0.75, 0.0, 0.5, 1.0, 0.25, -1.0, -1.0, 1.0, -0.75, -0.5, 1.0, 0.25, -0.75, 0.5, -0.25, -1.0, 0.0, -0.75, -0.75, -0.5, 0.25, ]);
    
    render_pass_encoder1000.setStencilReference(1);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1000.insertDebugMarker("marker");
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
        occlusionQuerySet: undefined
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    texture100.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder1020.executeBundles([])
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
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
    query000.destroy()
    compute_pass_encoder0010.popDebugGroup()
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
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    render_pass_encoder1020.executeBundles([])
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer100.destroy()
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder1000.beginOcclusionQuery(0)
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_pass_encoder1030.executeBundles([])
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array6 = new Float32Array([-0.25, 0.75, -0.5, 1.0, -0.75, -0.75, 0.75, 1.0, -0.75, 0.25, 0.0, -0.75, -0.25, 0.0, 1.0, 0.75, -1.0, -0.5, -0.75, 1.0, -0.75, 1.0, 0.75, 0.25, 0.5, -1.0, -0.25, -0.25, 1.0, 1.0, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, 1.0, -0.5, -0.25, 0.75, 0.5, 0.25, 0.5, -1.0, 0.5, -0.25, 0.75, 0.25, -0.75, -0.5, -1.0, 0.5, -0.25, 0.0, -0.75, -0.75, 0.75, 0.5, 0.0, -0.25, -0.25, -0.25, -0.25, -0.5, -0.25, 0.5, 1.0, 0.0, -0.5, -0.75, -0.75, 1.0, -0.5, -0.25, 0.5, -1.0, -0.25, 0.25, -1.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.25, 0.75, -0.25, -1.0, 0.5, 0.5, -0.75, 0.25, -0.5, 0.5, 0.25, 0.75, 0.5, 0.5, -0.5, 0.0, ]);
    render_pass_encoder1010.setPipeline(render_pipeline101);
    const array7 = new Float32Array([0.5, -1.0, 0.25, 1.0, -1.0, -1.0, 0.0, 0.25, -0.5, 0.0, -0.75, 0.25, 0.25, -1.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.25, -1.0, 0.25, 0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 0.5, 0.5, -0.5, -0.75, -1.0, -0.5, 0.5, -0.5, -1.0, -0.75, 0.5, 0.0, 1.0, -0.5, 1.0, 0.25, 0.25, 0.25, -0.25, 0.0, -0.5, 0.25, 1.0, -0.5, 0.5, 0.75, -0.5, 0.5, 0.75, 0.5, 0.75, -1.0, -0.5, -1.0, -1.0, 1.0, -0.5, -0.25, 0.0, -0.5, 0.5, -1.0, 0.5, 1.0, 1.0, -0.25, -0.75, 0.75, 1.0, -0.25, -0.5, -0.75, -0.25, -0.75, 0.25, 0.5, -0.75, 0.25, 0.25, 0.75, -1.0, 0.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.0, 0.5, 0.75, 0.5, -0.25, ]);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    render_bundle_encoder000.popDebugGroup();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder003.clearBuffer(buffer001);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.popDebugGroup()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_bundle_encoder100.setPipeline(render_pipeline102);
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder0030.executeBundles([])
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
    buffer001.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    const array8 = new Float32Array([0.25, -0.5, -0.5, 0.5, 0.0, 1.0, 1.0, -0.75, 0.0, 0.5, 1.0, 0.0, -0.25, 0.0, 0.25, -1.0, 0.25, -0.75, 0.5, -0.5, -1.0, 0.0, 0.75, -1.0, 1.0, -0.25, 1.0, 1.0, -0.5, -0.5, 0.0, 0.0, -0.5, 0.25, -1.0, 0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -0.25, 1.0, 0.5, 0.5, 0.25, -0.25, 0.25, 0.5, 0.5, -0.5, 0.75, -0.5, 1.0, 0.25, 0.25, -1.0, 0.5, -0.25, -0.5, 1.0, -0.25, 1.0, 0.75, -0.5, 1.0, 0.0, 1.0, 0.5, -0.25, -0.75, 0.5, -1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.0, 0.25, 0.25, 1.0, -0.75, 0.0, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -1.0, 0.25, 0.0, 0.25, -0.25, 0.75, -0.5, -0.25, 0.25, 1.0, ]);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    
    query002.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query002.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer102.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    buffer107.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    texture104.destroy();
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query000.destroy()
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.destroy();
    render_bundle_encoder000.popDebugGroup();
    texture002.destroy();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query003.destroy()
    buffer104.destroy()
    query003.destroy()
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.destroy();
    
    render_pass_encoder0030.setStencilReference(1);
    
    texture003.destroy();
    
    
    buffer108.destroy()
    query000.destroy()
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    render_pass_encoder0030.executeBundles([])
    
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    texture700.destroy();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    buffer109.destroy()
    render_bundle_encoder102.popDebugGroup();
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer105.destroy()
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    buffer101.destroy()
    render_pass_encoder1030.setStencilReference(1);
    buffer103.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    buffer1011.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0030.executeBundles([])
    query001.destroy()
    buffer106.destroy()
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    
    render_bundle_encoder101.setVertexBuffer(0, buffer1012);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    
    render_bundle_encoder001.popDebugGroup();
    device10.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    buffer1010.destroy()
    buffer002.destroy()
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder1010.setVertexBuffer(0, buffer1012);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1010.draw(3);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder1020.popDebugGroup();
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder1030.setVertexBuffer(0, buffer1012);
    render_pass_encoder1020.setVertexBuffer(0, buffer1012);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1000.setVertexBuffer(0, buffer1012);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder1000.end();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1030.end();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
}