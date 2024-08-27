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
    
    const array0 = new Float32Array([0.5, -0.25, 0.5, 0.0, -1.0, 0.25, 0.25, 0.25, 0.5, 0.75, -0.75, -0.25, -0.25, 0.25, 0.0, 0.5, 1.0, -0.75, 0.0, 0.75, 0.25, -0.5, 0.75, -0.25, 0.75, 0.75, -0.25, -0.25, -0.5, -1.0, -1.0, -1.0, 0.25, 0.5, -0.25, 0.25, -0.5, 0.5, -1.0, 0.0, -0.75, 0.25, 1.0, 1.0, 1.0, 1.0, -0.75, 0.0, 0.5, 1.0, 1.0, -1.0, -0.5, 0.0, 1.0, 0.0, 0.0, -0.25, -0.5, -1.0, -0.25, 0.0, -0.75, -0.75, -0.5, -0.25, -0.5, 0.25, -1.0, -1.0, 0.5, -0.75, -1.0, -1.0, 0.75, -0.5, 1.0, -0.75, -0.5, 0.5, -0.75, -1.0, 1.0, 0.0, 0.0, 0.5, 0.75, -1.0, 0.0, 0.75, -0.5, 0.75, -1.0, 0.0, 0.5, -1.0, -0.25, 0.0, -1.0, -1.0, ]);
    
    const array1 = new Float32Array([0.75, -0.5, 1.0, -1.0, 0.75, 0.25, 0.75, 0.25, -0.5, 0.25, 0.25, 0.75, -0.5, -0.75, 0.75, 1.0, 0.0, 0.0, 1.0, 1.0, -1.0, 0.5, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, 0.75, -1.0, 0.75, 0.25, 0.5, 0.0, 1.0, -1.0, -0.5, -0.25, 0.25, -0.5, 0.75, 0.5, -1.0, -0.75, 0.75, 0.75, -0.75, 0.0, 0.5, 1.0, -0.5, -0.5, -0.75, -0.75, 1.0, 0.75, 0.75, 1.0, 0.0, 0.25, -1.0, 0.0, 0.75, 1.0, 0.5, -0.75, 0.25, -1.0, -1.0, 0.5, -0.75, -0.25, -0.75, -0.25, -0.5, -0.75, -0.75, 1.0, -0.75, -0.25, 0.0, -0.25, 0.0, -0.5, -1.0, 1.0, 1.0, 0.5, 0.5, -1.0, -0.25, -0.25, 0.5, -0.75, 0.75, 0.5, -0.5, 0.5, -0.75, -0.75, ]);
    
    
    
    const array2 = new Float32Array([0.75, 0.0, 1.0, -0.5, 1.0, -1.0, -0.75, 1.0, 0.75, 0.25, 0.5, 1.0, 0.5, 0.75, -1.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 0.0, 0.25, -0.5, 0.5, 0.5, 0.5, -0.75, -0.75, 0.75, -0.5, -1.0, -0.25, 0.75, 0.5, -1.0, -1.0, 0.0, 0.25, 0.0, 0.75, -0.5, 0.0, 0.5, 0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 0.75, 0.0, 0.75, 0.25, -0.25, -1.0, 0.0, -1.0, -0.25, 0.0, 0.25, 1.0, 0.25, 0.75, -0.75, -0.25, 0.25, 1.0, 1.0, -1.0, 0.75, 1.0, -0.75, 0.5, -0.25, -0.25, 0.25, -0.5, -1.0, 0.0, 0.25, -0.25, 0.25, 1.0, -0.5, 0.0, 1.0, -1.0, -1.0, -0.75, 0.5, 0.75, -1.0, 0.5, 0.0, 0.75, 0.75, 0.0, 0.25, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array3 = new Float32Array([0.25, -0.25, -0.5, 0.0, -1.0, 0.75, -0.5, -0.25, 0.5, 0.75, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, -0.5, 0.25, 0.5, -1.0, -0.5, 0.25, -1.0, 0.5, 0.0, 0.25, -1.0, 1.0, -1.0, 0.25, 0.75, -0.25, 1.0, 0.0, 0.0, 0.0, 0.75, 0.25, -1.0, -0.25, 0.75, -0.5, 1.0, 0.0, 0.25, 1.0, 0.0, 1.0, 0.5, 0.5, -0.5, -1.0, 1.0, 0.25, -0.5, 1.0, -0.25, 0.75, 0.5, -0.5, 0.5, -1.0, 0.25, -0.75, -0.25, 0.5, -0.5, 0.25, 0.0, -0.5, -0.5, -0.25, -1.0, 0.75, 1.0, -0.5, -1.0, -0.5, 0.0, -0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 1.0, 1.0, -0.25, 1.0, 0.75, 0.0, -0.25, -0.75, -0.5, 0.0, -1.0, 0.75, -1.0, -1.0, 0.75, ]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([0.25, 0.0, 0.75, -0.5, 1.0, 0.5, -0.5, 0.5, -0.5, 1.0, 0.5, 0.25, -0.75, -0.75, -0.75, 0.25, -0.25, 1.0, 1.0, 0.75, -0.75, 0.75, 0.75, -0.25, -1.0, -0.75, 0.75, -0.25, -0.5, 1.0, 0.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.75, 1.0, -0.25, 1.0, 0.25, 0.25, 1.0, -1.0, 0.25, 0.0, 0.25, 0.5, 0.0, 0.0, 0.0, -1.0, 1.0, -0.25, 0.25, 0.25, 0.25, 1.0, 0.5, -1.0, 1.0, 0.75, 1.0, 0.75, -0.5, -0.5, 1.0, -0.5, -1.0, -0.75, 0.0, -0.25, 0.5, 0.5, 0.25, 0.5, -0.25, 0.5, 0.0, 0.5, -0.75, -0.5, 1.0, -1.0, 0.5, 0.0, 0.5, -1.0, 0.5, -1.0, -0.75, -0.25, 0.0, 0.0, -0.5, -0.5, -0.75, -0.25, -0.5, -0.5, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
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
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array5 = new Float32Array([0.0, -0.5, -1.0, 0.0, 1.0, 1.0, 0.75, -0.5, 1.0, -0.75, -0.25, -0.25, 1.0, 1.0, 0.5, 0.5, -0.75, -0.5, 1.0, 0.75, -0.5, 0.25, -0.5, -0.25, 0.5, 1.0, -0.25, -1.0, -0.75, -0.75, 0.75, 0.0, -0.25, -1.0, -0.5, -0.5, 0.25, -0.75, -0.5, -0.25, 0.75, 0.0, -0.75, 0.25, 0.75, -0.5, -0.25, 0.0, 0.75, -0.5, -0.5, -1.0, -0.75, -0.75, 0.75, 0.0, 1.0, 0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, 0.0, -0.75, -0.25, 0.25, 0.0, -1.0, 1.0, 0.5, -1.0, 0.25, -0.25, 0.0, 0.75, -0.25, 0.25, -0.5, -0.5, 0.5, 0.0, -0.5, 1.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.5, 0.25, 0.25, 0.5, 0.75, 0.0, 0.0, 1.0, 0.0, 0.75, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder101.insertDebugMarker("mymarker");
    
    device00.queue.submit([]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device10.queue.submit([]);
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture001.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder101.insertDebugMarker("mymarker");
    query000.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture000.destroy();
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    query000.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
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
    query100.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
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
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.setPipeline(compute_pipeline104);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    render_pass_encoder1020.executeBundles([])
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer000.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("validation");
    query000.destroy()
    compute_pass_encoder1020.popDebugGroup()
    texture102.destroy();
    
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.setPipeline(compute_pipeline107);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer103.destroy()
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group101);
    buffer200.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    query301.destroy()
    
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1020.executeBundles([])
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer106.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0001.executeBundles([])
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("internal");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0000.executeBundles([])
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer103, ]);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    render_pass_encoder0001.executeBundles([])
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0010.setPipeline(render_pipeline000);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    device40.destroy();
    const command_buffer300 = command_encoder300.finish();
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0001.setStencilReference(1);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
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
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder1000.setPipeline(render_pipeline101);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    query301.destroy()
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    
    buffer106.destroy()
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    buffer001.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    buffer101.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder0001.setStencilReference(1);
    query001.destroy()
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.popDebugGroup();
    {
        await buffer1012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1012.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query301.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    buffer002.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1014, 0);
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder0011.setPipeline(render_pipeline000);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder002.setPipeline(render_pipeline000);
    compute_pass_encoder1001.insertDebugMarker("marker")
    buffer107.destroy()
    buffer105.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeBuffer(buffer1010, 0, array0, 0, array0.length);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group001);
    render_bundle_encoder001.setPipeline(render_pipeline001);
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
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    device40.queue.submit([]);
    buffer1014.destroy()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query301.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1011, 0, array5, 0, array5.length);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group105);
    buffer109.destroy()
    
    render_pass_encoder0011.setVertexBuffer(0, buffer000);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder300.popDebugGroup();
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder102.setPipeline(render_pipeline104);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    query100.destroy()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer1010.destroy()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    buffer1012.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer1011.destroy()
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.draw(3);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    render_pass_encoder1020.popDebugGroup();
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    texture300.destroy();
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    device30.queue.submit([command_buffer300, ]);
    query300.destroy()
    compute_pass_encoder1000.popDebugGroup()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    buffer104.destroy()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query102.destroy()
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    render_pass_encoder0020.setPipeline(render_pipeline002);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    render_pass_encoder0011.popDebugGroup();
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const array6 = new Float32Array([-0.5, -0.25, -0.5, 0.0, 0.5, 1.0, -0.75, 0.0, 0.5, 0.25, 0.25, 0.5, -0.5, -0.75, 0.75, 0.0, -0.5, -0.75, -1.0, -0.25, 1.0, -0.5, -1.0, 0.0, 0.0, 0.5, 0.5, 0.0, -0.25, 0.75, 0.75, -1.0, -1.0, -1.0, -0.75, -1.0, 0.0, 0.25, 0.75, 0.5, 0.5, 1.0, -0.25, 0.25, -0.75, -0.25, 0.25, -0.5, -1.0, 0.75, 0.0, 0.75, 0.0, -1.0, 0.0, 0.5, -0.75, 0.0, 0.25, -1.0, 0.25, 0.25, -0.75, 0.75, 0.75, 0.0, 0.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, -0.25, 0.75, 0.25, 0.0, 0.0, 0.25, -0.75, -0.5, -0.75, 0.25, 0.75, 0.0, -0.5, -0.75, -0.5, -0.25, -0.5, 0.0, -0.75, -0.75, -0.5, -1.0, ]);
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0001.setPipeline(render_pipeline003);
    
    buffer500.destroy()
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
    const array7 = new Float32Array([-0.75, 0.0, 0.5, -0.75, -0.75, -1.0, 0.25, 0.75, -1.0, -0.5, -0.75, -1.0, -1.0, 1.0, -0.5, 1.0, 1.0, 0.25, -0.75, 1.0, 0.5, -1.0, -0.5, 1.0, 0.25, 0.75, -0.25, 0.0, -1.0, 0.25, -0.25, -0.5, 0.0, -0.5, 1.0, -0.75, -0.25, -0.5, 0.0, 0.5, -0.25, 0.5, 0.0, 0.0, -1.0, 1.0, 1.0, 0.0, 0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 0.5, -0.5, 0.0, 0.0, -1.0, -1.0, 0.75, -0.5, -1.0, -0.25, -1.0, -0.25, 0.75, 0.75, -0.75, 0.5, 0.75, 0.5, 0.5, 1.0, -0.75, 0.0, -1.0, -0.75, 1.0, 0.0, 0.5, -0.25, -0.5, 0.5, 0.25, 0.5, 0.25, 0.0, 0.0, -0.25, 0.75, 0.5, -0.5, -1.0, 1.0, 0.25, ]);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    texture001.destroy();
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer1017,
        0
    )
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setPipeline(render_pipeline002);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    buffer1013.destroy()
    
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query300.destroy()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder1020.setVertexBuffer(0, buffer109);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder0020.popDebugGroup();
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    const command_buffer003 = command_encoder003.finish();
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder1001.end();
    render_pass_encoder0000.setPipeline(render_pipeline001);
    compute_pass_encoder1020.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0011.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    render_pass_encoder0010.setVertexBuffer(0, buffer004);
    render_pass_encoder1020.end();
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
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
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0030.setVertexBuffer(0, buffer008);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0020.setVertexBuffer(0, buffer0011);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.draw(3);
    const command_buffer102 = command_encoder102.finish();
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group107);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    render_pass_encoder0000.setVertexBuffer(0, buffer007);
    render_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer0016);
    render_pass_encoder0030.end();
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.draw(3);
    render_pass_encoder1000.end();
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
    compute_pass_encoder1000.end();
    render_pass_encoder0001.end();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0030.end();
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0011.draw(3);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1001.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0011.drawIndirect(buffer003, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0011.end();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const command_buffer001 = command_encoder001.finish();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0020.end();
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    compute_pass_encoder1020.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.end();
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group108);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer002, ]);
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
    render_pass_encoder0010.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0011.drawIndirect(buffer009, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0001.end();
    render_pass_encoder0011.end();
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder0011.drawIndirect(buffer006, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.end();
    device30.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    compute_pass_encoder1001.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device40.queue.submit([]);
    compute_pass_encoder1001.end();
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0011.end();
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
    render_pass_encoder0010.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    render_pass_encoder0011.draw(3);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
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
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1013);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1042, 0);
    render_pass_encoder0001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0011.end();
    compute_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0030.end();
    device00.queue.submit([]);
    render_pass_encoder0001.drawIndexed(3);
    compute_pass_encoder1001.end();
    render_pass_encoder0001.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder0030.draw(3);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndirect(buffer003, 0);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder0001.end();
    render_pass_encoder1000.end();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.end();
    render_pass_encoder0030.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    device00.queue.submit([command_buffer001, ]);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0020.draw(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder0011.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder0030.end();
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
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
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer002, ]);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    compute_pass_encoder1020.popDebugGroup()
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
    render_pass_encoder0000.draw(3);
    compute_pass_encoder1010.end();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    device50.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.end();
    render_pass_encoder0011.draw(3);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0001.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer009, 0);
    device20.queue.submit([]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0010.draw(3);
    device50.queue.submit([]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device00.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1020.end();
    compute_pass_encoder1001.end();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    device10.queue.submit([]);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1020.end();
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1022);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.end();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    device00.queue.submit([command_buffer000, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1063, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1063, 0);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    compute_pass_encoder1001.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1024);
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder0010.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0001.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1068, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.popDebugGroup();
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
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    compute_pass_encoder1010.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    device50.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1072, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1072, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0011.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1063, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0013, 0);
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
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1026);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.end();
    device10.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.end();
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    device00.queue.submit([command_buffer002, ]);
    device50.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0011.end();
    compute_pass_encoder1020.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder0011.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndexed(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1075, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder1000.end();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1027);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1072, 0);
    device30.queue.submit([]);
    render_pass_encoder0001.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder0001.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
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
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer005, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
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
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1029);
    render_pass_encoder0001.end();
    compute_pass_encoder1001.end();
    render_pass_encoder0010.end();
    render_pass_encoder0001.popDebugGroup();
    device50.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1070, 0);
    device50.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.end();
    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1084,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1030);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder1001.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1000.drawIndirect(buffer1074, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0010.end();
    render_pass_encoder1000.popDebugGroup();
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
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1031);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    device30.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1075, 0);
    device50.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
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
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1032);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder0011.end();
    render_pass_encoder1000.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1000.drawIndirect(buffer102, 0);
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
    render_pass_encoder1020.end();
    render_pass_encoder0030.end();
    render_pass_encoder0011.setIndexBuffer(buffer0011, "uint16");
    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1091,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1033);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1092, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1092, 0);
    render_pass_encoder1020.drawIndirect(buffer1089, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0001.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1093, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1093, 0);
    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1095,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1034);
    render_pass_encoder1020.drawIndirect(buffer1092, 0);
    render_pass_encoder1020.drawIndirect(buffer1058, 0);
    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
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
                    buffer: buffer1096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1097,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1035);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.draw(3);
    device00.queue.submit([command_buffer002, ]);
    device50.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    compute_pass_encoder1001.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.drawIndirect(buffer1063, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1093, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0011.draw(3);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1000.end();
    device50.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0000.draw(3);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1068, 0);
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
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
                    buffer: buffer1098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1099,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1036);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
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
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1037);
    render_pass_encoder1020.drawIndirect(buffer1071, 0);
    render_pass_encoder1000.drawIndirect(buffer1072, 0);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.draw(3);
    device00.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.draw(3);
    compute_pass_encoder1020.end();
    compute_pass_encoder1001.end();
    render_pass_encoder0020.end();
    render_pass_encoder0011.drawIndirect(buffer0013, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder1000.end();
    compute_pass_encoder1010.end();
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer009, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
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
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1038);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1066, "uint16");
    device50.queue.submit([]);
    render_pass_encoder0001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder0011.drawIndirect(buffer0016, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10104, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10104, 0);
    render_pass_encoder0030.drawIndirect(buffer0016, 0);
    compute_pass_encoder1001.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder1000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10105, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10105, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.end();
    render_pass_encoder0001.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    device10.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.drawIndirect(buffer007, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1072, 0);
    device10.queue.submit([command_buffer101, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10106, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10106, 0);
    render_pass_encoder0000.drawIndexed(3);
    device50.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder0010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder1001.end();
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10108,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1039);
    render_pass_encoder0001.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1098, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0000.end();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    device10.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0010.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10109, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10109, 0);
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder1000.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10111,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1040);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([]);
    render_pass_encoder1000.end();
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1041);
    device30.queue.submit([]);
    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10115,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1042);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    device00.queue.submit([]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10116, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10116, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10117, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10117, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1010.end();
    device00.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1020.drawIndirect(buffer10117, 0);
    render_pass_encoder1000.drawIndirect(buffer1093, 0);
    compute_pass_encoder1000.popDebugGroup()
    device30.queue.submit([]);
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
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1043);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    device30.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer002, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
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
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1044);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10123,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1045);
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
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1046);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndirect(buffer10116, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    device50.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.end();
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder0000.popDebugGroup();
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
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1047);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10129,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1048);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10130, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10130, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0030.end();
    device50.queue.submit([]);
    device30.queue.submit([]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10131, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10131, 0);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder0011.end();
}