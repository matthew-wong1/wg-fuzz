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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    buffer100.destroy()
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const array0 = new Float32Array([-0.25, -1.0, 0.0, -0.5, 1.0, -0.25, 0.25, 0.0, -0.25, -1.0, 0.5, 0.0, 0.75, -0.25, 0.75, 1.0, 0.0, -0.25, 0.25, 0.5, 0.0, 0.0, 1.0, 0.25, 0.5, 0.0, 0.25, -0.75, 0.5, 0.75, -0.25, 1.0, 0.0, 0.0, -1.0, -0.5, 0.0, -1.0, -0.25, 0.5, -0.5, -1.0, -0.75, 1.0, -0.75, -0.75, -1.0, 1.0, 0.5, 0.5, -0.25, 0.75, 0.25, 0.75, 0.5, 0.0, 1.0, 0.0, 0.25, 0.5, -0.25, 0.25, -1.0, -0.75, 0.0, -0.75, 0.25, 0.75, 0.5, -0.75, 0.75, -0.25, -0.75, -0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, -1.0, 0.0, 0.25, 1.0, 0.75, -0.25, 0.0, -1.0, -1.0, 0.0, 0.5, 0.25, -0.25, 0.5, 0.0, 0.75, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.5, -0.25, -1.0, -0.5, -0.5, 0.25, 0.5, 0.5, -1.0, 0.25, 1.0, -0.25, -0.75, -1.0, -0.5, 0.5, -0.25, -0.5, -0.5, -1.0, -1.0, -0.5, 0.25, -1.0, 1.0, 0.75, 0.0, -1.0, -0.75, -0.75, -0.25, 0.0, -1.0, 1.0, 0.5, 0.5, 0.0, 0.25, 1.0, 1.0, -0.75, -1.0, 0.75, -0.75, -0.5, 0.5, -0.75, -0.25, 0.25, 0.75, 0.0, -0.25, 0.75, -0.75, -1.0, -0.25, -0.5, -1.0, 0.5, 1.0, -0.25, -0.5, -0.25, 1.0, 0.75, -1.0, 0.25, 1.0, 0.25, 0.0, 0.0, 0.75, 0.75, -0.75, -0.5, 0.25, -0.25, -0.75, 0.25, -0.25, 0.5, 0.0, 1.0, -0.5, 0.0, -1.0, 1.0, 1.0, -0.25, -0.75, 1.0, 0.75, -0.75, 0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 1.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.destroy();
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.0, 0.0, 0.75, 0.25, 1.0, -0.75, -1.0, -1.0, -0.75, -0.25, -0.5, 0.75, -0.25, 1.0, 0.25, 0.5, -0.75, -1.0, -0.25, -1.0, 1.0, -1.0, -0.5, -0.75, 0.25, -0.25, -0.5, -0.5, 0.75, -0.25, -0.25, -0.25, -0.75, -0.5, -0.25, -0.5, -0.25, -0.5, 0.0, -0.25, 0.75, -0.25, -1.0, 1.0, 0.75, 1.0, 0.75, 0.0, 0.25, -0.75, -0.75, 0.0, -0.5, 1.0, -0.5, -1.0, 1.0, 0.25, -0.75, -0.5, 0.5, 0.0, 1.0, 0.0, -1.0, -0.75, -1.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.25, 0.25, 1.0, 0.5, -0.75, -0.25, -0.5, -0.5, 0.5, 0.5, -0.25, 0.0, 0.75, 1.0, -0.5, 0.5, 0.25, 0.25, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, -0.75, -1.0, -1.0, 0.5, ]);
    
    device20.destroy();
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    
    device40.pushErrorScope("internal");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array3 = new Float32Array([0.0, -0.75, -1.0, 0.75, -0.75, -0.5, 1.0, 0.25, 0.75, 0.75, -0.25, -0.75, -0.5, -0.5, 0.0, -0.5, 0.0, -0.75, -0.5, -1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.5, -1.0, -1.0, 0.0, -1.0, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, -1.0, 1.0, 0.75, -0.5, 0.5, 0.25, -0.5, 0.5, -1.0, -0.75, 0.25, -1.0, -1.0, -0.5, 0.25, -1.0, -1.0, -1.0, 0.0, 0.25, 0.75, -0.75, 1.0, 0.25, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, -0.5, -0.25, -0.5, 0.5, 1.0, -0.25, 0.75, -0.5, -0.5, -0.25, 0.75, -0.5, -0.25, -0.75, 0.0, -0.25, -0.5, 0.75, -1.0, -0.5, 0.75, -0.25, -0.25, 0.75, 0.25, 0.75, -0.75, -0.25, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture401.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
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
    
    texture402.destroy();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array4 = new Float32Array([0.5, -0.25, -0.25, 0.5, 1.0, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, 1.0, 0.0, -0.75, 0.5, -0.25, -0.25, -0.25, -1.0, -0.5, -0.5, 0.25, 0.0, 1.0, 0.5, -1.0, 0.25, -0.5, -0.75, 0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, -0.25, -0.5, -0.25, 0.5, 1.0, -0.5, 0.25, -0.25, 1.0, 0.75, -0.25, -1.0, -0.5, 0.25, 0.5, -0.5, 0.0, 0.5, 0.25, 0.0, -0.75, 0.25, -1.0, 1.0, -1.0, 0.25, -0.25, 0.0, -1.0, -1.0, -1.0, 0.5, -0.5, -1.0, -1.0, 1.0, -0.75, 1.0, 0.5, -0.75, 0.25, -0.75, 0.25, 1.0, -0.25, -1.0, -0.5, 0.5, 0.5, 1.0, 0.25, 0.0, -0.25, 1.0, -1.0, 0.25, -0.5, -1.0, 0.5, -1.0, 0.0, -0.25, -0.25, -0.75, ]);
    
    const array5 = new Float32Array([0.25, 0.5, -0.75, 0.5, -1.0, -0.5, 0.25, 1.0, -0.25, -1.0, 0.0, 1.0, -0.5, -1.0, -1.0, 0.5, -0.5, 1.0, 1.0, 0.25, -0.75, 0.75, 0.0, 0.25, -1.0, -1.0, 0.25, 0.5, 0.25, -1.0, 0.0, 1.0, -1.0, 1.0, 0.5, -0.75, 0.75, 0.5, -0.25, -0.75, 0.25, -0.75, 0.25, 0.5, 0.0, 0.75, 0.75, -0.75, 1.0, 0.5, 0.25, 0.0, -0.25, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 0.25, 0.0, 0.75, 0.25, 0.5, 0.5, 1.0, -0.5, -0.75, 0.5, 0.75, 0.25, 1.0, -1.0, -0.75, 0.75, -1.0, 0.5, 0.75, 0.5, 0.75, 0.5, -0.25, 0.0, 0.5, 0.75, 0.25, -1.0, -1.0, 1.0, 0.25, 0.25, ]);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device30.pushErrorScope("internal");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    render_bundle_encoder400.popDebugGroup();
    
    
    render_bundle_encoder402.popDebugGroup();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const command_buffer401 = command_encoder401.finish();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const array6 = new Float32Array([1.0, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 1.0, 0.75, -0.25, -0.75, -1.0, 0.25, 0.25, 0.0, -0.75, -0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, -0.75, -0.25, 0.25, -0.5, 0.5, 0.0, -0.5, 0.75, -0.5, 0.25, 0.0, -0.25, -0.5, -0.25, -1.0, 0.25, 0.0, 0.25, 0.5, 0.0, -0.25, 0.0, 0.75, 0.0, -0.75, 1.0, -0.25, 0.0, -0.25, 0.75, -0.5, 1.0, 0.25, -0.5, 0.0, 0.5, -0.25, -1.0, 0.75, 1.0, 0.5, -0.75, 1.0, 1.0, -1.0, 0.0, -1.0, -0.75, -0.75, -0.75, 0.0, 1.0, 0.5, 0.25, 1.0, 0.75, 0.5, 0.25, 1.0, 0.5, 1.0, -0.75, 0.5, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, -0.5, -0.75, -0.25, 0.75, -0.5, -0.5, -0.75, 0.0, ]);
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
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const array7 = new Float32Array([1.0, 0.75, 1.0, 0.0, 0.5, -0.5, -0.25, -0.25, -0.75, 0.75, 0.5, -0.75, -0.75, 0.75, -0.75, 0.0, 0.25, 0.25, 0.0, -0.25, 1.0, -0.5, 0.25, -0.5, -1.0, 0.25, 0.75, 1.0, 0.0, 0.0, 0.5, 0.75, -0.25, -0.75, 1.0, 0.25, -0.5, 0.0, 0.75, 0.25, 0.0, -0.25, 0.5, -0.5, 0.25, 0.0, 0.75, -0.75, 0.75, 0.75, -1.0, -0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 0.25, 1.0, 0.0, 0.75, 0.25, -0.25, -0.25, -0.5, -0.5, -0.25, 0.75, -0.75, -0.5, 0.0, 0.0, -0.75, -0.5, 0.25, 0.0, 0.25, -0.5, 0.0, -0.75, -0.5, 1.0, -0.5, 0.0, -1.0, -0.75, -1.0, -0.5, 0.5, -1.0, -0.25, 0.75, 0.5, -0.75, -1.0, 0.0, 1.0, -0.25, 0.5, 1.0, ]);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
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
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query300.destroy()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.executeBundles([])
    
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder4040.setPipeline(render_pipeline400);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder4020.setPipeline(render_pipeline401);
    command_encoder301.pushDebugGroup("mygroupmarker")
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder301.popDebugGroup()
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    buffer300.destroy()
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_bundle_encoder301.popDebugGroup();
    command_encoder405.insertDebugMarker("mymarker");
    command_encoder301.insertDebugMarker("mymarker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder4040.pushDebugGroup("group_marker");
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder4020.setStencilReference(1);
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_buffer405 = command_encoder405.finish();
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder302.insertDebugMarker("mymarker");
    query302.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder4020.setStencilReference(1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder4020.setStencilReference(1);
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder402.insertDebugMarker("marker");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer304, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer304, 0);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_buffer301 = command_encoder301.finish();
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    render_pass_encoder4020.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    buffer301.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    command_encoder302.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.popDebugGroup();
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
        occlusionQuerySet: query302
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const array8 = new Float32Array([-0.5, -0.5, -1.0, 1.0, 0.0, 1.0, -0.25, -0.5, -1.0, 1.0, 0.75, -0.75, 0.75, -1.0, 0.5, -0.25, 1.0, -0.5, 0.75, -0.75, 1.0, 0.75, -0.75, -0.5, 0.0, 0.75, -0.25, -0.75, 0.75, 0.75, 0.5, 0.75, 1.0, -0.25, 0.5, 0.0, 0.5, 0.0, 1.0, 1.0, 0.0, -0.75, 0.0, 1.0, -1.0, 0.25, -1.0, -1.0, 0.75, 0.75, 0.5, -0.25, -0.25, 0.75, -1.0, -0.5, -1.0, 1.0, 0.75, -0.5, -0.75, -0.75, 1.0, 0.25, -0.75, 0.25, 0.75, 1.0, 0.75, 0.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.25, 0.75, -0.25, 0.5, -0.75, 0.0, -0.25, -0.5, -0.25, 0.75, -0.25, -0.25, -0.5, 0.25, 0.5, -1.0, -0.5, -0.25, -0.25, 0.25, -0.25, 1.0, 0.5, 0.75, -0.5, ]);
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    device60.pushErrorScope("internal");
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
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder4020.beginOcclusionQuery(0)
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
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
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group401);
    texture400.destroy();
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
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
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    buffer403.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    device30.pushErrorScope("validation");
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
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
    buffer401.destroy()
    
    const render_pass_encoder4070 = command_encoder407.beginRenderPass({
        label: "render_pass_encoder4070",
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
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.insertDebugMarker("marker");
    render_pass_encoder4070.setPipeline(render_pipeline401);
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder304.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder4060.setPipeline(compute_pipeline402);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
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

    render_bundle_encoder400.setBindGroup(0, bind_group402);
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
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    texture403.destroy();
    render_bundle_encoder301.setPipeline(render_pipeline301);
    render_pass_encoder4070.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder304.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4070.setStencilReference(1);
    
    compute_pass_encoder4030.popDebugGroup()
    
    render_pass_encoder3030.setStencilReference(1);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4070.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query302.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder4070.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder4020.insertDebugMarker("marker");
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    device40.queue.writeBuffer(buffer406, 0, array0, 0, array0.length);
    buffer405.destroy()
    buffer402.destroy()
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group403);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder3030.popDebugGroup();
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.endOcclusionQuery()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder3040.setPipeline(render_pipeline300);
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer400.destroy()
    
    device40.queue.writeBuffer(buffer406, 0, array6, 0, array6.length);
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    render_bundle_encoder401.popDebugGroup();
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4070.setBindGroup(0, bind_group404);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    buffer4010.destroy()
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    
    texture300.destroy();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.setPipeline(compute_pipeline403);
    buffer407.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder3020.executeBundles([])
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder4070.insertDebugMarker("marker");
    
    render_pass_encoder3030.executeBundles([])
    query302.destroy()
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
        layout: compute_pipeline403.getBindGroupLayout(0),
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

    compute_pass_encoder4030.setBindGroup(0, bind_group405);
    const command_encoder408 = device40.createCommandEncoder({ label: "command_encoder408" });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group406);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.writeBuffer(buffer406, 0, array2, 0, array2.length);
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_pass_encoder4070.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4040.setStencilReference(1);
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group407);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.executeBundles([])
    buffer303.destroy()
    device30.queue.submit([command_buffer301, ]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout305]
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    command_encoder600.insertDebugMarker("mymarker");
    buffer600.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer406, 0, array0, 0, array0.length);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder402.popDebugGroup();
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.beginOcclusionQuery(1)
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query301.destroy()
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer406, 0, array0, 0, array0.length);
    render_pass_encoder4040.pushDebugGroup("group_marker");
    command_encoder600.insertDebugMarker("mymarker");
    
    render_pass_encoder4070.insertDebugMarker("marker");
    
    
    command_encoder408.clearBuffer(buffer406);
    buffer302.destroy()
    buffer408.destroy()
    render_pass_encoder3020.setStencilReference(1);
    
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
        layout: compute_pipeline402.getBindGroupLayout(0),
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

    compute_pass_encoder4060.setBindGroup(0, bind_group408);
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    
    render_pass_encoder4020.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pass_encoder4080 = command_encoder408.beginComputePass({ label: "compute_pass_encoder4080" });
    
    device30.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer406, 0, array6, 0, array6.length);
    render_pass_encoder3020.setPipeline(render_pipeline300);
    compute_pass_encoder4030.end();
    const command_buffer600 = command_encoder600.finish();
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group301);
    compute_pass_encoder4080.setPipeline(compute_pipeline404);
    render_pass_encoder4020.endOcclusionQuery()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3030.setPipeline(render_pipeline300);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4040.popDebugGroup();
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
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4020, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4020, 0);
    render_pass_encoder3020.popDebugGroup();
    device40.queue.submit([command_buffer405, ]);
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder4060.dispatchWorkgroups(100);
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    compute_pass_encoder4000.end();
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    compute_pass_encoder4080.setBindGroup(0, bind_group409);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    compute_pass_encoder4060.end();
    const uint32_4080 = new Uint32Array(3);

    uint32_4080[0] = 100;
    uint32_4080[1] = 1;
    uint32_4080[2] = 1;

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4023, 0, uint32_4080, 0, uint32_4080.length);

    compute_pass_encoder4080.dispatchWorkgroupsIndirect(buffer4023, 0);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer400 = command_encoder400.finish();
    const command_buffer406 = command_encoder406.finish();
    compute_pass_encoder4080.end();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer408 = command_encoder408.finish();
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer406, command_buffer408, ]);
    device40.queue.submit([command_buffer400, ]);
}