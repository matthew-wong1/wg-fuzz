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
    
    const array0 = new Float32Array([0.5, -0.25, -1.0, -1.0, 0.75, 0.5, -0.75, -0.5, -1.0, 0.75, -0.25, 1.0, 0.0, 0.25, 1.0, -0.5, -0.25, -1.0, 0.75, 0.5, -0.25, -1.0, 0.5, -0.5, -1.0, 0.25, -0.5, 0.75, -1.0, 0.75, -0.25, 0.25, -1.0, -0.25, 0.0, -0.75, -0.25, 0.0, 0.25, -0.25, -0.25, 0.0, 0.0, -0.25, 0.75, -1.0, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, 0.0, 0.75, -0.25, 0.75, 0.0, 0.0, 0.0, 1.0, -1.0, -1.0, -0.75, 0.25, -0.75, -0.75, 0.25, -0.5, 0.5, -0.25, -1.0, -0.25, -0.5, -0.75, 0.5, -0.25, 1.0, -1.0, 0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 0.75, 0.75, 1.0, 0.25, 0.25, -1.0, 0.5, 0.25, 1.0, 0.0, 0.25, 0.25, -0.75, 0.5, -0.25, -0.5, ]);
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array1 = new Float32Array([-1.0, 0.75, 0.5, -0.5, -0.25, -0.25, -0.75, -0.5, 0.75, -0.25, 1.0, -0.25, -0.75, -0.25, 0.5, 0.75, 0.75, 0.5, -0.75, 0.25, -0.5, -1.0, 0.0, -1.0, 0.5, -0.25, 0.25, 0.75, 0.5, -0.5, 1.0, -0.5, -1.0, 1.0, -1.0, 0.0, -0.5, 0.25, 0.25, -0.75, 0.75, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.25, 1.0, -0.75, 1.0, 0.75, -0.75, -0.75, -0.25, 0.25, 0.75, 0.25, 0.75, -0.5, 1.0, 0.25, -0.25, -0.25, -0.25, 0.5, 0.25, -1.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, 0.25, 0.25, -0.75, 0.0, 0.5, -0.5, 0.5, -0.75, -0.5, 0.75, -0.25, 1.0, -0.25, 1.0, 1.0, -0.5, -0.25, -1.0, 0.25, 0.25, 0.75, -1.0, 0.5, 1.0, 0.0, ]);
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.pushErrorScope("validation");
    
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array2 = new Float32Array([-0.5, -0.75, 1.0, -0.5, -0.75, 0.5, -0.75, 0.5, -0.75, -1.0, -0.75, -0.5, -0.25, 0.5, 0.25, 1.0, -1.0, 0.75, -0.25, 0.75, 0.75, 0.0, 1.0, -1.0, -0.25, 0.75, -1.0, 1.0, 0.5, 0.5, 0.75, -0.5, 0.5, -0.75, -0.5, -1.0, -0.75, -0.5, 1.0, -0.25, 0.75, 0.75, 0.75, 0.75, 0.0, 0.0, 0.25, -0.75, 1.0, -0.5, 0.25, -1.0, -0.5, 0.25, 0.5, -0.25, 0.0, 0.5, 0.0, 1.0, 0.25, -0.75, 0.75, -0.5, 0.5, 0.25, -0.25, -1.0, -0.25, -0.25, -0.5, 0.25, -1.0, 0.75, -1.0, 1.0, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, -0.75, -0.75, 0.25, 0.5, -0.5, -0.25, 0.75, 0.5, -0.5, -0.75, -0.5, 1.0, 0.75, -0.25, 0.75, -0.75, 0.25, 0.25, ]);
    
    const array3 = new Float32Array([0.75, 1.0, 0.25, 0.5, 0.75, 0.0, -1.0, 0.75, 1.0, 0.5, -0.75, -0.75, -0.75, 0.5, 0.75, -1.0, -0.5, 0.25, 0.25, 1.0, 0.75, -0.5, -0.5, 0.75, 0.25, 0.5, 0.0, 0.25, 0.5, -0.75, 0.25, 0.0, 0.0, 0.25, 1.0, -1.0, 0.25, -0.75, -0.5, 0.0, 0.25, 0.25, 0.0, 0.0, 0.0, 0.25, 0.75, 0.0, -0.5, 0.0, 1.0, -0.75, -1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.5, -1.0, -0.75, -0.25, 1.0, 0.75, -0.5, -1.0, 0.25, -0.5, -0.5, -0.5, -1.0, 0.0, 1.0, 0.5, 0.25, 0.0, -0.25, -0.25, 0.75, -1.0, 0.25, -0.5, -0.5, -0.5, 0.5, -0.25, -1.0, 1.0, 0.25, -1.0, -0.5, 0.25, -0.5, -0.75, -1.0, 0.5, -1.0, 0.5, 0.0, -0.25, ]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device50.pushErrorScope("validation");
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    
    texture101.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    device40.queue.submit([]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    compute_pass_encoder1000.popDebugGroup()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query100.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.popDebugGroup();
    
    device40.queue.submit([]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query100.destroy()
    buffer400.destroy()
    query102.destroy()
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
    
    const command_buffer102 = command_encoder102.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    command_encoder500.insertDebugMarker("mymarker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query101.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    texture104.destroy();
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device10.queue.submit([command_buffer102, ]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
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
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5010.setPipeline(render_pipeline500);
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device40.pushErrorScope("out-of-memory");
    command_encoder502.pushDebugGroup("mygroupmarker")
    buffer401.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setStencilReference(1);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer402.destroy()
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
    device50.pushErrorScope("out-of-memory");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder4000.setStencilReference(1);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.setStencilReference(1);
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder1010.setStencilReference(1);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    texture102.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
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
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.executeBundles([])
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    query100.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5010.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
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
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder5020.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device30.pushErrorScope("internal");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder5020.executeBundles([])
    buffer500.destroy()
    compute_pass_encoder5000.popDebugGroup()
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder5020.setPipeline(render_pipeline500);
    
    render_pass_encoder1010.popDebugGroup();
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder4000.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device70.destroy();
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
    render_bundle_encoder100.insertDebugMarker("marker");
    texture400.destroy();
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query100
    });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    texture500.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query101.destroy()
    render_pass_encoder5010.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    const array4 = new Float32Array([-1.0, -0.25, -1.0, 0.0, 0.25, -1.0, 0.25, 0.0, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, -0.25, 0.5, -0.75, 1.0, 0.75, 1.0, 0.25, -1.0, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, 0.25, -0.75, 0.75, -1.0, -0.5, 0.75, 0.0, 0.25, 0.75, -0.5, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, -0.75, -1.0, -1.0, -0.75, 0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -1.0, -0.5, -1.0, -0.25, -1.0, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.5, -0.5, -0.75, -0.25, 1.0, 0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, 0.5, -1.0, 0.0, 1.0, -0.25, 0.25, -0.25, 0.25, 0.75, 0.75, -1.0, 0.75, 0.0, -1.0, -0.25, -0.25, -0.5, 1.0, ]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
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
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query102
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    query100.destroy()
    render_pass_encoder4000.setStencilReference(1);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    buffer300.destroy()
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer105, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer105, 0);
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([0.0, -1.0, -0.5, -0.25, -0.5, 0.5, 0.0, 0.0, -1.0, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, -0.25, -0.5, -0.75, 0.0, -0.75, -0.25, 0.5, 0.0, 0.25, -0.75, -0.75, -0.75, -0.75, -0.5, -0.25, -0.5, -0.75, -0.75, -1.0, 0.25, -0.75, 0.5, -0.5, 0.75, 1.0, 0.0, -0.75, 0.0, 0.25, 0.75, 0.0, 0.0, 1.0, -0.25, -0.25, 1.0, 0.5, -0.5, 0.25, -0.25, -0.5, -0.75, 0.0, 1.0, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, -0.5, 0.75, -0.75, -0.5, 0.25, -0.75, -0.25, 0.5, 0.5, -0.75, 0.5, -0.5, 0.0, 1.0, 1.0, -0.25, 1.0, -1.0, 0.0, -1.0, 0.25, 1.0, -0.25, -0.5, -1.0, -0.75, 0.5, -1.0, -0.75, 0.0, 1.0, 0.25, 0.5, 1.0, -1.0, ]);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder5000.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder5031.setPipeline(render_pipeline502);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    buffer101.destroy()
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4000.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
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
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5030.setPipeline(render_pipeline500);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder5040.pushDebugGroup("group_marker");
    render_pass_encoder1010.setViewport(0, 0, texture105.width / 2, texture105.height / 2, 0, 1);
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.destroy();
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1010.executeBundles([])
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    render_pass_encoder5040.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    render_pass_encoder5031.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    buffer104.destroy()
    render_pass_encoder1000.endOcclusionQuery()
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder5021.setPipeline(render_pipeline500);
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer108, 0);
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
    
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder1030.insertDebugMarker("marker");
    
    compute_pass_encoder1000.end();
    render_pass_encoder1030.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    {
        await buffer108.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer108.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer108.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    
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
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    render_pass_encoder5010.insertDebugMarker("marker");
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1070,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_pass_encoder1011.setStencilReference(1);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder5010.setStencilReference(1);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer108.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    render_pass_encoder1011.executeBundles([])
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    render_pass_encoder5010.insertDebugMarker("marker");
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5030.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    render_pass_encoder5000.setPipeline(render_pipeline501);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    query103.destroy()
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group501);
    render_pass_encoder5020.endOcclusionQuery()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    buffer501.destroy()
    render_pass_encoder5031.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder5040.setPipeline(render_pipeline500);
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    render_pass_encoder1010.beginOcclusionQuery(0)
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.popDebugGroup();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1072 = texture107.createView({ label: "texture_view1072" });
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5002,
            },
        ],
        occlusionQuerySet: query501
    });
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder5011.setPipeline(render_pipeline502);
    
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture107
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture501.destroy();
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1072,
            },
        ],
        occlusionQuerySet: query103
    });
    
    render_pass_encoder1001.setViewport(0, 0, texture107.width / 2, texture107.height / 2, 0, 1);
    render_pass_encoder5021.setStencilReference(1);
    compute_pass_encoder5000.insertDebugMarker("marker")
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline100);
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    render_pass_encoder5020.popDebugGroup();
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group502);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5040.setVertexBuffer(0, buffer501);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5040.draw(3);
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder1010.setVertexBuffer(0, buffer106);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    compute_pass_encoder1010.end();
    render_pass_encoder5040.popDebugGroup();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    render_pass_encoder1010.popDebugGroup();
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group503);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group504);
    render_pass_encoder1040.setVertexBuffer(0, buffer107);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder5040.end();
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5021.setBindGroup(0, bind_group505);
    compute_pass_encoder5000.popDebugGroup()
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group506);
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder5010.setVertexBuffer(0, buffer503);
    render_pass_encoder5010.drawIndirect(buffer5012, 0);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder5020.setVertexBuffer(0, buffer506);
    render_pass_encoder5000.setVertexBuffer(0, buffer505);
    render_pass_encoder1040.end();
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
    render_pass_encoder5021.setVertexBuffer(0, buffer507);
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group507);
    render_pass_encoder5021.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5010.draw(3);
    render_pass_encoder5021.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5030.setVertexBuffer(0, buffer507);
    render_pass_encoder5030.draw(3);
    render_pass_encoder1010.endOcclusionQuery()
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1001.setPipeline(render_pipeline100);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder5010.draw(3);
    render_pass_encoder5040.drawIndirect(buffer5010, 0);
    render_pass_encoder5021.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    render_pass_encoder5031.setBindGroup(0, bind_group508);
    render_pass_encoder1000.setVertexBuffer(0, buffer1012);
    render_pass_encoder5020.drawIndirect(buffer5014, 0);
    const command_buffer504 = command_encoder504.finish();
    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5019,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group509);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder5011.setVertexBuffer(0, buffer5012);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group106);
    render_pass_encoder5000.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder1001.setVertexBuffer(0, buffer103);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5000.drawIndirect(buffer5016, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder5030.drawIndirect(buffer5013, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    render_pass_encoder5011.drawIndirect(buffer506, 0);
    const command_buffer300 = command_encoder300.finish();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer5018, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.end();
    render_pass_encoder5011.end();
    render_pass_encoder1001.end();
    render_pass_encoder5031.setVertexBuffer(0, buffer501);
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5021.drawIndirect(buffer504, 0);
    command_encoder501.popDebugGroup()
    render_pass_encoder5031.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder5000.end();
    render_pass_encoder1030.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5010.popDebugGroup();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group108);
    render_pass_encoder5031.end();
    device40.queue.submit([]);
    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5010 = device50.createBindGroup({
        label: "bind_group5010",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5021,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5010);
    render_pass_encoder1030.setVertexBuffer(0, buffer1013);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    compute_pass_encoder3000.end();
    render_pass_encoder5020.end();
    render_pass_encoder5010.setIndexBuffer(buffer500, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder5031.setIndexBuffer(buffer5019, "uint16");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder5000.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder5030.end();
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.draw(3);
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer501 = command_encoder501.finish();
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1021, 0);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder5031.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder5030.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5011 = device50.createBindGroup({
        label: "bind_group5011",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5023,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5011);
    render_pass_encoder5020.setIndexBuffer(buffer5020, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder5031.setIndexBuffer(buffer501, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.end();
    render_pass_encoder5031.setIndexBuffer(buffer5019, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    command_encoder502.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer501, 0);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder5010.drawIndexedIndirect(buffer506, 0);
    render_pass_encoder1040.draw(3);
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

    render_pass_encoder1011.setBindGroup(0, bind_group109);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder5040.drawIndirect(buffer5022, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder5031.drawIndirect(buffer501, 0);
    render_pass_encoder1011.setVertexBuffer(0, buffer1012);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.draw(3);
    device50.queue.submit([command_buffer503, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5020, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    device30.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5020.end();
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer5011, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5010.setIndexBuffer(buffer506, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder5020.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    const command_buffer101 = command_encoder101.finish();
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    render_pass_encoder5000.drawIndirect(buffer5020, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer5016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5021.end();
    render_pass_encoder1010.end();
    render_pass_encoder5011.setIndexBuffer(buffer5018, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5011.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder5000.draw(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder5000.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5023, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5021.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5030.end();
    compute_pass_encoder3000.end();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5010.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder5000.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder5040.drawIndirect(buffer505, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder5010.drawIndirect(buffer5011, 0);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5011.end();
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5040.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer500, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder5010.draw(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    device40.queue.submit([]);
    render_pass_encoder5031.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5031.drawIndexed(3);
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5031.drawIndexed(3);
    render_pass_encoder5021.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5021.setIndexBuffer(buffer506, "uint16");
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder5031.drawIndirect(buffer5023, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder5040.drawIndirect(buffer5017, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder5031.popDebugGroup();
    compute_pass_encoder5000.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer305, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder5000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder5021.drawIndirect(buffer507, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5010.setIndexBuffer(buffer5012, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.end();
    render_pass_encoder5021.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5021.end();
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder5020.end();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer5013, 0);
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder5031.draw(3);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder5031.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5000.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder5000.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer507, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5019, "uint16");
    render_pass_encoder5020.end();
    render_pass_encoder5021.drawIndexed(3);
    render_pass_encoder5000.drawIndirect(buffer5016, 0);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder5011.drawIndirect(buffer506, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder5040.setIndexBuffer(buffer509, "uint16");
    compute_pass_encoder5000.end();
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5000.drawIndirect(buffer5010, 0);
    render_pass_encoder5011.end();
    render_pass_encoder5021.draw(3);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder5031.end();
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5022, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder5021.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1010.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1027, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder5040.drawIndexedIndirect(buffer502, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder5031.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder1001.end();
    render_pass_encoder5000.setIndexBuffer(buffer5020, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder5011.end();
    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5012 = device50.createBindGroup({
        label: "bind_group5012",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5025,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5012);
    render_pass_encoder5040.drawIndirect(buffer5016, 0);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1001.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1011.popDebugGroup();
    const buffer5026 = device50.createBuffer({
        label: "buffer5026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5027 = device50.createBuffer({
        label: "buffer5027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5013 = device50.createBindGroup({
        label: "bind_group5013",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5027,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group5013);
    render_pass_encoder1040.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder5000.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder5030.end();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder5011.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder5031.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5021.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder5040.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder5040.setIndexBuffer(buffer5016, "uint16");
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder5011.drawIndirect(buffer5014, 0);
    render_pass_encoder5011.drawIndexed(3);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder5031.setIndexBuffer(buffer5015, "uint16");
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder5020.drawIndirect(buffer503, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder5011.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder5000.drawIndexedIndirect(buffer5021, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder5011.drawIndirect(buffer501, 0);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5030.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder5011.drawIndirect(buffer503, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1025, "uint16");
    device30.queue.submit([]);
    render_pass_encoder5031.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5022, "uint16");
    render_pass_encoder5020.draw(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder5020.drawIndirect(buffer5027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder5020.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer5014, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder5031.drawIndirect(buffer5025, 0);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder5030.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder5040.drawIndirect(buffer501, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5030.setIndexBuffer(buffer5023, "uint16");
    render_pass_encoder5020.setIndexBuffer(buffer5025, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3010, 0);
    render_pass_encoder5020.endOcclusionQuery()
    render_pass_encoder5020.draw(3);
    render_pass_encoder5000.setIndexBuffer(buffer5022, "uint16");
    render_pass_encoder5040.drawIndirect(buffer5010, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5025, "uint16");
    render_pass_encoder5021.setIndexBuffer(buffer5024, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
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
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder5010.end();
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder5010.draw(3);
    render_pass_encoder5020.setIndexBuffer(buffer5020, "uint16");
    render_pass_encoder5021.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5023, 0);
    render_pass_encoder5031.setIndexBuffer(buffer5024, "uint16");
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5011.end();
    device50.queue.submit([command_buffer501, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3011, 0);
    render_pass_encoder5000.setIndexBuffer(buffer5011, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5000.draw(3);
    render_pass_encoder5030.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    render_pass_encoder5020.drawIndirect(buffer5015, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5030.drawIndexed(3);
    device40.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1036, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5020.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5030.end();
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder5010.drawIndirect(buffer501, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder5031.end();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5000.drawIndirect(buffer5014, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5031.drawIndexedIndirect(buffer5027, 0);
    render_pass_encoder5031.drawIndirect(buffer505, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1029, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5011.drawIndirect(buffer5015, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5028 = device50.createBuffer({
        label: "buffer5028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5028, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5028, 0);
    render_pass_encoder1000.end();
    render_pass_encoder5000.setIndexBuffer(buffer5027, "uint16");
    compute_pass_encoder5000.end();
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder5021.drawIndirect(buffer5018, 0);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder5030.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder1011.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer500, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5040.setIndexBuffer(buffer5018, "uint16");
    compute_pass_encoder5000.end();
    render_pass_encoder5010.drawIndirect(buffer503, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5023, "uint16");
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder5000.drawIndirect(buffer5027, 0);
    render_pass_encoder5031.drawIndirect(buffer502, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder5010.drawIndexedIndirect(buffer503, 0);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5020.drawIndexedIndirect(buffer5021, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5026, "uint16");
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    device70.queue.submit([]);
    render_pass_encoder5010.end();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder5021.drawIndirect(buffer5014, 0);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    render_pass_encoder5031.drawIndirect(buffer5015, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder5031.setIndexBuffer(buffer5026, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5011.drawIndirect(buffer5016, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder5040.setIndexBuffer(buffer5020, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder5011.end();
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder5011.drawIndirect(buffer5028, 0);
    render_pass_encoder5020.drawIndirect(buffer5026, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder5030.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder5021.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5010.draw(3);
    render_pass_encoder5000.drawIndirect(buffer5015, 0);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder5040.drawIndirect(buffer5028, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5000.setIndexBuffer(buffer5020, "uint16");
    render_pass_encoder5020.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder5040.drawIndirect(buffer5024, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder5040.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder5021.setIndexBuffer(buffer501, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5040.drawIndirect(buffer5024, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5029 = device50.createBuffer({
        label: "buffer5029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5029, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5029, 0);
    render_pass_encoder5000.drawIndirect(buffer5012, 0);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    render_pass_encoder5011.drawIndexedIndirect(buffer5018, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder5030.drawIndirect(buffer502, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder5040.drawIndirect(buffer5014, 0);
    render_pass_encoder5031.drawIndirect(buffer5029, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5031.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder5021.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer5029, 0);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5010.end();
    render_pass_encoder5020.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder5021.end();
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder5040.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5040.setIndexBuffer(buffer5028, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder5010.drawIndexedIndirect(buffer5024, 0);
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    render_pass_encoder5020.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder5011.drawIndexedIndirect(buffer5016, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5013, 0);
    render_pass_encoder5010.end();
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1040.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    render_pass_encoder5011.drawIndirect(buffer5017, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5010.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder5011.drawIndexedIndirect(buffer5012, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5031.drawIndirect(buffer5013, 0);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5030 = device50.createBuffer({
        label: "buffer5030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5030, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder5000.drawIndirect(buffer506, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder5021.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder5040.end();
    render_pass_encoder5011.setIndexBuffer(buffer506, "uint16");
    device10.queue.submit([command_buffer104, ]);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder5000.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder5031.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder5031.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1001.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
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
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5031.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder5021.drawIndirect(buffer5013, 0);
    render_pass_encoder5011.end();
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder5011.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder5031.drawIndirect(buffer5028, 0);
    device50.queue.submit([command_buffer501, command_buffer502, command_buffer504, ]);
    device20.queue.submit([]);
    render_pass_encoder5030.drawIndexedIndirect(buffer5030, 0);
    compute_pass_encoder1000.end();
    device30.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder5000.end();
    device50.queue.submit([]);
    render_pass_encoder5021.drawIndirect(buffer5029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer5030, 0);
    compute_pass_encoder5000.end();
    render_pass_encoder5011.drawIndirect(buffer5020, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder5011.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5011.drawIndirect(buffer5030, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder5011.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder5000.drawIndirect(buffer5028, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    render_pass_encoder5010.drawIndirect(buffer506, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5029, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5011.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder5030.drawIndirect(buffer5030, 0);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder1000.end();
    render_pass_encoder5030.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5020.end();
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder5021.drawIndirect(buffer5027, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder5031.drawIndirect(buffer5028, 0);
    render_pass_encoder1030.end();
    render_pass_encoder5011.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder5031.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5010.setIndexBuffer(buffer502, "uint16");
    render_pass_encoder5020.end();
    render_pass_encoder5011.end();
    render_pass_encoder5020.end();
    render_pass_encoder1000.end();
    render_pass_encoder5011.drawIndexedIndirect(buffer5019, 0);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer5021, 0);
    render_pass_encoder1040.end();
    render_pass_encoder5030.drawIndirect(buffer5019, 0);
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5040.drawIndexedIndirect(buffer5025, 0);
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
    device50.queue.submit([command_buffer502, command_buffer504, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5019, 0);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder5031.drawIndirect(buffer5030, 0);
    render_pass_encoder5020.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5020.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5021.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder5000.drawIndirect(buffer506, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder5040.drawIndexedIndirect(buffer5016, 0);
    render_pass_encoder5010.drawIndirect(buffer5011, 0);
    render_pass_encoder5040.drawIndirect(buffer5030, 0);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder5030.drawIndirect(buffer5029, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5040.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder5021.drawIndirect(buffer5029, 0);
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5030.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5022, 0);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    device30.queue.submit([]);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5031.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
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
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1010.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder5000.drawIndirect(buffer5029, 0);
    render_pass_encoder5040.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5020.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([]);
    render_pass_encoder5031.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5030, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1046, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3017, 0);
    render_pass_encoder5011.drawIndirect(buffer5014, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder5020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder5021.draw(3);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder5010.drawIndexedIndirect(buffer503, 0);
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
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
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    render_pass_encoder5030.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder5011.drawIndexedIndirect(buffer5022, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1052, 0);
    render_pass_encoder5020.drawIndirect(buffer5012, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder5010.setIndexBuffer(buffer5021, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5028, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder1000.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder5031.drawIndexedIndirect(buffer5029, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5000.drawIndexedIndirect(buffer5026, 0);
    render_pass_encoder5031.setIndexBuffer(buffer5019, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder5020.drawIndirect(buffer5025, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder5011.draw(3);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder5030.drawIndirect(buffer503, 0);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder5020.drawIndirect(buffer5029, 0);
    device30.queue.submit([]);
    render_pass_encoder5010.draw(3);
    render_pass_encoder5031.setIndexBuffer(buffer5028, "uint16");
    render_pass_encoder5040.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder5020.drawIndirect(buffer5028, 0);
    render_pass_encoder1030.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder5021.drawIndirect(buffer5028, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder5011.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5000.drawIndexedIndirect(buffer5028, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder5011.end();
    render_pass_encoder5000.end();
    render_pass_encoder5010.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder5010.drawIndexedIndirect(buffer5024, 0);
    render_pass_encoder5011.drawIndirect(buffer5028, 0);
}