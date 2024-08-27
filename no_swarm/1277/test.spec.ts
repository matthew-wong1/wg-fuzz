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
    
    
    
    const array0 = new Float32Array([0.25, -0.5, -0.5, -0.25, 0.75, -0.5, -0.5, -0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 0.0, -0.75, -0.5, 0.5, -1.0, 0.5, -0.75, -0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 0.25, -1.0, 1.0, 1.0, -0.5, 0.5, -0.5, 0.25, 0.5, -0.25, -0.75, -1.0, 0.5, -0.25, 0.5, 0.25, -0.5, 1.0, 0.75, -1.0, 0.5, 1.0, 0.25, -0.5, 0.25, 0.25, 0.75, -0.5, -0.75, 0.25, 0.75, 0.25, -0.25, 0.25, 0.25, 0.5, -1.0, 0.25, 1.0, 0.25, 0.75, -1.0, -1.0, -1.0, 0.0, 1.0, -0.25, 0.0, 0.5, -1.0, 0.75, 0.75, 1.0, 1.0, -0.5, -0.5, -0.75, 0.0, -0.75, -0.25, -1.0, -0.75, -0.5, -0.25, 0.75, 0.0, -0.25, 0.5, 1.0, 1.0, -1.0, 0.25, -0.5, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    query000.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    query000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder000.clearBuffer(buffer000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const array1 = new Float32Array([1.0, -0.5, 0.0, -0.5, 0.5, 1.0, -0.25, 0.75, 0.0, -0.75, 0.25, 0.5, 1.0, 0.5, 0.0, 0.75, 1.0, 0.0, 0.75, 1.0, -0.75, -0.75, 0.25, 1.0, 1.0, 0.75, 0.0, -0.25, 1.0, 0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 0.75, -0.5, -0.25, -0.5, 0.25, 1.0, -1.0, 0.5, 0.0, -0.5, 0.25, 0.25, -0.75, 0.0, -1.0, 0.75, 1.0, 1.0, -0.5, 0.5, 0.0, -0.75, 0.75, -0.5, 0.0, 0.25, 1.0, 0.0, 0.0, 0.25, -0.25, -1.0, 0.25, -0.75, 0.5, -1.0, -1.0, 0.5, 0.0, 1.0, -1.0, -1.0, -0.25, -0.5, 0.25, 0.0, -1.0, 0.75, 0.0, 0.5, -0.5, 0.0, 1.0, 0.75, 0.5, -1.0, -0.25, -1.0, 1.0, -0.5, -0.75, 0.0, 0.0, -0.5, -0.25, ]);
    query000.destroy()
    
    device10.destroy();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array2 = new Float32Array([0.25, 0.25, 0.0, 1.0, 0.0, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.0, 0.5, 0.75, 0.75, 0.75, -0.5, 1.0, 0.5, 0.0, -1.0, -1.0, 0.25, 0.0, -0.75, -1.0, -0.5, 0.0, -0.75, 1.0, 1.0, -0.5, -1.0, -0.75, -0.75, 0.5, 0.25, 0.5, -0.5, -1.0, 0.5, -0.5, 1.0, -0.25, 0.75, 0.75, 0.75, -1.0, -1.0, -0.5, -0.5, 0.75, 0.75, 0.0, 0.5, 0.75, -1.0, -0.75, -1.0, -0.25, 1.0, 1.0, 0.5, 0.75, -0.25, -0.5, 0.0, -0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 0.75, 0.25, 0.0, -0.5, 0.75, -0.5, -0.25, 0.5, 0.25, -0.25, -0.25, -0.5, -0.5, 0.5, 0.75, -1.0, 0.0, 0.75, 0.75, -0.25, 0.5, 0.25, 0.75, 0.5, -0.25, 0.25, 1.0, ]);
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    query000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.insertDebugMarker("mymarker");
    texture000.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder0000.popDebugGroup()
    command_encoder000.clearBuffer(buffer000);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    query000.destroy()
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
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device20.destroy();
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder000.popDebugGroup();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    query001.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer002 = command_encoder002.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer002, ]);
    const array3 = new Float32Array([0.5, 1.0, 0.0, 0.75, -0.5, -0.5, 0.5, -0.75, -0.25, 0.5, 0.75, -0.5, -0.25, -0.75, 0.75, 0.25, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, -0.5, -1.0, -1.0, -0.25, -0.75, -0.75, -0.5, 0.25, 0.0, 0.0, 1.0, 1.0, 0.25, -1.0, 0.5, -0.5, 1.0, 0.0, 0.5, 0.5, -0.75, -0.25, -0.5, -0.5, -0.75, 0.25, -0.5, 0.5, -1.0, -0.25, -1.0, -1.0, -0.5, 0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -1.0, 0.25, -0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 0.5, -0.5, 1.0, -0.75, -0.25, -0.75, -0.5, 0.75, 0.75, 0.0, 0.75, -0.5, 0.25, 0.75, 0.0, 1.0, -0.5, -0.25, -0.25, 1.0, 0.5, -0.25, -1.0, -1.0, -0.25, -0.75, -0.5, -0.25, -0.25, 0.5, 0.75, ]);
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
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    render_bundle_encoder000.setPipeline(render_pipeline002);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    command_encoder300.insertDebugMarker("mymarker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
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
    
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query006.destroy()
    
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline003);
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array4 = new Float32Array([-1.0, -0.75, 0.5, -0.5, 0.75, 0.75, -0.75, 0.0, 0.25, -1.0, 1.0, 0.0, 0.0, 0.5, 1.0, 0.75, -1.0, 0.25, 1.0, 0.0, -0.25, -0.25, 0.0, 0.0, 0.0, -1.0, 0.25, 0.25, -0.5, 0.25, -0.75, 0.0, -0.5, 0.75, -0.25, -0.25, 0.25, 1.0, 0.5, -0.25, -0.5, -0.25, -0.25, -0.25, -0.75, 0.0, -0.5, 0.0, 0.25, 0.5, 0.5, -0.75, 1.0, -0.5, -0.75, 0.25, 1.0, -0.75, -0.5, 0.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.5, -0.75, 0.0, 1.0, -0.25, 0.75, -0.75, -0.25, 0.0, -1.0, 0.25, 1.0, 0.75, 0.25, 0.75, 0.5, -0.5, -0.25, -1.0, -0.5, 0.5, -0.5, 1.0, -0.25, 0.5, -0.25, 0.5, -0.5, 0.75, -0.25, -0.75, 0.75, -0.5, 0.0, -0.75, ]);
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    
    const command_buffer301 = command_encoder301.finish();
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query300.destroy()
    query003.destroy()
    
    
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
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder000.popDebugGroup();
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device00.destroy();
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const command_buffer300 = command_encoder300.finish();
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array5 = new Float32Array([-1.0, 1.0, 0.0, 1.0, -0.5, 0.75, 0.75, -0.5, -0.75, 0.5, 0.25, -0.75, -0.5, -1.0, -0.25, -0.25, 0.75, -0.5, -0.5, 0.0, -0.25, -1.0, -1.0, 0.25, 0.5, -1.0, 0.0, -1.0, -1.0, -1.0, 0.5, -0.25, 0.5, 0.75, 1.0, -1.0, 0.5, -0.75, -1.0, -0.75, -1.0, 1.0, 1.0, -0.75, -0.75, 0.0, 0.5, 0.75, 1.0, 0.5, 0.0, -0.5, 0.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.75, -1.0, -1.0, -0.25, -0.5, 0.5, 0.25, -1.0, 0.75, -0.25, -0.25, 0.25, -0.25, -0.75, 0.25, 0.0, -0.5, 0.75, 0.75, -0.5, 0.25, 0.0, 0.0, -0.5, 1.0, 0.75, -0.25, 0.75, -0.75, 0.75, -1.0, 0.5, 0.5, 1.0, 0.25, 0.75, -0.25, -1.0, -0.5, 0.75, 1.0, -1.0, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture400.destroy();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    query400.destroy()
    command_encoder400.clearBuffer(buffer401);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    command_encoder400.pushDebugGroup("mygroupmarker")
    buffer400.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    
    query402.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    query300.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query401.destroy()
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    texture402.destroy();
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
    
    
    device40.pushErrorScope("validation");
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const render_bundle_encoder403 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder403",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder403.setPipeline(render_pipeline402);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-1.0, 0.75, 0.25, -0.75, 0.5, -0.75, 0.25, 0.0, -0.5, -0.75, 0.0, 0.75, -1.0, 1.0, 1.0, -1.0, 0.25, 0.75, -0.25, -1.0, -1.0, 0.0, 0.5, 0.5, 0.0, 0.25, -0.25, -0.75, 0.5, -1.0, 0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -1.0, -0.5, -0.5, -0.75, 0.75, 0.5, 0.5, -1.0, -0.5, 0.5, -1.0, -0.5, -1.0, 0.25, -1.0, -1.0, 0.75, 1.0, 0.75, -0.75, 0.0, -0.25, 0.25, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, 0.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.25, 0.5, 0.5, -0.25, 0.0, -0.75, 0.0, 0.5, -0.25, 1.0, -0.75, 0.0, -1.0, 0.25, -0.75, -1.0, -0.5, -1.0, 0.25, 0.0, 1.0, -1.0, 0.0, 0.75, 1.0, 0.25, -0.5, 0.25, -0.75, ]);
    
    device20.destroy();
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    buffer401.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query005
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder4000.executeBundles([])
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    texture001.destroy();
    render_bundle_encoder403.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4000.setStencilReference(1);
    render_bundle_encoder401.setPipeline(render_pipeline403);
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    
    render_pass_encoder4000.insertDebugMarker("marker");
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder403.pushDebugGroup("group_marker");
    texture401.destroy();
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder400.setVertexBuffer(0, buffer405);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query401.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder400.draw(3);
    render_bundle_encoder400.popDebugGroup();
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4001.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder0001.setPipeline(render_pipeline002);
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    render_pass_encoder4000.setPipeline(render_pipeline400);
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder4001.setStencilReference(1);
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder4000.popDebugGroup()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_bundle_encoder403.setBindGroup(0, bind_group401);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.popDebugGroup();
    command_encoder401.insertDebugMarker("mymarker");
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    
    compute_pass_encoder4001.pushDebugGroup("group_marker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_pass_encoder4001.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    device40.queue.writeBuffer(buffer407, 0, array1, 0, array1.length);
    render_pass_encoder4010.setPipeline(render_pipeline401);
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query402
    });
    
    render_bundle_encoder403.popDebugGroup();
    buffer402.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder4001.setPipeline(render_pipeline401);
    command_encoder402.pushDebugGroup("mygroupmarker")
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer405.destroy()
    compute_pass_encoder4001.setPipeline(compute_pipeline400);
    render_pass_encoder4020.setPipeline(render_pipeline403);
    device40.queue.writeBuffer(buffer407, 0, array5, 0, array5.length);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
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
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group402);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module0010,
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
            module: shader_module0010,
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
    command_encoder401.copyBufferToBuffer(
        buffer404,
        0,
        buffer409,
        0,
        400
    );
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer405,
        0
    )
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    
    
    query402.destroy()
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
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
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group403);
    
    device40.queue.writeBuffer(buffer406, 0, array3, 0, array3.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    device40.queue.writeBuffer(buffer408, 0, array1, 0, array1.length);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query402
    });
    buffer4011.destroy()
    buffer408.destroy()
    device40.queue.writeBuffer(buffer409, 0, array5, 0, array5.length);
    
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device00.queue.submit([command_buffer002, ]);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer406,
        0
    )
    render_pass_encoder4011.setPipeline(render_pipeline402);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4001.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer407.destroy()
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    buffer406.destroy()
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    query006.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder4011.pushDebugGroup("group_marker");
    render_pass_encoder4020.pushDebugGroup("group_marker");
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

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
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
        layout: render_pipeline403.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group405);
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4001.setBindGroup(0, bind_group406);
    render_pass_encoder4010.setVertexBuffer(0, buffer403);
    render_pass_encoder4020.setVertexBuffer(0, buffer405);
    compute_pass_encoder4000.setPipeline(compute_pipeline407);
    render_pass_encoder4020.draw(3);
    render_pass_encoder4020.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4001.setVertexBuffer(0, buffer4013);
    render_pass_encoder4010.setIndexBuffer(buffer406, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder4001.popDebugGroup()
    compute_pass_encoder4001.dispatchWorkgroups(100);
    render_pass_encoder4020.popDebugGroup();
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
        layout: compute_pipeline407.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    render_pass_encoder4010.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder4010.draw(3);
    render_pass_encoder4010.drawIndirect(buffer403, 0);
    render_pass_encoder4001.drawIndirect(buffer401, 0);
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
        layout: compute_pipeline407.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group408);
    device60.queue.submit([]);
    render_pass_encoder4001.end();
    render_pass_encoder4010.drawIndirect(buffer4021, 0);
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
        layout: render_pipeline400.getBindGroupLayout(0),
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
    render_pass_encoder4010.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4000.setVertexBuffer(0, buffer4018);
    render_pass_encoder4001.drawIndirect(buffer4010, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4000.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder4000.drawIndexedIndirect(buffer406, 0);
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    render_pass_encoder4011.setBindGroup(0, bind_group4010);
    render_pass_encoder4011.setVertexBuffer(0, buffer400);
    render_pass_encoder4011.drawIndirect(buffer4023, 0);
    render_pass_encoder4011.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder0010.setPipeline(render_pipeline003);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4000.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4026, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4026, 0);
    render_pass_encoder4001.setIndexBuffer(buffer4020, "uint16");
    compute_pass_encoder4000.end();
    render_pass_encoder4000.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4001.end();
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4020.end();
    render_pass_encoder4001.drawIndexedIndirect(buffer405, 0);
    render_pass_encoder4000.drawIndirect(buffer403, 0);
    render_pass_encoder4011.end();
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
        layout: compute_pipeline407.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4001.setBindGroup(0, bind_group4012);
    command_encoder402.popDebugGroup()
    render_pass_encoder4000.end();
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4010.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4011.end();
    compute_pass_encoder4001.end();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    command_encoder400.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4020.end();
    const command_buffer400 = command_encoder400.finish();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group002);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.drawIndirect(buffer4026, 0);
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
        layout: compute_pipeline407.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group4013);
    render_pass_encoder4020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.setPipeline(render_pipeline003);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4011.setIndexBuffer(buffer4013, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder4010.setIndexBuffer(buffer4022, "uint16");
    render_pass_encoder4010.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder4010.popDebugGroup();
}