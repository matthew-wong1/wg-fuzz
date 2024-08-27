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
    const array0 = new Float32Array([1.0, 0.75, -0.25, 0.75, 1.0, 0.25, -1.0, 0.25, 0.0, 0.75, 0.0, -0.75, 1.0, 0.5, 0.25, -0.5, -0.5, -0.25, -0.5, 0.75, 0.75, 0.5, -1.0, -0.5, -1.0, 0.25, 1.0, 0.5, 1.0, -0.75, -0.5, -1.0, -0.75, 0.0, -1.0, -0.5, -0.5, -0.25, 0.75, -0.75, -0.75, 0.0, 0.0, 0.25, -0.5, -0.75, 1.0, 0.75, 0.5, 0.0, 0.75, -0.25, -0.5, 1.0, -1.0, 0.0, -1.0, 1.0, 0.25, 0.0, 0.5, -0.75, 0.5, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, -1.0, -1.0, 1.0, 1.0, -0.25, -0.5, 0.0, 0.75, -0.75, -0.5, -0.75, -0.25, 0.5, 0.0, -0.5, 0.5, 1.0, 0.25, -0.5, 0.0, -1.0, 0.75, -1.0, -0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-0.5, -1.0, 0.25, -0.75, 0.0, 0.0, -0.75, 0.25, 0.75, 0.5, 1.0, -0.25, -0.75, 0.75, -1.0, -0.25, 1.0, 0.25, -0.25, 0.25, 0.5, 1.0, 1.0, 0.25, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.5, -0.25, 0.5, -1.0, -0.5, -0.75, 0.5, 0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 1.0, 1.0, 0.25, 0.25, 0.5, -1.0, -0.25, 0.75, 0.75, -0.5, 0.75, -0.5, -0.5, 1.0, 1.0, -1.0, -0.75, -1.0, -0.75, -0.75, -1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 0.5, 0.5, 0.25, -0.5, 0.5, 0.5, 0.5, 0.25, 0.0, -0.25, -1.0, 0.75, 1.0, 0.25, 0.5, -0.5, 1.0, 0.75, 0.5, -0.75, -1.0, -0.25, 0.75, -1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 0.75, 0.75, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.25, 1.0, 0.5, -1.0, 1.0, -0.75, -1.0, 0.5, 1.0, 0.25, -1.0, 1.0, 0.5, 0.75, 1.0, -0.75, -0.5, 0.25, 1.0, -1.0, -0.25, -0.75, 0.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.75, 1.0, -0.25, 1.0, -1.0, -0.25, 0.5, -0.5, -1.0, -0.25, 0.0, -0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.0, 0.5, 1.0, 0.5, -1.0, 0.75, -1.0, 0.0, 0.5, 0.0, 0.75, 0.5, -1.0, -0.25, 0.75, 0.0, -0.5, -0.5, 0.0, -0.5, 1.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.25, 0.25, -1.0, 0.25, 0.75, -0.75, 0.0, 0.5, 0.75, -0.25, -0.25, -0.5, -0.75, 0.5, -0.75, -0.25, 1.0, 0.75, 1.0, -0.75, 0.75, 0.5, -0.5, -0.25, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device10.destroy();
    const array3 = new Float32Array([0.5, 0.0, 0.75, 0.5, 0.25, 0.5, -0.75, -0.75, -0.25, -0.5, 0.5, 0.75, 1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, -1.0, -0.5, -1.0, -0.25, 1.0, -0.75, 0.75, 0.25, 0.75, 0.0, 1.0, 1.0, 0.0, 0.75, 0.25, -0.25, -0.75, 0.75, -1.0, -0.5, 0.75, -1.0, -0.5, 0.5, 0.75, -1.0, 0.5, 0.5, -0.25, -0.75, 0.25, -1.0, -0.75, -1.0, 0.25, -1.0, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, -0.75, 1.0, 0.25, 1.0, -0.25, 0.5, -0.25, -0.25, -1.0, 0.5, 0.25, 0.0, 0.0, 0.75, -0.75, 1.0, 0.5, -1.0, -0.75, -0.25, -0.75, -1.0, 0.0, 0.75, 1.0, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, -1.0, 0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array4 = new Float32Array([0.25, 0.25, 0.0, 1.0, 0.25, -1.0, 0.0, 1.0, 0.25, -0.25, 1.0, 0.5, -0.25, 0.0, -1.0, 0.25, 0.5, 0.75, 1.0, 0.75, 0.25, -0.25, 0.0, 0.0, -0.5, 0.75, 1.0, 0.0, 0.75, 1.0, 0.75, 0.25, 0.5, 0.75, -1.0, 0.0, 1.0, 0.25, 0.5, 0.75, -0.25, -1.0, 0.5, 1.0, -0.75, 0.5, -0.75, 0.5, 0.0, 0.0, 0.75, -0.25, -1.0, 0.0, 0.75, 0.0, 0.5, -0.25, 1.0, -1.0, 1.0, -0.75, -0.25, 1.0, 1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -0.5, -0.75, 0.25, 0.75, 0.5, 1.0, -0.5, 0.25, 0.25, -0.75, -1.0, 0.0, 0.5, 0.75, -0.75, -1.0, 1.0, 0.75, 0.5, -0.75, -0.25, -1.0, 0.5, 0.0, 0.75, 0.0, 0.75, -0.5, -0.25, 0.5, ]);
    
    const array5 = new Float32Array([0.75, 0.0, -1.0, -0.75, -1.0, -1.0, -0.5, 1.0, -0.75, -0.75, 1.0, -0.75, 0.75, 0.25, -0.5, 0.25, -0.25, 0.25, 0.75, 0.0, -1.0, 0.25, 1.0, 0.0, 0.0, 0.25, 0.0, 1.0, 0.5, -1.0, 0.5, 0.5, -0.5, -0.25, 1.0, 1.0, -1.0, -0.25, -0.25, 0.75, 0.5, 0.0, -0.25, 1.0, -1.0, -1.0, 0.0, 0.25, -0.5, 0.5, -0.25, 0.5, 0.0, 1.0, 1.0, 0.75, -0.75, 0.5, -0.25, 0.5, 1.0, -0.75, 0.75, 0.25, 0.25, 0.0, 0.0, 1.0, -0.5, 0.25, 0.5, 0.0, 1.0, 1.0, -0.75, -0.25, 0.0, -0.25, 0.25, -0.25, -1.0, -0.5, 0.0, -1.0, -0.5, 1.0, -0.25, -1.0, 0.5, -1.0, -0.25, -1.0, -0.75, -0.75, 1.0, 0.75, 0.5, 0.5, -1.0, 0.75, ]);
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query201.destroy()
    buffer200.destroy()
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    query202.destroy()
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    query202.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer201.destroy()
    
    
    query201.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    query203.destroy()
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
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    const array6 = new Float32Array([0.5, -0.25, -1.0, -0.75, 0.75, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, -1.0, -0.5, -1.0, 0.5, 0.25, 0.75, 1.0, 0.5, 0.0, -0.5, -0.5, 0.25, 0.75, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, 1.0, 0.75, -1.0, 1.0, 1.0, 0.5, 0.75, 0.5, 0.0, -0.5, 0.25, 1.0, -0.5, -1.0, 0.5, 0.75, 0.25, -0.25, -0.5, -1.0, 0.75, 0.25, -1.0, 0.5, -0.5, -0.75, 1.0, -0.25, -0.25, 0.25, -1.0, -1.0, -0.75, -0.5, -0.25, 0.75, -0.25, 0.25, -0.25, -0.75, -0.75, 0.5, 1.0, -1.0, -1.0, -0.75, 1.0, -0.25, 0.5, 0.0, -1.0, -1.0, 0.0, 0.25, 0.5, 0.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.25, -1.0, -0.25, -0.5, ]);
    query200.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    query202.destroy()
    query200.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query202.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query201.destroy()
    buffer202.destroy()
    query203.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer204.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([0.5, 1.0, -0.5, 0.0, 0.5, -0.75, 0.25, -0.75, -0.75, -0.5, 1.0, 0.0, -1.0, -0.25, 0.75, 0.5, -0.25, -1.0, 0.75, 0.0, 0.0, -0.5, -0.5, -0.5, 0.75, -1.0, 0.0, -0.25, -1.0, 0.75, -0.5, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 0.5, 0.25, -0.75, 0.25, 0.5, -0.5, 0.5, 0.5, 1.0, -0.5, 0.25, -0.75, 0.75, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, 0.25, 0.75, -0.5, -0.5, 0.0, 1.0, 0.25, -0.5, 0.0, 0.75, -0.75, 0.0, -1.0, -0.75, 0.5, 0.25, -0.5, -1.0, 0.75, 0.25, -0.75, 0.0, 0.75, 0.75, -0.75, -1.0, 0.5, 0.0, 0.5, -0.75, -0.5, -1.0, 0.0, 0.25, 0.25, 0.5, -0.25, 1.0, -0.25, 0.0, -0.75, 0.0, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    device30.destroy();
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.destroy();
    const array8 = new Float32Array([-0.5, -0.5, 0.75, 0.25, 1.0, -0.5, 0.75, -0.75, 1.0, -0.5, 0.25, 1.0, 0.25, -0.25, 0.5, -0.5, -0.25, -1.0, 0.25, 1.0, 1.0, -0.5, -0.75, 0.75, -1.0, -0.75, 0.0, -1.0, 0.0, -0.25, -0.5, 0.0, 1.0, 1.0, 0.75, 1.0, 1.0, -1.0, -0.5, 0.5, 1.0, -0.5, 0.25, 0.0, -0.25, -0.75, -0.25, 0.25, 0.5, 0.0, 0.5, -0.75, -1.0, -0.25, -0.25, -0.25, -0.25, 0.75, 0.5, 0.75, 0.25, 0.75, -0.5, -0.5, -0.75, -0.25, 0.0, 0.75, -0.75, -0.5, -0.25, 0.5, -0.5, 1.0, -0.25, 0.0, 0.75, 0.25, -1.0, 0.0, 0.0, 0.0, 0.75, -0.75, -1.0, 0.5, 0.0, 0.25, 0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 0.25, 0.75, 0.0, -1.0, 0.0, 0.75, ]);
    
    
    const array9 = new Float32Array([0.25, 1.0, 0.25, 0.75, -0.5, 0.5, -0.75, 1.0, -1.0, 0.0, 0.75, 0.25, -0.25, 1.0, -0.75, 0.0, 0.0, -0.5, -1.0, 0.0, -0.75, -0.75, -0.75, -0.5, 0.75, 0.25, -0.5, 0.5, -1.0, 1.0, -0.5, 0.0, -0.75, 1.0, -0.5, -0.5, -0.5, 0.75, 0.5, 0.75, 0.0, -0.75, -0.5, -0.75, 0.25, 0.5, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, 0.25, 0.0, 0.5, -0.5, 1.0, 0.0, 0.75, 0.0, 1.0, -0.5, 0.25, -0.25, -0.75, 0.0, -0.25, 0.75, -1.0, 0.75, -0.75, 0.5, 0.25, -1.0, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 0.75, 1.0, 0.0, -0.25, -1.0, 0.5, 0.0, -0.25, 0.5, 0.5, -1.0, 0.25, -0.75, 0.0, 0.0, 0.5, 0.5, 0.25, 1.0, -0.5, ]);
    
    const array10 = new Float32Array([0.25, 0.0, -1.0, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, -0.25, 0.5, 0.75, -1.0, -1.0, 0.0, -0.5, 1.0, 0.75, -0.75, -1.0, -0.75, 0.5, 0.25, 0.25, -1.0, -0.75, -0.5, -0.25, 0.5, 0.5, -0.25, -0.5, 1.0, 0.25, -0.25, -0.5, -0.5, -0.25, -0.75, -0.5, -0.75, 0.75, -0.25, -0.5, 0.75, 0.0, 1.0, 1.0, -0.5, 0.5, 0.25, 0.25, -0.5, 1.0, -0.5, 0.75, 0.5, -0.75, -0.75, -0.75, 0.0, 0.25, -0.25, -0.75, -0.75, 0.75, 0.5, -0.25, -0.75, -0.5, -1.0, 0.25, -0.25, 0.5, 0.5, -0.75, -0.25, -1.0, -0.75, 0.5, 0.0, 0.5, -0.25, 0.5, -1.0, -0.5, 0.25, 1.0, -0.25, 0.5, 0.75, -0.25, 0.25, -0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.25, ]);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([0.5, -0.25, -0.25, 0.25, 0.5, -1.0, -0.75, -0.5, 1.0, 1.0, -0.75, 0.0, -1.0, -0.75, -1.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.25, 0.75, -1.0, 0.0, 0.5, 0.5, 0.75, 1.0, 0.0, -0.5, 0.25, 1.0, 0.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.25, 0.5, -0.5, -0.25, -1.0, -0.75, 0.5, 0.0, 0.75, 0.25, 0.0, 0.25, -0.5, -0.5, 0.25, 1.0, -0.5, 1.0, -1.0, -1.0, -0.75, 0.5, 0.5, 0.5, 0.75, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, 0.75, -0.75, -0.5, -1.0, 0.5, 0.5, 1.0, 0.0, -0.5, -0.25, -0.25, -1.0, -0.5, 0.5, 0.0, 1.0, 0.0, 0.0, -0.75, 0.75, 0.25, 0.75, 0.5, -0.25, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, ]);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device50.destroy();
    
    
    
    
    const array12 = new Float32Array([-0.5, -0.25, -0.25, 0.5, -0.5, 0.5, 0.5, -0.75, -0.25, -0.75, 0.75, -0.5, 0.75, 0.75, -0.25, 0.25, -0.5, 0.0, -0.5, -0.25, -0.25, -0.75, -0.25, 0.5, 1.0, -1.0, 0.75, 0.25, 0.25, 1.0, 1.0, -0.75, -0.75, 0.25, -0.25, 0.5, -0.75, 1.0, 1.0, 1.0, 0.5, -0.75, 0.0, 0.0, -0.25, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, 0.0, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, 0.0, 1.0, -0.5, 0.0, -1.0, 1.0, 0.25, 0.0, -0.25, -0.5, 0.0, 0.25, 0.25, 1.0, -1.0, 0.0, -0.75, 1.0, -1.0, -0.5, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, 0.0, 0.25, 0.5, 1.0, -1.0, 0.75, -0.75, 0.5, -0.5, -0.25, -0.5, -0.5, 0.25, -0.5, -0.75, 1.0, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array13 = new Float32Array([0.5, 0.25, -0.75, -0.75, -1.0, -0.25, -0.75, -0.75, 0.0, -0.5, 0.5, 0.0, -0.75, -0.5, -0.25, 0.75, -0.75, 0.25, 0.75, -0.25, 0.0, 0.25, 1.0, -1.0, -0.5, 0.75, -1.0, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, 0.5, -0.5, 1.0, -0.25, 1.0, -1.0, -0.75, 0.75, -0.5, -0.75, 0.0, -0.25, 0.0, 0.0, 1.0, 1.0, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, 0.25, -0.5, -1.0, 0.25, 1.0, 0.0, 0.5, -1.0, -0.25, -0.5, 0.25, 0.0, 1.0, -0.25, -0.5, 0.0, 0.0, 1.0, 0.25, 1.0, 0.75, -0.5, -0.5, -0.25, 1.0, -1.0, 1.0, -0.25, 0.25, -0.5, 0.75, 0.5, 0.0, -1.0, 0.0, 1.0, -1.0, 0.5, -0.25, 0.25, 0.25, 0.0, -0.5, 0.75, -0.5, ]);
    
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    const array14 = new Float32Array([0.0, 0.5, 0.25, -1.0, 1.0, 0.25, -1.0, 1.0, 0.75, 1.0, 0.0, 1.0, 0.75, -0.5, -0.5, -0.5, 0.25, 1.0, -0.75, 0.5, -0.5, -1.0, -0.5, -1.0, 0.5, -0.25, 0.25, 1.0, 0.25, -1.0, 0.75, 0.75, 0.0, 0.25, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, 1.0, -1.0, -1.0, 0.25, 0.75, 0.75, 0.25, 0.25, -0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 0.25, -0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -1.0, -0.5, 1.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.5, -0.75, -0.25, 0.5, -0.75, 1.0, 0.5, -0.5, 0.75, -0.5, -1.0, 0.75, 0.0, 0.25, 0.0, -1.0, -0.75, -0.25, 1.0, 1.0, 1.0, -1.0, 0.5, 1.0, -0.75, 1.0, -0.25, -1.0, 1.0, 0.0, 1.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    device60.queue.writeTexture({ texture: texture602 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture602 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    
    
    
    
    
    
    const array15 = new Float32Array([-0.75, -0.25, 0.75, -1.0, -1.0, -0.5, 0.0, 1.0, 0.75, 0.5, 0.75, -0.75, 0.5, -1.0, 0.25, 0.75, -0.75, 0.75, -1.0, 0.25, 0.75, 0.5, 1.0, -0.75, -0.75, -0.75, 0.0, 1.0, 0.5, 0.5, -1.0, 0.5, -0.25, -0.5, -0.25, -0.5, -0.5, -1.0, 0.75, -0.5, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, 1.0, -0.25, 0.25, 0.25, 0.75, -0.75, -0.5, -0.75, -0.25, 0.5, 0.0, 0.5, -0.5, 0.0, 0.25, 1.0, 0.0, -0.75, 1.0, -1.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.75, 0.75, -0.75, -0.25, 0.5, 0.5, 0.0, -1.0, 0.0, -0.75, 0.0, 0.5, -0.25, 0.5, 0.0, 0.25, 0.75, 1.0, -0.5, 0.0, 0.75, 0.0, -0.25, -0.5, 0.0, ]);
    
    
    const array16 = new Float32Array([0.25, -0.25, -0.5, 0.75, 0.0, -0.5, 0.25, 0.25, -1.0, -0.75, 0.75, -0.5, 0.0, 0.75, -0.5, 1.0, 0.5, -0.25, 1.0, 0.25, -1.0, -0.25, 1.0, 0.5, 0.75, -0.25, 1.0, 0.75, -1.0, -0.75, 0.25, 0.0, -1.0, -0.25, 0.0, 1.0, -1.0, -0.75, 0.25, -0.75, 1.0, 0.0, 1.0, 1.0, 0.75, -1.0, -0.5, -0.25, 0.75, -0.5, -0.25, -1.0, 0.0, -1.0, -1.0, 0.5, -1.0, 0.5, 0.0, 0.75, 0.75, 0.25, -1.0, 0.0, 1.0, -0.75, 0.0, 0.25, -0.75, 0.0, -1.0, -1.0, 1.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.5, 0.5, 1.0, 0.25, 0.0, 1.0, 0.75, 0.0, 0.75, -1.0, -0.25, 0.0, -0.75, 1.0, -0.25, -0.75, 0.75, 0.25, -0.25, 0.0, -1.0, -0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device70.destroy();
    
    const array17 = new Float32Array([-1.0, 0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, 0.0, 0.5, -0.5, -1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 0.0, 0.75, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 0.25, 0.5, -0.5, 0.25, -0.25, 0.0, -0.25, 0.25, 1.0, 0.25, 0.75, 0.25, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, -0.5, -1.0, -1.0, 0.5, 0.0, 0.75, 0.5, 0.75, 0.75, 0.75, 0.25, -0.5, -0.25, 0.5, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, 0.5, -0.5, -1.0, -0.5, -0.5, -0.5, -0.25, 0.75, -0.75, 1.0, -1.0, -0.75, 1.0, 0.25, -0.75, 0.0, 1.0, 0.0, 0.75, 0.5, -0.25, -0.25, 0.75, 1.0, 0.5, -0.25, -0.5, 0.75, -1.0, 0.25, 0.75, -1.0, 0.0, 1.0, 1.0, ]);
    
    
    
    
    
    
    
    
    
    
    const array18 = new Float32Array([-0.25, 0.25, 0.25, -0.75, -0.75, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.0, 0.75, 0.5, -0.5, -0.25, -0.5, -0.75, -0.25, 1.0, -0.75, -0.25, 0.5, 0.75, 0.0, 0.75, 1.0, -0.75, 0.25, 1.0, -0.25, -1.0, -0.75, -0.75, -0.75, -1.0, 1.0, -0.25, -0.25, -0.25, -0.25, 0.25, 0.75, -0.75, -0.25, -0.25, -0.75, 0.25, 0.25, 1.0, -0.75, 0.75, -0.25, -0.25, -0.75, 0.25, 0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -0.5, 0.25, 0.5, 0.5, 0.5, 0.5, 0.0, -0.75, 1.0, -0.25, 0.25, 0.25, -0.75, 1.0, 0.25, -1.0, -0.5, -0.25, 0.75, 0.5, 0.5, 1.0, -0.5, -1.0, 0.75, 0.5, 0.75, -1.0, 0.75, 0.0, -0.5, 0.75, 0.75, -1.0, 0.75, ]);
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array19 = new Float32Array([-0.75, -0.25, 0.25, -0.5, -0.25, 1.0, 1.0, -0.25, -0.25, -0.25, 0.25, -1.0, -0.25, -0.75, 0.5, -1.0, 0.0, 0.25, 1.0, -0.25, -1.0, 0.75, -0.5, -0.5, 0.25, -0.75, -0.75, -0.5, 0.0, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.75, -1.0, 1.0, -0.25, -0.5, -0.75, -0.25, 0.75, 0.0, -1.0, 0.0, 0.0, 0.0, -0.5, 0.25, 0.25, 0.0, 0.25, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, 0.25, -0.25, -0.25, 0.25, 1.0, 1.0, 0.75, 0.5, -0.75, 0.75, 0.0, 0.5, 0.0, -0.5, 0.25, 0.0, -0.5, -0.25, 0.0, 1.0, -0.25, 0.75, -1.0, 0.75, 1.0, -1.0, -0.5, 0.0, 0.75, 0.5, 0.25, ]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
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
    device80.destroy();
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array20 = new Float32Array([0.0, 1.0, -1.0, 1.0, 0.75, -0.5, 0.25, 0.75, -0.75, -0.5, 1.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.5, 0.0, 0.5, -0.5, 1.0, -1.0, 0.0, -0.25, 0.25, -0.5, 0.75, -0.5, 0.0, -1.0, 0.0, -0.75, -0.25, -0.5, -0.25, -0.75, -0.5, -0.5, 0.0, 0.75, 0.5, -0.75, -0.75, -0.5, 1.0, 1.0, 1.0, 0.75, -1.0, 0.25, -0.75, 0.0, 0.25, -0.25, 0.5, 0.75, 1.0, 0.5, -1.0, -0.5, -0.25, -1.0, 0.25, 0.0, 0.75, 0.75, 0.5, 0.5, -0.75, 0.75, 0.5, 0.5, -0.5, 0.0, 0.0, 1.0, -0.5, 1.0, 0.0, -0.75, 0.25, 1.0, 1.0, 0.0, -0.25, 0.75, 0.0, 0.5, 0.25, 0.25, -0.5, -0.75, 0.25, 0.0, 1.0, 0.75, -0.5, 1.0, -0.5, 0.0, ]);
    
    
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture900 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture900 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device90.queue.writeTexture({ texture: texture900 }, array20, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
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
    device90.queue.writeTexture({ texture: texture900 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const array21 = new Float32Array([-1.0, -1.0, -0.75, -0.75, 0.75, 0.0, 1.0, -0.75, 1.0, -0.25, 0.0, -1.0, -0.25, 0.25, -1.0, -0.5, -0.5, 0.25, -1.0, -0.75, -0.5, 1.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.75, -0.75, -0.5, 0.5, -0.75, -0.75, -0.75, 0.5, 0.0, -0.25, 0.5, -0.25, -0.75, 0.5, -0.75, 0.25, -0.5, -1.0, 1.0, 0.25, 0.75, 0.75, 1.0, -0.75, -0.75, -0.75, 0.5, 1.0, 0.0, -0.5, 0.0, 0.25, -1.0, -0.25, -0.25, 0.75, -0.75, -0.25, -0.5, 0.25, 1.0, -1.0, -0.5, -0.75, -0.5, -0.75, -1.0, 0.5, 1.0, 0.25, -0.5, 1.0, -0.5, 0.25, -0.5, 1.0, -1.0, -0.5, 1.0, 0.0, 0.0, -1.0, -0.5, 0.75, 0.5, 1.0, -0.5, 0.75, 0.0, -0.75, 0.75, 0.0, 0.75, ]);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
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
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.destroy();
    
    
    
    
    
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array22 = new Float32Array([-0.75, 1.0, 0.0, 0.75, -0.75, 0.0, -0.75, 0.75, 0.25, -0.75, -0.25, -1.0, -1.0, -1.0, -0.5, -0.75, 0.5, -1.0, -0.25, -0.75, -0.75, -0.75, 0.25, -0.75, -0.5, -1.0, 1.0, 0.75, 0.25, -0.25, 0.25, -0.25, 0.25, 0.75, 0.75, 0.75, 0.75, 1.0, -0.75, 0.25, -1.0, -0.5, -0.5, -0.5, -1.0, 0.5, -0.5, 1.0, 0.75, 0.0, 1.0, -0.75, 0.0, -0.5, 0.75, 0.5, 1.0, -1.0, 0.25, 0.25, 0.25, 0.5, 0.25, 0.25, 0.75, -0.75, 0.25, -0.5, -0.25, 0.5, 0.25, 0.25, -1.0, -0.75, 0.0, 0.25, 1.0, -0.75, -0.5, 0.5, 0.0, -0.75, 1.0, -1.0, -0.25, 1.0, 0.0, 0.5, 0.25, -0.5, 0.25, 0.75, 0.5, -1.0, -0.25, 0.5, 0.25, 0.75, 0.0, 0.0, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const array23 = new Float32Array([0.25, -0.75, 0.25, 1.0, 1.0, 1.0, 0.75, -0.25, -0.75, 0.5, 0.0, -0.25, 0.0, 0.25, 1.0, 0.0, -0.5, 1.0, -0.5, 0.75, 0.5, 1.0, -0.75, -0.25, -1.0, -0.25, 1.0, -0.5, -0.25, 0.5, 0.25, 0.0, 0.75, 1.0, 0.25, -0.75, 0.5, 0.75, -0.75, 0.0, 0.0, 0.25, -1.0, -0.25, 0.25, 0.5, -1.0, -0.25, 0.75, -0.25, 0.0, -0.5, 0.75, 1.0, -0.5, 0.75, 0.25, 0.0, -0.5, 0.75, -1.0, -1.0, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, 0.75, 0.5, 0.0, 0.0, -0.5, -0.75, 0.0, -0.25, 0.25, -0.75, 0.25, -0.5, 0.5, 1.0, 1.0, -0.5, -0.75, 0.0, 0.75, 0.5, 0.5, 1.0, -0.25, 0.5, -1.0, 0.0, 0.0, 1.0, 0.75, -0.25, 1.0, -0.5, ]);
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device100.destroy();
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
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
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1200]
    });
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array24 = new Float32Array([-1.0, 0.25, 1.0, -0.75, -0.75, 0.25, -0.75, -0.5, -0.25, -1.0, 1.0, 1.0, 0.0, -0.75, 0.5, -0.25, 0.5, 0.5, -1.0, 0.5, 0.5, 0.0, 0.75, 1.0, -0.25, 0.0, 1.0, 0.75, 0.25, 0.75, -0.5, -0.75, 0.75, -0.5, -0.5, -0.75, 1.0, -0.5, 1.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.25, 0.5, 0.5, 0.5, -0.75, -0.25, -0.5, -0.25, 0.75, 0.75, 0.0, -1.0, 0.0, -1.0, 1.0, 0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 0.0, 0.0, 0.5, 0.5, 0.75, -0.75, 0.25, 0.0, 0.0, 0.0, -0.5, -0.5, -0.25, 0.0, -0.5, -0.25, -0.5, -0.5, -0.25, 0.5, -1.0, 1.0, -0.75, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, -0.25, 0.0, -0.5, -1.0, 0.25, 0.75, ]);
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
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
    
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    query1200.destroy()
    
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    
    
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pipeline1300 = device130.createRenderPipeline({
        label: "render_pipeline1300",
        vertex: {
            module: shader_module1300,
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
            module: shader_module1300,
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
    
    
    const array25 = new Float32Array([-1.0, 0.25, -0.5, -1.0, 0.75, 0.5, 0.75, 1.0, 0.25, 1.0, -0.75, -0.5, 0.25, 0.5, 0.75, -0.75, -0.75, 0.75, 1.0, 0.75, 0.5, 1.0, -1.0, 1.0, 0.25, 0.0, -1.0, -0.5, 0.5, -0.5, -0.75, -1.0, 0.5, 0.5, 0.5, -0.25, -0.75, -1.0, 0.75, 0.25, -0.75, 0.0, -0.5, 0.25, -0.25, 0.0, 0.0, -0.25, -0.25, -0.25, -0.25, -0.75, 0.0, -1.0, 1.0, 0.5, 0.0, -0.25, 1.0, 1.0, -0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 1.0, -0.5, 0.0, -0.5, -0.5, 0.0, -1.0, -0.75, 0.25, 0.0, 0.0, 0.0, 0.75, 0.5, 0.75, -0.5, -1.0, 0.0, -0.25, 0.5, 0.75, -0.75, 0.75, 0.5, 0.25, -0.25, 0.25, 0.0, -0.5, 0.5, 1.0, 1.0, 0.0, -0.75, ]);
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1204,
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
            module: shader_module1204,
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
    const render_pipeline1203 = device120.createRenderPipeline({
        label: "render_pipeline1203",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline1204 = device120.createRenderPipeline({
        label: "render_pipeline1204",
        vertex: {
            module: shader_module1204,
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
            module: shader_module1204,
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
    render_bundle_encoder1200.setPipeline(render_pipeline1201);
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
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
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    
    
    
    buffer1201.destroy()
    const render_pipeline1205 = device120.createRenderPipeline({
        label: "render_pipeline1205",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1201.setPipeline(render_pipeline1204);
    const render_pipeline1206 = device120.createRenderPipeline({
        label: "render_pipeline1206",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    const render_pipeline1207 = device120.createRenderPipeline({
        label: "render_pipeline1207",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const render_pipeline1208 = device120.createRenderPipeline({
        label: "render_pipeline1208",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    
    
    
    query1200.destroy()
    device110.destroy();
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const pipeline_layout1201 = device120.createPipelineLayout({ 
        label: "pipeline_layout1201",
        bindGroupLayouts: [bind_group_layout1200]
    });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    buffer1202.destroy()
    const render_pipeline1209 = device120.createRenderPipeline({
        label: "render_pipeline1209",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    device120.queue.writeTexture({ texture: texture1200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline12010 = device120.createRenderPipeline({
        label: "render_pipeline12010",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    device120.queue.writeTexture({ texture: texture1200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.queue.writeBuffer(buffer1400, 0, array20, 0, array20.length);
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1204 = device120.createBuffer({
        label: "buffer1204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1200 = device120.createBindGroup({
        label: "bind_group1200",
        layout: render_pipeline1204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1204,
                },
            },
        ],
    });

    render_bundle_encoder1201.setBindGroup(0, bind_group1200);
    device120.queue.writeTexture({ texture: texture1200 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
}