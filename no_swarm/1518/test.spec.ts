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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("internal");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const array0 = new Float32Array([-0.5, 0.0, 0.0, 0.5, 0.0, 1.0, 0.25, -0.5, 1.0, 0.5, -0.5, 0.75, 0.75, -0.75, 0.0, 1.0, -1.0, -0.5, 1.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.0, -1.0, -1.0, 1.0, -0.75, -1.0, 0.75, 0.75, 0.25, -0.25, -0.25, 0.75, -0.5, 1.0, -0.25, 1.0, -0.75, -0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.5, -0.5, 0.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, -1.0, -0.75, 1.0, 0.0, -1.0, 0.5, -0.75, 0.25, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 0.25, -1.0, -0.75, 0.0, 0.5, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, -1.0, 0.75, 0.25, 0.25, -0.25, 0.0, 0.75, -0.5, -1.0, -1.0, 0.75, -0.25, -1.0, -1.0, -0.5, -0.5, 0.25, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.destroy();
    const array1 = new Float32Array([1.0, 0.75, 0.0, -0.25, 0.25, 0.25, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, -1.0, 0.0, 0.0, -0.25, 1.0, -1.0, 0.5, -0.25, 0.75, -0.5, -0.25, 0.0, 0.5, -0.25, -0.5, -1.0, 1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -0.75, 0.25, 0.75, 0.0, 1.0, -0.5, 0.0, 0.25, 0.5, -0.25, 0.75, 0.75, 1.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.5, 1.0, -0.25, 0.0, 1.0, 0.5, 0.5, 0.75, 0.25, 0.25, 0.75, -0.75, -0.75, 0.75, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, 0.5, -0.75, -1.0, 1.0, -0.5, 0.0, -0.75, -0.75, -0.75, 0.75, 0.75, 0.25, -1.0, -0.75, -0.5, -0.5, -0.25, 1.0, -0.25, 0.75, 0.5, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const array2 = new Float32Array([0.25, -0.25, -0.5, -0.25, -0.5, -0.75, -0.5, -0.25, 0.5, 0.5, 0.5, 0.5, -1.0, 1.0, -0.25, -0.25, 0.25, 0.0, -1.0, -0.25, -0.75, -0.5, -0.5, -0.25, -0.75, -1.0, 0.5, 0.0, -0.75, 0.25, 0.0, 0.0, 1.0, 1.0, 0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.5, 1.0, 0.5, -0.25, 0.5, -0.75, 0.25, -0.75, 0.75, -0.25, -0.75, 0.25, -0.25, -0.5, -0.75, 1.0, 0.5, 0.25, -1.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.5, 0.25, -0.75, -1.0, 0.5, 0.25, 0.75, -0.5, 0.25, -1.0, 1.0, -0.25, -0.5, 0.25, 0.0, -1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 1.0, 0.75, -0.25, 0.25, -0.75, -0.25, 0.75, -0.25, -0.75, 0.25, -0.5, 0.25, -1.0, ]);
    
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    
    
    
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.25, -1.0, -1.0, 0.0, -0.25, -0.25, 0.25, 0.25, 0.25, 0.5, 1.0, 0.25, 1.0, 0.5, -1.0, 0.0, -0.5, -0.75, 0.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.5, -0.25, 1.0, 1.0, -1.0, 0.0, 0.0, 0.5, -0.75, -0.5, 1.0, -0.25, -0.75, 1.0, -0.75, -0.5, -0.75, 0.5, 0.75, -0.75, -0.25, 0.25, 0.0, 0.0, -1.0, 0.75, -0.25, 1.0, 0.5, -0.75, -0.25, -0.25, 1.0, 0.25, 0.5, -0.5, -0.75, -0.5, -0.25, -0.75, 0.0, -0.75, -0.25, 0.0, -0.5, -1.0, -1.0, -0.75, 0.25, 1.0, 0.5, 0.5, -0.5, 0.75, 0.75, -0.75, 0.25, 0.0, 1.0, 0.5, -1.0, -0.25, -1.0, -0.75, -0.25, -1.0, 1.0, -1.0, 0.0, -0.75, 0.75, -0.5, -1.0, -1.0, 0.5, 0.25, ]);
    
    
    
    
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array4 = new Float32Array([0.25, 0.75, 0.5, -1.0, 0.25, -1.0, 0.5, -0.5, -0.25, 0.5, 0.5, -0.25, -0.75, 0.5, -0.5, -0.25, -0.5, -0.5, 0.5, -0.75, -0.25, 0.0, -0.5, 0.0, 0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.5, 0.75, -0.25, -1.0, 0.75, -0.5, 0.25, 0.25, -0.75, 0.75, -0.75, 0.25, 0.25, -0.5, -0.5, 0.25, 0.5, 0.75, 0.25, 1.0, -1.0, 0.0, 0.25, 1.0, 0.25, 0.5, -0.25, 0.5, -1.0, 1.0, -1.0, -0.25, -1.0, -1.0, -0.5, 0.0, -0.75, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, 0.75, 0.5, -1.0, 0.75, 0.75, -0.5, 0.25, -0.5, -0.5, -0.25, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, 0.75, 0.5, 0.75, 0.0, 0.0, 0.5, -0.75, -0.75, -0.25, 1.0, 0.0, ]);
    
    
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array5 = new Float32Array([-0.75, 0.25, 0.5, -1.0, -0.75, -0.5, -0.25, 0.25, 0.25, -0.5, 0.75, 0.5, 0.0, -0.5, -1.0, 0.0, 0.25, -0.25, -0.5, 0.5, -0.25, -1.0, -0.25, 0.0, -0.25, -1.0, -0.75, -0.75, 0.75, 0.0, 0.5, 0.25, -0.5, 1.0, 0.75, 0.0, -0.25, 0.0, 0.0, -0.5, 0.5, -1.0, -1.0, 0.25, -0.5, -1.0, -0.75, 0.5, 0.5, -0.25, -0.25, 0.25, -0.75, -0.75, 0.25, 0.25, -0.25, 0.0, 0.75, -1.0, -0.5, 0.5, 0.75, -0.5, -0.25, 0.25, -1.0, 0.0, 0.0, -0.75, 0.5, -0.25, 0.75, 1.0, -0.5, -0.5, 0.75, -0.25, 1.0, -0.75, 0.75, -0.5, 1.0, 0.0, -0.5, 0.25, 0.75, 0.0, 0.5, -1.0, -0.25, 0.75, 0.25, 0.75, -0.75, -0.75, 0.0, -0.25, 1.0, -1.0, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    command_encoder400.insertDebugMarker("mymarker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder400.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder401.insertDebugMarker("mymarker");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device40.queue.submit([]);
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array6 = new Float32Array([0.5, -1.0, 0.75, -0.25, 0.25, -0.25, 0.75, 1.0, -0.5, 0.75, -0.75, 0.5, 0.0, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.5, -0.25, -0.5, 0.5, 0.0, -0.5, 1.0, -0.5, 0.75, 0.75, -0.5, 0.75, -0.25, 0.25, -0.75, 0.5, 0.0, 0.25, -0.25, 0.75, 1.0, 0.25, 0.75, 0.25, -0.75, 0.5, 0.0, -0.75, 0.0, -0.5, 1.0, 0.0, 0.5, -1.0, 1.0, 0.0, -1.0, -0.25, 0.5, -0.75, 0.25, 1.0, -0.5, -0.5, 1.0, -0.75, -1.0, -0.5, 0.75, -1.0, -0.5, 0.5, -0.75, 0.0, -0.75, 0.0, 0.25, 1.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.25, -1.0, -0.25, 0.75, -0.5, 1.0, 1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 0.25, 0.5, 1.0, 0.75, 1.0, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture400.destroy();
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder4020.setStencilReference(1);
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    
    render_pass_encoder4010.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.executeBundles([])
    render_pass_encoder4010.beginOcclusionQuery(0)
    
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.pushErrorScope("out-of-memory");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_pass_encoder4010.executeBundles([render_bundle_encoder401, ])
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder4000.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    
    render_pass_encoder4000.setStencilReference(1);
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.5, 1.0, -0.5, -1.0, -0.5, 0.75, -0.75, 0.0, 0.5, -0.75, -0.75, -0.5, -1.0, 0.0, -0.25, -0.5, 0.0, -1.0, -0.25, -0.5, -0.5, 0.5, 0.25, 0.75, 0.0, -1.0, 0.75, 0.5, 1.0, -0.25, 0.0, 1.0, -1.0, -0.25, 1.0, 0.5, -0.5, -0.5, 0.75, -0.75, -0.5, -0.75, 0.0, 0.0, -0.75, -0.25, 0.25, 0.0, 0.0, -1.0, 1.0, 1.0, -1.0, 0.0, -1.0, -0.5, -0.25, -0.75, 0.75, -1.0, -1.0, 0.75, -0.75, 0.0, 0.5, -0.75, -0.75, -0.75, 1.0, -0.5, 0.25, 0.75, -1.0, -0.75, 0.0, 1.0, 1.0, 0.75, 0.5, 0.75, -0.75, -0.75, -1.0, 0.75, 1.0, -1.0, 0.25, 1.0, -0.5, 1.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.5, -0.25, -0.25, -1.0, -0.75, ]);
    
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_pass_encoder4010.popDebugGroup();
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_bundle_encoder401.popDebugGroup();
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder4020.popDebugGroup();
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder4000.setStencilReference(1);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_pass_encoder4000.setStencilReference(1);
    device50.pushErrorScope("validation");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder100.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder4000.setStencilReference(1);
    
    texture200.destroy();
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    buffer300.destroy()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder300.popDebugGroup();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer501 = command_encoder501.finish();
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
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
    const array8 = new Float32Array([0.0, 0.25, 0.25, 0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 1.0, 1.0, -0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 0.25, 0.25, 0.5, -1.0, -0.25, 0.25, -0.25, -1.0, 1.0, 0.25, 0.5, 0.0, 0.25, 1.0, 0.25, -0.25, 1.0, 0.25, 0.5, -0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 0.25, 1.0, -0.75, 0.0, -0.5, -0.5, -0.25, -0.25, 0.25, -0.25, -1.0, 0.5, 0.0, -0.5, -0.5, 1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 0.25, -1.0, 0.0, 1.0, -1.0, 0.25, -1.0, 0.5, -1.0, -0.75, 1.0, 1.0, 0.75, -0.5, -0.25, -0.75, 1.0, -0.25, 0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 1.0, -0.5, 1.0, -0.25, 0.0, 0.75, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device40.pushErrorScope("validation");
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    const array9 = new Float32Array([-0.75, 0.0, -0.5, -0.5, -0.25, 0.75, 0.75, -0.75, -1.0, 0.5, 0.25, -1.0, 0.75, 0.0, 1.0, 0.25, -0.5, 0.75, 0.75, -0.75, -0.75, 0.5, -0.75, -1.0, 0.0, 1.0, 0.75, 0.25, 0.0, -1.0, -0.5, 0.0, 0.0, 0.0, 0.5, 0.5, -0.75, -0.75, 0.5, -1.0, -0.5, -0.75, 0.0, 0.5, -0.5, 0.75, 0.25, 0.75, -0.25, -1.0, -1.0, -1.0, 0.5, 0.75, 1.0, -0.5, 0.75, 0.25, 0.25, 0.5, -0.5, -0.5, 1.0, 0.5, 0.0, -0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.25, 0.0, -0.5, -1.0, 0.5, 0.25, 1.0, -1.0, -0.25, -0.25, 1.0, -1.0, 0.75, -0.75, 0.5, -0.75, -0.25, -0.25, 1.0, 0.25, 0.5, -0.25, -0.5, 0.0, -1.0, 0.5, -0.25, -1.0, 0.5, ]);
    device50.queue.submit([]);
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    texture002.destroy();
    texture401.destroy();
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder300.popDebugGroup();
    query402.destroy()
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setStencilReference(1);
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    
    
    query100.destroy()
    texture300.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.setPipeline(render_pipeline400);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
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
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    render_pass_encoder4000.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder5001.popDebugGroup()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    command_encoder301.copyBufferToBuffer(
        buffer301,
        0,
        buffer301,
        0,
        400
    );
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer301 = command_encoder301.finish();
    buffer402.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder401.popDebugGroup();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    query401.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4020.beginOcclusionQuery(1)
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    render_bundle_encoder400.popDebugGroup();
    texture301.destroy();
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    query501.destroy()
    texture501.destroy();
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder4010.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    command_encoder502.clearBuffer(buffer500);
    command_encoder502.pushDebugGroup("mygroupmarker")
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder4010.setStencilReference(1);
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder4010.executeBundles([])
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    compute_pass_encoder5001.insertDebugMarker("marker")
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    query402.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    query300.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device50.queue.submit([]);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder300.popDebugGroup();
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

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    command_encoder002.insertDebugMarker("mymarker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder402.setVertexBuffer(0, buffer401);
    device40.queue.writeBuffer(buffer407, 0, array6, 0, array6.length);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    buffer406.destroy()
    
    buffer500.destroy()
    
    render_pass_encoder4011.executeBundles([])
    render_pass_encoder4011.insertDebugMarker("marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    command_encoder402.copyBufferToBuffer(
        buffer407,
        0,
        buffer400,
        0,
        400
    );
    const array10 = new Float32Array([-0.75, -1.0, -0.25, -0.25, -0.5, 0.75, 0.25, -0.75, -0.25, -1.0, -1.0, 0.5, -0.75, 0.75, -0.75, -0.75, 0.75, 0.0, 0.0, 0.75, 0.75, -0.5, -0.75, -0.5, 0.25, -0.5, -0.25, 0.5, -0.5, 1.0, -1.0, 0.25, -0.75, -0.75, -0.5, -0.75, -1.0, 1.0, 1.0, -0.25, -1.0, -0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 0.0, 0.5, 0.5, 0.25, 0.75, -1.0, 0.75, 0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 1.0, 1.0, 0.0, -0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 0.0, 0.25, 0.75, -0.25, -0.75, 0.0, 0.5, -0.75, 0.25, -0.25, 0.25, -1.0, 0.0, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 0.5, 0.75, 1.0, -0.5, 0.0, 0.75, -1.0, -0.75, 0.0, 0.5, -0.5, -0.5, ]);
    
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder4000.executeBundles([])
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.executeBundles([])
    render_pass_encoder4000.setPipeline(render_pipeline401);
    
    
    buffer302.destroy()
    render_pass_encoder4011.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    texture302.destroy();
    query200.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    buffer402.destroy()
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("internal");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.popDebugGroup()
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    compute_pass_encoder4020.setPipeline(compute_pipeline405);
    device30.queue.submit([command_buffer301, ]);
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder4010.setPipeline(render_pipeline400);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4011, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder4020.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder4020.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4011.setPipeline(render_pipeline401);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4020.setPipeline(render_pipeline401);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4011.setBindGroup(0, bind_group404);
    device40.queue.submit([command_buffer401, ]);
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
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group405);
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
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group406);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4011.setVertexBuffer(0, buffer4014);
    render_pass_encoder4011.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4011.drawIndirect(buffer4011, 0);
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
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group407);
    render_pass_encoder4010.setVertexBuffer(0, buffer4018);
    render_pass_encoder4020.setVertexBuffer(0, buffer400);
    render_pass_encoder4020.setIndexBuffer(buffer4013, "uint16");
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group408);
    device40.queue.submit([]);
    render_pass_encoder4020.drawIndirect(buffer4012, 0);
    render_pass_encoder4011.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder4000.popDebugGroup();
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group409);
    render_pass_encoder4011.drawIndirect(buffer4011, 0);
    render_pass_encoder4020.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4024, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4024, 0);
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder4000.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4010.drawIndirect(buffer4024, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder4010.drawIndirect(buffer401, 0);
    compute_pass_encoder4020.end();
    compute_pass_encoder3000.end();
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder4000.drawIndexedIndirect(buffer4011, 0);
    const command_buffer402 = command_encoder402.finish();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4025, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4025, 0);
    const command_buffer300 = command_encoder300.finish();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    device30.queue.submit([]);
    render_pass_encoder4000.end();
    render_pass_encoder4020.drawIndirect(buffer4025, 0);
    render_pass_encoder4020.end();
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([]);
    render_pass_encoder4011.end();
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
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4010);
    render_pass_encoder4011.drawIndexedIndirect(buffer4011, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
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
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4011);
    render_pass_encoder4011.setIndexBuffer(buffer4015, "uint16");
    render_pass_encoder4011.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4010.end();
    device40.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4011.end();
    render_pass_encoder4010.end();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4000.drawIndexedIndirect(buffer4020, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4010.endOcclusionQuery()
    compute_pass_encoder4010.end();
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4010.end();
    const command_buffer100 = command_encoder100.finish();
    device40.queue.submit([]);
    render_pass_encoder4010.drawIndirect(buffer4013, 0);
    render_pass_encoder4000.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4030, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4030, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.end();
    render_pass_encoder4010.drawIndirect(buffer4023, 0);
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4011.end();
    render_pass_encoder4010.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4000.end();
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([]);
    render_pass_encoder4000.drawIndirect(buffer4017, 0);
    render_pass_encoder4020.end();
    compute_pass_encoder4020.end();
    render_pass_encoder4011.drawIndirect(buffer4027, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder4000.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4011.drawIndirect(buffer405, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4025, 0);
    render_pass_encoder4011.end();
    device50.queue.submit([]);
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
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4012);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4010.drawIndexedIndirect(buffer4025, 0);
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
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4013);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3000.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4011.drawIndexed(3);
    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4036,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4014);
    render_pass_encoder4010.setIndexBuffer(buffer4016, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4011.setIndexBuffer(buffer406, "uint16");
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
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
        layout: compute_pipeline405.getBindGroupLayout(0),
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
    device30.queue.submit([command_buffer301, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer308, 0);
    compute_pass_encoder4020.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
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
        layout: compute_pipeline405.getBindGroupLayout(0),
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
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4030, "uint16");
    render_pass_encoder4020.end();
    compute_pass_encoder4010.popDebugGroup()
    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4042,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4017);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4010.drawIndexedIndirect(buffer4024, 0);
    compute_pass_encoder5001.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer4025, 0);
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4010.drawIndexedIndirect(buffer4038, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer4025, 0);
    compute_pass_encoder5001.popDebugGroup()
    render_pass_encoder4011.drawIndexed(3);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4020.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4010.setIndexBuffer(buffer4017, "uint16");
    compute_pass_encoder4020.end();
    render_pass_encoder4000.drawIndirect(buffer4030, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer4025, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder4011.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4025, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer309, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4025, 0);
    render_pass_encoder4010.end();
    render_pass_encoder4000.end();
    render_pass_encoder4020.drawIndexedIndirect(buffer4011, 0);
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
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4018);
    compute_pass_encoder5001.popDebugGroup()
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder4010.setIndexBuffer(buffer4032, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder4000.drawIndirect(buffer4024, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4000.drawIndexedIndirect(buffer4011, 0);
    compute_pass_encoder5000.popDebugGroup()
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
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4019);
    render_pass_encoder4020.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4020.drawIndexedIndirect(buffer4023, 0);
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
        
    const bind_group4020 = device40.createBindGroup({
        label: "bind_group4020",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group4020);
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder4011.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4000.drawIndirect(buffer4024, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4011.setIndexBuffer(buffer4017, "uint16");
    render_pass_encoder4020.drawIndexedIndirect(buffer4030, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4020.end();
    render_pass_encoder4020.setIndexBuffer(buffer4041, "uint16");
    render_pass_encoder4010.drawIndexedIndirect(buffer4044, 0);
    device50.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer4030, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4000.drawIndirect(buffer4023, 0);
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
        
    const bind_group4021 = device40.createBindGroup({
        label: "bind_group4021",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4021);
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
        
    const bind_group4022 = device40.createBindGroup({
        label: "bind_group4022",
        layout: compute_pipeline405.getBindGroupLayout(0),
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

    compute_pass_encoder4020.setBindGroup(0, bind_group4022);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer402, 0);
    device40.queue.submit([]);
    render_pass_encoder4000.drawIndirect(buffer4030, 0);
    compute_pass_encoder5000.popDebugGroup()
}