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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array0 = new Float32Array([0.0, 0.5, -1.0, -0.75, -0.75, -1.0, 0.0, -0.5, -0.75, -1.0, 0.0, 1.0, -1.0, 0.25, -0.25, -0.5, 1.0, 0.75, -0.75, 0.5, 0.5, -0.5, 1.0, 0.25, 1.0, -0.5, 0.25, 1.0, 0.75, 0.75, 0.0, -1.0, 1.0, 0.0, 0.5, -1.0, -0.25, -0.5, -0.75, 0.75, 0.5, -0.75, -1.0, -1.0, 0.25, 0.25, -0.25, 0.5, 0.0, -0.75, -0.75, -0.25, 0.25, 1.0, 0.5, 1.0, -0.75, 0.0, 0.0, -1.0, -0.5, 0.75, 0.5, 0.0, -0.25, -0.5, -0.25, 1.0, -0.5, -0.25, -0.75, 0.25, 0.25, 0.5, -0.75, 0.5, 0.0, -0.25, -1.0, 0.25, 0.75, -0.25, -0.75, 1.0, 0.0, -0.75, 0.75, 0.0, -0.75, 0.25, 1.0, 1.0, -0.75, 0.0, 0.25, -0.25, -1.0, 0.25, -1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([1.0, 0.75, -0.25, 1.0, 0.25, -0.25, 0.75, 0.75, -1.0, -0.5, 0.75, 0.25, 0.25, -0.5, -0.25, 0.0, -0.25, 0.25, 0.5, 0.75, 1.0, -0.75, -0.25, -0.75, -0.25, 0.5, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, 0.75, 0.25, -0.75, 0.5, -1.0, -1.0, 1.0, -0.25, -0.75, 1.0, -1.0, 0.75, -1.0, 1.0, -0.5, 0.5, 0.0, 1.0, 0.5, 1.0, -0.25, 1.0, -0.5, 0.75, -0.5, 0.25, -0.25, -0.5, 0.75, 0.25, 0.5, -0.25, 1.0, -0.25, 0.25, -1.0, 0.5, 0.25, 0.25, 0.25, 0.0, 0.5, -0.5, 0.5, -0.75, 0.75, 1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.5, 0.25, -0.5, -0.75, 0.25, -0.25, 0.0, -1.0, -0.25, -0.5, 0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
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
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const array2 = new Float32Array([0.25, -1.0, 1.0, 0.75, -0.5, 1.0, -1.0, 0.5, 0.5, -0.75, 0.5, -1.0, -1.0, 0.0, 0.0, 1.0, -0.75, 0.5, -0.25, -0.25, 0.75, -1.0, 0.75, 0.5, -0.5, 1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 1.0, -0.5, 0.75, 0.5, -0.25, -0.5, 0.5, -0.25, 0.75, -0.75, -0.5, 0.75, 1.0, 0.25, -0.75, -0.75, -0.5, 0.75, 0.0, 0.25, -0.75, 1.0, 0.75, 1.0, -0.5, 0.0, -0.75, 0.0, 1.0, 1.0, 0.25, -1.0, 0.5, -0.25, 0.25, 1.0, 0.0, 1.0, 0.25, 0.25, 1.0, 0.25, 1.0, -0.25, 0.25, -0.25, -1.0, -0.5, -0.5, -0.25, 0.0, 0.25, -0.5, -0.75, -0.75, -0.25, -0.75, 0.75, 1.0, -0.25, 0.75, -1.0, 0.25, -0.75, 0.25, -0.75, -1.0, -0.5, 0.75, ]);
    
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
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    texture100.destroy();
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device20.destroy();
    
    
    const array3 = new Float32Array([-0.75, 0.5, 0.5, 0.0, -1.0, -1.0, -0.25, 0.0, 0.25, 0.25, -1.0, -0.75, -0.75, 0.5, 0.0, -0.5, -1.0, -1.0, -0.5, 0.75, -1.0, -1.0, 0.75, 1.0, 1.0, 0.0, 1.0, 0.0, 0.75, 0.0, -0.5, 0.0, 0.25, 0.5, 1.0, 0.0, -0.25, -0.25, 0.75, -0.5, 0.25, 1.0, 0.75, -0.5, -1.0, 1.0, -1.0, -1.0, 1.0, 1.0, -0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -0.5, -0.75, -0.5, 0.75, 0.5, 0.0, 1.0, 0.25, -0.5, 0.75, 0.25, 0.25, 0.0, -0.5, 0.0, 0.75, 0.25, -1.0, -0.5, 0.75, 0.75, -0.25, -1.0, -0.5, 0.25, -1.0, 0.25, 0.0, 0.5, 0.5, -0.25, -0.25, -0.75, -1.0, -0.25, -0.5, 0.0, 0.25, 0.25, 0.25, -0.5, 0.5, 0.75, -0.75, ]);
    const array4 = new Float32Array([0.5, -0.5, 0.5, -0.75, -0.75, 0.75, 0.0, 0.0, -0.75, -0.75, 0.75, -0.5, -1.0, 0.75, 0.75, -0.5, 0.25, -0.5, 0.25, 0.25, 0.5, -0.75, -0.25, -0.75, -0.25, 0.25, 1.0, 0.25, 0.25, 0.25, 0.5, 0.25, -1.0, -1.0, -1.0, -1.0, -0.5, 1.0, 0.5, -1.0, 0.25, 0.5, -0.75, 0.5, 0.5, 0.5, 0.5, -0.5, 1.0, -1.0, -1.0, -0.75, 0.5, 0.0, 0.25, 0.0, 0.0, 1.0, -0.25, -0.25, -0.25, 0.5, 0.0, 0.5, 0.0, -0.5, -0.5, -1.0, 0.5, 0.75, 0.75, 0.25, 0.25, 0.0, 0.5, -0.5, 1.0, 0.0, -1.0, -0.75, 0.75, -0.25, 1.0, -1.0, 1.0, 0.75, 0.75, 0.5, -0.5, -0.75, 0.0, 0.75, 1.0, 0.25, 0.5, -1.0, -1.0, -0.75, -0.25, -0.5, ]);
    
    const array5 = new Float32Array([1.0, -0.25, 0.25, -1.0, -1.0, 1.0, -0.25, 0.0, 0.0, 0.5, -1.0, -0.75, -0.75, -0.5, 0.5, -0.75, -0.75, -1.0, 0.5, 1.0, -0.5, -0.25, -1.0, 0.5, -0.75, 0.25, 0.5, 1.0, 0.0, 0.5, -1.0, 0.25, 0.0, -1.0, 1.0, 1.0, -0.25, 0.75, 0.0, 0.75, -1.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.5, -0.25, 0.75, 0.5, -1.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.25, -0.75, -0.5, 0.25, -1.0, -0.25, 0.75, -0.75, 0.25, -0.75, 0.25, -0.25, 0.25, -0.75, -0.25, 0.25, -0.5, -0.25, 0.0, 0.75, -0.25, -0.25, 0.0, -0.5, -0.25, -0.25, 0.5, -0.5, 0.5, -0.25, -0.25, 0.0, -1.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, -0.25, 1.0, 1.0, 0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array6 = new Float32Array([-1.0, 0.25, -1.0, 0.5, 0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, -1.0, -0.5, -0.25, -0.75, -0.75, -1.0, 0.75, 1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -0.5, 0.5, 0.0, -1.0, -0.75, 0.0, -0.25, -0.25, 0.75, 0.0, -0.75, -1.0, 0.5, 0.75, 0.5, 0.0, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, 0.25, 1.0, 0.5, 0.5, 1.0, 1.0, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, -0.5, 1.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.5, 1.0, 0.0, -0.75, 0.0, -0.25, 0.75, -1.0, -0.75, 0.0, -0.75, -0.75, 0.75, -0.75, 0.5, -1.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.75, -0.5, -0.75, -0.5, 1.0, 0.0, 0.0, 0.75, 0.0, 0.5, 0.75, -0.75, 0.5, ]);
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    
    device20.destroy();
    
    query300.destroy()
    device10.queue.submit([]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device00.destroy();
    
    const array7 = new Float32Array([0.75, 1.0, -0.25, -0.25, 0.25, 0.5, 0.5, 0.5, 1.0, 0.0, -0.75, -0.25, -0.25, -0.5, -1.0, 0.0, -1.0, -1.0, -0.25, 0.75, 0.25, 0.5, 0.75, 0.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 0.0, 0.25, -0.75, 0.0, 0.75, 1.0, 1.0, -0.25, 1.0, 1.0, 0.25, 1.0, 1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -1.0, -0.25, 0.0, 0.0, 1.0, 0.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.0, 0.0, -1.0, -0.5, 0.0, -0.25, 0.0, -0.5, -0.5, -0.5, -0.25, -0.75, 0.0, 0.5, 0.0, -0.75, -0.75, -1.0, -0.5, 0.0, -0.5, 0.25, 0.5, -0.75, 0.5, 0.25, -0.25, -0.25, -0.25, 0.75, 0.5, 0.25, 1.0, 0.0, 0.75, 0.5, 0.0, -0.75, ]);
    
    
    
    query300.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    query301.destroy()
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device30.destroy();
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    device40.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device50.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    query301.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer202.destroy()
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    texture200.destroy();
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query601.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    buffer200.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
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
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    device60.destroy();
    const array8 = new Float32Array([0.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.0, -0.5, 1.0, -0.5, -0.25, 1.0, 0.75, 0.75, -1.0, -0.75, 0.0, -0.5, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 0.75, 1.0, -1.0, -0.5, -0.25, -0.25, -1.0, -0.25, 0.5, -1.0, 0.25, -0.75, 1.0, -0.75, -1.0, -0.5, 0.5, 0.0, 0.5, -1.0, -0.5, -0.75, -0.25, -0.25, -0.25, 0.25, 0.0, -1.0, -0.75, 0.75, 0.5, 0.25, 1.0, -0.75, -1.0, -0.5, 0.25, -1.0, 1.0, -1.0, 0.5, 0.0, 0.75, 0.25, -1.0, 0.25, 0.75, 0.75, -1.0, 0.75, -0.25, 0.25, 0.5, -1.0, -0.25, -0.75, -1.0, -0.5, -0.75, 1.0, 1.0, 0.75, -0.75, -1.0, 0.75, -0.5, 0.25, -1.0, 0.0, 0.5, 0.5, 0.0, 0.5, -0.75, 0.5, -1.0, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    device90.destroy();
    
    
    const array9 = new Float32Array([0.5, 0.25, -1.0, -0.25, 0.75, 0.0, 1.0, 0.75, 0.25, -0.25, -0.75, -0.75, -0.5, 1.0, -0.25, 1.0, -0.5, -0.25, 0.0, 0.25, 0.25, -0.5, 1.0, 0.0, -0.5, -0.5, -0.25, -0.75, -1.0, -1.0, -0.5, -0.5, 0.75, 0.25, -0.5, -0.25, 0.75, -0.75, -0.25, 0.0, 1.0, -0.25, -1.0, -0.5, -0.75, -1.0, -0.75, 0.75, -1.0, -1.0, 0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.25, 1.0, -0.5, -1.0, 0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.25, 0.75, 0.0, -1.0, 0.25, -1.0, -0.25, 0.5, 0.25, 0.25, 1.0, 0.25, -0.75, -0.5, 0.5, -0.75, 1.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.75, 0.5, -0.5, -1.0, -0.75, -0.75, -0.5, 0.25, 0.25, 0.0, 0.75, 0.0, ]);
    
    
    
    
    
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    
    
    const array10 = new Float32Array([-0.25, 0.5, -0.5, 1.0, -1.0, -0.75, 0.0, 0.75, -1.0, -1.0, 0.75, -0.25, 0.75, -0.75, -1.0, -1.0, -0.25, 0.0, 0.75, 1.0, 0.75, -0.75, 0.5, -0.5, 0.0, 0.5, 0.0, 1.0, 1.0, -0.75, -0.5, 0.25, 0.5, 0.5, -0.75, -1.0, -0.75, -1.0, 0.25, 0.75, -0.5, 0.25, 0.5, -0.25, -1.0, 0.0, 0.25, -0.25, -0.5, -0.25, -0.5, 0.75, 0.5, -0.5, -1.0, -0.5, 0.0, 0.25, -0.75, 0.25, 0.75, 0.75, 0.25, 0.75, 1.0, 0.25, -0.5, -0.5, 0.5, 0.25, 0.5, 0.0, -0.5, -0.75, -1.0, -0.5, 0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 1.0, -0.75, -1.0, 0.5, 1.0, -0.25, 0.25, -0.5, 0.25, 0.0, 0.0, -0.5, 0.5, 0.5, -1.0, 0.25, 0.25, -0.5, ]);
    
    
    
    
    
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    device90.queue.writeTexture({ texture: texture900 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    
    device40.destroy();
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device110.destroy();
    
    texture1100.destroy();
    
    
    const array11 = new Float32Array([0.5, 1.0, 1.0, 0.75, -0.75, 0.0, -0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -0.5, 0.0, -1.0, -0.5, -1.0, -1.0, 0.75, 1.0, 0.0, 0.0, -0.25, 0.25, 0.0, 0.25, -0.75, 0.0, 0.5, -1.0, -0.25, 0.25, 1.0, 0.5, 0.25, 0.75, 0.75, -0.5, -0.25, 0.5, -0.75, -0.75, -0.25, -0.75, 0.25, -0.25, -0.5, 0.25, -0.5, 0.75, -0.5, 1.0, -0.5, -0.25, -0.5, 0.5, -1.0, 0.75, 0.0, 1.0, -0.25, 0.25, -0.25, 0.75, 0.75, -1.0, -0.25, 0.5, 0.5, 0.0, -0.5, 0.25, 1.0, -1.0, 0.75, 0.25, 0.75, -0.5, 1.0, 0.25, 0.5, 0.5, 0.75, 0.5, -0.5, -0.25, 0.25, -1.0, 0.0, -1.0, -0.5, -0.75, 0.5, -0.25, -0.75, -1.0, 0.25, 0.0, 0.5, ]);
    
    
    query700.destroy()
    
    
    
    
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
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
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
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    query700.destroy()
    
    
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    query700.destroy()
    query302.destroy()
    
    
    const array12 = new Float32Array([0.5, -0.75, 0.75, -0.75, 0.25, 0.0, -1.0, -0.5, 0.5, -1.0, -0.25, -0.5, -0.5, 1.0, 0.5, 1.0, -0.25, -0.5, -0.5, 0.5, 0.25, -0.75, -0.5, 0.5, -0.75, -0.25, -0.5, -0.25, -1.0, -0.75, 1.0, 0.5, 1.0, 0.75, -0.25, 1.0, 0.5, 0.0, 0.0, -1.0, -0.75, 1.0, -1.0, -0.75, 0.75, -0.5, -0.25, 0.5, 0.5, -0.25, 0.0, -0.25, -0.5, -0.25, 1.0, -0.5, 0.5, -0.75, 0.75, -0.75, 0.0, -0.25, 0.75, -0.75, -0.25, 0.5, 0.0, 0.5, -0.75, 0.5, -1.0, 0.25, 0.5, -0.75, -0.25, 1.0, -1.0, -0.5, 0.5, -1.0, -1.0, 0.0, -0.5, -0.75, 0.75, -0.5, 0.25, 0.75, -0.5, 0.75, 0.5, 1.0, 0.5, -0.75, 1.0, 1.0, -0.5, -0.5, 0.25, 0.25, ]);
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    query602.destroy()
    device70.queue.writeBuffer(buffer701, 0, array11, 0, array11.length);
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    device110.destroy();
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
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
    
    device70.queue.writeBuffer(buffer701, 0, array7, 0, array7.length);
    
    device70.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
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
    
    device80.destroy();
    device100.destroy();
    const array13 = new Float32Array([0.0, -0.25, 0.75, 0.0, 0.5, -0.25, 0.75, 0.75, -0.5, -0.5, -0.75, -0.75, -1.0, 0.75, 0.75, 0.0, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, 0.5, 0.75, 1.0, 0.5, 0.75, -0.75, 1.0, -1.0, 1.0, -0.75, 0.5, -0.5, 0.25, -0.75, 0.5, -0.5, 0.25, -1.0, 0.5, 0.25, -0.25, 0.25, 0.25, 1.0, -0.25, -0.75, -0.75, 0.75, -0.5, -0.75, 0.75, -0.75, 0.75, -1.0, 0.25, -1.0, 0.0, -1.0, 0.5, 0.25, 0.25, -1.0, -1.0, -0.75, 0.75, -1.0, -0.5, -0.25, 1.0, -0.75, 0.25, -0.75, -0.25, 0.25, 0.5, -0.25, 0.0, -0.5, 1.0, 1.0, -0.5, 0.25, -0.75, 0.0, 0.0, -1.0, 0.0, 0.0, 0.5, 0.25, 0.5, 0.0, 0.5, 0.5, -0.75, 0.0, -0.75, -1.0, ]);
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    device120.queue.writeBuffer(buffer1200, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    
    
    device120.queue.writeBuffer(buffer1200, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    buffer600.destroy()
    
    device120.destroy();
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const array14 = new Float32Array([-0.5, -1.0, -1.0, -0.25, -0.5, -0.5, -0.75, 0.25, 0.0, 0.0, 0.0, 1.0, -0.75, -0.5, -0.5, -1.0, 0.75, -1.0, -0.5, -0.5, 0.75, -0.75, -1.0, -0.5, 0.25, -0.5, 0.0, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, 0.5, -0.25, -1.0, -0.75, -0.75, -0.25, -1.0, 0.0, -0.25, -0.75, -0.5, 0.5, -0.25, -0.5, -0.75, -1.0, 0.25, -1.0, -1.0, -0.75, 1.0, -1.0, 0.0, 0.5, 1.0, 1.0, 0.5, 0.0, 0.75, 0.25, 0.75, 0.5, -0.5, 0.5, 0.5, 0.5, -0.25, -0.25, 0.5, 1.0, 1.0, -0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, 0.5, 0.0, 1.0, -0.5, 0.75, 0.5, -0.75, -1.0, -0.25, -0.75, -0.25, 0.0, -1.0, 0.25, 0.75, ]);
    
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    
    
    
    const array15 = new Float32Array([0.25, -0.25, 0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 0.5, -0.25, 0.25, -0.75, 0.25, 0.5, 0.75, 1.0, 0.25, 0.75, -0.5, -0.5, 0.0, 0.0, 0.25, 0.5, 1.0, -0.25, -0.5, 0.5, -0.25, 1.0, 0.75, -0.25, -0.25, 0.75, -1.0, 1.0, 1.0, 0.0, -1.0, -0.25, -0.25, 0.0, 0.75, 0.5, 0.5, -0.25, 0.25, -0.5, -0.25, -1.0, 0.75, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, -0.75, 0.25, 1.0, -0.5, 0.0, -1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.75, 0.25, -1.0, -0.25, -0.5, -0.25, -0.5, 0.0, 0.25, -1.0, 0.0, 0.25, 0.5, 0.0, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, 0.25, 1.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.25, -0.75, 1.0, -1.0, -0.5, ]);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.destroy();
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
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
    query000.destroy()
    
    
    
    query300.destroy()
    
    
    device20.queue.writeBuffer(buffer203, 0, array13, 0, array13.length);
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer201, 0, array13, 0, array13.length);
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer1400.destroy()
    buffer700.destroy()
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device130.queue.writeTexture({ texture: texture1300 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    
    var shader_module1404_code = "";
    try {
        shader_module1404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1404 = await device140.createShaderModule({ label: "shader_module1404", code: shader_module1404_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const buffer1402 = device140.createBuffer({
        label: "buffer1402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    device140.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const array16 = new Float32Array([1.0, 0.5, 0.25, -0.25, -1.0, 0.0, -0.75, -0.75, 0.75, 0.0, 0.5, 1.0, -0.75, -0.25, 0.0, -0.5, 0.75, 0.25, 0.25, 1.0, 1.0, -0.25, -0.25, 0.75, -0.5, -0.5, -1.0, -0.75, 0.5, -1.0, -0.75, 0.5, 1.0, 1.0, -0.75, 0.0, -0.75, -0.75, -0.75, -1.0, 0.0, 0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 0.5, -0.25, -0.5, 0.5, -1.0, 1.0, 0.0, 0.25, -0.75, -1.0, 0.25, 0.75, -1.0, -0.75, -1.0, -0.5, 0.75, 0.0, 0.0, -0.25, 0.25, 0.25, 1.0, -0.25, -0.25, 0.75, -0.5, 0.25, -0.25, -0.5, 0.0, -0.5, -0.75, -1.0, -1.0, 1.0, -0.75, -1.0, 0.75, -1.0, 0.0, -1.0, 0.25, -1.0, -0.5, 0.25, -1.0, 0.75, 1.0, ]);
    texture1300.destroy();
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    
    
    
    texture1300.destroy();
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    device20.queue.writeBuffer(buffer201, 0, array16, 0, array16.length);
    
    device120.queue.writeBuffer(buffer1200, 0, array13, 0, array13.length);
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1402,
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
            module: shader_module1402,
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
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    device20.queue.writeBuffer(buffer201, 0, array15, 0, array15.length);
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1300.destroy();
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    
    device70.queue.writeBuffer(buffer700, 0, array12, 0, array12.length);
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    query301.destroy()
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const texture_view16000 = texture1600.createView({ label: "texture_view16000" });
    
    const texture_view13010 = texture1301.createView({ label: "texture_view13010" });
    texture1600.destroy();
    var shader_module1303_code = "";
    try {
        shader_module1303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1303 = await device130.createShaderModule({ label: "shader_module1303", code: shader_module1303_code })
    device160.queue.submit([]);
}