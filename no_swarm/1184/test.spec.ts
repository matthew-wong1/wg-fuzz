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
        powerPreference: "low-power"
    });
    
    
    const array0 = new Float32Array([0.75, 0.0, -1.0, -0.75, 1.0, 1.0, 0.0, -1.0, -0.75, 0.75, 0.75, 0.25, 0.0, 0.25, 0.25, 0.0, -0.25, 0.75, -1.0, -0.25, 0.75, 1.0, -0.25, 0.25, 0.5, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, 0.0, 1.0, 0.75, 1.0, 0.0, -1.0, -0.5, -0.5, -0.25, -0.5, 0.25, 0.5, 0.25, 0.75, 0.0, -1.0, -0.25, -0.25, 0.75, 0.0, -0.5, 0.75, 0.5, -1.0, 1.0, 0.5, -0.75, -1.0, -0.75, -0.75, -0.25, 1.0, -0.5, -1.0, -1.0, -0.75, 0.75, -1.0, 1.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.75, -1.0, 0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 1.0, 1.0, -0.5, -1.0, 0.25, 0.75, -1.0, 0.0, -0.25, -0.5, 0.75, 0.25, 0.0, 0.0, 1.0, 0.25, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.5, -0.25, 0.25, -0.25, -0.5, 0.5, -1.0, 0.0, -0.75, -0.75, 1.0, 0.5, -1.0, 0.75, -0.25, 1.0, 1.0, -0.75, 0.5, -0.5, -0.5, -1.0, 1.0, -0.75, 0.0, 0.0, 0.0, 0.0, -0.75, -1.0, -0.75, 0.5, -1.0, -0.75, 0.25, 0.75, 0.75, 0.5, 0.5, 0.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.0, 0.25, -0.25, 0.25, 1.0, -0.25, 0.25, 1.0, -1.0, 0.0, -1.0, 0.25, 0.0, 1.0, -0.25, 0.0, -1.0, 0.5, 1.0, -0.75, -0.5, 0.75, -1.0, 0.25, 0.5, -1.0, 0.75, 0.5, 0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.0, 0.25, 0.0, -0.5, -0.5, 0.75, 0.0, -1.0, 0.25, -0.5, -0.25, -0.25, -0.75, -0.25, -0.5, -0.5, 0.0, -1.0, -0.25, 0.0, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    const array2 = new Float32Array([-0.25, 0.25, 1.0, 1.0, 0.0, -0.5, 0.75, -0.75, 1.0, 0.0, -0.75, 0.75, 0.75, 0.75, 1.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.75, 0.25, 1.0, -0.75, 0.0, 0.75, 1.0, 0.5, -0.5, 1.0, -0.25, 0.5, -0.5, -0.5, 0.25, -1.0, 0.25, -0.25, -1.0, -0.5, -1.0, 1.0, 0.25, 0.0, -0.75, 0.0, 0.0, 1.0, 0.25, 0.25, 0.5, -0.25, 0.75, -0.25, 0.0, -1.0, 1.0, 0.0, 0.5, 0.25, 0.5, 0.5, -1.0, -0.25, 0.5, 0.0, -1.0, 0.0, 1.0, -0.75, 1.0, 0.0, -0.75, 0.5, -1.0, 0.25, -0.25, -0.75, -0.75, 0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 0.0, -0.75, 0.5, -1.0, 0.5, -0.5, 0.0, 0.25, -0.25, 0.5, -0.75, 1.0, 1.0, 0.25, 0.25, ]);
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.pushErrorScope("out-of-memory");
    
    
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
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array3 = new Float32Array([0.5, 0.5, 0.0, 1.0, 1.0, -0.5, 1.0, 0.0, 1.0, -0.5, -0.25, 0.5, 0.5, -0.25, -0.5, 0.0, 0.75, 0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 0.25, -1.0, -0.5, 0.0, 0.0, 0.0, -0.25, 0.5, 1.0, 0.25, 0.25, -0.75, 0.25, 0.75, -0.5, -0.25, 0.75, 0.75, -0.75, 0.75, -0.25, -0.5, 0.75, 0.75, 0.75, 0.5, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, 1.0, 1.0, -1.0, -1.0, 1.0, 1.0, -0.75, -0.25, 0.5, 0.75, -0.25, -0.25, 1.0, -0.5, -0.25, 1.0, -0.25, -1.0, -0.25, -0.75, -0.25, 0.5, 0.75, 0.5, -0.5, 1.0, 0.0, 0.75, -1.0, 0.0, 0.25, -0.5, 0.75, 0.25, -0.75, 1.0, 0.0, -0.75, 0.5, 0.5, 1.0, -0.25, -1.0, 1.0, 0.0, ]);
    
    
    buffer100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    buffer102.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const array4 = new Float32Array([1.0, 0.0, -0.75, -0.5, 0.75, 0.75, -0.5, 0.25, -0.5, -0.25, 0.75, -0.5, 1.0, 0.5, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.25, 0.75, 0.0, -0.5, 0.25, -0.25, -1.0, 0.0, -1.0, -0.25, -1.0, -0.25, 0.5, -1.0, -1.0, -1.0, -1.0, -0.25, -0.75, -0.5, 0.5, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, -0.25, -1.0, 0.0, 1.0, 0.0, 0.0, -1.0, -0.75, 0.75, -1.0, 1.0, 1.0, -1.0, 0.25, -0.25, 0.0, 0.5, 1.0, 0.25, -0.25, -0.75, 0.0, 0.75, 0.5, -0.75, 1.0, 0.25, 1.0, -0.25, 1.0, -0.25, -0.25, 0.75, 0.0, 0.75, -0.25, -0.5, -0.75, 0.5, 1.0, -0.5, 1.0, -0.5, -1.0, 0.0, -0.25, 0.5, 0.25, -1.0, -0.25, -1.0, 0.25, 0.0, ]);
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
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
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
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
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    buffer103.destroy()
    
    device20.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    texture101.destroy();
    
    query100.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture102.destroy();
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture200.destroy();
    
    
    texture103.destroy();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device20.destroy();
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
    
    render_bundle_encoder100.popDebugGroup();
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    texture102.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.5, 0.5, -1.0, -0.75, -0.25, -0.75, 0.25, 0.5, -0.75, 0.0, 0.5, 1.0, 0.0, -0.25, 0.0, 1.0, -1.0, 0.25, 0.0, -1.0, -0.5, 0.5, 0.25, -0.5, 1.0, -1.0, 0.5, 0.0, 0.75, 0.75, 0.25, -0.25, 0.5, 0.25, -0.25, 1.0, 0.25, 0.0, -0.25, 0.25, 0.75, 0.75, -0.75, 0.25, 0.25, 0.0, 0.5, 0.0, -0.5, 0.75, -0.75, 1.0, 0.0, 0.25, 0.5, 0.0, -0.25, 0.5, 0.0, 0.25, -0.25, -0.25, 0.5, 0.75, 0.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.0, -0.5, 0.0, -0.25, 0.5, 0.25, 0.25, -0.25, 0.5, -0.75, -1.0, 0.75, -1.0, -0.75, -1.0, -0.5, -0.5, 0.25, 0.75, -0.25, 0.0, 0.25, 0.5, 0.5, -0.25, -0.75, 0.5, 0.25, 1.0, -0.25, ]);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer101.destroy()
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    texture105.destroy();
    
    buffer104.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture104.destroy();
    buffer105.destroy()
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline103);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_buffer100 = command_encoder100.finish();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device40.pushErrorScope("out-of-memory");
    
    
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device40.queue.submit([]);
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer106.destroy()
    render_bundle_encoder100.popDebugGroup();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device10.queue.writeTexture({ texture: texture107 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.pushErrorScope("validation");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.pushErrorScope("out-of-memory");
    query200.destroy()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    command_encoder500.clearBuffer(buffer500);
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture400.destroy();
    const command_buffer400 = command_encoder400.finish();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device30.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder501.clearBuffer(buffer500);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
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
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device30.destroy();
    command_encoder501.clearBuffer(buffer500);
    const array6 = new Float32Array([0.75, 0.5, 1.0, -0.5, -1.0, 0.0, 0.25, 0.5, -0.5, -0.5, -0.5, 1.0, 0.0, -0.75, 0.25, 0.5, -0.25, 0.25, -0.5, 0.25, -0.5, -0.25, 0.0, -0.5, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, 0.25, 0.75, 0.75, 0.0, 1.0, -1.0, 0.0, -0.25, 0.0, -0.25, 0.25, 0.75, 0.75, 0.0, 0.5, -0.5, -0.5, -0.5, -0.75, 0.75, 1.0, 0.75, 0.5, -1.0, 0.25, -0.25, 0.5, 0.75, -0.25, -0.5, 0.75, -0.25, -0.25, 0.25, 0.0, 0.75, 1.0, -1.0, 0.25, 0.75, -0.75, -0.25, 0.25, 0.5, 1.0, -0.25, 0.25, -0.5, 0.0, -0.5, -1.0, -0.25, 0.25, -0.75, -0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, -0.5, 0.5, 0.5, 0.75, 0.75, -0.25, 0.75, 0.25, -0.5, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
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
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    command_encoder501.clearBuffer(buffer500);
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    buffer401.destroy()
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    
    const array7 = new Float32Array([0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.5, -0.5, -0.5, -0.5, 1.0, 1.0, 0.0, -0.5, -1.0, 0.0, 1.0, -0.5, -1.0, 0.0, -0.75, 1.0, 0.25, 0.0, -1.0, 1.0, 0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 1.0, -1.0, 0.0, -0.75, 0.25, 1.0, -0.5, -0.75, -0.25, -1.0, 0.25, 0.5, 0.75, -0.75, -0.25, 0.75, -0.5, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.0, 0.25, 0.75, 0.5, 0.0, 0.75, -1.0, 0.25, -0.25, 0.5, -0.25, 0.5, -1.0, 1.0, 0.5, -0.5, 0.0, 0.0, 0.75, -0.25, 0.75, 1.0, 0.0, 1.0, -0.75, -0.75, -0.5, 0.75, 0.0, -0.5, -0.75, 0.75, -0.25, 0.75, 0.0, -1.0, ]);
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device00.queue.submit([]);
    render_pass_encoder5010.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    buffer500.destroy()
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    buffer302.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    device50.pushErrorScope("out-of-memory");
    texture401.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    buffer500.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    device10.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer400.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer402.destroy()
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device70.destroy();
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    texture501.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const array8 = new Float32Array([1.0, -0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.75, 0.5, -1.0, -1.0, -0.5, 0.75, 0.0, -1.0, 0.5, -0.75, 0.25, 1.0, 0.25, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 1.0, -0.25, 0.75, 0.0, -0.25, -0.5, 0.75, 0.5, 1.0, 1.0, -1.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.75, -1.0, 0.5, -0.25, 0.0, -0.5, 0.0, 0.75, -0.5, -0.5, 0.0, 0.5, 0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 1.0, 0.75, 0.25, -0.5, 0.5, -0.5, -0.5, -0.5, 1.0, 0.25, 0.5, -0.25, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, 0.25, -0.75, -1.0, -1.0, 0.5, -0.25, 1.0, 0.25, -0.5, 1.0, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder503.clearBuffer(buffer500);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder500.popDebugGroup();
    
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer502.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_bundle_encoder403 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder403",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    compute_pass_encoder5010.popDebugGroup()
    
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder501.setPipeline(render_pipeline500);
    render_bundle_encoder403.setPipeline(render_pipeline400);
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
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

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    device60.pushErrorScope("validation");
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5030.executeBundles([])
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_pass_encoder5030.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    buffer600.destroy()
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    render_pass_encoder5030.pushDebugGroup("group_marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder5020.pushDebugGroup("group_marker")
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

    render_bundle_encoder403.setBindGroup(0, bind_group402);
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder400.setVertexBuffer(0, buffer403);
    query400.destroy()
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
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer403.destroy()
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder401.clearBuffer(buffer403);
    buffer407.destroy()
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5001.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5010.setPipeline(render_pipeline501);
    device20.queue.submit([]);
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
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
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5010.setBindGroup(0, bind_group500);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5010.dispatchWorkgroups(100);
    compute_pass_encoder5020.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder5001.setPipeline(compute_pipeline500);
    device40.queue.submit([command_buffer400, ]);
    device60.queue.submit([command_buffer600, ]);
    command_encoder501.popDebugGroup()
    compute_pass_encoder5020.setPipeline(compute_pipeline500);
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
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
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5001.setBindGroup(0, bind_group501);
    compute_pass_encoder5010.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5020.setBindGroup(0, bind_group502);
    compute_pass_encoder5020.dispatchWorkgroups(100);
    const command_buffer401 = command_encoder401.finish();
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
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_pass_encoder5010.setBindGroup(0, bind_group503);
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
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
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

    compute_pass_encoder5010.setBindGroup(0, bind_group504);
    compute_pass_encoder5001.dispatchWorkgroups(100);
    render_pass_encoder5010.setVertexBuffer(0, buffer505);
    compute_pass_encoder5000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5030.setPipeline(render_pipeline500);
    render_pass_encoder5010.drawIndirect(buffer509, 0);
    compute_pass_encoder5001.end();
    compute_pass_encoder5001.end();
    render_pass_encoder5010.end();
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
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group505);
    compute_pass_encoder5000.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder5010.end();
    compute_pass_encoder5020.end();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5018, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5018, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5020,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group506);
    compute_pass_encoder5001.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder5001.end();
    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
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
                    buffer: buffer5021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5022,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group507);
    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5024,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group508);
    compute_pass_encoder5000.end();
    render_pass_encoder5030.setVertexBuffer(0, buffer505);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5030.drawIndirect(buffer5018, 0);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer502, ]);
    command_encoder500.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5025, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer5025, 0);
    const command_buffer500 = command_encoder500.finish();
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5010.end();
    render_pass_encoder5030.end();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder6010.popDebugGroup()
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
        
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
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

    compute_pass_encoder5020.setBindGroup(0, bind_group509);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, command_buffer501, command_buffer503, ]);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    const command_buffer601 = command_encoder601.finish();
    const buffer5028 = device50.createBuffer({
        label: "buffer5028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5029 = device50.createBuffer({
        label: "buffer5029",
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
                    buffer: buffer5028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5029,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5010);
    render_pass_encoder6000.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([]);
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
    device50.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder5001.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer5031 = device50.createBuffer({
        label: "buffer5031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5031, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer5031, 0);
    const buffer5032 = device50.createBuffer({
        label: "buffer5032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5033 = device50.createBuffer({
        label: "buffer5033",
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
                    buffer: buffer5032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5033,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5011);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5034 = device50.createBuffer({
        label: "buffer5034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5034, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5034, 0);
    compute_pass_encoder5001.dispatchWorkgroups(100);
    const buffer5035 = device50.createBuffer({
        label: "buffer5035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5036 = device50.createBuffer({
        label: "buffer5036",
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
                    buffer: buffer5035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5036,
                },
            },
        ],
    });

    compute_pass_encoder5001.setBindGroup(0, bind_group5012);
    compute_pass_encoder5001.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer502, ]);
}