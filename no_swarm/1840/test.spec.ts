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
    
    const array0 = new Float32Array([0.25, 0.25, 0.5, -0.75, 0.25, 0.75, 0.5, -0.75, -0.75, -0.75, -0.5, 1.0, -0.5, -0.5, 0.0, 0.25, 0.0, 0.25, 0.5, -0.75, -0.5, -0.75, 1.0, 0.75, 0.25, -0.75, -1.0, -1.0, 0.5, 0.0, 0.25, 0.25, 0.5, 1.0, 0.25, -0.5, 1.0, -0.75, 0.0, -0.75, -0.75, 0.25, 0.5, 0.5, 0.5, 1.0, -0.25, -0.75, 1.0, -0.25, 0.5, -0.5, -0.25, 0.0, 0.25, -1.0, -0.25, 0.0, -0.5, 0.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.0, -0.25, -0.75, -0.5, 1.0, -0.75, 1.0, -1.0, -0.5, -0.25, 0.0, 0.25, 1.0, -0.75, 1.0, -0.25, 0.0, 1.0, -0.25, 0.0, 0.0, -1.0, -0.75, 0.75, 1.0, -0.5, 0.0, -0.5, -1.0, 0.75, 0.5, 1.0, 0.5, 0.25, 0.75, ]);
    
    
    
    
    const array1 = new Float32Array([0.25, 1.0, -0.75, -0.5, -0.25, 0.5, 1.0, 0.0, 0.5, 0.25, -0.5, -1.0, -1.0, 0.75, -1.0, -1.0, 1.0, -0.25, -1.0, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, -1.0, -0.25, 0.75, -0.75, 0.0, -0.75, 0.0, 1.0, 0.5, -0.75, -1.0, 0.0, 1.0, -1.0, -0.5, 0.5, 0.5, 0.0, 0.5, -0.5, -0.25, 0.75, 0.0, 0.0, 0.0, 0.75, 0.25, 0.75, 0.0, 1.0, 0.25, -0.25, 0.75, 0.0, -0.25, 1.0, 1.0, -1.0, 1.0, -0.75, -0.75, 0.25, -0.75, 1.0, -0.25, 1.0, 0.0, -0.5, 1.0, 0.75, 0.0, 0.75, 0.5, 0.75, -0.25, 0.75, 1.0, -0.25, -1.0, -0.25, 0.0, -0.75, 0.5, 0.5, -0.5, -0.25, -0.25, 1.0, -1.0, 1.0, 0.0, 0.0, -1.0, -1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.25, 0.5, 0.25, -0.25, -0.5, 0.75, 1.0, -1.0, -0.25, 1.0, -0.75, 0.5, -0.25, -0.25, 0.0, 1.0, -0.25, 0.75, 0.5, 0.5, 0.75, -0.25, 0.25, -0.75, -0.75, -1.0, -1.0, 0.5, -0.25, -0.25, 0.0, -0.5, -0.75, 0.0, -0.75, -0.5, -1.0, 0.5, 0.75, -0.5, 1.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.25, -0.75, -0.5, 0.5, 0.25, 1.0, -0.75, 0.5, 0.5, 1.0, -0.75, -0.25, 0.0, -0.75, 0.5, -1.0, 1.0, -0.5, 0.0, 1.0, -0.5, 0.0, -0.25, 0.25, 0.25, 0.75, 0.75, 1.0, 0.5, 0.75, -0.75, 0.0, -0.5, -0.75, -0.75, -1.0, -1.0, 0.25, 0.25, -0.75, 0.25, -1.0, 0.5, 0.5, -0.25, -0.75, 0.0, -0.5, -0.25, -1.0, -0.25, 0.75, 0.75, -0.75, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    texture101.destroy();
    device10.destroy();
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
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.destroy();
    device20.pushErrorScope("out-of-memory");
    const array3 = new Float32Array([0.25, 0.5, -0.5, -0.75, -0.75, 0.75, 0.25, 0.5, -0.25, -0.5, 0.5, -0.75, 0.5, 0.75, 0.0, -1.0, 1.0, 0.5, -0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -1.0, 0.0, 0.75, -0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 0.5, -0.5, -0.75, 1.0, 0.75, -1.0, -0.75, 0.75, 0.5, -0.25, -0.75, -0.25, 0.0, -0.75, 0.0, 0.5, -0.5, -1.0, 1.0, -0.5, -1.0, 1.0, 0.0, -1.0, 0.5, -0.25, 0.0, 0.0, 0.75, -1.0, 0.5, 1.0, -1.0, 1.0, 0.0, 0.75, -0.5, -0.5, 1.0, -0.25, -0.75, 0.0, -0.75, -1.0, 0.5, 0.5, -0.75, 0.5, -0.5, 0.25, 1.0, -0.75, 0.0, 0.5, 0.0, 0.0, -0.25, 0.25, 1.0, -0.5, 0.0, 1.0, 0.25, -1.0, -0.25, -0.5, -0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    texture202.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.destroy();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture203.destroy();
    const array4 = new Float32Array([0.75, 0.0, 0.25, 0.0, 0.0, 0.0, -0.5, 0.75, -0.25, 0.75, -0.75, 0.0, 0.0, 0.0, -0.5, 0.25, 0.5, -0.5, -0.25, 0.0, 0.5, -0.75, -0.75, 0.75, 0.5, -0.25, -0.75, 0.75, 0.0, 0.25, 0.75, 0.75, -0.75, 0.0, -0.75, -0.5, 0.5, 0.75, -0.5, 1.0, -0.5, 0.5, 0.0, -0.5, -0.5, -0.5, 0.75, 0.0, 0.0, 0.0, 1.0, -0.75, 0.0, 0.0, 0.5, -1.0, 0.0, -1.0, 0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.75, -0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 0.0, -0.25, -1.0, -0.75, 1.0, 1.0, -0.25, 0.5, 0.75, 0.75, -0.5, 0.0, -1.0, -0.25, -0.25, 1.0, -0.25, 0.25, -0.5, 0.5, 1.0, 0.25, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 0.25, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device10.pushErrorScope("internal");
    command_encoder300.pushDebugGroup("mygroupmarker")
    
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    texture201.destroy();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer200.destroy()
    device30.pushErrorScope("internal");
    
    
    query201.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.popDebugGroup();
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    query202.destroy()
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    
    
    device10.pushErrorScope("out-of-memory");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query204.destroy()
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    render_pass_encoder2000.beginOcclusionQuery(0)
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.endOcclusionQuery()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.insertDebugMarker("marker");
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    texture301.destroy();
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
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
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query203.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2000.beginOcclusionQuery(1)
    render_bundle_encoder201.setPipeline(render_pipeline200);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setStencilReference(1);
    const array5 = new Float32Array([0.75, 0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 0.0, -1.0, 0.5, 0.5, -1.0, 0.0, -0.5, 0.0, -0.25, -0.25, -0.75, -0.5, 0.5, 0.0, 0.0, -0.5, 0.0, 0.75, -1.0, -0.5, -0.75, -0.25, 1.0, 0.5, 0.0, -0.25, 0.25, -0.5, 0.25, -0.25, 0.5, -1.0, -0.5, -0.5, -0.25, 0.75, 0.0, 1.0, -0.5, 0.25, 0.0, 0.75, -0.75, 1.0, 0.75, -0.25, -1.0, 1.0, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.0, 1.0, -1.0, -0.25, 1.0, 0.75, -0.5, 0.75, 1.0, 0.5, -0.5, -1.0, 1.0, 0.0, -0.75, 0.0, -0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.5, 0.75, 0.0, 0.0, 0.75, 0.0, -1.0, 0.0, 0.75, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    texture302.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    texture304.destroy();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    command_encoder200.insertDebugMarker("mymarker");
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query204.destroy()
    query204.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    
    texture203.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2011.setPipeline(render_pipeline200);
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.endOcclusionQuery()
    command_encoder200.insertDebugMarker("mymarker");
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.popDebugGroup();
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    query300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    query400.destroy()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2051,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder2020.setPipeline(render_pipeline201);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device00.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    buffer206.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
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

    render_pass_encoder2010.setBindGroup(0, bind_group204);
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group205);
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    query300.destroy()
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.setVertexBuffer(0, buffer208);
    buffer207.destroy()
    query203.destroy()
    
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    buffer204.destroy()
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
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    render_pass_encoder2000.beginOcclusionQuery(2)
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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
    
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group206);
    device50.destroy();
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder3000.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    texture305.destroy();
    
    buffer2012.destroy()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2014, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2014, 0);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("out-of-memory");
    texture204.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer2012);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2020.setStencilReference(1);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2020.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    buffer203.destroy()
    device20.queue.writeBuffer(buffer2014, 0, array5, 0, array5.length);
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder202.setPipeline(render_pipeline201);
    render_bundle_encoder200.setIndexBuffer(buffer206, "uint16");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: query204
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const array6 = new Float32Array([0.25, 0.5, 0.75, 1.0, 0.0, 1.0, 0.5, 0.5, -0.25, 0.5, 0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -1.0, 0.5, 0.5, 1.0, 0.25, -0.25, -0.5, 0.75, 0.5, 0.25, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, -0.5, 0.0, 1.0, -0.75, -0.5, -0.5, 0.25, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, -0.5, 0.75, 0.0, 0.25, 0.25, 1.0, 0.25, -0.75, -0.25, 0.25, -0.75, 0.0, 1.0, 0.0, -0.25, -1.0, 0.0, -0.5, -0.25, -0.75, 1.0, -0.75, 0.25, 1.0, 1.0, -0.75, -0.75, 0.75, 0.5, 0.75, -0.75, 0.75, -1.0, 0.5, 0.0, 0.5, -1.0, -0.75, 0.5, -0.5, -0.5, -1.0, -0.5, 0.5, -0.25, 0.25, 0.0, -0.25, 0.0, 0.5, -0.25, 0.75, -0.5, ]);
    render_pass_encoder2001.setPipeline(render_pipeline200);
    buffer209.destroy()
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    buffer205.destroy()
    
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture205
        },
        {
            buffer: buffer2015
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder200.drawIndexed(3);
    texture303.destroy();
    
    
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    command_encoder203.insertDebugMarker("mymarker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2050,
            },
        ],
        occlusionQuerySet: query204
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer2011.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2030.setPipeline(render_pipeline202);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group207);
    texture200.destroy();
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2015, 0, array6, 0, array6.length);
    render_pass_encoder2021.setPipeline(render_pipeline201);
    
    
    render_pass_encoder2010.setVertexBuffer(0, buffer206);
    
    render_pass_encoder2001.pushDebugGroup("group_marker");
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2014, 0, array2, 0, array2.length);
    query203.destroy()
    
    buffer100.destroy()
    buffer204.destroy()
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture205
        },
        {
            buffer: buffer2015
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2010.end();
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture205 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer2012,
        0
    )
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer301.destroy()
    device20.queue.writeBuffer(buffer2015, 0, array0, 0, array0.length);
    render_pass_encoder2001.setScissorRect(0, 0, texture205.width / 2, texture205.height / 2);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group208);
    device20.queue.writeBuffer(buffer2014, 0, array0, 0, array0.length);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder301.popDebugGroup();
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group209);
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.draw(3);
    device20.queue.writeBuffer(buffer2014, 0, array5, 0, array5.length);
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    compute_pass_encoder3000.popDebugGroup()
    
    render_pass_encoder2021.setVertexBuffer(0, buffer203);
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
        occlusionQuerySet: query205
    });
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2001.setStencilReference(1);
    device40.queue.submit([]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    buffer2014.destroy()
    
    query201.destroy()
    render_pass_encoder2000.popDebugGroup();
    query203.destroy()
    
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    device20.queue.writeBuffer(buffer208, 0, array4, 0, array4.length);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    texture204.destroy();
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder2021.end();
    
    render_bundle_encoder202.popDebugGroup();
    
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query201
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder2031.setPipeline(render_pipeline204);
    render_pass_encoder2022.setPipeline(render_pipeline200);
    query201.destroy()
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
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    render_pass_encoder2001.setViewport(0, 0, texture205.width / 2, texture205.height / 2, 0, 1);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2017, 0, array6, 0, array6.length);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query302
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline203);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    render_pass_encoder2022.setBindGroup(0, bind_group2010);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    query300.destroy()
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2022.setVertexBuffer(0, buffer200);
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group2011);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder2011.setVertexBuffer(0, buffer2022);
    render_pass_encoder2022.drawIndirect(buffer2014, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.setVertexBuffer(0, buffer206);
    render_pass_encoder2031.drawIndirect(buffer209, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2000.end();
    compute_pass_encoder2000.end();
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2012);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group2013);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder2030.setVertexBuffer(0, buffer2020);
    render_pass_encoder2031.end();
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2022.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2020.setVertexBuffer(0, buffer2021);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2001.popDebugGroup();
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group2014);
    render_pass_encoder2001.setVertexBuffer(0, buffer2012);
    const command_buffer201 = command_encoder201.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2022.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    render_pass_encoder2022.drawIndirect(buffer2014, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    const command_buffer203 = command_encoder203.finish();
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder2010.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2000.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2001.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2001.setIndexBuffer(buffer2030, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2022.drawIndirect(buffer2014, 0);
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
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2022.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2021.end();
    const command_buffer300 = command_encoder300.finish();
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2022.setIndexBuffer(buffer2025, "uint16");
    device20.queue.submit([]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndirect(buffer202, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2031.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexed(3);
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2017);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    device30.queue.submit([command_buffer300, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2031.drawIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2018);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2022.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder3000.end();
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2040, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder2031.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2040, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2021.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer306, 0);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2022.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2025, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2019);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndirect(buffer2034, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2031.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2022.drawIndexedIndirect(buffer2042, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder2020.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2045, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2034, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder2011.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndirect(buffer2045, 0);
    device20.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2022.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2042, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2022.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2022.drawIndirect(buffer2017, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2045, 0);
    render_pass_encoder2021.drawIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2045, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2022.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.drawIndirect(buffer2037, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2022.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2022.drawIndirect(buffer2020, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.setIndexBuffer(buffer2021, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2022.drawIndexed(3);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer2038, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2000.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2022.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    render_pass_encoder2022.drawIndirect(buffer2046, 0);
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2010, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2042, 0);
    compute_pass_encoder2020.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2045, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2045, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2042, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2047, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
}