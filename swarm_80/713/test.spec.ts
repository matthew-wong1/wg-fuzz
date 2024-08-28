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
    
    const array0 = new Float32Array([-0.75, 0.25, -0.25, 1.0, -0.5, 0.25, -0.75, -0.75, 0.25, 0.0, -0.5, 1.0, 0.75, 0.5, 0.75, 0.25, 1.0, -0.5, -0.25, -1.0, -0.25, -0.75, -1.0, -1.0, -0.5, 0.75, 1.0, -0.75, 1.0, 1.0, 0.75, 0.75, -0.25, 0.75, -1.0, -1.0, 0.0, -0.25, -0.5, 0.0, -1.0, 0.5, 0.25, 0.75, 0.5, -0.5, 0.5, 0.5, 0.25, 0.25, -0.75, 1.0, -1.0, -0.75, 0.75, 0.75, -0.5, 1.0, -1.0, 0.75, 1.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.75, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 0.75, 1.0, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, 0.5, -0.5, 0.0, 0.25, -1.0, 0.0, 1.0, -1.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.5, 0.25, 0.75, -0.75, -0.25, 0.25, ]);
    
    const array1 = new Float32Array([0.25, 0.25, -0.5, 0.75, 0.75, 0.25, -0.5, -0.25, -1.0, 0.0, 0.75, -0.25, 0.5, 0.5, 0.5, -0.5, 0.75, 0.5, 0.5, 0.5, -1.0, -1.0, 1.0, -0.75, -1.0, -0.75, 0.0, -0.75, -0.25, 0.25, 1.0, -0.75, 0.0, -0.25, 0.5, -0.5, -0.5, -1.0, 1.0, 1.0, 0.75, -0.5, 0.5, -0.5, -0.75, -0.75, -0.25, 1.0, -0.75, -1.0, 0.25, -0.75, -0.75, 1.0, 0.0, -1.0, 0.25, -1.0, -0.75, 1.0, -0.5, 0.0, -0.75, 0.75, 0.5, -0.75, -0.25, -0.25, 0.75, -1.0, 0.5, -0.5, 0.75, -1.0, 0.75, 1.0, 0.25, -0.75, 0.5, -0.5, 0.5, 0.5, 0.75, 0.25, -1.0, 0.25, 0.75, -0.25, 0.75, -0.5, -0.25, 1.0, 0.75, 0.25, -0.75, 0.25, 1.0, 1.0, 0.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.destroy();
    
    const array2 = new Float32Array([-0.25, 0.25, 0.5, -0.25, 0.75, -0.25, 0.5, 0.0, -1.0, 0.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.0, -0.25, -0.5, 0.5, 0.25, 0.5, -0.5, -0.25, 0.75, 0.0, -0.25, 0.25, -0.75, -0.75, -0.25, 0.0, 1.0, 1.0, 0.5, 1.0, -0.75, 0.0, -0.75, 0.5, -0.25, -0.75, -1.0, -0.25, -0.5, -0.25, -0.75, 1.0, -0.25, 0.0, 0.25, 0.75, -0.5, 1.0, 1.0, 0.75, 1.0, -1.0, 1.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.75, -0.25, 0.0, -0.75, 1.0, 0.0, -0.25, 0.75, -0.5, -0.75, 0.25, 1.0, 0.75, 0.75, 1.0, 0.75, -1.0, 0.0, -1.0, -0.25, -0.25, 0.5, -0.75, -1.0, -0.25, 0.75, 0.75, 0.5, 0.75, -0.25, 1.0, -0.75, 0.75, 0.0, 0.25, 0.25, 0.0, ]);
    
    
    
    
    const array3 = new Float32Array([0.5, 0.25, 0.5, 1.0, 0.75, -1.0, -0.75, -0.75, -0.25, -0.75, -0.5, 0.75, -0.5, 0.0, 0.0, -0.75, -0.5, -0.75, 0.5, -0.75, 0.25, -1.0, 0.75, -0.5, -0.5, 0.75, 1.0, 0.25, -1.0, 0.5, 0.0, -0.5, 0.75, 1.0, 1.0, -0.25, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, -0.25, -0.75, -1.0, 0.0, 1.0, 0.0, -0.25, 0.5, 0.5, 0.0, -0.25, -0.5, -0.5, -0.25, 0.0, 1.0, 0.5, -0.5, 0.25, 0.0, -0.5, 0.75, 0.75, -0.5, -0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 1.0, 0.75, 1.0, 0.0, -1.0, -0.5, 0.75, 0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.75, -0.25, -0.75, 0.5, 0.5, 0.0, -0.25, -0.5, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, -0.75, ]);
    const array4 = new Float32Array([0.0, 0.0, 0.0, 0.75, 0.75, 0.25, -0.25, 0.25, 1.0, 1.0, -0.5, 0.25, 0.75, 0.0, 0.75, -0.25, 0.0, 0.25, 1.0, 0.75, 0.75, 0.0, 0.25, -0.75, -0.25, -0.25, -0.75, 0.5, -0.25, 0.5, -1.0, 1.0, 0.75, -0.75, -0.5, -0.25, -0.5, 0.25, -1.0, 0.0, -0.25, -1.0, 0.5, 1.0, -1.0, -0.25, 0.0, -1.0, 1.0, 0.0, -0.75, -1.0, -1.0, 1.0, 0.75, 0.75, 0.0, 0.25, 1.0, -1.0, 0.75, -0.5, -0.5, -0.25, -0.75, 0.5, 1.0, 0.25, 0.75, 0.25, -1.0, 0.75, 0.75, 0.0, 0.25, -1.0, 1.0, -0.25, -0.75, 0.75, -1.0, -0.25, 0.0, 0.25, -1.0, -1.0, -0.25, 0.75, -0.5, 1.0, 0.25, -0.75, 0.75, 0.5, 0.0, -0.5, 0.0, -0.5, 0.25, 0.75, ]);
    
    
    
    
    
    
    const array5 = new Float32Array([-1.0, 1.0, -0.5, -0.25, -0.75, -0.25, 0.75, 0.0, -0.75, 0.0, -1.0, 0.0, 0.0, 1.0, 0.25, 1.0, 0.0, 1.0, 0.75, -0.75, 0.25, -1.0, -0.75, 0.25, 0.25, -1.0, 0.0, 1.0, 0.75, 0.0, -0.5, -1.0, -1.0, -0.25, 0.25, 0.0, 1.0, -0.5, 0.0, -0.5, -0.75, 0.75, -0.5, 0.75, 0.5, -0.25, 0.5, -1.0, -0.5, -0.5, -0.25, 0.75, 0.25, -0.75, 0.25, 0.25, -1.0, 0.25, 0.0, 0.25, -0.5, -1.0, 0.5, 0.0, 1.0, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, -0.5, 0.75, -0.25, 0.5, -0.25, -0.5, 0.0, 0.75, -0.25, 0.5, -1.0, 0.25, -1.0, -0.75, 1.0, 0.25, -1.0, -0.25, -0.75, -0.25, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, 0.0, -0.75, -0.25, ]);
    
    
    const array6 = new Float32Array([0.5, -0.25, 0.75, 0.0, -0.75, 1.0, 0.75, 0.0, -0.25, -0.25, 0.75, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 1.0, -0.25, -0.75, 1.0, -0.5, -0.25, 0.25, 0.25, -0.5, 1.0, -1.0, 0.5, 1.0, 0.0, -0.5, 0.5, -0.75, 0.25, 1.0, -0.25, 0.5, 0.5, 0.75, 0.25, -0.25, 0.0, -0.5, 0.75, 0.25, -0.25, -0.5, -0.25, -0.75, 0.5, -1.0, 0.5, 0.75, -0.5, -1.0, -1.0, -0.25, 0.5, -1.0, 0.25, -0.5, 0.5, -0.25, 0.5, -0.25, 1.0, 0.25, 0.0, 0.75, -0.75, 1.0, -0.5, -0.5, 0.0, -0.75, 1.0, -0.5, -0.5, -0.25, 1.0, 0.25, 0.0, 0.75, -0.75, -1.0, 1.0, 0.5, -0.25, -1.0, -1.0, 0.5, -1.0, -0.5, 0.0, 1.0, 0.25, -0.5, -0.25, -0.25, ]);
    
    
    
    const array7 = new Float32Array([-0.25, -1.0, 1.0, 1.0, 0.75, 0.0, 0.25, -1.0, 0.75, 0.0, 0.5, 0.5, -0.5, 0.75, -0.25, 0.5, -0.25, -0.25, 0.5, 0.0, 1.0, -0.5, 0.0, -0.5, 1.0, -1.0, 1.0, -0.25, -1.0, -1.0, -0.25, -0.5, -0.25, 0.0, 1.0, -0.25, -0.75, -1.0, 0.5, 0.25, 0.0, -0.5, -0.75, -0.75, 0.25, -0.25, 0.0, 1.0, 0.75, -1.0, -1.0, 0.75, 0.0, -0.75, -0.25, 0.5, -0.75, -1.0, -1.0, 0.25, -0.25, 0.75, 0.5, 0.25, -0.5, 1.0, 1.0, -0.25, -0.5, 0.75, 0.0, 0.25, 0.25, 1.0, -1.0, 1.0, -0.25, 0.5, 0.25, -0.75, 0.0, -0.25, 1.0, 0.0, 1.0, -0.5, 1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 1.0, 0.75, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    render_bundle_encoder300.popDebugGroup();
    device30.destroy();
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array8 = new Float32Array([-0.25, 0.0, -0.5, 1.0, 0.0, -0.5, 0.0, -0.75, -0.75, 1.0, 0.75, 0.25, -0.5, 0.75, -0.5, 0.5, 0.0, -0.25, -1.0, -0.5, -0.75, -0.75, 0.75, -0.5, -1.0, 0.5, 1.0, 0.75, -1.0, 0.75, -0.25, 0.5, 0.0, 0.75, -0.5, 0.75, -0.75, -0.25, -0.75, 1.0, 0.0, 0.0, -0.75, -0.5, 0.75, -0.25, 0.0, 0.75, -1.0, -0.75, 0.25, 0.25, -1.0, -0.5, -0.25, -1.0, -0.75, 0.75, 0.25, 1.0, 0.25, 0.5, 0.75, -0.5, 0.5, -0.5, 0.75, -0.5, -0.25, 0.25, 1.0, -0.75, 0.0, -0.75, 1.0, -0.75, 0.75, -0.25, 0.25, -1.0, 0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.25, 0.25, 0.0, 0.0, 1.0, -0.25, 0.0, 0.0, 1.0, 0.0, 0.5, -0.25, 0.0, 0.0, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    texture500.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device50.destroy();
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    device10.destroy();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture402 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    texture402.destroy();
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    texture400.destroy();
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.destroy();
    
    
    
    
    const array9 = new Float32Array([-0.5, -1.0, -0.25, 0.75, -0.75, 0.5, -0.25, 0.5, 0.5, -0.75, -0.5, -0.75, 0.0, 0.5, -0.5, 0.75, -0.5, -0.5, -0.25, 0.5, -1.0, 1.0, 0.75, -0.5, 0.75, 0.5, 0.75, 0.0, -0.25, 0.5, 0.5, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, -0.75, 0.5, 0.5, 1.0, 0.0, 0.25, 0.25, -1.0, 0.75, 0.0, -0.25, 0.25, -0.75, 0.0, 0.0, -0.5, 0.25, -1.0, -0.5, -1.0, -0.5, -0.75, -0.75, 0.75, 0.5, 1.0, 0.25, -0.75, 1.0, 1.0, 0.75, -1.0, -0.5, 0.5, 1.0, -0.5, -0.75, 0.25, 0.75, -0.75, -0.25, 0.25, 0.5, 0.5, -0.5, 0.0, -1.0, -0.75, -0.75, -0.25, 0.25, 0.75, -0.5, -0.5, 1.0, -0.75, -0.75, 0.5, -1.0, 1.0, 0.0, 1.0, 0.25, ]);
    const array10 = new Float32Array([1.0, -0.25, -1.0, -1.0, 0.5, 0.25, 0.5, -0.75, -1.0, 0.0, -1.0, 0.25, -0.5, -0.75, 0.75, -0.5, 1.0, -0.5, -1.0, 1.0, 0.0, 1.0, -0.75, 0.5, 0.0, 0.75, 0.0, 0.25, 1.0, 0.75, -1.0, 0.75, -1.0, -0.25, -1.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.5, 0.25, 0.25, 0.75, 0.5, 0.0, -0.25, 0.75, -0.75, -1.0, 0.25, -0.25, 0.75, 0.75, -0.75, -1.0, 0.75, -1.0, -0.5, -1.0, -1.0, 1.0, 0.5, 1.0, 0.75, 0.0, -0.5, 1.0, -0.75, 0.25, -1.0, -0.25, -0.25, 0.25, -0.25, 0.0, 0.75, 0.0, -0.25, 0.0, 1.0, 0.0, 0.5, 0.75, -0.75, -0.25, 1.0, -0.75, 0.0, -0.5, 0.0, 0.75, 1.0, 0.0, 0.0, 0.25, -1.0, -0.5, 0.75, ]);
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.destroy();
    
    
    
    
    const array11 = new Float32Array([-1.0, 1.0, 0.75, 0.0, -0.5, 0.0, 0.5, 0.25, 0.0, -0.5, -1.0, -0.5, 0.75, -0.5, 0.0, 0.75, -1.0, -0.5, -0.5, 0.5, 1.0, 0.0, -0.75, 0.75, -0.25, -0.75, -1.0, -0.5, 0.5, 0.0, -0.75, 0.25, 0.25, -0.5, -0.25, 1.0, 1.0, -0.75, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.25, 0.25, 0.5, -0.75, -0.75, 0.5, 0.75, 0.25, -0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.5, -0.75, -0.75, -0.5, 0.0, 0.25, 0.5, 1.0, -0.5, 0.25, -0.75, 0.5, -0.5, 0.25, 1.0, -0.75, 1.0, 0.0, -1.0, -0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 1.0, -0.75, 1.0, -0.75, -0.25, 0.25, 1.0, 0.5, -1.0, -0.5, 0.0, -0.25, -0.5, -0.5, 0.25, -0.5, ]);
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device70.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([-0.25, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, 1.0, -0.25, 1.0, 1.0, 0.0, -0.5, -0.5, -0.75, 1.0, 0.25, -0.25, -1.0, -0.5, -0.5, 0.25, -0.25, 0.75, -0.5, 0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 1.0, -0.75, -0.75, -0.75, 0.0, 1.0, 0.0, 0.0, -0.25, -1.0, -0.5, 0.25, -0.75, -1.0, -1.0, 0.25, -0.25, -1.0, -0.25, 0.5, -0.5, 0.5, 0.5, 0.0, 0.5, 0.5, -0.5, 0.5, -0.25, 0.5, -0.5, 0.75, 0.25, 0.25, 0.0, -0.75, -0.25, 0.25, 1.0, 0.75, -0.5, -0.75, 0.75, -0.75, 0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 0.0, 0.5, 0.25, -0.25, 0.25, 0.75, 0.5, 0.75, 0.0, 1.0, -0.5, 1.0, -0.75, 0.75, -1.0, -0.25, -0.5, 0.5, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array13 = new Float32Array([-0.5, -1.0, -0.25, 0.25, 0.75, 0.0, 0.75, 0.0, -0.25, 0.25, 0.75, -0.25, -0.5, 1.0, -1.0, -0.25, -1.0, 0.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.75, -1.0, 0.0, 1.0, -0.25, -0.75, -0.75, -1.0, -0.5, -0.75, -1.0, 1.0, 1.0, -1.0, -1.0, -1.0, 0.5, -0.5, -0.5, 0.0, -0.75, -0.5, -0.75, -0.75, -1.0, -1.0, 0.25, 0.25, 0.75, 0.0, -0.5, -0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.5, 0.25, 0.25, 1.0, -0.25, 0.0, 0.0, -0.25, -1.0, -0.5, 0.0, -0.75, -0.75, 0.5, 1.0, 0.0, 0.25, -1.0, 0.25, 0.0, -1.0, 0.25, 0.5, -0.5, 0.5, 0.75, 0.5, 0.75, 0.0, 1.0, 1.0, 0.5, -1.0, 0.5, 0.5, ]);
    
    const array14 = new Float32Array([-0.75, 0.25, 0.75, -0.5, 0.5, 0.25, 1.0, -0.75, 0.75, 1.0, -0.25, -0.75, 0.0, -0.25, -0.5, -0.5, -0.75, 0.25, 0.5, -0.25, 0.5, -0.25, 0.25, -0.5, -0.5, -0.5, 0.0, -0.5, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, 0.25, 0.75, 0.25, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, 0.5, 0.75, 0.25, -1.0, -0.5, 0.5, 1.0, -0.75, 1.0, 1.0, -0.75, 1.0, 0.75, -1.0, 0.75, -0.75, -0.5, 0.25, 0.25, -0.5, 0.0, -0.5, -0.25, -0.25, 0.75, 0.0, 0.75, -1.0, 1.0, 0.5, -0.5, 1.0, 0.0, -0.75, 0.5, 0.0, 0.25, -1.0, -0.75, 0.5, 0.5, -0.25, -0.25, -0.25, 0.25, 0.5, -1.0, 0.5, -0.5, 0.25, 0.25, 0.5, -1.0, 1.0, 0.25, -1.0, 1.0, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const array15 = new Float32Array([0.0, 0.25, 1.0, 1.0, -0.25, -0.25, -0.25, -0.5, -0.75, 0.25, 1.0, 1.0, -0.25, -0.25, -0.5, -0.25, -0.75, 0.0, -0.5, 1.0, 1.0, 1.0, -0.75, -0.25, -0.75, 0.75, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, 0.5, -0.25, 0.0, 0.75, 0.75, 0.0, 0.5, 1.0, 0.25, 0.75, 0.25, -0.25, -1.0, -0.75, -1.0, 0.25, -0.25, -0.25, 0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -0.75, 0.0, 0.0, -0.75, 0.0, 0.75, 0.25, -0.25, 0.0, -0.25, 0.5, 1.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.75, -0.75, -0.5, 1.0, -1.0, -0.25, -0.25, 1.0, 0.0, -0.25, 0.5, -1.0, -0.5, -0.75, -0.25, 0.75, 0.5, 0.25, 0.75, -0.5, -0.5, 0.75, -0.25, 1.0, 0.0, 0.75, -1.0, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    
    
    texture800.destroy();
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder800.popDebugGroup();
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer900.destroy()
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device90.destroy();
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device80.queue.writeTexture({ texture: texture801 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture801 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.destroy();
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const sampler1003 = device100.createSampler( { label: "sampler1003" } );
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    
    render_bundle_encoder1002.pushDebugGroup("group_marker");
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler1004 = device100.createSampler( { label: "sampler1004" } );
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    render_bundle_encoder1002.insertDebugMarker("marker");
    
    render_bundle_encoder1002.popDebugGroup();
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    
    
    
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    
    
    device140.destroy();
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer1000.destroy()
    device110.destroy();
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    const array16 = new Float32Array([-0.5, 0.25, 1.0, 0.75, 0.5, -0.75, 0.25, -0.25, 0.0, -0.5, 1.0, -1.0, 0.0, 0.75, 1.0, 0.0, -0.75, -1.0, -0.75, 0.5, -1.0, -0.5, 1.0, 1.0, -1.0, -0.75, 1.0, 1.0, 0.25, -0.25, -1.0, 0.75, -0.5, -0.5, 0.25, 0.25, -1.0, -0.25, 0.75, 0.0, -0.5, -1.0, -0.5, 0.5, 0.25, -0.25, -0.25, 0.0, -0.75, 0.75, -0.25, 1.0, 0.25, 1.0, 0.5, 0.25, 0.75, -0.25, 0.75, -0.5, -1.0, 0.25, -1.0, 0.75, 0.5, 1.0, 0.5, -1.0, -0.75, -0.5, 0.25, -0.25, -0.25, -0.75, 0.25, 1.0, 0.25, -0.25, 0.0, 0.75, 0.75, -0.5, 1.0, -0.25, -1.0, -0.5, 0.25, -0.25, -0.25, -1.0, -1.0, 0.5, -1.0, -0.25, 0.0, 0.5, 0.5, 0.75, -1.0, 0.75, ]);
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder1002.insertDebugMarker("marker");
    
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    device120.destroy();
    
    
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    device130.destroy();
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    const compute_pipeline1004 = device100.createComputePipeline({
        label: "compute_pipeline1004",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    buffer1001.destroy()
    
    const compute_pipeline1005 = device100.createComputePipeline({
        label: "compute_pipeline1005",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    
    
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    texture1001.destroy();
    
    render_bundle_encoder1000.popDebugGroup();
    render_bundle_encoder1002.insertDebugMarker("marker");
    render_bundle_encoder1001.popDebugGroup();
    
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    
    
    
    
    
    
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1001]
    });
    
    
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile(__dirname + '/shader_module1005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture1000.destroy();
    
    const compute_pipeline1006 = device100.createComputePipeline({
        label: "compute_pipeline1006",
        layout: pipeline_layout1002,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder1001.popDebugGroup();
    
    
    render_bundle_encoder1001.insertDebugMarker("marker");
    const compute_pipeline1007 = device100.createComputePipeline({
        label: "compute_pipeline1007",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    
    const compute_pipeline1008 = device100.createComputePipeline({
        label: "compute_pipeline1008",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    const compute_pipeline1009 = device100.createComputePipeline({
        label: "compute_pipeline1009",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    device100.destroy();
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array17 = new Float32Array([-0.5, 0.75, 1.0, 0.0, 0.5, 1.0, -1.0, 1.0, 0.5, -0.25, 0.5, -0.25, 1.0, -0.75, 0.0, 0.0, 0.0, 0.75, 0.25, -0.75, -0.5, -0.75, 1.0, -0.5, 0.5, -0.25, -1.0, -0.75, 0.25, 0.75, -0.5, -0.75, -0.75, 0.5, 0.25, 0.75, -1.0, 0.0, -0.5, 0.25, -0.5, 0.5, 0.5, -0.5, 0.75, -0.25, 0.25, 0.25, -0.25, -1.0, -0.25, -1.0, -0.25, 0.75, 0.0, -0.75, 1.0, 0.75, 1.0, -0.5, 1.0, -0.25, 0.5, -0.5, 0.25, -1.0, -0.75, -0.25, 1.0, -1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 1.0, 0.75, 0.5, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, 0.75, 0.0, -0.25, 1.0, -0.5, -0.25, 0.0, -0.25, 0.25, -0.5, -1.0, -0.25, -0.75, -0.5, 0.0, 0.0, ]);
    
    
    const array18 = new Float32Array([0.0, -0.75, 0.5, -0.5, 1.0, 0.25, 0.75, 0.5, -0.5, 0.0, 0.5, 0.0, -0.5, -0.5, 0.5, 1.0, 0.0, 0.0, 0.25, 0.25, 0.25, -0.75, -0.25, -1.0, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 0.0, 0.0, 0.5, 0.75, 1.0, 0.75, 0.0, 0.25, 1.0, -0.5, -1.0, -1.0, -0.5, 0.75, 1.0, 0.5, 1.0, 0.0, 0.25, 0.25, 0.75, -0.5, 0.75, 0.75, -1.0, 0.5, -1.0, 0.75, -1.0, -0.75, 0.5, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, 1.0, 0.75, 0.75, -0.25, 0.75, 0.75, 1.0, -0.75, -0.25, 0.75, 0.5, -1.0, 0.0, 1.0, 0.0, -0.75, 0.75, 1.0, 0.25, 0.75, 0.25, 0.25, 1.0, 0.0, 0.5, 0.5, -0.25, 0.0, -1.0, -0.5, 0.5, 1.0, 0.25, ]);
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    
    
    
}