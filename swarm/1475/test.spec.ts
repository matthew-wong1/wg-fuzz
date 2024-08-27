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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array0 = new Float32Array([-0.5, 0.75, 0.25, 1.0, 1.0, 0.75, 0.25, -0.75, -0.75, -0.5, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, 0.5, -0.75, 0.25, 0.25, 1.0, 0.5, -0.75, 0.25, 1.0, -0.75, 1.0, 0.75, 0.0, -0.75, 1.0, -0.25, 0.5, 1.0, 1.0, -0.25, 0.75, -0.75, 0.0, -1.0, -1.0, -1.0, 1.0, 0.25, 0.25, 1.0, 0.75, -1.0, -0.75, 0.75, -1.0, -0.25, 0.75, 1.0, -1.0, 0.75, 0.75, -0.25, 0.25, -0.5, 0.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.25, 1.0, 0.0, -1.0, -0.5, -0.5, -0.25, 1.0, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, -1.0, 0.25, 0.25, -1.0, 0.0, 0.5, -0.5, 0.25, 0.5, 0.0, -0.25, -0.75, 0.25, 0.75, 0.0, -0.25, 0.25, 1.0, 1.0, -0.75, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.submit([]);
    device10.destroy();
    buffer001.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    const array1 = new Float32Array([-0.25, 0.25, 0.25, 1.0, -0.5, 0.75, -0.25, 0.0, 0.0, -1.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.5, -1.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.75, 0.0, 1.0, 1.0, 0.75, -0.25, -0.25, 0.25, 0.75, 0.5, 0.0, -0.25, -0.25, -0.5, -0.75, 0.75, 0.75, -0.75, -0.25, -1.0, -0.5, 0.0, -0.5, 0.0, 0.5, 0.75, -0.25, -0.25, 0.5, -0.25, -0.75, 0.5, -0.25, 0.0, 1.0, -1.0, 1.0, -1.0, 1.0, 0.5, 0.25, 0.5, -0.25, -0.25, 0.5, 0.5, 1.0, 1.0, -1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -0.25, 1.0, -0.5, -0.5, 0.75, -0.25, -0.25, 0.25, -1.0, -0.5, -0.75, -1.0, 0.75, 0.25, -0.5, 0.0, -1.0, -1.0, 0.75, -0.5, -1.0, 1.0, 0.0, 0.5, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
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
    device00.destroy();
    device20.pushErrorScope("internal");
    texture200.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device10.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const array2 = new Float32Array([0.25, 1.0, -1.0, -0.5, 0.75, -0.75, -1.0, 0.75, 0.5, -0.75, -0.5, 0.5, 0.25, 0.75, 0.75, -1.0, 1.0, 0.5, -0.25, -0.75, 0.5, 0.5, -0.5, 0.5, 0.0, 0.75, 0.75, -0.5, 0.0, -0.5, -1.0, -0.75, -0.25, -0.5, 1.0, -0.25, 0.5, 0.25, 0.0, -0.5, -0.75, 0.75, -0.5, -0.5, 0.75, -0.25, 0.25, -0.25, -0.75, 1.0, 1.0, -1.0, -1.0, 0.75, -0.5, 0.0, -0.25, -0.75, 0.5, -1.0, 0.25, -0.25, -0.25, -0.75, 0.75, -0.5, -1.0, 0.75, -0.25, 0.75, 0.5, -0.75, 0.25, -1.0, -0.25, 1.0, 0.0, 0.5, -0.5, -1.0, 0.75, -0.75, 0.25, 0.5, 1.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.5, -0.75, -0.75, 0.5, -0.25, 1.0, -1.0, -0.5, -0.75, 0.75, ]);
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
    
    const array3 = new Float32Array([-1.0, 0.5, -0.25, -0.25, 1.0, 0.0, -0.25, 0.75, -1.0, 0.75, -0.5, 0.5, -1.0, 1.0, 0.0, -0.25, 0.75, -0.25, -0.75, -0.25, 0.25, 0.25, 0.75, 0.75, 0.25, 0.25, -0.5, -0.5, 0.25, 0.0, 0.25, -0.25, -0.25, 0.0, 1.0, -1.0, -1.0, -0.5, 0.25, 0.25, 1.0, -0.25, -0.75, 0.5, -1.0, 0.0, 1.0, 0.0, 0.75, -0.5, -0.25, -0.75, 0.25, -1.0, 0.75, 0.0, 0.0, -0.75, -0.5, 0.25, 0.25, 1.0, -1.0, 1.0, 0.75, 0.5, 0.75, -0.75, 0.5, -0.5, -0.75, 1.0, -0.5, 0.0, -0.5, 0.25, -1.0, -0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.75, -0.25, -0.5, 0.75, -1.0, -0.75, 0.25, -0.25, -0.75, -0.5, 0.25, -1.0, 0.25, -1.0, 0.75, -0.5, -0.5, ]);
    device20.destroy();
    const array4 = new Float32Array([-0.5, 0.25, 0.5, -0.25, 0.75, 0.5, 1.0, -1.0, 0.0, -0.5, 0.0, 0.75, -0.25, 0.75, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, 0.0, 0.75, 0.5, -0.75, -0.25, 0.5, 0.25, -1.0, -0.75, -0.75, 0.0, 0.0, 0.5, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, -1.0, 1.0, 0.0, 0.25, -1.0, 0.75, 1.0, -1.0, 1.0, 0.25, -0.75, 0.25, 0.75, -0.25, 0.5, 1.0, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -1.0, 0.0, -0.5, -0.75, 0.75, 0.0, 0.5, -1.0, -0.5, 0.5, 0.0, 0.25, 0.25, 0.25, -1.0, 0.75, -1.0, 0.25, 0.75, -0.25, -0.75, -0.75, -0.5, -0.5, 0.5, -0.75, -0.25, 0.25, -0.5, -1.0, -1.0, 0.5, 0.5, -0.5, 0.75, 1.0, -0.5, 0.75, -0.75, ]);
    
    const array5 = new Float32Array([0.0, -0.25, -0.5, -0.75, 0.25, -1.0, -0.75, 0.0, -0.5, 1.0, 0.5, 0.0, 0.5, 0.0, 0.0, -0.75, -0.25, -0.75, -0.25, 0.0, 1.0, 1.0, -1.0, 0.75, 0.5, 1.0, -0.5, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, -0.75, -0.5, -0.75, -0.25, 0.75, 0.75, -0.75, 0.25, -0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.75, 0.25, 1.0, 0.0, -0.75, -0.75, 0.25, 0.0, -0.25, 0.75, -1.0, 0.5, 0.25, -0.25, 1.0, 0.25, -1.0, 0.75, -0.75, 0.0, 0.75, 1.0, 0.5, -0.75, 0.5, 0.0, 0.75, -0.5, -0.5, -0.25, 0.25, -0.5, 0.25, 0.0, -1.0, 0.75, 0.5, -1.0, -0.25, -0.5, 0.75, 0.25, -1.0, -1.0, 1.0, 0.5, -0.5, 0.0, -0.75, 0.25, 0.0, 0.0, 0.25, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    device30.pushErrorScope("internal");
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
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query100.destroy()
    const array6 = new Float32Array([-0.75, 0.75, -0.75, 0.25, 0.75, 0.5, -0.25, 0.5, -0.5, 1.0, 1.0, -0.5, 1.0, 0.25, -0.75, 0.25, -0.5, 0.25, -1.0, 0.75, -0.25, 1.0, 0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 0.75, -1.0, 0.25, 0.75, 0.75, -0.5, 1.0, 0.25, -0.5, -0.75, -0.25, 0.5, 0.5, -0.5, 0.0, 0.25, 0.0, -0.5, 0.25, -0.25, 0.5, 0.5, -0.25, 0.25, 1.0, -1.0, 1.0, -0.25, -0.5, 1.0, 0.25, -0.5, 0.25, 0.5, -0.75, -0.5, -0.75, 0.5, -0.25, 0.25, 0.5, -0.75, 0.25, -0.75, 0.75, 0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -0.75, 0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 0.75, -1.0, 0.0, 0.0, 0.25, 1.0, 0.25, 0.0, 0.75, 0.75, 0.0, -0.25, -0.5, 0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([1.0, -0.5, -0.25, -1.0, -1.0, 1.0, 0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.25, 1.0, 0.5, -0.25, -0.75, 0.0, 0.5, -1.0, 0.5, -0.5, 0.75, 1.0, 0.5, -0.75, 0.5, 0.5, -1.0, -0.5, 0.25, 0.25, -0.75, 1.0, -0.75, -0.5, 0.0, -0.25, 0.5, 0.0, -1.0, 1.0, 0.5, 0.5, -0.75, 1.0, 0.5, -0.5, -0.25, 1.0, 0.25, -0.75, -0.75, -0.5, 0.5, -0.25, -0.5, -1.0, 0.25, 0.75, 1.0, 0.0, 0.0, 0.0, 0.25, -0.5, 0.5, -0.75, -0.75, -1.0, 0.75, 0.25, -0.75, 0.25, 1.0, -0.5, 0.0, 0.75, -0.5, 0.75, -0.5, -0.5, 0.5, 0.75, 0.75, -0.5, 0.75, 1.0, -0.25, 0.0, 0.0, -0.25, 0.75, -0.25, 0.5, -0.25, 0.0, 0.25, ]);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
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
    
    query000.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    query301.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    query300.destroy()
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    const array8 = new Float32Array([0.5, 0.75, -0.75, 0.25, 1.0, -1.0, 1.0, -1.0, 0.75, -0.25, 0.75, 0.0, -1.0, 0.75, 0.25, 0.75, -1.0, 0.5, 0.5, 1.0, -0.75, -0.25, -1.0, -0.25, 0.5, 0.5, -0.25, 0.25, -1.0, 0.25, 0.5, 0.25, -0.75, 0.75, -0.75, -0.75, -1.0, -0.25, -0.5, -0.25, 0.0, -1.0, -1.0, -0.75, -0.75, 0.25, -1.0, 1.0, -0.25, 0.25, -0.5, -1.0, 0.0, -1.0, 1.0, -0.25, 0.25, -1.0, -0.25, 0.0, -0.75, 0.0, 0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.5, -1.0, -1.0, 1.0, 1.0, 0.25, 0.25, -1.0, 0.25, -0.25, 0.25, 0.0, 0.0, -0.75, -0.5, 0.0, -0.25, -1.0, -1.0, -0.5, 0.5, 1.0, 1.0, -1.0, -0.75, 1.0, -0.5, 0.0, 0.5, -0.75, -0.75, -1.0, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer300.destroy()
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    device30.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.destroy();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device60.pushErrorScope("out-of-memory");
    const array9 = new Float32Array([-0.25, -0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 0.25, 0.5, -0.25, -1.0, 0.5, 0.75, 0.5, 0.75, -0.5, 0.0, 1.0, 0.75, 0.25, 0.25, -0.75, 0.5, 0.25, -0.5, -0.75, -0.75, 1.0, 0.25, 0.5, 0.25, -0.25, -1.0, 0.25, 0.25, 1.0, -0.75, -0.5, -1.0, -0.75, 1.0, 1.0, 0.75, -0.75, -0.5, -0.75, 1.0, 0.5, -0.5, -0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 0.25, 0.75, -0.25, 1.0, -0.75, -0.75, -0.75, -0.5, 0.5, 0.5, -0.5, 0.25, -0.25, 0.5, 0.0, 0.0, -0.25, -0.75, 0.5, 0.0, 0.75, 0.75, 1.0, 0.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, 0.5, 1.0, -1.0, -0.25, 0.0, -1.0, -0.25, 0.5, -0.75, -1.0, -0.25, 0.5, 0.25, 0.0, 0.0, ]);
    
    
    texture600.destroy();
    
    device60.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.pushErrorScope("validation");
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const array10 = new Float32Array([-0.75, 0.25, -0.75, 0.0, 0.0, 1.0, 1.0, 0.75, 0.25, 0.25, 0.25, 1.0, 0.5, -0.25, 0.25, -0.75, -0.75, -0.25, -0.75, 1.0, 0.0, -0.75, -0.25, -1.0, 0.25, -0.5, 0.0, -0.75, 0.0, 0.25, 0.0, 0.75, -0.25, 0.25, 0.5, 0.25, 1.0, 0.0, -0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 0.25, 1.0, -0.25, 0.25, 0.75, -1.0, 0.5, 1.0, 0.75, -0.75, 1.0, 0.25, -0.5, -0.5, 1.0, -0.75, -0.75, -1.0, 0.5, -0.75, 0.5, 1.0, 1.0, -0.5, 1.0, -0.5, 0.25, 0.5, 0.75, -0.5, 0.0, 0.0, -0.75, 1.0, 0.25, 0.25, 0.25, 0.25, -0.25, 0.75, 0.25, 0.75, 0.25, 1.0, 0.5, 0.75, -0.25, 0.5, 0.0, 0.0, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, ]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.popDebugGroup();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device10.pushErrorScope("internal");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture601.destroy();
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device70.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const query603 = device60.createQuerySet({
        label: "query603",
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.destroy();
    
    
    
    buffer600.destroy()
    query600.destroy()
    query602.destroy()
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
    
    
    device50.destroy();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("out-of-memory");
    device60.queue.submit([]);
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder600.popDebugGroup();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device60.pushErrorScope("out-of-memory");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const array11 = new Float32Array([-0.75, -0.25, -1.0, -1.0, 1.0, 0.75, 0.75, 0.75, 1.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.5, -0.25, 0.25, -1.0, 1.0, 0.5, 0.75, 1.0, -0.25, 0.75, -0.75, 0.0, -0.5, -0.25, -1.0, -0.25, -0.75, -1.0, 0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.0, 0.5, -1.0, 0.5, 0.5, 1.0, 0.0, -0.5, -0.75, 0.25, -0.25, 0.75, -0.5, 0.0, -1.0, -0.5, -0.5, 0.75, 0.25, 0.75, -1.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.75, 0.5, 0.25, 0.25, -0.25, -0.5, 0.5, 0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 1.0, -0.25, -1.0, 0.75, 1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 0.25, -0.25, -0.75, -0.5, 0.75, 0.75, 0.0, 1.0, -0.75, 0.0, -0.5, ]);
    render_bundle_encoder601.popDebugGroup();
    
    
    const array12 = new Float32Array([0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.0, -0.75, 0.5, -0.5, 1.0, 0.5, 0.0, -0.25, -1.0, 0.25, 0.0, -0.25, 0.25, -0.25, -0.25, -0.25, 0.0, -0.75, 1.0, 0.75, 0.75, 0.75, -0.25, 0.75, -0.5, -0.5, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, 1.0, 0.0, -0.25, 0.75, 0.25, 0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 1.0, 0.0, 1.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.75, 0.75, -1.0, 0.5, -0.25, 0.25, -0.25, 0.25, 0.5, -1.0, 0.75, -0.75, -0.25, 0.0, 0.25, 0.5, 0.0, 1.0, 0.25, 0.75, 0.75, -0.25, 0.75, -1.0, -0.75, -1.0, -0.5, 0.75, -1.0, 0.5, -0.5, -0.75, -1.0, -0.75, -0.25, 0.0, -0.75, 1.0, -1.0, -0.75, 0.75, -0.5, -0.25, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device90.pushErrorScope("internal");
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    device80.destroy();
    
    
    query604.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query901.destroy()
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    query603.destroy()
    buffer602.destroy()
    
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device60.pushErrorScope("out-of-memory");
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query301.destroy()
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device110.destroy();
    
    buffer601.destroy()
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder900.insertDebugMarker("marker");
    query500.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture900.destroy();
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer603.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer603.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer603.unmap();
        console.log(new Float32Array(data));
    }
    device120.pushErrorScope("validation");
    query900.destroy()
    device100.queue.submit([]);
    
    query901.destroy()
    buffer100.destroy()
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer603.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query604.destroy()
    
    render_bundle_encoder900.insertDebugMarker("marker");
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
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const array13 = new Float32Array([-0.25, -0.25, -1.0, -0.75, 1.0, -0.75, 0.5, -1.0, 0.5, -0.25, 0.5, -0.25, 0.75, 1.0, 0.25, -1.0, -0.25, -0.5, 0.5, -0.75, -1.0, 0.75, 0.75, -0.5, 0.25, -0.5, 0.5, -0.75, 0.75, -0.75, 0.0, 0.75, 0.75, -0.25, 0.0, -1.0, -0.5, 0.5, 0.25, 0.75, 0.25, -1.0, 0.0, -0.75, -0.75, -0.25, 0.25, 0.75, 0.25, 0.25, 0.5, 0.0, -1.0, 0.75, -0.75, 0.25, 0.75, -0.25, -1.0, 1.0, -0.25, 0.5, 0.25, 0.25, 0.75, 0.75, 0.75, 0.0, -1.0, 0.5, -1.0, -0.25, 0.5, 1.0, -0.25, 0.75, 0.75, -1.0, -1.0, -1.0, -0.75, 0.75, -1.0, -1.0, 0.0, -0.25, 0.0, 1.0, 0.5, 0.5, -0.25, -1.0, 0.5, 0.25, -0.25, -0.75, 0.0, 0.25, -0.75, 0.0, ]);
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query601.destroy()
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    query700.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    texture602.destroy();
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
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
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    device30.queue.submit([]);
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query604.destroy()
    render_bundle_encoder602.setPipeline(render_pipeline601);
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group600);
    
    const render_bundle_encoder603 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder603",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder603.setPipeline(render_pipeline601);
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device100.destroy();
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    query904.destroy()
    
    device130.destroy();
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer900.destroy()
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_bundle_encoder603.setBindGroup(0, bind_group601);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    query605.destroy()
    render_bundle_encoder603.popDebugGroup();
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    query605.destroy()
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    query605.destroy()
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    render_bundle_encoder601.setPipeline(render_pipeline601);
    device120.destroy();
    buffer604.destroy()
    query600.destroy()
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    query903.destroy()
    render_bundle_encoder600.setPipeline(render_pipeline601);
    query603.destroy()
    
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    query901.destroy()
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
    render_bundle_encoder900.insertDebugMarker("marker");
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.destroy();
    
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    texture901.destroy();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture_view6031 = texture603.createView({ label: "texture_view6031" });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    query900.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    
    
    texture604.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    buffer604.destroy()
    
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    query605.destroy()
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    texture603.destroy();
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group602);
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    device90.pushErrorScope("validation");
    
    render_bundle_encoder902.insertDebugMarker("marker");
    const array14 = new Float32Array([0.75, 0.0, 1.0, 0.0, -0.25, 0.0, 1.0, -0.25, 0.75, 0.75, 0.5, 0.25, -0.25, -0.5, -0.75, -0.5, -0.5, -0.75, -0.5, -1.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.75, -0.5, -0.25, 0.75, 0.25, -0.75, 0.0, -0.75, 0.75, -0.75, -1.0, 0.75, 1.0, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.75, -0.25, -1.0, -0.75, 1.0, -0.5, 1.0, -0.75, -0.75, -0.25, 0.25, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, -0.5, 0.0, 0.25, -0.25, 0.0, 1.0, 0.75, -0.75, 0.25, -0.5, 1.0, 1.0, 0.25, -0.75, -0.75, 1.0, -0.75, -1.0, 0.5, 0.25, 0.25, -0.5, -0.25, 0.0, 0.0, -1.0, 0.25, -0.25, 0.75, 0.5, 0.0, 0.75, 1.0, -0.75, 1.0, 0.0, -0.75, 1.0, 0.5, ]);
    query601.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer904.destroy()
    render_bundle_encoder901.setPipeline(render_pipeline901);
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder902.setPipeline(render_pipeline900);
    
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    query1000.destroy()
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer1400.destroy()
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    buffer608.destroy()
    
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    buffer901.destroy()
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    device140.pushErrorScope("out-of-memory");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout904 = device90.createBindGroupLayout({ 
        label: "bind_group_layout904",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    const array15 = new Float32Array([0.0, 0.5, 0.75, -0.5, 0.25, 0.0, -1.0, 0.75, 0.0, 0.75, -0.25, 0.0, 1.0, 0.5, -1.0, -0.25, 0.75, 0.25, 0.0, 0.5, 0.0, -1.0, -1.0, 0.25, 0.5, 0.0, 0.5, 0.0, -0.25, 0.75, 0.75, 0.75, 0.5, -0.25, 0.25, -0.5, 1.0, -0.75, 0.25, -0.5, -0.25, -0.25, -0.25, -0.5, 0.0, 0.0, 1.0, -0.5, 0.5, -0.5, -0.5, -1.0, 0.0, 0.5, -0.5, 0.75, -0.25, -0.25, -0.75, 0.0, -0.25, -0.25, -0.25, -1.0, 0.0, 1.0, -0.75, -0.5, 0.75, -0.5, 0.5, 1.0, 0.25, 1.0, -0.5, 1.0, 0.75, 0.5, 0.75, 0.25, 0.25, 0.25, -0.25, 0.75, 0.5, -1.0, 0.75, -0.75, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, 0.75, 0.75, 0.0, 0.75, 0.25, -0.75, ]);
    
    render_bundle_encoder900.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module903,
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
            module: shader_module903,
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
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query606.destroy()
    
    
    const render_bundle_encoder604 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder604",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1400.setPipeline(render_pipeline1400);
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module903,
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
            module: shader_module903,
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
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device160.destroy();
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder900.setPipeline(render_pipeline902);
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
    render_bundle_encoder604.setPipeline(render_pipeline601);
    
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    render_bundle_encoder1401.setPipeline(render_pipeline1400);
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    device60.destroy();
    buffer902.destroy()
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
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([]);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}