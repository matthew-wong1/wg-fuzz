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
    
    
    
    const array0 = new Float32Array([1.0, -0.5, -0.75, 1.0, 0.5, -0.75, 0.5, -1.0, -0.5, -0.25, -1.0, -0.75, -0.25, 0.5, -0.75, 0.0, -0.5, 0.5, -0.25, 0.5, -1.0, 1.0, 1.0, 0.5, 0.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.5, -0.5, -1.0, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, 0.25, 0.75, 0.25, -0.5, 0.5, -1.0, 0.5, 0.25, 0.25, 1.0, -0.75, -0.5, 0.75, 0.75, -1.0, -1.0, 0.0, 0.25, -0.5, 0.75, 1.0, -0.25, 0.0, 0.0, -0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 0.75, -0.75, 0.75, 0.75, -1.0, 1.0, 0.25, 0.5, 1.0, -0.25, 1.0, -0.25, -0.75, -0.25, 0.0, 0.5, 0.25, -0.5, -0.5, 0.25, 1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 0.75, 0.75, 0.5, 0.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer001.destroy()
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.destroy();
    const array1 = new Float32Array([0.5, 0.25, 1.0, -0.25, 0.5, -1.0, 0.0, -0.75, 1.0, 0.75, -0.25, 0.25, -0.25, 0.0, 1.0, -0.25, 1.0, 0.0, -0.75, 0.0, -0.5, -0.75, -0.25, -0.75, -0.75, -0.25, 0.0, 0.0, -0.25, 0.75, 0.75, -1.0, -1.0, 1.0, 1.0, -0.75, -0.75, -0.25, 0.75, -0.75, -0.75, 0.75, 0.5, 0.0, -1.0, -0.5, 0.0, 0.5, -0.75, -0.25, -1.0, 0.0, -1.0, -0.75, -0.5, 1.0, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, -0.5, 0.5, -0.5, -0.75, -0.75, 0.0, 0.25, 0.0, -0.25, -0.25, 1.0, 1.0, -0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -0.75, 0.25, 1.0, 1.0, 0.25, -1.0, 0.75, -0.25, -1.0, -0.25, 0.75, 0.25, 0.25, 0.75, -0.25, -0.5, 0.25, 1.0, -0.25, 0.75, ]);
    
    
    const array2 = new Float32Array([-0.25, 1.0, 0.5, -0.5, 0.75, 0.25, -0.25, 0.25, -0.75, -0.25, -0.5, 0.25, -0.75, 0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -1.0, 1.0, 0.5, 1.0, -0.25, 1.0, -1.0, 0.75, 0.5, 0.75, -0.75, -1.0, 0.5, -0.25, -0.75, -0.5, -0.75, -1.0, 0.25, -1.0, 0.0, 0.0, 1.0, -0.5, 0.25, 0.25, 0.25, 0.25, -0.75, 0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, -0.75, 0.75, 0.0, -0.5, 0.75, 0.5, 0.75, -0.5, 0.0, -1.0, 1.0, 1.0, -1.0, -0.5, -0.25, 1.0, 0.0, 0.25, -0.75, -0.25, 0.25, -0.5, 0.5, -1.0, -0.5, -0.5, 0.75, 0.0, 0.5, -0.75, -0.5, -0.25, 1.0, -0.25, 0.5, 0.25, 0.75, -0.25, -0.25, -0.25, 0.75, 0.25, ]);
    
    
    
    const array3 = new Float32Array([0.75, 1.0, 0.5, 0.75, 0.5, 0.75, -1.0, 0.25, -0.5, 1.0, -1.0, -0.25, 0.75, -0.75, 0.25, -0.25, -1.0, 0.0, 0.0, 0.25, -1.0, 0.5, -1.0, 0.25, 0.25, 0.5, 0.0, 0.5, 0.25, 0.5, 0.25, 0.5, -0.5, 0.5, -0.5, 0.25, 0.0, 0.75, 0.0, -0.25, 0.0, 1.0, 0.0, -1.0, -0.5, 0.75, -0.25, -0.25, -0.25, -1.0, -1.0, 0.5, -1.0, -0.75, 0.75, 0.75, 0.75, -0.75, 0.0, 1.0, 0.75, 0.75, 1.0, 0.5, -0.5, 0.25, -0.25, 0.5, 0.75, 0.75, -1.0, -0.75, -0.25, 0.25, -0.25, 0.75, 0.5, -0.75, -1.0, 0.25, 0.5, 0.5, -0.5, 0.5, -0.25, -1.0, 1.0, -1.0, 0.75, 0.0, 0.25, -0.25, 1.0, 0.0, -0.25, -0.5, -0.75, -1.0, -0.25, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    buffer100.destroy()
    query100.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture102.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    texture100.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    texture103.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    texture104.destroy();
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const command_buffer100 = command_encoder100.finish();
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    buffer101.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
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
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer100.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("validation");
    render_pass_encoder1010.beginOcclusionQuery(0)
    
    
    
    const array4 = new Float32Array([-0.75, -1.0, -0.75, -1.0, 0.0, 0.25, 0.5, -0.5, 0.75, -0.5, 0.5, -0.25, 0.0, -0.75, -0.25, 0.0, 0.5, -1.0, 0.75, 0.5, 0.75, -0.5, 0.5, 1.0, 0.25, -1.0, -0.25, 0.5, -1.0, -0.5, 0.75, 0.0, 1.0, -0.25, 1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 0.0, 0.0, 1.0, 0.25, 0.25, -1.0, -0.25, 0.0, -1.0, 0.5, 0.75, -1.0, 0.5, 0.5, -0.5, -1.0, 0.75, -0.5, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, 0.0, 0.5, -1.0, 0.25, 0.75, 0.75, -1.0, 1.0, 0.5, 0.5, 0.0, 1.0, 0.0, 0.5, 0.75, 0.5, -0.5, -1.0, 0.0, 1.0, 0.0, 0.25, -1.0, -0.25, -0.5, 0.5, 0.0, -1.0, 0.75, 0.75, 0.25, -1.0, -1.0, -0.25, 0.0, 0.5, ]);
    render_pass_encoder1010.setStencilReference(1);
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder103.setPipeline(render_pipeline100);
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

    render_bundle_encoder103.setBindGroup(0, bind_group101);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_bundle_encoder102.popDebugGroup();
    device10.queue.writeTexture({ texture: texture108 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    
    buffer108.destroy()
    render_bundle_encoder103.insertDebugMarker("marker");
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.setVertexBuffer(0, buffer109);
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.queue.writeTexture({ texture: texture108 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([0.0, -0.75, -0.75, 1.0, -0.25, -0.75, -0.75, -0.25, -0.5, 1.0, 0.5, 0.5, 0.75, 0.75, 0.25, -1.0, -0.5, -1.0, 0.0, 0.25, -0.75, 0.0, 0.0, 0.25, -0.25, 0.0, -1.0, -0.25, 0.75, -0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.0, 0.5, -0.75, -1.0, 0.75, 0.25, 1.0, -1.0, 0.25, -0.25, 0.5, 0.5, -0.75, 0.0, -0.25, 0.0, -1.0, -1.0, 1.0, -0.25, 0.75, -0.25, 1.0, -1.0, -0.5, 0.75, 0.5, -0.25, 0.5, -0.75, 0.0, -0.25, -1.0, -1.0, -0.25, -0.75, -1.0, 0.25, 0.5, 1.0, -0.75, 0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 0.75, 0.75, 0.5, -1.0, 0.5, 1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -0.75, ]);
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setPipeline(render_pipeline100);
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.popDebugGroup();
    
    
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    texture108.destroy();
    const array6 = new Float32Array([-0.25, 0.5, -0.75, 0.5, -1.0, 0.75, -0.25, -1.0, -0.75, 0.5, 0.0, -1.0, 0.75, -0.5, 0.75, -0.5, -0.25, -1.0, 1.0, 0.0, 0.25, 0.75, 0.75, -0.75, 0.75, 1.0, -0.75, -0.5, -0.5, 0.75, -0.75, -0.75, 0.0, -0.25, -0.75, 0.0, 1.0, 0.5, -0.25, -0.5, -0.5, -0.25, 0.75, -0.75, 1.0, 1.0, 1.0, 0.5, 0.5, -0.5, 0.25, 1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -0.5, 0.5, 0.5, 0.0, -0.25, -0.75, -0.25, 1.0, 0.75, 0.25, 1.0, 1.0, 0.25, -1.0, 0.5, 1.0, -0.5, -0.75, -1.0, -1.0, -0.25, 0.25, 0.25, -0.75, -0.75, -0.25, 0.25, -0.75, -1.0, 1.0, 1.0, -0.5, 0.25, -1.0, 0.0, -0.25, -0.25, 1.0, -1.0, -0.75, -0.5, 0.0, 1.0, ]);
    device30.queue.submit([]);
    buffer107.destroy()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.pushErrorScope("validation");
    command_encoder102.insertDebugMarker("mymarker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder103.pushDebugGroup("group_marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    render_bundle_encoder300.popDebugGroup();
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
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
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture107 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1011.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
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
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    device20.destroy();
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query100.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer104.destroy()
    
    buffer103.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    buffer109.destroy()
    render_bundle_encoder103.drawIndirect(buffer1010, 0);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.draw(3);
    render_pass_encoder1021.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture107 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    
    buffer1011.destroy()
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    render_pass_encoder1031.setStencilReference(1);
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture107
        },
        {
            buffer: buffer109
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder1020.beginOcclusionQuery(0)
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setStencilReference(1);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
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
    buffer002.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture105.destroy();
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    render_pass_encoder1012.setPipeline(render_pipeline103);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    
    
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1071,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    
    device10.queue.writeTexture({ texture: texture107 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([command_buffer100, ]);
    buffer106.destroy()
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group104);
    const texture_view1062 = texture106.createView({ label: "texture_view1062" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder103.insertDebugMarker("marker");
    
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1011.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setPipeline(render_pipeline104);
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
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
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    device10.pushErrorScope("internal");
    render_pass_encoder1012.insertDebugMarker("marker");
    render_pass_encoder1031.setPipeline(render_pipeline100);
    render_pass_encoder1022.setPipeline(render_pipeline103);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    buffer1016.destroy()
    
    render_bundle_encoder100.drawIndirect(buffer1010, 0);
    device00.pushErrorScope("internal");
    render_pass_encoder1021.setPipeline(render_pipeline102);
    render_bundle_encoder103.insertDebugMarker("marker");
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    render_pass_encoder1012.setStencilReference(1);
    
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture108
        },
        {
            buffer: buffer107
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer1010, 0, array5, 0, array5.length);
    render_pass_encoder1011.setViewport(0, 0, texture107.width / 2, texture107.height / 2, 0, 1);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setStencilReference(1);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    
    
    render_pass_encoder1011.popDebugGroup();
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1022.setBindGroup(0, bind_group106);
    buffer1014.destroy()
    render_pass_encoder1011.setScissorRect(0, 0, texture107.width / 2, texture107.height / 2);
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer1012,
        0
    )
    render_pass_encoder1010.setStencilReference(1);
    
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const texture_view1072 = texture107.createView({ label: "texture_view1072" });
    const render_pass_encoder1013 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1071,
            },
        ],
        occlusionQuerySet: query100
    });
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder1013.setViewport(0, 0, texture107.width / 2, texture107.height / 2, 0, 1);
    render_bundle_encoder101.setIndexBuffer(buffer1020, "uint16");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1022.insertDebugMarker("marker");
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer102.destroy()
    render_pass_encoder1022.setVertexBuffer(0, buffer109);
    render_pass_encoder1010.setVertexBuffer(0, buffer103);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_pass_encoder1031.setStencilReference(1);
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder103.copyTextureToTexture(
        {
            texture: texture105
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer1020, 0, array4, 0, array4.length);
    render_pass_encoder1013.executeBundles([render_bundle_encoder100, render_bundle_encoder103, ])
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
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

    render_pass_encoder1020.setBindGroup(0, bind_group108);
    render_bundle_encoder101.drawIndexedIndirect(buffer1010, 0);
    device10.queue.writeBuffer(buffer1020, 0, array6, 0, array6.length);
    
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    {
        await buffer1015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1015.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1012.pushDebugGroup("group_marker");
    buffer1020.destroy()
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1022.pushDebugGroup("group_marker");
    
    {
        await buffer1023.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1023.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1023.unmap();
        console.log(new Float32Array(data));
    }
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
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
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group109);
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1023 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1023",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1072,
            },
        ],
        occlusionQuerySet: query101
    });
    
    device10.queue.writeBuffer(buffer1025, 0, array4, 0, array4.length);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    device10.queue.writeTexture({ texture: texture108 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1031.setVertexBuffer(0, buffer105);
    render_bundle_encoder100.finish();
    render_pass_encoder1012.insertDebugMarker("marker");
    render_pass_encoder1023.setPipeline(render_pipeline103);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.insertDebugMarker("marker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder103.popDebugGroup();
    buffer1015.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1022.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.setVertexBuffer(0, buffer107);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1022.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer108);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.draw(3);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1012.setBindGroup(0, bind_group1010);
    render_pass_encoder1012.setVertexBuffer(0, buffer109);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group1011);
    render_pass_encoder1012.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1012.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.setVertexBuffer(0, buffer108);
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1013.setBindGroup(0, bind_group1012);
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1012.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1012.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer1010, 0);
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
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group1013);
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1023.setBindGroup(0, bind_group1014);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1023.setVertexBuffer(0, buffer1021);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    const command_buffer000 = command_encoder000.finish();
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
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1023.drawIndirect(buffer1020, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1013.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1013.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1013.drawIndexedIndirect(buffer109, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1021.end();
    render_pass_encoder1012.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1023.end();
    render_pass_encoder1023.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1022.popDebugGroup();
    command_encoder101.popDebugGroup()
    render_pass_encoder1012.end();
    render_pass_encoder1013.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1022.end();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1012.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1013.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1012.drawIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1013.drawIndexedIndirect(buffer1010, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1013.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1023.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1013.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1012.draw(3);
    render_pass_encoder1022.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1013.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndirect(buffer1010, 0);
    render_pass_encoder1031.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1013.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1012.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1023.popDebugGroup();
    render_pass_encoder1022.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1013.drawIndirect(buffer1022, 0);
    render_pass_encoder1012.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1013.end();
    render_pass_encoder1012.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1013.drawIndirect(buffer107, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1012.drawIndirect(buffer1034, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1012.drawIndexedIndirect(buffer1024, 0);
}