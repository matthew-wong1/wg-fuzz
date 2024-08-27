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
    
    const array0 = new Float32Array([0.25, -0.25, 0.5, 1.0, -0.75, -0.75, 0.0, 0.25, 0.25, -0.5, -0.75, -1.0, 0.0, -1.0, -0.25, 0.5, 0.75, -0.75, 0.5, -1.0, 0.75, 0.25, -0.75, 0.75, -0.75, 0.75, -0.25, 0.75, 0.5, -1.0, 0.0, -0.25, -0.25, -0.75, 1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.25, 1.0, -0.5, -0.75, 0.5, -1.0, -0.5, -0.25, -1.0, 0.75, -1.0, 1.0, -1.0, -0.25, -0.5, 0.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -0.25, 0.5, -1.0, -0.25, 0.5, 0.5, 0.25, 0.5, 0.75, -0.25, 0.25, -1.0, 0.75, 0.75, -1.0, 0.75, 0.25, 0.5, -0.5, -0.25, -0.5, -1.0, 0.0, 0.5, -0.75, 0.0, 0.25, 1.0, -0.5, -0.75, -0.25, 0.25, -0.25, 1.0, -0.5, 0.0, -0.25, 0.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
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
    device10.destroy();
    const array1 = new Float32Array([0.0, -1.0, -0.5, -0.5, -0.5, 0.25, 0.75, 0.5, -0.25, -1.0, 0.5, -0.25, -0.25, -1.0, 0.0, 0.25, -0.25, 1.0, -0.75, 0.25, -1.0, -0.25, 0.5, -0.25, -1.0, 0.0, 0.5, 0.0, 0.25, 1.0, -0.5, 1.0, 0.75, 1.0, 0.75, 0.25, -1.0, 0.5, -0.75, -1.0, 0.0, 1.0, -0.75, 0.5, 0.0, -0.75, 1.0, 0.5, -0.25, 0.5, -0.25, 0.5, 1.0, -0.75, 0.5, -0.75, -1.0, -0.25, 0.5, 0.0, 1.0, 0.5, 0.25, 0.5, -0.25, 1.0, -0.75, 0.75, 0.0, 0.0, 0.0, 0.75, -1.0, 1.0, 1.0, 0.25, 0.75, 0.0, 0.0, 1.0, -0.75, -0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.75, 0.25, 0.0, 0.75, -0.75, 1.0, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    device40.pushErrorScope("validation");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query301.destroy()
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
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
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device50.pushErrorScope("out-of-memory");
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    buffer401.destroy()
    device30.destroy();
    
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device50.destroy();
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
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
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
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
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    
    buffer404.destroy()
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer403.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer402.destroy()
    device60.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.setPipeline(render_pipeline406);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.75, 1.0, -0.75, -0.25, 1.0, 0.0, -1.0, 0.5, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, -0.25, 0.25, 1.0, -0.75, 0.5, -0.75, 0.5, -0.25, -0.5, 1.0, 0.25, 0.0, 0.25, -0.25, 0.75, 0.5, -0.5, -0.25, -0.75, -0.75, 0.25, -0.75, -0.25, -1.0, 1.0, 0.25, 0.25, -1.0, 0.0, -0.5, -0.5, -0.5, -1.0, 0.75, 0.0, 0.0, -0.25, 0.25, 0.5, 0.5, -0.25, 0.0, -0.5, 0.0, 1.0, -1.0, 0.0, 0.5, 1.0, 0.75, 1.0, -0.25, -0.5, 0.0, 0.25, -0.25, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, 0.25, 0.0, 0.75, -0.25, -0.75, 0.75, 0.75, 1.0, 0.0, 0.5, -0.75, 0.5, -1.0, -0.5, 0.5, -0.75, -1.0, 0.25, 1.0, 1.0, -0.25, ]);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    texture400.destroy();
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
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
    
    
    
    device40.destroy();
    
    
    
    
    
    
    const array3 = new Float32Array([0.75, 0.5, -0.5, -0.25, 0.0, -0.5, -1.0, -1.0, -0.25, -1.0, 0.75, 0.25, 0.5, -0.75, 0.25, 0.25, 1.0, 0.5, 0.0, 0.25, 1.0, -0.5, 0.0, 0.5, 0.0, -0.5, -0.75, 1.0, 0.25, -0.5, 1.0, 0.0, 0.5, 0.25, -0.5, 1.0, 1.0, 1.0, 0.25, -0.75, 0.0, -0.5, -1.0, -0.25, -0.25, 0.0, -0.25, 1.0, 0.75, -0.75, -0.75, -0.75, -0.5, -0.5, -0.25, 0.5, 1.0, -0.25, 1.0, 0.0, -0.75, 0.75, -0.75, 0.75, 0.0, -0.25, -1.0, 1.0, 0.75, -0.75, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, -0.75, 0.0, 0.5, -0.5, -0.5, 0.25, -1.0, -1.0, 0.25, 1.0, -0.75, -1.0, -0.75, -0.5, -0.25, 0.75, 0.25, -0.75, -1.0, 0.25, -0.5, -0.5, 0.5, -1.0, ]);
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    render_bundle_encoder701.insertDebugMarker("marker");
    device70.pushErrorScope("out-of-memory");
    render_bundle_encoder700.popDebugGroup();
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder800.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-0.5, -0.25, 0.75, 0.25, 1.0, 0.75, -0.25, -0.25, 0.25, -1.0, 0.25, -0.5, 0.5, 1.0, 0.0, 0.25, 0.75, 0.5, -1.0, 0.25, 0.25, 0.5, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, -1.0, -1.0, 1.0, 0.25, 0.75, 1.0, -1.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.5, -0.25, 0.75, 0.0, 0.5, -1.0, 1.0, 0.5, -0.25, 0.0, 1.0, 0.75, 0.5, -0.5, 0.5, 0.0, 0.25, 0.25, -0.5, 0.5, 0.25, -0.25, -0.5, -0.75, -1.0, -0.75, -1.0, 0.75, -1.0, -1.0, -0.75, -0.5, 0.5, -0.75, 0.25, 0.5, 0.0, 0.0, 0.5, -0.25, -0.25, 0.0, -0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.5, -0.25, 0.25, -0.25, 0.5, 1.0, 0.5, -1.0, 0.0, -0.5, -0.25, -0.75, ]);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    command_encoder800.insertDebugMarker("mymarker");
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const array5 = new Float32Array([0.5, 0.75, 0.5, 0.75, 0.25, 0.75, 0.25, 0.75, 0.5, -0.25, -0.75, 1.0, 0.5, -0.5, 1.0, -0.75, -1.0, 0.0, 0.0, 1.0, 0.25, 0.25, 1.0, -0.25, 0.25, 0.0, -0.25, 0.0, -0.75, -0.25, -0.75, -1.0, 1.0, -0.75, -0.5, 0.0, 0.5, 0.75, -0.5, 0.0, 0.5, 0.5, 0.25, 0.75, 0.25, -0.75, -0.75, 0.0, -0.75, -0.25, 0.25, -0.25, 0.0, 0.25, 0.25, 0.0, 0.75, 0.25, -1.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.0, 0.0, 0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 0.5, 0.0, 1.0, 1.0, 0.5, -0.75, 0.0, -0.5, -0.75, -0.25, -0.5, 0.5, 0.5, -0.25, -0.25, -0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 0.0, -0.25, -0.25, -0.75, 0.75, 0.0, 0.5, ]);
    query700.destroy()
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const command_buffer800 = command_encoder800.finish();
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder802.insertDebugMarker("mymarker");
    
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    
    
    
    
    render_bundle_encoder800.popDebugGroup();
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    buffer700.destroy()
    
    command_encoder803.pushDebugGroup("mygroupmarker")
    
    query801.destroy()
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.queue.writeTexture({ texture: texture701 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder701.setPipeline(render_pipeline700);
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    command_encoder803.insertDebugMarker("mymarker");
    const compute_pass_encoder8040 = command_encoder804.beginComputePass({ label: "compute_pass_encoder8040" });
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture701.destroy();
    
    
    const command_encoder805 = device80.createCommandEncoder({ label: "command_encoder805" });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const command_buffer802 = command_encoder802.finish();
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    buffer701.destroy()
    
    
    command_encoder805.insertDebugMarker("mymarker");
    
    render_bundle_encoder702.setPipeline(render_pipeline702);
    
    
    command_encoder805.pushDebugGroup("mygroupmarker")
    query700.destroy()
    
    
    
    device80.pushErrorScope("validation");
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture700.destroy();
    const array6 = new Float32Array([-0.25, 0.5, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -1.0, 0.75, -0.75, 0.25, 1.0, -0.5, -0.5, -0.5, -0.5, 0.5, -0.75, 0.25, 0.5, -0.25, -0.25, 0.25, 0.0, 0.5, -0.25, -1.0, 0.5, -0.5, 0.75, 1.0, -0.25, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, -0.75, 0.75, 0.5, -0.5, 0.25, -0.5, 0.25, 0.5, 0.75, -0.25, 1.0, 0.75, 0.0, 0.5, -0.75, 0.5, -0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 0.0, 0.25, -1.0, 0.25, 0.0, -0.25, 0.0, 1.0, 1.0, -0.5, 0.0, 0.75, 1.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.5, -0.5, 0.0, -0.5, -0.5, 0.5, 1.0, -1.0, 0.5, -1.0, 0.5, 0.25, -0.25, -0.25, -0.5, 0.0, -0.25, -0.75, ]);
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    query700.destroy()
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    render_bundle_encoder700.popDebugGroup();
    
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder8040.pushDebugGroup("group_marker")
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.25, -0.25, 0.75, 0.25, 1.0, -1.0, -1.0, -0.75, 1.0, 0.75, -0.75, -1.0, 0.0, 0.25, 1.0, -0.75, 0.0, -0.75, 0.75, 0.25, 1.0, -0.25, -0.25, 0.25, -1.0, 0.5, 0.5, 0.5, -0.25, -0.5, 0.5, 0.0, 0.25, 0.75, -0.75, -0.75, 1.0, 1.0, 0.25, -0.25, 0.75, 1.0, -0.25, 1.0, 0.5, 1.0, -0.5, 0.5, -0.5, 0.25, 1.0, 0.0, 0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -0.75, 0.0, 1.0, -1.0, -0.25, 0.75, 0.5, 1.0, -1.0, 0.0, 0.75, 1.0, -0.25, 1.0, -0.25, -0.25, -0.5, 0.75, -0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 1.0, -0.25, -0.25, -0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.75, -0.5, 0.0, -1.0, -1.0, ]);
    compute_pass_encoder8010.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    
    
    
    
    buffer704.destroy()
    query800.destroy()
    
    
    texture800.destroy();
    query701.destroy()
    command_encoder803.popDebugGroup()
    compute_pass_encoder8040.popDebugGroup()
    query701.destroy()
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const command_buffer803 = command_encoder803.finish();
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group701);
    const compute_pass_encoder8050 = command_encoder805.beginComputePass({ label: "compute_pass_encoder8050" });
    render_bundle_encoder702.insertDebugMarker("marker");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder801.insertDebugMarker("marker");
    device70.pushErrorScope("validation");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query800.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query700.destroy()
    
    
    buffer800.destroy()
    query801.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    query701.destroy()
    query701.destroy()
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const sampler805 = device80.createSampler( { label: "sampler805" } );
    device80.pushErrorScope("internal");
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    query700.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder801.popDebugGroup();
    buffer702.destroy()
    query801.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    query700.destroy()
    const sampler806 = device80.createSampler( { label: "sampler806" } );
    compute_pass_encoder8040.pushDebugGroup("group_marker")
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8050.insertDebugMarker("marker")
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    
    
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
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
    render_bundle_encoder802.pushDebugGroup("group_marker");
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    compute_pass_encoder8010.insertDebugMarker("marker")
    render_bundle_encoder800.insertDebugMarker("marker");
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    texture801.destroy();
    query701.destroy()
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    render_bundle_encoder702.popDebugGroup();
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    query801.destroy()
    render_bundle_encoder802.popDebugGroup();
    
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module806.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const command_encoder806 = device80.createCommandEncoder({ label: "command_encoder806" });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder8060 = command_encoder806.beginComputePass({ label: "compute_pass_encoder8060" });
    query800.destroy()
    
    query700.destroy()
    
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8040.insertDebugMarker("marker")
    render_bundle_encoder801.popDebugGroup();
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    query701.destroy()
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    compute_pass_encoder7000.insertDebugMarker("marker")
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const command_encoder807 = device80.createCommandEncoder({ label: "command_encoder807" });
    const array8 = new Float32Array([-1.0, 0.5, 0.0, -0.75, 0.25, -1.0, 0.0, 0.75, -1.0, -0.5, -1.0, 0.75, -0.5, -0.75, 0.0, 1.0, -0.5, 0.5, 0.25, 0.75, 0.5, -0.25, -0.5, -0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 0.5, 0.0, 0.75, -1.0, 0.5, 1.0, -0.5, 1.0, 1.0, -0.25, -0.75, 0.0, -0.75, -0.75, 0.25, -1.0, 1.0, -1.0, 0.25, 0.75, 0.75, 0.75, 0.25, 0.25, -1.0, 1.0, 0.5, 0.75, 0.75, 0.25, 0.5, 0.5, -0.25, 0.5, -0.5, -0.5, 0.5, 0.5, 0.0, -1.0, 0.25, -0.25, 0.0, 0.25, 0.75, -0.25, -0.75, 0.0, 0.25, -1.0, -0.75, 0.75, -0.5, -0.5, -0.25, 0.25, 0.25, 0.25, -1.0, 0.25, 0.25, -0.25, 0.0, -0.75, -0.75, 1.0, -0.25, -1.0, 0.5, -0.25, 0.5, ]);
    
    
    buffer705.destroy()
    
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_buffer701 = command_encoder701.finish();
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder801.setPipeline(render_pipeline800);
    compute_pass_encoder8040.insertDebugMarker("marker")
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    device80.pushErrorScope("internal");
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer709,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group702);
    device80.queue.submit([command_buffer803, ]);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder8010.popDebugGroup()
    compute_pass_encoder8040.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer807 = command_encoder807.finish();
    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7011,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group703);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer807, ]);
    compute_pass_encoder7000.end();
    const command_buffer700 = command_encoder700.finish();
    device70.queue.submit([command_buffer700, ]);
}