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
    
    
    
    
    
    
    
    
    
    
    const array0 = new Float32Array([0.75, -1.0, -0.5, -0.5, 0.75, -0.25, -1.0, 1.0, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, -0.75, -0.75, -0.5, 1.0, 0.75, -1.0, 0.5, -0.5, -0.75, -0.75, -0.25, 0.75, 0.5, -0.5, 0.75, -0.25, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, -0.75, 0.5, -0.25, -0.25, 1.0, -0.5, -0.5, 1.0, 0.5, -0.75, 1.0, -1.0, -1.0, 0.75, 0.25, -0.75, -1.0, -1.0, 0.75, 0.25, 0.0, 0.25, -1.0, -0.75, -0.5, 0.75, -0.75, 0.75, 1.0, -0.5, -0.5, 0.25, 1.0, -1.0, 0.5, -0.25, -0.5, 0.75, -0.25, 1.0, 0.25, -0.25, 0.5, -0.75, -0.25, -0.25, -0.75, 0.5, 0.0, 0.25, -0.25, 0.0, 0.5, -0.5, 0.5, 0.5, 0.25, 0.25, 0.5, -1.0, -0.5, 0.0, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-1.0, 0.0, 0.75, 1.0, -0.5, -0.75, 0.25, 0.5, -0.75, -0.5, 1.0, -0.5, -0.25, 0.75, 0.0, 0.25, -0.5, -1.0, 0.0, 0.25, -0.75, 0.25, 1.0, 0.75, 0.5, -0.5, 0.75, 0.25, 0.75, 0.0, -0.25, 0.75, -0.25, 0.5, 1.0, 0.25, -0.75, 1.0, 1.0, -0.25, -1.0, 0.0, -0.5, 0.0, -0.75, -1.0, -0.25, -1.0, 0.25, 0.0, 0.25, -1.0, -0.75, -0.75, -0.75, -1.0, -0.25, 0.75, -0.25, 0.0, 0.25, 0.75, 0.0, -0.75, 0.0, -1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.0, 0.25, -0.5, 0.5, 1.0, -0.5, -0.75, -1.0, 0.75, -0.75, 1.0, 0.75, -0.5, 0.0, -0.75, -0.5, 0.5, -0.5, 1.0, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 0.0, 0.25, 0.0, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([0.25, 1.0, 0.0, -1.0, 1.0, -0.5, 0.5, 0.0, -0.5, 0.75, 0.25, -0.75, 0.5, 0.25, 0.25, 0.75, -0.75, 0.75, 0.5, 0.75, -0.25, 0.75, -0.25, -1.0, -0.5, 0.25, 0.5, 0.25, -0.75, 0.5, -1.0, 0.25, 0.5, -0.5, 0.5, 0.75, -0.5, 0.0, -1.0, -0.25, -0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 0.5, -0.75, 0.25, 1.0, -1.0, 0.25, 0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 0.75, 0.0, -0.75, 0.5, -0.5, -0.5, 0.5, -0.5, -0.5, 1.0, 1.0, -0.25, 0.25, 0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 1.0, 0.75, 0.25, 1.0, 1.0, 0.75, -0.5, 0.75, 0.75, -0.75, 0.25, 0.5, -0.5, -0.5, -0.5, 1.0, 0.5, -0.75, -0.5, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    texture000.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array3 = new Float32Array([1.0, 0.5, -0.75, 1.0, -0.25, 0.5, -1.0, 0.25, -0.75, -0.25, -0.5, -0.75, -0.75, -0.5, -0.25, -0.25, 0.75, -0.5, 0.25, 0.0, 0.0, 1.0, -1.0, 0.75, -1.0, 0.0, 0.75, -0.25, 0.0, -1.0, -1.0, -0.5, -1.0, -0.5, -0.5, 0.0, 0.0, 0.0, 0.5, 0.5, 1.0, 0.5, 0.75, -0.5, 0.5, 1.0, 0.25, 0.5, 0.75, -0.5, -0.5, 0.0, -0.25, 0.75, 0.5, -0.5, -0.75, 0.0, 0.75, 0.25, -0.75, -1.0, 1.0, 0.75, 1.0, 0.75, -0.5, 1.0, 0.5, -0.25, -0.25, -0.75, -1.0, -1.0, -1.0, 0.0, 1.0, -0.25, 0.5, -0.25, -1.0, -0.5, -0.25, -1.0, -0.25, 0.75, 0.5, -0.25, -0.25, 0.5, -1.0, -0.75, 1.0, 0.25, -0.5, -0.75, -0.25, -0.75, -0.25, 0.75, ]);
    
    buffer000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture003.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const array4 = new Float32Array([0.0, 0.25, -0.5, -0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 0.5, -1.0, 0.25, -0.5, 0.25, -0.25, 1.0, -0.75, 0.5, 0.0, 0.5, 1.0, 0.5, -1.0, -0.5, 1.0, 1.0, -0.75, -1.0, -0.5, -1.0, 0.75, -0.25, 0.0, 0.75, -1.0, -0.5, 1.0, 0.75, -0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 0.5, -1.0, 1.0, -0.25, -0.75, 0.25, -0.25, -0.5, 0.75, 0.5, -1.0, 1.0, -0.75, 0.0, 0.5, 0.0, -0.5, -1.0, 0.75, 0.75, 0.0, 0.25, 0.75, 0.5, -0.5, -0.25, 0.0, -0.25, 0.0, -1.0, 0.5, 0.25, 0.5, -0.5, -0.25, -0.25, 0.75, 1.0, -0.75, 0.0, -0.75, -1.0, -0.25, -0.75, -0.5, -1.0, 0.5, -0.5, 0.75, 0.75, -0.5, -0.75, 1.0, 0.25, -0.5, 1.0, ]);
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.destroy();
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
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
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    buffer100.destroy()
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    device10.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer200.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
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
    
    device10.pushErrorScope("validation");
    device20.destroy();
    
    
    texture004.destroy();
    const array5 = new Float32Array([-0.25, -0.25, -1.0, -1.0, -1.0, -0.75, -0.75, -1.0, 0.0, 0.0, -0.5, -0.25, 0.0, -0.75, 0.0, 0.25, -0.75, -0.5, -1.0, 0.25, -1.0, 0.75, 0.5, -0.25, 0.5, 0.0, -0.25, 0.25, 0.75, 0.5, 0.25, -1.0, -0.75, -0.75, 0.0, 1.0, 1.0, 0.5, 0.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.75, -1.0, -1.0, 1.0, -0.25, -0.75, 0.25, 0.75, -0.5, -0.75, 1.0, 0.25, 1.0, -1.0, -1.0, 0.5, 0.25, -1.0, -0.75, -1.0, 1.0, 0.25, 1.0, 0.75, -0.25, -0.25, -0.25, 0.0, -1.0, 0.75, 1.0, 1.0, 0.75, -1.0, 0.5, 0.0, -1.0, -0.25, 0.75, 0.0, -0.75, -1.0, -1.0, -1.0, -1.0, 0.25, 0.75, 0.0, 0.25, -0.5, -0.5, 0.0, 0.75, 0.75, -0.25, 1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array6 = new Float32Array([0.5, -0.5, 0.5, -0.25, 0.25, 0.0, 0.0, 0.5, 1.0, -0.75, 0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 1.0, -0.25, -0.25, -1.0, -0.75, 0.25, 0.0, -1.0, -1.0, 0.25, 0.5, -0.25, 0.5, -0.25, 0.75, -0.75, 0.25, 0.25, 0.5, -1.0, 0.5, -0.5, -1.0, 0.25, 1.0, -0.75, 0.5, -1.0, 0.0, 0.75, -0.75, -0.5, 0.5, 0.5, 0.25, 0.0, 0.25, -0.5, -1.0, 0.5, -0.25, -1.0, -0.75, 0.25, 0.5, 1.0, -1.0, 0.75, 0.75, 0.25, -0.5, 0.5, 0.75, 1.0, -0.75, -0.5, -0.5, -1.0, -0.5, 1.0, 0.5, 0.25, 0.5, 1.0, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 0.75, 0.25, -0.75, 0.75, 0.5, 1.0, 1.0, 0.5, -0.75, 0.75, 0.5, -0.75, ]);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder1000.popDebugGroup()
    
    const query400 = device40.createQuerySet({
        label: "query400",
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
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    query400.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    texture401.destroy();
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    texture400.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array7 = new Float32Array([1.0, -0.25, 0.5, 0.75, 0.0, -1.0, -0.25, -1.0, 0.5, -1.0, 0.5, -0.25, 0.25, -0.25, -0.5, 0.25, 0.0, 0.25, -0.25, -0.75, -0.5, 0.75, 0.0, -0.75, 0.25, 0.25, 0.5, -1.0, -0.75, -0.5, 0.0, 0.25, -1.0, -0.5, 0.0, -0.5, 0.75, -1.0, -0.5, 0.75, 1.0, -0.5, -0.75, 0.25, -0.25, -0.25, -0.25, 0.0, -0.25, 0.0, -1.0, -0.25, 1.0, 0.75, 0.5, -0.75, -0.25, -0.75, 0.25, 0.75, -1.0, 0.5, 1.0, 0.5, -1.0, -0.25, -0.25, 1.0, 1.0, 0.75, 0.25, 0.25, -1.0, -0.5, -0.75, -0.25, 0.75, -0.5, -0.75, -0.5, 0.75, -0.5, 0.25, 0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -0.5, -0.25, -0.25, -1.0, 0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, ]);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const array8 = new Float32Array([-0.5, 0.0, 0.75, -0.5, 0.75, -0.5, -1.0, 0.5, -0.25, 0.75, 1.0, 0.25, 0.5, 0.5, -1.0, 0.25, -1.0, 0.5, -0.75, -0.25, -0.5, 0.5, -1.0, 0.75, 0.25, -0.75, 0.5, 1.0, -0.75, 0.25, 0.5, 0.5, 0.5, -1.0, 0.75, 0.5, 0.0, 0.0, -0.25, 1.0, 0.25, 0.75, 1.0, -0.75, -0.5, -0.75, 0.0, 1.0, -0.75, -0.75, 0.25, -1.0, -0.5, 0.0, 0.0, -0.25, 0.5, 0.0, 0.75, -0.75, 0.75, -0.25, -0.5, 0.25, 0.25, -0.5, 0.0, 0.5, 1.0, 0.0, 0.75, 0.0, 0.5, 0.5, -1.0, -0.25, 0.0, 1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 0.5, 0.0, -0.75, 0.0, -1.0, -0.5, 0.25, 0.0, 0.5, 0.5, -0.5, 0.5, 0.5, -0.5, 0.0, ]);
    
    device40.pushErrorScope("validation");
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder400.insertDebugMarker("mymarker");
    const array9 = new Float32Array([-0.75, 1.0, -0.5, 0.0, 1.0, 1.0, 0.75, 0.25, 0.25, 0.25, 0.25, -0.75, -0.5, 0.75, -0.5, -1.0, 0.5, 0.25, -0.5, 1.0, 0.5, 0.5, 0.25, 0.0, -0.5, 1.0, 1.0, -0.5, 0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 0.5, -0.25, -0.5, 1.0, 0.0, -1.0, 0.0, -0.75, -0.5, 0.5, 0.0, 1.0, -0.5, -0.75, -0.75, -0.5, 0.0, -0.25, -0.5, 0.5, 0.5, -0.5, 0.75, -0.75, -1.0, -0.75, -1.0, -0.5, -1.0, -0.25, -0.75, 0.5, -0.75, 0.0, 0.5, 1.0, 0.5, -0.75, 0.25, 0.75, 0.5, 0.75, 1.0, -0.75, 0.5, 1.0, 0.5, -0.25, -0.5, 0.0, 0.75, 0.5, -1.0, 0.75, 0.0, -0.75, -0.25, -0.75, 0.0, -0.75, -1.0, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    device40.destroy();
    render_bundle_encoder000.popDebugGroup();
    
    
    
    
    const array10 = new Float32Array([0.0, -0.5, 1.0, -0.5, -0.75, 0.5, 0.5, -0.5, -0.75, 1.0, 0.75, 0.0, 0.0, 0.5, 0.5, 0.5, -1.0, 0.75, 0.5, 1.0, -0.25, -0.25, 0.75, -0.75, -0.5, -1.0, -0.25, 1.0, 1.0, 0.25, 1.0, 0.0, 1.0, -1.0, -0.75, 0.75, 0.75, 0.25, 0.0, 0.25, 0.25, 0.0, -0.25, 0.75, 0.75, -1.0, 1.0, -0.5, 1.0, 0.75, -0.5, 0.75, -0.5, 0.75, -0.25, -1.0, -0.25, -0.75, 0.75, 0.0, 0.5, -0.5, 0.0, 0.75, -0.75, -0.25, -1.0, -1.0, 0.5, 0.25, 0.75, -1.0, 1.0, 0.75, -1.0, -0.25, -0.5, 1.0, 0.25, 0.25, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, 0.5, 0.25, 0.5, 1.0, -0.75, -1.0, 1.0, 0.75, 0.25, 0.5, -0.75, 0.25, 0.0, -1.0, ]);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array11 = new Float32Array([0.5, -0.75, -0.5, -0.25, 0.5, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, -0.5, 0.5, -1.0, 1.0, -0.75, 0.5, 0.5, 1.0, -0.25, -0.25, 0.25, 0.25, 0.5, 0.0, 0.0, 0.5, 0.5, -0.5, -0.25, 0.5, 0.5, 0.75, -1.0, 0.25, 0.5, 0.75, -0.75, 0.5, -0.75, -1.0, -0.75, -1.0, 1.0, 0.5, -0.75, 0.75, -1.0, 0.75, 0.5, 0.5, 0.0, -1.0, -0.5, 0.0, -0.75, 0.25, -0.75, 0.0, 0.25, 0.5, 0.25, 0.5, -0.25, -0.75, 0.5, 1.0, -0.75, 0.0, 1.0, 0.5, 0.0, -0.75, -0.5, 1.0, -0.25, -1.0, -0.75, 0.25, -0.75, 0.75, -0.5, 1.0, 0.0, 0.5, 0.5, 0.0, 0.75, -1.0, 0.75, 0.0, -1.0, 0.5, 0.0, 1.0, -0.25, -0.25, 0.25, 0.0, -0.25, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture500.destroy();
    
    
    query100.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    query502.destroy()
    device50.pushErrorScope("validation");
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    command_encoder100.popDebugGroup()
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const array12 = new Float32Array([-0.5, -0.25, 0.5, -0.75, -0.5, 0.5, 1.0, 0.0, 0.5, -1.0, -0.25, -0.5, 0.25, 0.25, 0.0, 0.75, -0.25, 0.75, -1.0, -0.5, -0.25, 1.0, -0.75, 1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 0.0, 0.0, 0.5, 0.25, 0.0, 0.25, 0.0, 0.5, 0.75, -0.25, 0.0, 0.75, 0.5, -0.5, -1.0, -1.0, -0.75, 1.0, 0.75, 0.0, 0.5, 0.25, -0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 0.0, -1.0, 0.25, -0.5, 0.0, -1.0, 0.0, -0.5, 0.25, 0.25, -1.0, 0.25, 1.0, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 1.0, -0.75, -0.25, -0.5, -0.5, 0.5, 1.0, -0.25, 0.0, 0.0, 0.5, 0.75, 1.0, -0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 1.0, -0.25, 0.0, -1.0, ]);
    const command_buffer501 = command_encoder501.finish();
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    buffer202.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    device50.queue.submit([command_buffer501, ]);
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    query501.destroy()
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout504]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array13 = new Float32Array([-0.75, -0.75, 0.25, -0.25, 0.0, 0.5, 0.5, -1.0, 0.0, -0.75, 0.75, -0.75, 1.0, 0.75, 0.25, 0.0, -0.75, -0.25, 0.5, -0.75, -0.5, 0.0, -1.0, 0.25, -0.5, -0.75, 1.0, -0.5, -1.0, 0.75, 0.5, -0.75, 1.0, -0.75, -0.5, 0.75, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, 1.0, -0.5, 0.0, -1.0, 0.75, -1.0, 0.25, 1.0, 0.5, 1.0, 0.75, -1.0, 0.5, 0.0, -0.25, 0.5, 0.0, 0.5, 0.0, -1.0, 0.75, -0.5, 0.5, -1.0, 0.5, 0.0, -0.5, 0.0, 0.75, 0.5, 0.25, -0.5, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, 0.75, 1.0, 0.75, -0.75, -0.25, -0.75, -0.75, 0.75, 0.75, 0.0, -0.5, -0.75, 0.75, 1.0, 0.25, -0.75, 0.5, 1.0, 1.0, -0.25, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    query502.destroy()
    
    device30.pushErrorScope("internal");
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    query502.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array13, 0, array13.length);
    command_encoder500.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    
    
    command_encoder500.insertDebugMarker("mymarker");
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
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    device50.queue.writeBuffer(buffer501, 0, array13, 0, array13.length);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    query504.destroy()
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    query504.destroy()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([-0.75, -0.75, -0.75, -0.5, 1.0, 0.75, 0.25, 0.5, 0.25, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, -1.0, 0.5, 0.75, -0.25, 0.0, 0.0, 0.0, -1.0, 1.0, 1.0, 0.75, 0.0, 0.0, 0.5, 0.5, -1.0, 0.75, -0.75, 1.0, -0.25, -0.5, -0.5, 0.25, 0.25, 0.25, 1.0, -1.0, -0.5, -0.75, 1.0, 0.0, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, 1.0, 0.75, -1.0, -0.75, -0.5, 1.0, -0.5, -0.25, -0.5, 0.25, 0.5, -0.25, 1.0, 0.5, -0.75, 1.0, 0.75, -1.0, 0.0, 0.0, -0.75, 0.0, -0.25, -0.75, 1.0, -0.5, -0.75, 0.75, 0.0, -0.5, -0.75, -0.5, 1.0, -0.75, 1.0, -0.5, -0.75, -0.5, 0.0, -0.5, 0.5, -1.0, 1.0, -1.0, -0.25, -0.75, 0.5, -1.0, ]);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    
    
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    buffer501.destroy()
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
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
    
    query505.destroy()
    
    const array15 = new Float32Array([-1.0, -0.5, -1.0, -0.5, 0.5, -0.25, 0.75, -0.5, -0.75, 0.5, -0.25, 0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 0.5, 0.75, 0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.75, 0.0, -1.0, 0.0, -1.0, 0.0, -1.0, 0.5, -0.75, -0.25, 0.0, 1.0, 0.0, -0.75, 0.25, -1.0, -1.0, -0.75, -0.5, 1.0, 0.75, 0.75, 0.25, 0.0, -1.0, 1.0, 0.5, 1.0, 0.75, -0.75, -0.75, 0.0, -0.75, 0.75, 0.25, -0.75, 0.75, 0.75, 0.5, 0.75, -1.0, 0.0, -0.25, 0.0, 1.0, -0.75, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, -0.75, -1.0, 0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 0.0, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, 0.5, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, -0.75, ]);
    query505.destroy()
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
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
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    render_bundle_encoder500.popDebugGroup();
    
    
    device50.pushErrorScope("internal");
    query505.destroy()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout504]
    });
    
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query501.destroy()
    
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    query505.destroy()
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
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
        occlusionQuerySet: query501
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    device60.destroy();
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout506]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout505]
    });
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    render_pass_encoder5000.insertDebugMarker("marker");
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query505
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device70.destroy();
    render_pass_encoder5000.popDebugGroup();
    query504.destroy()
    
    device50.queue.writeBuffer(buffer500, 0, array14, 0, array14.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query503.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder5000.endOcclusionQuery()
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5001.setStencilReference(1);
    const bind_group_layout507 = device50.createBindGroupLayout({ 
        label: "bind_group_layout507",
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
    device60.pushErrorScope("internal");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder5001.setPipeline(render_pipeline500);
    
    
    render_pass_encoder5000.setStencilReference(1);
    device50.queue.writeBuffer(buffer502, 0, array12, 0, array12.length);
    
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    query505.destroy()
    render_pass_encoder5000.setStencilReference(1);
    device10.queue.submit([]);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
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
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5020.setPipeline(render_pipeline500);
    query504.destroy()
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
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    query505.destroy()
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout505]
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout503]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
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
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
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
        occlusionQuerySet: query504
    });
    {
        await buffer504.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer504.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer504.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder5000.setStencilReference(1);
    
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer504, 0, array12, 0, array12.length);
    render_pass_encoder5020.popDebugGroup();
    const pipeline_layout5015 = device50.createPipelineLayout({ 
        label: "pipeline_layout5015",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder5000.beginOcclusionQuery(0)
    render_pass_encoder5030.insertDebugMarker("marker");
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5020.setStencilReference(1);
    device50.queue.writeBuffer(buffer503, 0, array7, 0, array7.length);
    device50.destroy();
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder101.popDebugGroup()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    device80.queue.submit([]);
}