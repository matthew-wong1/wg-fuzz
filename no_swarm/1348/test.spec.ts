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
    
    const array0 = new Float32Array([-0.25, -0.25, 0.5, 0.5, -1.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.75, -0.5, 0.25, -1.0, 1.0, -1.0, 0.25, 0.5, -0.5, -0.25, -0.75, 0.0, 0.75, -0.25, -1.0, -0.75, 1.0, 0.5, 0.5, 0.75, 0.5, -1.0, -1.0, -0.25, -1.0, 0.75, -0.75, -0.75, 1.0, 0.5, 0.0, 0.25, 1.0, -0.75, 0.75, -0.5, -0.5, -1.0, 1.0, 0.25, 0.0, 0.75, 0.5, 0.25, 0.0, 0.25, -0.75, -0.25, 0.25, 0.75, -1.0, -0.25, 0.25, -0.25, -0.25, -1.0, 0.0, -0.25, 0.5, 0.75, -0.5, -0.75, -0.75, -0.25, 0.0, -0.75, -0.5, 0.75, 1.0, 1.0, -0.5, -1.0, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.0, 0.5, 0.75, -1.0, 0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 0.0, ]);
    
    
    
    
    
    
    const array1 = new Float32Array([-0.75, 0.0, -1.0, 0.5, 0.75, 0.0, 0.5, 0.75, -1.0, -0.5, 0.75, -0.75, 0.75, 0.75, -0.25, -0.5, -0.25, 1.0, -0.5, -0.75, 0.75, -0.25, -1.0, 0.0, 0.5, -0.25, -0.25, -0.25, 0.25, 1.0, -1.0, 0.25, 0.5, 0.0, -1.0, -0.75, -0.5, 0.25, -0.25, 0.0, -0.5, -0.75, 1.0, -0.75, 1.0, 0.0, 1.0, 0.75, 0.75, 0.5, 0.5, 0.0, 1.0, 0.25, -0.25, -0.5, -0.25, 0.75, -0.5, -1.0, 0.5, 0.25, -0.25, -1.0, -1.0, 0.75, 1.0, -1.0, 1.0, 1.0, -0.25, 0.75, -0.75, -0.25, 0.5, 0.25, -0.5, 0.75, 0.25, 0.75, -0.75, 0.25, 0.5, 1.0, 0.75, -0.25, 1.0, -0.75, -0.25, -0.75, 0.5, -0.75, 0.5, -0.25, 0.25, -0.75, 0.0, -0.25, 0.5, -0.5, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    query100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array2 = new Float32Array([-0.75, 0.75, -0.25, -1.0, 1.0, 0.5, -0.25, -0.5, 0.75, -0.25, 0.25, 0.25, 1.0, 0.75, 0.5, -0.25, 0.25, -0.5, 1.0, 1.0, -1.0, 0.5, 0.5, -0.75, 0.0, 0.25, 1.0, 1.0, 0.5, 0.75, -0.25, 0.75, 0.75, -0.25, -0.75, 0.25, -0.5, -0.75, 0.0, -0.75, -0.25, 0.5, 0.75, -0.5, -1.0, 0.75, -0.75, -0.25, -0.5, -1.0, -0.5, -0.75, 0.5, 0.0, -0.5, -0.5, 0.5, 0.0, 0.25, 1.0, 0.25, 0.75, -1.0, -0.5, 1.0, -1.0, -1.0, -0.75, -0.75, 0.0, 1.0, -0.75, 0.5, 1.0, -0.25, -0.25, 0.5, -0.75, -0.75, 0.75, 0.0, 1.0, 0.5, -1.0, -0.5, 1.0, 1.0, -1.0, -0.25, 0.25, -0.75, 0.25, 0.75, 0.5, 1.0, 0.5, 0.5, 0.0, 0.25, 1.0, ]);
    
    const array3 = new Float32Array([1.0, 0.0, 0.5, -0.5, 1.0, 1.0, -1.0, 0.0, 0.0, -1.0, -0.75, -0.75, -1.0, 0.75, 0.75, 0.25, -0.75, 1.0, 0.75, 0.25, 0.0, -0.5, 0.5, 0.5, -0.25, 0.0, 0.5, -0.5, 0.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.5, 0.0, 0.75, 0.25, 0.0, -0.25, -1.0, 0.25, -0.5, 0.25, -0.5, -0.25, -1.0, 0.5, 0.5, 0.25, 0.5, -0.5, -0.25, -0.25, -0.75, 1.0, 0.0, -0.75, 0.0, -0.25, 0.25, -0.25, 0.75, -0.5, 1.0, 0.25, 1.0, 0.75, 0.5, 0.5, 0.25, 0.5, 1.0, -0.25, 0.25, 0.5, 1.0, 1.0, 1.0, 0.25, -0.5, 0.25, 0.5, -0.75, -1.0, 0.75, -0.5, 1.0, 0.25, -0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, ]);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query200.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.destroy();
    query100.destroy()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    device10.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.pushErrorScope("validation");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const array4 = new Float32Array([0.25, -0.25, 0.0, 0.5, 1.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.5, 0.75, 1.0, -0.5, 0.5, 0.25, -0.25, 1.0, -0.5, 0.5, 0.75, 0.25, 1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.5, -1.0, 0.5, -0.25, 1.0, 0.75, 0.75, -0.5, -0.75, -0.75, -0.75, 0.0, -0.5, -0.25, 0.0, 0.0, 1.0, -0.5, 0.0, 1.0, -0.25, 1.0, 0.25, 0.0, 0.75, 0.25, -0.25, 0.75, -0.5, 0.25, 0.0, -0.5, 0.5, 0.25, -0.5, 0.25, 1.0, 0.0, -0.25, -0.5, 0.25, -0.75, 0.75, -0.5, -0.5, 0.0, 0.75, 0.75, -1.0, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, 0.5, -0.5, -1.0, 0.25, -0.5, 1.0, -0.25, -0.25, 0.5, 0.5, 0.25, 1.0, -0.5, -0.25, 0.25, 0.75, 1.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.popDebugGroup()
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    const array5 = new Float32Array([-0.75, 1.0, -0.75, 0.0, 0.0, 0.0, -0.75, 1.0, 0.25, 0.5, -1.0, -0.25, 0.25, 0.25, -1.0, -0.75, -0.25, -0.25, 0.25, -0.5, 0.25, 0.5, 0.5, 0.5, 0.0, 1.0, 0.75, 0.75, 0.75, -1.0, 0.75, -0.75, -1.0, -0.5, 0.5, 0.25, -0.5, 0.5, -0.25, -0.5, -0.5, 0.0, -0.25, 1.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.75, -0.5, -0.5, 1.0, 0.0, -0.75, 0.5, -0.5, 0.0, 1.0, -0.75, -0.25, -0.5, -1.0, 0.5, 0.0, -0.5, -0.5, -1.0, 1.0, 0.75, 0.75, 1.0, 0.5, 0.75, -0.5, 0.0, 0.0, -0.25, 0.25, -0.25, -0.5, -1.0, 0.0, 0.75, 0.5, -1.0, 0.0, 0.0, 1.0, 0.0, 0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -0.5, 0.5, -1.0, ]);
    query000.destroy()
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_buffer500 = command_encoder500.finish();
    query400.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query400.destroy()
    device40.pushErrorScope("validation");
    
    
    const array6 = new Float32Array([0.75, 0.0, -1.0, 0.25, -1.0, 0.0, -0.25, -0.25, -0.75, 0.75, -0.75, -0.75, 0.5, -0.25, 0.5, -0.25, -0.75, -0.5, -0.25, 0.25, 0.75, -0.5, -0.25, 0.25, 0.25, 0.5, 0.25, 0.25, -0.25, -0.25, -0.5, -1.0, -1.0, -0.25, 0.5, 1.0, 0.75, -0.5, -0.5, -0.5, -1.0, 0.0, -1.0, 0.0, -1.0, -0.25, -1.0, -1.0, -0.25, -1.0, 0.5, 0.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.75, -1.0, -1.0, 1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 0.75, -0.75, 0.5, 0.0, 0.25, 0.5, 0.5, 0.75, 1.0, 0.25, 0.75, 0.5, 0.0, 0.0, 0.25, -0.25, -0.75, -0.25, 0.75, -0.25, 0.25, -0.5, -1.0, 0.0, -0.25, 0.25, -0.25, 0.0, 0.0, ]);
    
    render_bundle_encoder401.popDebugGroup();
    query000.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    texture000.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query500.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    buffer400.destroy()
    
    const array7 = new Float32Array([-0.5, 0.25, -0.75, -0.5, 0.5, 0.25, -0.5, -0.25, -0.25, -0.25, 0.0, 0.0, 0.75, 0.5, -0.75, 1.0, 0.75, 0.5, -0.25, 1.0, -0.25, -1.0, -1.0, 0.75, -0.75, -0.25, 0.75, 0.25, 1.0, 1.0, 0.0, 0.25, -0.75, 0.75, 0.5, -1.0, -0.5, -1.0, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.0, 0.25, -0.75, 0.25, -1.0, 1.0, 0.75, -0.5, -0.5, 0.75, 0.25, 0.25, 0.5, 0.0, 0.0, 0.25, -0.5, 1.0, -0.25, 0.25, 1.0, 0.75, -0.25, 0.25, -0.5, -1.0, 0.25, 0.0, -0.25, -0.5, 0.25, -0.75, -0.25, 0.5, 0.75, -0.5, 0.0, 0.5, 1.0, 1.0, -0.75, 0.75, 1.0, 0.0, -0.75, -0.75, -0.5, -0.25, 1.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.25, 0.5, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("validation");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
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
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    compute_pass_encoder4000.popDebugGroup()
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device40.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query501.destroy()
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    texture500.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device70.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    query501.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    query000.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.destroy();
    const command_buffer401 = command_encoder401.finish();
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture501.destroy();
    const array8 = new Float32Array([0.75, 1.0, 0.25, -0.75, -0.5, 0.75, 0.5, 0.5, -0.25, 0.5, -0.5, -1.0, 0.75, -1.0, 0.25, -0.5, 0.75, -1.0, 1.0, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, 0.0, -0.75, -0.25, 0.75, 0.25, 0.75, -1.0, 0.25, 0.0, -1.0, -0.75, -0.75, 0.0, -0.5, -0.75, 0.25, 0.5, 0.75, 0.25, 0.0, 0.25, -0.25, -0.5, 0.5, 1.0, -1.0, -0.5, -0.25, 0.75, 0.0, 0.5, 0.25, 0.0, -0.75, -0.25, -0.75, 0.5, -0.75, -0.5, 1.0, 1.0, 1.0, 0.75, 0.75, -0.75, -0.5, -0.5, 0.25, 1.0, 0.25, 0.75, 0.25, 1.0, 0.25, -0.75, -0.5, -0.25, 0.5, 0.5, 0.25, -0.5, 0.25, -1.0, 0.0, 0.5, -0.25, 1.0, 0.5, 0.0, 0.5, 0.0, 0.5, -0.75, 0.75, ]);
    
    
    
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    texture502.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query501
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    render_pass_encoder5010.setPipeline(render_pipeline501);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture503.destroy();
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32uint",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    texture800.destroy();
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const array9 = new Float32Array([-1.0, -0.75, 0.0, -0.25, -1.0, 0.5, 0.5, 0.5, -0.75, -0.5, -0.25, -1.0, 1.0, -0.5, -0.75, -0.75, 0.0, -1.0, -0.75, -0.25, -0.25, 0.5, -0.5, 0.75, -0.5, 1.0, -1.0, -1.0, -0.5, 0.5, -0.75, 0.5, 1.0, 1.0, 0.25, 0.25, -0.25, 0.75, -0.25, 0.5, 0.25, 0.25, 0.25, -0.75, -0.5, 0.25, 0.5, 0.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.75, -0.75, -0.25, 0.5, -0.25, 0.75, 0.0, 0.0, 0.0, -1.0, -0.5, -0.25, 0.25, 0.5, -1.0, 0.25, 0.75, -0.5, 1.0, 0.0, 0.25, 1.0, 0.5, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, 1.0, 0.0, 0.5, 0.5, -0.25, -1.0, -0.25, -0.5, 0.75, -0.75, -1.0, -0.75, 0.5, 0.0, -0.25, 0.5, -0.5, -0.25, ]);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query502.destroy()
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const array10 = new Float32Array([-0.5, 0.0, -1.0, -0.75, -0.75, -1.0, 0.5, 0.0, -0.75, -0.5, 0.75, 0.5, 0.0, -0.25, -0.25, 0.5, -0.75, -1.0, 0.25, -0.5, 1.0, 1.0, 0.75, 1.0, -0.25, 1.0, 0.75, 0.0, 0.75, 1.0, 0.25, -0.75, -1.0, 0.75, 1.0, 0.0, -1.0, -0.75, -0.25, 0.5, 0.25, 0.0, -0.25, -0.5, -0.5, -0.75, 1.0, -1.0, 0.25, -1.0, 1.0, 0.5, -0.25, 0.25, 0.0, 0.5, 1.0, 0.0, -0.75, -1.0, -0.5, 0.5, -0.75, -1.0, 0.25, 0.5, 0.0, -1.0, -0.5, -1.0, 0.75, 0.5, -0.25, 0.75, -1.0, 0.0, 0.0, -0.75, 0.25, 0.5, -0.75, -1.0, -1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.25, 0.25, -0.5, -1.0, 0.75, -0.5, 0.0, -0.25, 1.0, 1.0, -0.75, -0.25, ]);
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const array11 = new Float32Array([0.25, -0.75, -1.0, 0.75, -0.5, 1.0, 0.75, 0.25, 0.5, 0.0, -1.0, -1.0, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.75, 0.5, -1.0, 0.0, 0.5, 0.0, 1.0, -1.0, 1.0, 1.0, 0.5, -0.25, 1.0, 1.0, -0.5, 0.5, 0.0, 1.0, -1.0, 0.0, 0.75, -0.25, 0.75, -0.75, -0.75, -0.75, 0.5, -0.25, 0.75, -0.25, -1.0, 0.75, -1.0, 0.5, 0.75, 1.0, -0.5, 1.0, 0.25, -0.25, 0.5, -1.0, 0.0, 0.25, 0.5, -0.25, 0.5, -0.75, 0.5, 0.25, 1.0, -0.75, 0.5, -1.0, -0.25, -0.75, 1.0, 1.0, 0.25, 1.0, 0.0, -0.5, -1.0, -0.5, -0.25, -0.75, 0.25, -0.75, 0.25, -1.0, -0.5, 0.25, 1.0, 0.0, -0.75, 0.5, -0.75, ]);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5031,
            },
        ],
        occlusionQuerySet: query503
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5020.setViewport(0, 0, texture503.width / 2, texture503.height / 2, 0, 1);
    render_pass_encoder5020.insertDebugMarker("marker");
    const array12 = new Float32Array([0.5, 1.0, 0.0, 0.75, 0.25, 1.0, 0.0, 0.0, -1.0, 1.0, 0.5, 0.5, -0.5, 0.75, 0.5, -0.75, -0.5, 0.25, 0.25, -0.25, 0.0, -0.25, -0.5, 0.75, 0.5, 0.5, -0.25, 0.0, 0.0, 0.75, 0.5, 0.25, -0.25, 1.0, -0.25, -0.25, 0.0, 1.0, -0.25, -0.25, -0.25, 0.25, 0.5, -0.5, -0.5, 0.5, 0.0, -0.75, 0.5, 0.5, -0.5, 0.25, -0.5, 0.5, -1.0, 1.0, -1.0, -0.75, 0.5, -0.5, 0.75, 0.0, -0.25, 0.75, 0.25, 0.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.75, 0.5, -0.25, -0.75, -1.0, -1.0, 0.25, 0.0, -1.0, -0.75, 0.5, -1.0, -0.5, -0.75, -0.5, -0.75, -0.5, -0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 0.25, 0.5, -0.25, -0.75, 1.0, 0.0, ]);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query500
    });
    texture802.destroy();
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
    
    device70.pushErrorScope("validation");
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder5020.setPipeline(render_pipeline500);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    query501.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    command_encoder502.pushDebugGroup("mygroupmarker")
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query503
    });
    
    render_pass_encoder5030.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    buffer600.destroy()
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
    
    device60.pushErrorScope("validation");
    render_pass_encoder5021.executeBundles([render_bundle_encoder500, ])
    render_pass_encoder5031.setPipeline(render_pipeline500);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    render_pass_encoder5030.setStencilReference(1);
    render_pass_encoder5030.setPipeline(render_pipeline505);
    render_pass_encoder5030.pushDebugGroup("group_marker");
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    render_pass_encoder5021.insertDebugMarker("marker");
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5031.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder5011.setStencilReference(1);
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    render_pass_encoder5031.pushDebugGroup("group_marker");
    
    
    
    
    render_pass_encoder5011.setPipeline(render_pipeline501);
    render_pass_encoder5020.popDebugGroup();
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_pass_encoder5031.setBindGroup(0, bind_group500);
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group501);
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device60.destroy();
    query503.destroy()
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setStencilReference(1);
    
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder5011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_pass_encoder5011.setViewport(0, 0, texture503.width / 2, texture503.height / 2, 0, 1);
    render_pass_encoder5010.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5011.setStencilReference(1);
    buffer500.destroy()
    device40.pushErrorScope("validation");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_pass_encoder5021.setBindGroup(0, bind_group502);
    render_pass_encoder5021.setVertexBuffer(0, buffer504);
    render_pass_encoder5031.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query505.destroy()
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder502.setPipeline(render_pipeline501);
    query500.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_pass_encoder5031.endOcclusionQuery()
    render_pass_encoder5020.pushDebugGroup("group_marker");
    buffer506.destroy()
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group503);
    render_pass_encoder5021.end();
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_pass_encoder5010.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    render_bundle_encoder501.setPipeline(render_pipeline501);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder800.popDebugGroup();
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    buffer504.destroy()
    render_pass_encoder5020.setViewport(0, 0, texture503.width / 2, texture503.height / 2, 0, 1);
    render_pass_encoder5011.setVertexBuffer(0, buffer504);
    render_pass_encoder5030.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5031.popDebugGroup();
    
    const query507 = device50.createQuerySet({
        label: "query507",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5031.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture803.destroy();
    render_pass_encoder5011.setScissorRect(0, 0, texture503.width / 2, texture503.height / 2);
    render_pass_encoder5010.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer502.destroy()
    render_pass_encoder5020.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder5011.setStencilReference(1);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    device50.queue.writeBuffer(buffer507, 0, array7, 0, array7.length);
    render_bundle_encoder800.popDebugGroup();
    render_pass_encoder5020.setVertexBuffer(0, buffer506);
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group504);
    device80.destroy();
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder500.setVertexBuffer(0, buffer508);
    
    device50.pushErrorScope("validation");
    render_pass_encoder5020.draw(3);
    render_pass_encoder5031.pushDebugGroup("group_marker");
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
    
    render_pass_encoder5031.popDebugGroup();
    
    render_pass_encoder5010.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    render_pass_encoder5031.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder500.draw(3);
    device50.queue.submit([command_buffer500, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5031.popDebugGroup();
    
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group505);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_pass_encoder5011.setScissorRect(0, 0, texture503.width / 2, texture503.height / 2);
    const command_buffer503 = command_encoder503.finish();
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    render_pass_encoder5020.setViewport(0, 0, texture503.width / 2, texture503.height / 2, 0, 1);
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder502.setVertexBuffer(0, buffer507);
    texture002.destroy();
    render_pass_encoder5010.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    query501.destroy()
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    render_pass_encoder5020.end();
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5021.drawIndirect(buffer5012, 0);
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group506);
    render_pass_encoder5011.drawIndirect(buffer506, 0);
    command_encoder502.popDebugGroup()
    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: render_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5016,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group507);
    render_pass_encoder5030.setVertexBuffer(0, buffer503);
    render_pass_encoder5030.drawIndirect(buffer5010, 0);
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer502, ]);
    const command_buffer700 = command_encoder700.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.setIndexBuffer(buffer5013, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder5010.setVertexBuffer(0, buffer5011);
    render_pass_encoder5031.setVertexBuffer(0, buffer5015);
    render_pass_encoder5031.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.drawIndirect(buffer5016, 0);
    render_pass_encoder5031.draw(3);
    render_pass_encoder5031.endOcclusionQuery()
    render_pass_encoder5031.end();
    render_pass_encoder5020.drawIndirect(buffer508, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5010.end();
    render_pass_encoder5011.end();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5031.draw(3);
    render_pass_encoder5020.drawIndirect(buffer504, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5031.drawIndirect(buffer5011, 0);
    render_pass_encoder5021.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5021.drawIndirect(buffer508, 0);
    render_pass_encoder5030.draw(3);
    render_pass_encoder5030.end();
    render_pass_encoder5010.drawIndirect(buffer5012, 0);
    render_pass_encoder5020.end();
    const command_buffer100 = command_encoder100.finish();
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder5031.drawIndirect(buffer5013, 0);
    render_pass_encoder5020.end();
}