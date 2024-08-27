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
    const array0 = new Float32Array([0.0, 0.0, 1.0, 0.0, 0.25, -0.25, -0.75, 0.0, -0.25, -1.0, -0.5, 1.0, -0.5, 0.5, 0.25, 1.0, -1.0, 1.0, -0.75, -1.0, 0.5, 0.5, 1.0, -0.25, 1.0, 1.0, 1.0, 0.25, -0.5, 0.75, 1.0, 1.0, 0.25, -0.5, -0.25, -0.25, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, -0.75, 0.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.0, -0.75, -0.75, -0.5, -0.25, 0.5, -0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 1.0, -0.75, 0.25, -0.5, 1.0, -0.75, -0.75, -0.75, 0.75, 0.25, 0.75, 0.25, 0.25, -1.0, 0.5, -0.5, -0.25, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, 0.0, 1.0, -0.25, 0.25, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.0, -0.5, 0.0, ]);
    const array1 = new Float32Array([0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, 0.5, -0.5, 1.0, -0.75, 1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.25, -0.5, -0.5, 1.0, 0.75, 1.0, 0.75, -0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 0.75, -0.5, 0.75, 1.0, 0.5, -0.5, 0.25, -0.75, -0.5, 0.75, -0.25, 0.5, 1.0, -1.0, -0.25, 0.5, -0.5, 0.25, 0.75, 0.0, -0.5, 1.0, 0.5, -0.5, 0.25, 0.75, 0.0, 0.75, 0.25, -1.0, 0.25, -1.0, -0.5, 0.75, -0.5, -0.25, -0.75, -0.5, 0.5, -0.25, 0.25, 0.25, -0.25, -1.0, 0.0, -1.0, 0.0, -0.25, -1.0, -0.25, -0.5, 1.0, -0.75, 0.5, -1.0, 0.5, -0.25, 0.75, 0.75, 1.0, -1.0, 0.75, -0.5, -1.0, -1.0, -0.75, 0.5, 0.5, -0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    device00.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array2 = new Float32Array([1.0, 1.0, -0.75, 0.25, -0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -1.0, -1.0, 0.25, 1.0, 1.0, 0.75, 0.5, -0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.25, 0.0, 0.25, 0.75, -0.75, -0.75, -1.0, 0.75, -0.25, 1.0, 0.75, -0.5, 0.75, 0.25, -0.75, -0.75, 0.25, 0.75, -0.25, 1.0, 0.5, -0.75, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, 0.0, 0.25, 0.25, -0.75, 0.25, -0.5, 1.0, 0.75, -1.0, -0.5, 0.0, 0.25, 0.25, -0.25, 0.5, -0.25, -0.5, -1.0, -0.5, 0.5, 0.0, 0.0, -0.75, -0.5, -0.75, 0.25, -0.25, 0.0, 0.25, -0.5, -0.5, 0.5, 0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.25, 0.75, 0.5, 1.0, -0.5, 0.0, -0.75, 1.0, 1.0, 0.5, 0.75, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    device10.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder1000.popDebugGroup()
    device20.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.pushErrorScope("internal");
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query400.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_buffer400 = command_encoder400.finish();
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    query100.destroy()
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
    texture300.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const array3 = new Float32Array([0.5, 0.5, -0.25, 0.75, -1.0, -0.75, 1.0, 1.0, 1.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.75, -0.5, 1.0, -0.5, -0.25, -0.25, 1.0, 0.0, 0.5, 0.0, 0.25, -1.0, -0.75, -1.0, 0.5, 0.75, -0.75, 0.25, -1.0, 0.75, 0.75, -0.75, 0.25, 0.75, 0.75, 1.0, 0.0, -1.0, 0.0, -0.25, -0.75, -0.75, -0.75, 1.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.25, 0.5, 0.25, 1.0, 0.25, -0.75, 0.0, 1.0, 1.0, 0.25, 0.75, 0.0, -1.0, -0.5, -0.5, -1.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.75, 0.75, -1.0, 0.0, 0.25, -0.75, 0.5, -0.25, 0.0, -0.75, 0.5, 0.5, 0.75, 0.75, -1.0, 0.0, 0.75, 1.0, 0.75, 0.5, 0.5, 1.0, -0.5, 0.5, 0.0, 1.0, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query400.destroy()
    
    
    texture300.destroy();
    query401.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder300.insertDebugMarker("mymarker");
    
    
    device30.pushErrorScope("validation");
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    command_encoder300.clearBuffer(buffer301);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer301.destroy()
    command_encoder101.popDebugGroup()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query102.destroy()
    
    
    query101.destroy()
    const array4 = new Float32Array([-0.25, -0.25, 1.0, 1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.25, -0.5, -0.75, 1.0, -0.5, 0.0, 0.75, 1.0, -0.75, 0.5, -0.75, 0.25, -0.5, 0.5, -1.0, 0.25, -0.25, -0.5, -1.0, 0.0, 0.75, -0.75, 0.25, 0.0, 0.0, -0.75, 0.0, -0.75, 0.5, -0.5, -0.75, -0.25, -1.0, -0.5, 1.0, -0.25, -0.5, 0.25, 0.5, -0.25, -0.75, -0.75, -0.25, -0.5, -0.75, 0.75, -0.75, -1.0, -1.0, -1.0, -0.5, 1.0, 0.5, -0.25, -1.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.75, -0.75, -0.25, -0.25, 0.25, -0.75, -1.0, 1.0, 0.75, 0.75, 0.0, 0.5, 0.5, 0.25, -1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.75, 0.5, 0.25, 0.0, 0.5, 0.25, 0.25, -0.25, -0.75, 1.0, 1.0, ]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    texture302.destroy();
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const array5 = new Float32Array([1.0, 0.5, 0.75, -0.75, 0.5, -1.0, -0.5, 0.75, -1.0, -0.25, 0.75, -0.75, 0.75, 0.0, -1.0, -0.75, 0.75, 0.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.0, -0.25, -1.0, -1.0, -0.5, 0.5, 0.5, 0.5, 0.25, 0.25, -0.5, 0.5, 1.0, -0.25, 0.75, -0.25, 0.5, 0.75, -0.25, 0.5, 1.0, 0.5, -0.5, 0.5, 0.75, -0.5, 0.25, -0.25, 1.0, 0.25, 0.75, -0.5, 0.0, 0.0, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, -1.0, 1.0, 0.5, 1.0, 0.0, -0.75, -0.5, -0.5, 0.25, -0.75, -0.5, 0.75, 0.25, -0.75, -0.5, 0.0, 1.0, 0.25, 0.5, 0.75, 0.25, 0.75, 0.5, 1.0, 1.0, 0.0, -0.5, 0.25, 0.5, 0.0, 0.25, 0.5, -0.5, -1.0, -0.25, -0.75, -0.5, ]);
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    buffer102.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query301.destroy()
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    command_encoder101.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const command_buffer200 = command_encoder200.finish();
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline404);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_pass_encoder3020.executeBundles([])
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder3030.setStencilReference(1);
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder3030.beginOcclusionQuery(0)
    command_encoder303.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture303
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder3000.executeBundles([render_bundle_encoder300, ])
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.setPipeline(compute_pipeline107);
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder1001.insertDebugMarker("marker")
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder402.insertDebugMarker("mymarker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("internal");
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
        layout: compute_pipeline404.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    render_pass_encoder3020.executeBundles([])
    
    query100.destroy()
    query100.destroy()
    device10.pushErrorScope("validation");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder3000.setStencilReference(1);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.insertDebugMarker("marker");
    query102.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1010.setPipeline(compute_pipeline109);
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    query101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder1010.setStencilReference(1);
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer302.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.endOcclusionQuery()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder3020.setStencilReference(1);
    
    render_bundle_encoder400.popDebugGroup();
    
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer402, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer402, 0);
    query401.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    render_bundle_encoder401.setPipeline(render_pipeline403);
    texture303.destroy();
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder3020.setStencilReference(1);
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
    command_encoder302.insertDebugMarker("mymarker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    query102.destroy()
    query401.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3000.popDebugGroup();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const command_buffer201 = command_encoder201.finish();
    command_encoder304.pushDebugGroup("mygroupmarker")
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    command_encoder202.insertDebugMarker("mymarker");
    buffer100.destroy()
    device50.destroy();
    
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_pass_encoder3030.setStencilReference(1);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.executeBundles([])
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    command_encoder402.popDebugGroup()
    buffer104.destroy()
    command_encoder402.clearBuffer(buffer401);
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder3010.popDebugGroup()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder4010.popDebugGroup()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    render_bundle_encoder402.popDebugGroup();
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
    
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    texture302.destroy();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    command_encoder202.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
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
        occlusionQuerySet: undefined
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    query303.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder3030.setStencilReference(1);
    compute_pass_encoder4020.setPipeline(compute_pipeline406);
    compute_pass_encoder4010.end();
    compute_pass_encoder1001.popDebugGroup()
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group103);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    compute_pass_encoder1001.end();
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3020.popDebugGroup();
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder1010.endOcclusionQuery()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder1001.end();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group105);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
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
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    const command_buffer302 = command_encoder302.finish();
    const command_buffer401 = command_encoder401.finish();
    device30.queue.submit([]);
    render_pass_encoder1010.setVertexBuffer(0, buffer104);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3030.popDebugGroup();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    compute_pass_encoder1000.end();
    render_pass_encoder3001.popDebugGroup();
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1010.end();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1016, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder3000.popDebugGroup();
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

    render_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder1020.setVertexBuffer(0, buffer1011);
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder3000.popDebugGroup();
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group404);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1010.end();
    command_encoder102.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4020.end();
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    device40.queue.submit([]);
    command_encoder101.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    const command_buffer402 = command_encoder402.finish();
    device10.queue.submit([command_buffer103, ]);
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group108);
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group405);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1010.draw(3);
    compute_pass_encoder1000.end();
    device30.queue.submit([command_buffer303, ]);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    command_encoder300.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device30.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.end();
    device40.queue.submit([]);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4013, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder3020.endOcclusionQuery()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1022, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3010.popDebugGroup()
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group406);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4020.end();
    device40.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    compute_pass_encoder1001.popDebugGroup()
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group408);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    device40.queue.submit([command_buffer401, ]);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1024, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device30.queue.submit([command_buffer303, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.end();
    device30.queue.submit([]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4020, 0);
    compute_pass_encoder1001.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.end();
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3020.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3000.popDebugGroup();
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
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder1020.setIndexBuffer(buffer1030, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1031, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer100, ]);
    command_encoder304.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1001.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    device40.queue.submit([]);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1013);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1036, 0);
    render_pass_encoder3001.popDebugGroup();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1037, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4010.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    compute_pass_encoder4010.end();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    compute_pass_encoder4020.popDebugGroup()
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder4020.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4021, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.end();
    device70.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4022, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4022, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder3020.popDebugGroup();
    const command_buffer304 = command_encoder304.finish();
    device40.queue.submit([]);
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group409);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder4020.end();
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    device30.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1015);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4010);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4010.popDebugGroup()
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4011);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1001.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder3020.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder3020.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4012);
    device30.queue.submit([command_buffer303, ]);
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    device40.queue.submit([command_buffer402, ]);
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
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline404.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    compute_pass_encoder4010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3020.popDebugGroup();
    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4034,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4014);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder4020.end();
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1001.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4035, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4035, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    device40.queue.submit([command_buffer401, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1047, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4036, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4036, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder3020.endOcclusionQuery()
    compute_pass_encoder1001.end();
    render_pass_encoder1020.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1038, 0);
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
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1010.draw(3);
    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4038,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4015);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1010.end();
    compute_pass_encoder1010.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1020.end();
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1018);
    compute_pass_encoder4020.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1010.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder4020.end();
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
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
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline406.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4016);
    render_pass_encoder1020.end();
    device30.queue.submit([]);
    device30.queue.submit([command_buffer301, command_buffer302, command_buffer303, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1019);
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
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1020);
    compute_pass_encoder4010.end();
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder1001.end();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device10.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1057, 0);
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
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    device30.queue.submit([command_buffer300, ]);
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
    device10.queue.submit([command_buffer100, ]);
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1022);
    render_pass_encoder1010.setIndexBuffer(buffer1046, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer304, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1062, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4042, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4042, 0);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3020.endOcclusionQuery()
    device30.queue.submit([command_buffer304, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    device30.queue.submit([command_buffer303, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.end();
    compute_pass_encoder4010.popDebugGroup()
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    compute_pass_encoder3040.popDebugGroup()
    device70.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    compute_pass_encoder1001.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1001.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
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
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1024);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4044,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4017);
    render_pass_encoder3030.popDebugGroup();
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
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline406.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4018);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder3020.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4048,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4019);
    render_pass_encoder3020.endOcclusionQuery()
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1025);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder1020.popDebugGroup();
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1026);
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1027);
    render_pass_encoder1020.draw(3);
    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4050 = device40.createBuffer({
        label: "buffer4050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4050,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4020);
    device30.queue.submit([command_buffer303, ]);
    device40.queue.submit([]);
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline109.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1028);
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
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline109.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1029);
    const buffer4051 = device40.createBuffer({
        label: "buffer4051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4052 = device40.createBuffer({
        label: "buffer4052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4052,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4021);
    device30.queue.submit([command_buffer301, ]);
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
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1030);
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4053 = device40.createBuffer({
        label: "buffer4053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4053, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4053, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4054 = device40.createBuffer({
        label: "buffer4054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4054, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4054, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.end();
    compute_pass_encoder1000.end();
    device30.queue.submit([]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1079, 0);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    device70.queue.submit([]);
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1031);
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
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline406.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4022);
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4057 = device40.createBuffer({
        label: "buffer4057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4057, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4057, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder4010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1062, 0);
    device30.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    const buffer4058 = device40.createBuffer({
        label: "buffer4058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4059 = device40.createBuffer({
        label: "buffer4059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4023 = device40.createBindGroup({
        label: "bind_group4023",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4059,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4023);
    compute_pass_encoder1000.end();
    device30.queue.submit([]);
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
        layout: compute_pipeline109.getBindGroupLayout(0),
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
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1084, 0);
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1074, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4060 = device40.createBuffer({
        label: "buffer4060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4060, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4060, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder4010.end();
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    device70.queue.submit([]);
    render_pass_encoder3001.popDebugGroup();
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1033);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    compute_pass_encoder3040.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    compute_pass_encoder1001.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device10.queue.submit([]);
    render_pass_encoder3020.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([]);
    compute_pass_encoder4010.end();
    compute_pass_encoder1000.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3020.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1087, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1087, 0);
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
    render_pass_encoder1020.end();
    compute_pass_encoder3010.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4061 = device40.createBuffer({
        label: "buffer4061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4061, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4061, 0);
    const buffer4062 = device40.createBuffer({
        label: "buffer4062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4063 = device40.createBuffer({
        label: "buffer4063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4024 = device40.createBindGroup({
        label: "bind_group4024",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4063,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4024);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1001.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1089, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1089, 0);
}