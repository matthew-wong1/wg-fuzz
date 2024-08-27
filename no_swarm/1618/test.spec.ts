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
    
    
    const array0 = new Float32Array([-0.75, 0.25, -1.0, -0.75, -0.5, 1.0, -1.0, 0.0, 0.25, -0.25, 0.75, 0.5, -0.25, -1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 0.25, -0.75, 1.0, 0.0, 0.5, 0.5, 0.0, -0.25, 1.0, 0.5, -0.5, -0.25, -1.0, -0.75, -1.0, 0.0, -1.0, 0.25, -0.5, -1.0, 0.0, -0.75, 1.0, -0.25, 1.0, 0.5, -0.25, 0.25, -0.5, 0.5, -1.0, 0.5, 0.75, 0.5, -1.0, 1.0, -0.5, -0.5, -0.5, -0.75, 0.75, 0.25, 0.75, 0.5, -0.5, -1.0, -0.5, 0.75, -0.75, -1.0, -1.0, -0.5, 0.25, -0.25, 0.75, -0.5, -0.75, -1.0, -1.0, 0.0, 0.25, -0.25, -0.25, -0.5, 0.75, -1.0, -0.25, -1.0, -0.5, -0.25, 0.5, 0.0, 0.5, 0.75, 0.75, 0.25, -1.0, -0.5, 0.25, 1.0, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device00.destroy();
    
    
    
    
    const array1 = new Float32Array([0.25, -0.25, 0.75, -0.25, -0.5, -0.5, 0.75, -0.5, 0.5, -0.5, -0.75, 0.75, 0.5, 0.5, -0.25, 0.25, 1.0, 0.0, -1.0, 0.5, -1.0, 0.75, 0.25, 0.5, 0.25, -0.75, 0.25, -1.0, 0.0, 0.5, -0.5, -0.75, 1.0, 0.5, 0.75, 0.75, -0.75, 0.0, 1.0, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.25, -1.0, -1.0, 0.75, 1.0, -0.5, 0.5, -0.25, 0.5, -0.75, 1.0, -0.25, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, 0.5, 1.0, -0.75, -0.25, -0.75, -0.25, -0.25, 0.75, 1.0, -0.75, 0.0, 0.5, 1.0, -0.5, 0.5, -0.25, -0.25, 1.0, -0.75, 0.25, 0.5, 0.75, -0.5, 0.75, -1.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.75, -0.75, 0.5, -0.75, 0.75, 0.5, 0.5, ]);
    
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
    
    const array2 = new Float32Array([0.75, -0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 1.0, -0.5, 0.75, 1.0, 0.75, 0.25, -0.25, -1.0, -1.0, 0.75, -1.0, -0.25, -0.5, -0.75, 0.75, 0.5, 0.75, 1.0, 0.75, 0.5, -1.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.0, 0.0, -0.25, 0.5, 0.25, 0.5, 0.25, 0.5, -0.25, 0.25, 0.25, 0.0, 1.0, 0.25, 0.75, 0.0, 0.75, -0.75, -1.0, 1.0, -0.75, -0.75, -1.0, 0.0, -0.25, -0.5, -0.75, 0.5, -0.5, -0.75, 1.0, 0.75, -0.25, -0.5, -0.5, -0.75, 0.0, -0.5, -0.5, -0.25, -1.0, 0.25, 0.5, 0.75, -0.5, -0.25, 0.5, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, -0.75, -0.75, -1.0, 0.0, 0.75, 0.0, -1.0, -1.0, -0.5, 0.0, -1.0, 0.0, ]);
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer200 = command_encoder200.finish();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    device10.pushErrorScope("out-of-memory");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query102.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
    render_bundle_encoder200.popDebugGroup();
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.queue.submit([]);
    
    device20.queue.submit([command_buffer201, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    
    
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query201.destroy()
    command_encoder101.popDebugGroup()
    
    command_encoder100.insertDebugMarker("mymarker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    query100.destroy()
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    
    render_bundle_encoder202.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture200.destroy();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query202.destroy()
    query101.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer200, ]);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    texture202.destroy();
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder101.popDebugGroup()
    
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    texture201.destroy();
    render_bundle_encoder101.setPipeline(render_pipeline104);
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    render_bundle_encoder201.popDebugGroup();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    command_encoder100.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder1010.setPipeline(compute_pipeline104);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_bundle_encoder102.setPipeline(render_pipeline104);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline103);
    
    const command_buffer100 = command_encoder100.finish();
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    
    query204.destroy()
    buffer102.destroy()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device20.queue.submit([command_buffer200, ]);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query202.destroy()
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    
    compute_pass_encoder1030.popDebugGroup()
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    query200.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder200.popDebugGroup();
    
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query203.destroy()
    buffer105.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query202.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1011, 0);
    
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.submit([command_buffer100, ]);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    buffer108.destroy()
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    render_bundle_encoder101.setVertexBuffer(0, buffer104);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    query201.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.clearBuffer(buffer107);
    render_bundle_encoder101.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder101.drawIndirect(buffer106, 0);
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer1010
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1030.popDebugGroup()
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder102.copyBufferToBuffer(
        buffer1010,
        0,
        buffer102,
        0,
        400
    );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.end();
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    buffer109.destroy()
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    buffer101.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1021.setPipeline(compute_pipeline100);
    compute_pass_encoder1021.pushDebugGroup("group_marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.submit([]);
    buffer1011.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.executeBundles([render_bundle_encoder102, ])
    texture101.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    
    
    render_bundle_encoder100.popDebugGroup();
    const array3 = new Float32Array([0.5, 0.25, 0.0, 1.0, -1.0, 0.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.25, 0.75, 0.5, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, 0.25, 0.5, -1.0, 1.0, 0.0, -1.0, 0.75, 0.0, -0.5, 0.25, 0.25, -0.75, -0.75, 0.0, -0.25, -1.0, 0.5, 0.25, 0.25, 0.25, -1.0, 0.0, 0.5, 1.0, 0.5, -0.25, 1.0, 0.25, -0.25, -0.75, -1.0, 0.5, 0.25, -0.25, -0.75, 1.0, 0.75, 0.25, 0.0, 0.0, -0.75, 1.0, 0.0, 0.75, -0.75, 0.75, -1.0, 0.25, -0.75, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.25, 0.25, 0.0, 0.5, -0.75, -0.5, -1.0, -0.75, -1.0, -1.0, 0.0, 0.75, 0.25, 1.0, -0.75, 1.0, -1.0, 0.75, 0.5, 0.0, -1.0, -1.0, 0.0, 0.5, -0.25, ]);
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
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
    command_encoder102.clearBuffer(buffer105);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device30.destroy();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    
    query100.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    device10.pushErrorScope("out-of-memory");
    query202.destroy()
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query204
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    query205.destroy()
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    compute_pass_encoder1020.insertDebugMarker("marker")
    query103.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer1011);
    compute_pass_encoder1021.insertDebugMarker("marker")
    
    
    buffer101.destroy()
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1015, 0);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query101.destroy()
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    compute_pass_encoder1021.insertDebugMarker("marker")
    
    
    render_bundle_encoder101.drawIndirect(buffer101, 0);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1016, 0);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer1013,
        0
    )
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder101.insertDebugMarker("marker");
    texture100.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_pass_encoder2030.setStencilReference(1);
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    buffer1013.destroy()
    render_bundle_encoder101.finish();
    query203.destroy()
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.end();
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2031.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1015, 0, array2, 0, array2.length);
    command_encoder101.resolveQuerySet(
        query104,
        0,
        32,
        buffer1014,
        0
    )
    render_bundle_encoder101.setIndexBuffer(buffer1014, "uint16");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1016, 0, array2, 0, array2.length);
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    command_encoder101.copyBufferToBuffer(
        buffer1013,
        0,
        buffer1015,
        0,
        400
    );
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
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query203.destroy()
    query500.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    compute_pass_encoder1021.setBindGroup(0, bind_group105);
    compute_pass_encoder1011.setPipeline(compute_pipeline108);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder102.setIndexBuffer(buffer101, "uint16");
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    query200.destroy()
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
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    device10.queue.writeBuffer(buffer1015, 0, array0, 0, array0.length);
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1010, 0, array2, 0, array2.length);
    render_pass_encoder2020.setPipeline(render_pipeline200);
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
        layout: compute_pipeline108.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group106);
    render_pass_encoder2030.setPipeline(render_pipeline201);
    render_pass_encoder2040.setPipeline(render_pipeline200);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder2031.setPipeline(render_pipeline201);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1030.popDebugGroup()
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group108);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group201);
    const command_buffer204 = command_encoder204.finish();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer205);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.draw(3);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group203);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    render_pass_encoder2031.setVertexBuffer(0, buffer206);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2030.setVertexBuffer(0, buffer2010);
    command_encoder101.popDebugGroup()
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1027, 0);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1011.end();
    compute_pass_encoder1011.end();
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2040.setVertexBuffer(0, buffer204);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2040.end();
    const command_buffer101 = command_encoder101.finish();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group109);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder2030.draw(3);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2020.end();
    device40.queue.submit([]);
    render_pass_encoder2030.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline108.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group1011);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group1012);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.setVertexBuffer(0, buffer1020);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2040.end();
    device40.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2031.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.draw(3);
    const command_buffer203 = command_encoder203.finish();
    device50.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1021.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1036, 0);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1039, 0);
    compute_pass_encoder1030.popDebugGroup()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1024, "uint16");
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
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
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1015);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    device40.queue.submit([]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([]);
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    render_pass_encoder2031.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1049, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1050, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1011.popDebugGroup()
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
        layout: compute_pipeline108.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group1018);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
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
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    render_pass_encoder2040.drawIndexed(3);
    device10.queue.submit([]);
    device40.queue.submit([]);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    compute_pass_encoder1011.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2040.drawIndexed(3);
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1021);
    device50.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([]);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1022);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder1010.end();
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1023);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2030.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2040.popDebugGroup();
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
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline108.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group1024);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.end();
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1066, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.draw(3);
    compute_pass_encoder1021.end();
    compute_pass_encoder1020.end();
    render_pass_encoder2030.drawIndirect(buffer201, 0);
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1025);
    render_pass_encoder1020.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1026);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1071, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1030.end();
    render_pass_encoder2031.drawIndirect(buffer202, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1027, "uint16");
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1027);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2030.draw(3);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
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
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1028);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder2040.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1076, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    device60.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1066, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1077, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1077, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1020.end();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer204, ]);
    device10.queue.submit([command_buffer103, ]);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1078, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    compute_pass_encoder1021.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
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
    render_pass_encoder1020.drawIndirect(buffer1076, 0);
    render_pass_encoder2030.end();
    device10.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    device50.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder2040.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1000.end();
    compute_pass_encoder1021.end();
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1080, 0);
    device50.queue.submit([]);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder2040.end();
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1081, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1081, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1082, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1082, 0);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder1010.end();
    compute_pass_encoder1011.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2031.drawIndirect(buffer2010, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    device20.queue.submit([command_buffer204, ]);
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
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group1029);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1020.end();
    render_pass_encoder2031.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    device40.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    compute_pass_encoder1020.end();
    device00.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1034, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2031.end();
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
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1030);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexed(3);
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
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2010, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2040.end();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1088, 0);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder2030.endOcclusionQuery()
    compute_pass_encoder1000.end();
    device00.queue.submit([]);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1031);
    compute_pass_encoder1010.popDebugGroup()
    device60.queue.submit([]);
    device50.queue.submit([]);
    compute_pass_encoder1010.end();
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1032);
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    device20.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
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
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1095, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1095, 0);
    compute_pass_encoder1020.popDebugGroup()
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
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1034);
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
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1035);
    compute_pass_encoder1020.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2040.draw(3);
    compute_pass_encoder1010.end();
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
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group1036);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1011.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10102, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10102, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder1020.drawIndirect(buffer1079, 0);
    compute_pass_encoder1011.popDebugGroup()
    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10104,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1037);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2040.popDebugGroup();
    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10106,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1038);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2031.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device40.queue.submit([]);
    device60.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10107, 0);
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10108, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10108, 0);
    compute_pass_encoder1000.popDebugGroup()
    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10110,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1039);
    render_pass_encoder1020.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10111, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10111, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10112, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer10112, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    device60.queue.submit([]);
    compute_pass_encoder1021.end();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder2040.draw(3);
    render_pass_encoder1020.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2040.draw(3);
    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10114,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1040);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    compute_pass_encoder1030.end();
    device20.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer204, ]);
    device20.queue.submit([command_buffer200, ]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10115, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10115, 0);
    device10.queue.submit([command_buffer102, ]);
    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10117,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1041);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
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
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1042);
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
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1043);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndirect(buffer10108, 0);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2020.draw(3);
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
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
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1044);
    device20.queue.submit([command_buffer204, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10124, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10124, 0);
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer209, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder1021.end();
    compute_pass_encoder1011.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder2040.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1071, 0);
    render_pass_encoder1020.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10126,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1045);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1030.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1087, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10128,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1046);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1076, 0);
    render_pass_encoder2040.drawIndexed(3);
    compute_pass_encoder1020.popDebugGroup()
    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10130,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1047);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1021.end();
    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
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
                    buffer: buffer10131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10132,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1048);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    device50.queue.submit([]);
    compute_pass_encoder1021.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10133, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10133, 0);
    device60.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10134, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10134, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10135, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10135, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder1020.end();
    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10137,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1049);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10138, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10138, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10140,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1050);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder1021.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10142,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1051);
    render_pass_encoder2030.draw(3);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10143, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10143, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2040.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2031.end();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer103, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10144, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10144, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1011.end();
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder1030.end();
    compute_pass_encoder1010.end();
    device50.queue.submit([]);
    compute_pass_encoder1000.end();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndirect(buffer1072, 0);
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer10145 = device10.createBuffer({
        label: "buffer10145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10146 = device10.createBuffer({
        label: "buffer10146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10146,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1052);
    const buffer10147 = device10.createBuffer({
        label: "buffer10147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10148 = device10.createBuffer({
        label: "buffer10148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10148,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1053);
    compute_pass_encoder1000.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer10112, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1088, 0);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1021.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10149 = device10.createBuffer({
        label: "buffer10149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10149, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10149, 0);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    const buffer10150 = device10.createBuffer({
        label: "buffer10150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10151 = device10.createBuffer({
        label: "buffer10151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1054 = device10.createBindGroup({
        label: "bind_group1054",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10151,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1054);
    render_pass_encoder2030.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10152 = device10.createBuffer({
        label: "buffer10152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10152, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10152, 0);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    device60.queue.submit([]);
    render_pass_encoder2020.draw(3);
    device40.queue.submit([]);
    const buffer10153 = device10.createBuffer({
        label: "buffer10153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10154 = device10.createBuffer({
        label: "buffer10154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1055 = device10.createBindGroup({
        label: "bind_group1055",
        layout: compute_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10154,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1055);
    render_pass_encoder2020.drawIndexed(3);
    const buffer10155 = device10.createBuffer({
        label: "buffer10155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10156 = device10.createBuffer({
        label: "buffer10156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1056 = device10.createBindGroup({
        label: "bind_group1056",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10156,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1056);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder1020.end();
    device10.queue.submit([]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10157 = device10.createBuffer({
        label: "buffer10157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10157, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10157, 0);
    const buffer10158 = device10.createBuffer({
        label: "buffer10158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10159 = device10.createBuffer({
        label: "buffer10159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1057 = device10.createBindGroup({
        label: "bind_group1057",
        layout: compute_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10159,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1057);
    render_pass_encoder1020.drawIndexedIndirect(buffer10124, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const buffer10160 = device10.createBuffer({
        label: "buffer10160",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10161 = device10.createBuffer({
        label: "buffer10161",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1058 = device10.createBindGroup({
        label: "bind_group1058",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10160,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10161,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1058);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder2030.endOcclusionQuery()
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2040.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    const buffer10162 = device10.createBuffer({
        label: "buffer10162",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10163 = device10.createBuffer({
        label: "buffer10163",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1059 = device10.createBindGroup({
        label: "bind_group1059",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10162,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10163,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1059);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1021.end();
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10164 = device10.createBuffer({
        label: "buffer10164",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10164, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10164, 0);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.end();
    const buffer10165 = device10.createBuffer({
        label: "buffer10165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10166 = device10.createBuffer({
        label: "buffer10166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1060 = device10.createBindGroup({
        label: "bind_group1060",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10166,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1060);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10167 = device10.createBuffer({
        label: "buffer10167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10167, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10167, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10168 = device10.createBuffer({
        label: "buffer10168",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10168, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10168, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder1010.end();
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    const buffer10169 = device10.createBuffer({
        label: "buffer10169",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10170 = device10.createBuffer({
        label: "buffer10170",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1061 = device10.createBindGroup({
        label: "bind_group1061",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10169,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10170,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1061);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1020.end();
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2011, 0);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10171 = device10.createBuffer({
        label: "buffer10171",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10171, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10171, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1021.popDebugGroup()
    device60.queue.submit([]);
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10172 = device10.createBuffer({
        label: "buffer10172",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10172, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10172, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer10160, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1066, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder2040.popDebugGroup();
    const buffer10173 = device10.createBuffer({
        label: "buffer10173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10174 = device10.createBuffer({
        label: "buffer10174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1062 = device10.createBindGroup({
        label: "bind_group1062",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10174,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1062);
    const buffer10175 = device10.createBuffer({
        label: "buffer10175",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10176 = device10.createBuffer({
        label: "buffer10176",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1063 = device10.createBindGroup({
        label: "bind_group1063",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10175,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10176,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1063);
    render_pass_encoder2020.end();
    compute_pass_encoder1030.end();
    render_pass_encoder1020.drawIndirect(buffer10164, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10177 = device10.createBuffer({
        label: "buffer10177",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10177, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10177, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    device60.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    device50.queue.submit([]);
    render_pass_encoder2040.end();
    compute_pass_encoder1010.end();
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder2031.drawIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10178 = device10.createBuffer({
        label: "buffer10178",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10178, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10178, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2031.end();
    const buffer10179 = device10.createBuffer({
        label: "buffer10179",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10180 = device10.createBuffer({
        label: "buffer10180",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1064 = device10.createBindGroup({
        label: "bind_group1064",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10179,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10180,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1064);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    const buffer10181 = device10.createBuffer({
        label: "buffer10181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10182 = device10.createBuffer({
        label: "buffer10182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1065 = device10.createBindGroup({
        label: "bind_group1065",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10182,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1065);
    const buffer10183 = device10.createBuffer({
        label: "buffer10183",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10184 = device10.createBuffer({
        label: "buffer10184",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1066 = device10.createBindGroup({
        label: "bind_group1066",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10183,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10184,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1066);
    render_pass_encoder1020.setIndexBuffer(buffer10168, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.end();
    device10.queue.submit([command_buffer101, ]);
    const buffer10185 = device10.createBuffer({
        label: "buffer10185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10186 = device10.createBuffer({
        label: "buffer10186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1067 = device10.createBindGroup({
        label: "bind_group1067",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10186,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1067);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2040.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer206, 0);
    const buffer10187 = device10.createBuffer({
        label: "buffer10187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10188 = device10.createBuffer({
        label: "buffer10188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1068 = device10.createBindGroup({
        label: "bind_group1068",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10188,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1068);
    const buffer10189 = device10.createBuffer({
        label: "buffer10189",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10190 = device10.createBuffer({
        label: "buffer10190",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1069 = device10.createBindGroup({
        label: "bind_group1069",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10189,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10190,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1069);
    compute_pass_encoder1000.dispatchWorkgroups(100);
}