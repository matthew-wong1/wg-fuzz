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
    const array0 = new Float32Array([0.0, -0.5, -0.5, 0.75, -1.0, -1.0, 0.75, 0.25, 0.25, -1.0, 0.5, 0.0, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, -1.0, 0.0, -0.75, -0.25, 0.0, -0.5, -0.5, -0.5, -1.0, 0.0, -0.25, 0.75, -0.75, -0.75, 0.75, 0.25, 0.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.25, -0.75, 0.0, 0.25, 0.25, 0.75, 1.0, 0.25, 0.5, -1.0, 0.75, -0.75, -0.75, -0.5, 0.75, -0.5, -0.75, 0.75, -1.0, -0.25, 0.75, 0.5, 0.25, -0.25, -1.0, 0.5, -0.25, 0.0, 1.0, 0.0, 0.0, 0.75, -0.75, -0.5, -1.0, 0.75, 0.75, 0.75, -1.0, -1.0, -0.25, 0.0, -0.5, 0.25, -0.25, 0.75, 1.0, 0.25, 0.25, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, -0.5, 0.0, -0.5, 0.5, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const array1 = new Float32Array([0.5, 0.75, -0.75, 1.0, -0.75, -0.75, 0.5, -1.0, 0.75, 0.75, -0.5, 0.25, -0.75, 0.5, -0.75, 0.75, 0.5, -1.0, -0.5, 0.25, -0.25, 1.0, -0.75, -0.75, -0.25, 0.5, 0.25, 0.25, -0.5, 0.0, -0.25, 0.5, -0.25, -1.0, -0.75, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, -0.5, -0.25, 0.75, 0.75, 0.25, 0.0, 0.75, -1.0, -0.25, -0.25, 0.25, 0.25, -0.25, 1.0, -1.0, 0.25, -0.25, 1.0, 1.0, 0.25, -0.25, -0.75, 0.0, -0.5, 0.25, -0.5, -0.75, -0.25, 1.0, 0.75, -1.0, -0.75, -0.25, 1.0, 1.0, -0.75, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, -0.25, -1.0, 0.5, -1.0, -1.0, 0.25, 0.0, -0.75, 0.0, 0.5, -0.25, -0.5, -0.75, -0.5, 0.25, 0.5, -1.0, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const array2 = new Float32Array([-1.0, 1.0, 0.25, 0.75, 0.0, 1.0, 0.5, 1.0, 0.75, -0.5, 0.5, -0.75, -0.5, 0.25, 0.0, 0.5, 0.0, 0.5, -1.0, 1.0, 0.0, 1.0, -0.25, 0.25, -1.0, -0.5, 0.0, 1.0, 0.5, -0.75, -0.5, -0.75, 0.0, -0.75, 0.75, 0.5, -1.0, -0.5, -0.25, -1.0, 0.5, -0.75, 0.25, -1.0, 0.0, -0.25, 0.25, -1.0, -0.25, 1.0, 1.0, -1.0, 0.25, 1.0, 0.5, 0.5, 0.0, 0.75, -0.75, 0.75, -0.5, 1.0, 1.0, -0.75, 0.75, 0.0, -0.75, 0.25, -0.25, -0.25, -0.5, 1.0, 1.0, -0.5, -0.75, 0.25, 0.0, -0.5, -0.75, -0.75, 1.0, 0.75, -0.25, 0.0, 0.5, -0.5, -0.75, -0.25, 0.25, -0.75, 0.75, -0.5, -0.75, -1.0, -0.75, 0.75, 0.25, -0.5, -0.75, -0.25, ]);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device10.queue.submit([]);
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    
    
    
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    device20.pushErrorScope("internal");
    const array3 = new Float32Array([-1.0, 0.0, 0.25, 0.5, -0.25, 0.5, 0.25, -0.75, 0.25, 0.0, -0.5, -1.0, 0.25, -0.75, 1.0, 1.0, -0.75, -1.0, -0.75, -0.5, -0.75, 1.0, 0.75, 0.75, -0.75, 0.25, -0.25, 0.25, -1.0, -0.5, -0.5, 0.75, -0.75, 0.0, 0.5, 0.25, 1.0, -0.5, -1.0, 0.5, -0.25, 0.5, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 0.5, 0.0, 1.0, -0.75, 0.5, 0.75, 0.25, 0.25, 1.0, -0.75, -0.5, 0.0, -0.25, 0.5, 0.0, -1.0, -1.0, -0.75, -1.0, -1.0, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -1.0, 0.5, -0.5, 1.0, 0.0, -0.25, 1.0, -0.75, 0.25, 1.0, -0.75, -0.75, -0.75, -1.0, 0.5, 1.0, 0.25, -0.5, 1.0, -1.0, 0.75, 0.25, -0.75, -0.5, 0.0, 1.0, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device10.destroy();
    
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    buffer201.destroy()
    texture200.destroy();
    device10.pushErrorScope("out-of-memory");
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
    render_bundle_encoder201.popDebugGroup();
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.pushErrorScope("internal");
    
    const array4 = new Float32Array([-0.5, 0.75, 0.5, 0.25, 0.75, 0.75, 0.75, 1.0, 0.75, 0.75, 0.25, 1.0, -1.0, 0.75, 0.5, -0.25, 0.5, 0.5, 0.75, 0.25, 0.5, 0.25, 0.25, -0.5, 0.5, -1.0, 1.0, 0.5, 0.0, -0.25, 0.0, -0.5, -0.25, -1.0, -0.75, 1.0, -0.25, 0.25, 0.0, 0.25, 0.25, -0.75, 0.5, 0.75, 0.75, -0.25, 0.0, 0.75, -0.5, -0.75, 0.75, 1.0, -0.75, 0.25, 0.5, 0.0, -0.75, 0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 1.0, -0.25, 0.75, 0.0, 0.25, 0.25, 0.5, -0.75, 1.0, 0.25, 0.0, -0.75, 0.0, 0.5, -0.25, 0.0, 0.75, 0.0, 0.75, -1.0, 0.75, 0.5, 0.0, 0.0, 1.0, -0.25, 0.0, -0.5, -1.0, -0.75, 0.5, 0.75, 0.0, -0.5, 0.5, 1.0, 0.5, ]);
    
    buffer200.destroy()
    
    texture201.destroy();
    texture200.destroy();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const array5 = new Float32Array([-0.25, 0.25, -0.25, -0.5, -0.25, 0.0, 1.0, -0.75, 0.25, 0.5, 0.5, -1.0, -0.5, -1.0, -0.5, 1.0, 0.0, 0.5, -1.0, -0.75, 0.0, -0.75, -0.5, 0.25, 0.5, 0.5, -0.25, -1.0, 0.0, 0.75, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, 0.75, 0.25, -1.0, 0.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, 0.5, 0.5, -0.75, -0.25, -0.5, -0.75, -0.75, 0.0, 0.25, -1.0, -0.75, -0.75, 0.5, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, -0.25, -0.25, -0.75, -0.25, 1.0, -0.5, -1.0, -0.75, 0.75, -0.25, -0.75, -0.25, 0.0, 0.5, -0.5, -0.5, 0.0, 0.0, 0.0, 0.25, 0.25, -0.25, -0.5, -0.75, 0.25, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.25, 1.0, -0.75, ]);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device30.destroy();
    
    
    
    
    
    
    
    const array6 = new Float32Array([-0.75, -0.25, -1.0, 1.0, -0.25, -0.5, 0.25, -0.75, -0.25, 1.0, 0.0, 0.5, -1.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.75, -1.0, -0.75, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -1.0, 0.25, -0.25, 1.0, -0.5, -0.75, -0.75, -0.75, -0.25, 1.0, -1.0, -1.0, 0.75, 0.0, -0.75, -0.25, 0.75, -0.75, -0.25, 0.0, -0.75, -1.0, 0.5, -0.25, 0.25, 0.0, -0.75, 0.25, 0.25, -0.5, -0.25, -1.0, 0.25, 1.0, 0.25, 1.0, 0.25, 1.0, -0.5, 0.0, 0.0, 0.75, 0.5, -0.25, -1.0, -0.25, 0.25, -0.25, -1.0, -0.5, -0.75, 0.75, 0.25, 0.0, 0.0, 0.0, 0.25, -1.0, 0.5, 1.0, 0.75, -0.25, -0.75, -0.25, -0.5, -0.5, 0.75, 0.0, -0.75, -0.5, 0.75, -0.75, 0.5, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array7 = new Float32Array([-0.5, -1.0, 0.75, -0.5, -0.5, -1.0, 0.0, -0.75, -0.25, -0.25, 0.25, 1.0, 0.0, -0.25, -1.0, 0.5, 0.75, 0.0, 0.5, 0.75, -0.25, -1.0, 0.25, 1.0, 0.25, 1.0, 0.5, -0.5, -0.5, 0.75, 0.0, 0.5, -0.75, -0.5, 0.25, 0.25, -0.75, 0.0, 0.0, 0.75, 0.75, 0.0, 0.0, 0.0, -1.0, 1.0, 0.0, 0.25, -0.75, 0.0, 0.5, 0.0, 0.5, 0.5, -0.5, -0.75, 0.75, 0.75, 0.0, 0.25, -0.75, 0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, -1.0, -0.75, -1.0, 0.0, 0.75, 0.25, 0.0, 0.25, 0.75, 0.25, 0.0, 0.25, 0.75, -0.25, -1.0, 0.0, -0.75, 1.0, 0.25, -0.75, -1.0, -0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array8 = new Float32Array([-0.75, -0.25, -0.5, 0.0, -0.5, -0.25, 0.25, 0.5, 1.0, 0.0, 0.25, -0.75, 1.0, -0.25, 1.0, -1.0, 0.5, -0.5, -1.0, -0.25, 0.25, -0.75, -1.0, 1.0, -0.25, -0.5, 0.5, -0.75, 0.25, -0.5, -0.5, -1.0, 0.75, 1.0, -1.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.25, 0.0, 1.0, 0.5, -0.25, 0.75, -0.5, 0.25, -1.0, 0.75, 0.0, -0.75, -0.5, -1.0, 0.0, -0.75, -0.5, 0.75, 1.0, -0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -0.5, 0.75, -1.0, -1.0, 1.0, 0.0, 0.75, 0.25, 0.75, 0.75, -0.5, -0.75, -0.75, -0.75, 0.5, 0.25, -0.75, 1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 0.5, 1.0, -1.0, -0.75, 0.75, -1.0, 0.25, 0.25, -0.5, 0.25, 0.5, -0.5, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    
    
    
    
    
    
    
    device40.destroy();
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array9 = new Float32Array([0.0, -0.75, -0.25, 0.75, 0.0, 0.5, -0.5, -0.25, -0.5, -0.5, -0.5, -1.0, -0.5, 0.75, 0.75, 0.25, 1.0, 0.0, 1.0, -0.25, 0.0, 0.0, -1.0, -0.5, 0.75, 0.75, 0.25, 1.0, 0.75, 0.25, 0.5, -1.0, 0.25, 1.0, 0.75, 0.75, -0.5, 0.75, 0.0, -1.0, 0.75, 0.25, 0.75, 0.0, -0.5, 0.75, 0.0, 0.75, 1.0, 0.75, 0.5, 1.0, -0.25, 0.25, -0.5, -0.25, -0.5, -0.75, 0.75, -0.25, 0.0, 1.0, -1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -1.0, 0.25, -0.75, -0.75, -0.5, -1.0, -1.0, -1.0, 1.0, -0.5, -0.25, 0.5, 0.5, 0.0, 0.75, 0.0, 0.75, -0.75, -0.25, 0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 0.0, 1.0, 0.25, -0.25, 0.75, 0.0, -0.5, ]);
    
    const array10 = new Float32Array([-0.25, 0.0, 0.75, 0.5, -1.0, 0.5, 0.0, 1.0, 0.0, -0.5, 0.25, -0.5, 0.0, 0.0, -0.25, -0.5, 0.5, -0.75, 0.25, 1.0, -0.5, -1.0, -1.0, 0.0, -0.25, -0.5, 0.25, 0.0, -1.0, -0.25, -0.75, 0.0, -0.5, -0.25, 0.75, -0.5, 0.5, 0.25, 0.75, 0.75, 0.25, -0.25, 0.75, 0.0, 0.5, -1.0, 0.5, 0.75, -0.25, 1.0, -0.25, -0.75, -0.25, -1.0, 0.5, 1.0, -1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.75, 0.75, 0.25, 0.25, -0.5, 1.0, 0.75, -0.25, 0.75, 0.25, 1.0, -1.0, 0.5, -0.5, -1.0, 1.0, 0.0, -0.5, 0.75, -0.75, 1.0, 0.75, 0.5, -0.5, 0.25, 0.5, -1.0, 0.0, 0.5, 0.75, 0.25, 1.0, 0.0, 0.75, -0.25, -0.5, 0.5, -0.25, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder200.draw(3);
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device50.pushErrorScope("validation");
    const array11 = new Float32Array([0.5, -1.0, 0.75, -0.5, -0.75, -0.5, -0.5, -0.75, 1.0, 0.75, -0.25, -1.0, -0.25, -0.5, -0.5, 1.0, -0.75, 1.0, -0.25, -0.5, -1.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.75, -1.0, 0.75, -1.0, 1.0, -0.75, -0.75, 1.0, -1.0, -0.75, 0.25, 1.0, 0.75, 0.5, 0.25, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.25, -0.25, -0.25, 1.0, 0.75, 0.5, 0.5, -0.5, -0.75, 1.0, 0.75, 0.0, 0.25, 0.25, -0.75, 0.0, -0.5, 1.0, -0.25, 0.0, -0.5, 1.0, -0.75, 0.25, 0.75, 1.0, 0.5, -0.75, 0.5, 0.75, 0.5, -0.5, 0.25, 0.25, 0.0, 0.5, 1.0, 1.0, 0.25, 1.0, -0.5, 0.25, 0.0, -0.75, -0.25, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
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
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    texture000.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    render_bundle_encoder500.popDebugGroup();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device40.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    
    device50.pushErrorScope("validation");
    buffer502.destroy()
    device50.destroy();
    const array12 = new Float32Array([0.25, -0.75, 0.0, -0.25, 0.0, 0.5, 1.0, -0.5, -1.0, -0.25, -0.25, -0.25, -0.5, 0.75, -0.75, 0.25, 0.25, -0.5, -0.5, -0.75, -0.75, -1.0, -0.5, -0.25, 1.0, -1.0, -0.75, -0.5, -0.5, -0.5, 0.25, -0.25, -0.25, 0.25, 0.25, 0.5, -0.5, 0.25, -0.25, 1.0, -0.5, 0.0, 1.0, -0.75, -0.75, -1.0, 1.0, 1.0, -1.0, 0.75, 0.25, 0.75, 0.5, -0.25, -1.0, 1.0, 0.75, 0.25, -0.25, 0.25, -0.25, 0.5, 0.0, -1.0, 1.0, 1.0, 1.0, -0.75, 0.75, -0.25, 0.75, 0.5, -0.5, 0.0, -0.5, -1.0, -1.0, -0.25, 0.0, -0.75, -1.0, -1.0, 0.75, 0.25, -1.0, -0.25, -1.0, -0.25, -0.5, 0.0, 0.0, -1.0, -0.5, 0.25, 0.0, -0.25, -0.25, 0.75, -0.75, 0.25, ]);
    texture600.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
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
    buffer700.destroy()
    render_bundle_encoder801.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.popDebugGroup();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device80.pushErrorScope("internal");
    render_bundle_encoder800.popDebugGroup();
    buffer800.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device70.destroy();
    buffer203.destroy()
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    device00.pushErrorScope("internal");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder801.popDebugGroup();
    const array13 = new Float32Array([0.0, -0.5, 0.25, -0.5, -0.5, -1.0, -0.75, 0.0, 0.5, -0.5, -1.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.5, 0.75, -0.75, 0.75, 0.0, -0.5, 1.0, -1.0, 0.0, -0.75, -0.75, 0.75, -0.25, 0.5, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.0, 1.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.25, 1.0, -0.25, 0.25, -0.5, 0.5, 0.0, -0.75, -1.0, -0.75, -0.75, 0.5, 0.0, 0.0, -1.0, -0.75, 1.0, -0.5, -0.5, -0.75, 0.5, -0.25, 0.0, 1.0, -1.0, -0.75, 0.5, -0.5, -1.0, 0.75, -0.25, 0.0, 0.0, -0.5, 0.0, 0.5, 1.0, 1.0, 1.0, 0.75, -0.75, -0.25, -0.5, 0.75, 1.0, 0.5, 0.0, -0.25, -0.75, 0.0, -1.0, ]);
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const array14 = new Float32Array([-1.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.25, -0.5, 0.0, -1.0, 0.25, 0.25, -0.75, 0.75, 1.0, -1.0, -1.0, -0.5, 0.75, 0.0, 0.25, 0.25, -0.75, -0.5, -0.75, 0.5, -0.25, 0.75, 0.0, 1.0, -0.5, -0.75, -1.0, 0.5, 0.25, 0.25, -0.25, -0.25, 1.0, 1.0, 1.0, 0.25, 0.0, -1.0, -1.0, 0.75, -0.75, -1.0, 0.75, 0.5, -0.5, 0.75, 0.25, 0.0, -1.0, 0.75, 0.75, -1.0, -1.0, -1.0, 1.0, -0.75, -1.0, 0.25, 0.5, 0.0, 0.75, -0.75, -0.5, -0.5, 0.25, 0.75, 0.0, 0.75, 0.0, -0.5, -0.75, 0.25, 1.0, 0.25, 0.75, 0.25, 0.25, -1.0, 0.25, 0.5, -0.25, 1.0, -0.75, -0.5, 0.0, -0.75, -0.75, -0.5, -0.75, 0.5, 0.25, -1.0, -1.0, 0.5, ]);
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device80.queue.writeBuffer(buffer801, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer801, 0, array12, 0, array12.length);
    device80.queue.submit([]);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    device80.queue.writeBuffer(buffer801, 0, array12, 0, array12.length);
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer801, 0, array12, 0, array12.length);
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer802, 0, array12, 0, array12.length);
    device80.queue.writeBuffer(buffer801, 0, array2, 0, array2.length);
    
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
    device80.queue.writeBuffer(buffer801, 0, array11, 0, array11.length);
    device80.destroy();
    
    
    device10.queue.writeTexture({ texture: texture100 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array15 = new Float32Array([-0.25, 0.0, -0.25, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, -0.75, -0.75, -0.5, 0.75, -0.5, 0.25, 0.75, -0.5, 0.0, -0.75, 0.0, -1.0, -0.75, 0.5, 1.0, 0.25, 1.0, 0.0, 0.5, 0.5, 0.75, 0.5, 0.25, 0.5, -0.25, 0.0, 0.5, -0.5, -1.0, 0.0, 1.0, -0.5, 0.75, -0.5, -0.5, 0.5, -0.5, 0.0, 0.5, 1.0, -0.75, 0.5, 0.0, 0.0, 1.0, 1.0, -0.75, 0.25, -0.5, 0.25, 0.75, 0.25, -0.5, 0.25, 0.25, 1.0, -0.75, -0.75, 0.75, -0.75, -0.5, -0.75, -0.5, 0.25, -0.5, 0.0, 0.5, -0.25, 0.75, 0.75, -1.0, -0.75, 0.5, 0.0, 0.5, 0.75, -0.25, -1.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.5, -1.0, -0.25, -0.75, 0.0, -0.5, 0.75, 0.5, ]);
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
    
    
    const array16 = new Float32Array([-0.75, -0.25, 1.0, -0.75, -1.0, 0.5, -1.0, -0.5, 0.5, 0.5, 1.0, -0.5, 0.0, -1.0, 1.0, 0.0, 0.0, 1.0, 0.25, -0.5, -1.0, -0.75, 1.0, 1.0, 0.0, 0.5, 0.75, 0.75, 0.75, 0.0, -0.5, 0.0, -0.5, 0.75, 1.0, -0.25, -0.25, -0.25, 0.75, 0.25, 0.75, 1.0, -0.75, 0.0, -0.5, -0.5, -0.5, 1.0, -1.0, -0.5, 0.25, -1.0, -0.75, -0.75, -0.25, -1.0, 0.25, -0.5, 1.0, -0.5, 0.75, 1.0, 0.75, -1.0, 0.0, -1.0, 0.75, 0.25, -1.0, -0.75, -0.75, -0.5, 0.75, -1.0, -0.25, 0.0, -0.75, -0.5, 0.25, 0.5, 0.5, 1.0, 0.5, 0.25, -0.75, -0.5, -0.25, 1.0, 0.25, -1.0, -0.5, 0.25, -0.5, 0.25, -1.0, 0.25, 0.5, -1.0, 1.0, -0.75, ]);
    
    
    
    
    const array17 = new Float32Array([1.0, 1.0, -1.0, 0.5, 0.25, 0.0, 0.5, -0.5, -0.75, -0.25, 0.0, -0.25, -0.25, 0.25, 0.5, -1.0, 1.0, -0.5, 0.5, -0.75, 1.0, 1.0, 0.0, 0.75, -0.5, 1.0, 1.0, -0.25, 0.0, 0.0, -1.0, 0.75, 0.0, -1.0, 0.75, 0.5, 1.0, -0.25, 0.25, 0.25, -0.75, 0.0, -0.5, -0.75, -0.25, 0.75, 1.0, 0.25, -0.25, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, 0.25, -0.5, -0.75, 1.0, -0.75, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, 0.0, 0.5, -1.0, -1.0, 1.0, 0.0, -0.75, -0.25, 1.0, 0.5, 0.5, 0.5, 0.25, -1.0, 1.0, 0.0, -1.0, -0.5, -0.25, 1.0, -0.25, -1.0, 0.75, 0.5, -0.25, -0.25, -1.0, 0.0, 0.25, 0.75, 0.0, -0.5, 0.75, -0.5, ]);
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device80.queue.writeBuffer(buffer801, 0, array3, 0, array3.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device80.queue.writeBuffer(buffer801, 0, array12, 0, array12.length);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer801, 0, array1, 0, array1.length);
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
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    const array18 = new Float32Array([-1.0, 0.75, -0.75, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, -0.25, -0.75, 0.25, -0.5, 0.0, -1.0, 0.25, 0.75, -1.0, 0.5, -1.0, 0.5, -0.75, -0.25, -1.0, 0.5, -0.5, -0.25, 0.75, 1.0, 0.0, 0.5, -1.0, 1.0, -1.0, 0.5, -0.5, 0.5, 0.0, -0.25, 1.0, 1.0, 1.0, -0.75, -0.25, 1.0, -0.25, -0.75, 0.75, 0.25, -0.75, -0.25, -0.5, 1.0, -0.25, 1.0, 0.25, -0.75, 0.0, -1.0, -0.5, 0.75, -0.25, 1.0, -0.5, -0.75, -0.25, 0.75, -0.25, -0.5, 0.0, 0.5, 0.0, -0.75, -1.0, 0.75, 0.5, 0.0, 1.0, 0.25, 0.75, -0.5, -0.25, 0.5, -1.0, 0.5, 1.0, 0.0, -1.0, -0.75, 0.25, 0.75, -0.5, 0.0, -0.25, -0.5, -0.25, -1.0, -0.25, -0.5, -0.75, ]);
    const array19 = new Float32Array([0.25, 1.0, 1.0, -0.75, 0.5, -0.25, 1.0, 0.75, -0.75, -0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 0.25, 0.0, -0.5, -0.75, 0.0, 0.0, -0.25, 0.5, 0.5, 0.5, -0.5, 0.25, 0.5, -0.75, -0.25, -0.25, -0.25, 0.0, -0.25, 0.5, -1.0, -0.5, 0.75, 0.25, -0.75, 0.5, 0.0, 0.0, 1.0, 1.0, 1.0, -0.5, -0.5, 0.75, -0.5, -0.75, -0.5, 0.25, 0.75, 0.5, 0.25, 0.0, -0.25, 1.0, -0.75, 1.0, 1.0, -0.25, -1.0, -0.75, -0.25, -1.0, -0.25, -1.0, 1.0, 0.5, -0.75, 0.75, 0.75, -0.75, -0.25, 0.75, 0.0, -1.0, 0.75, -0.25, -0.25, -0.5, -0.75, -1.0, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 1.0, 0.75, 0.25, -0.25, 0.75, -1.0, 0.25, 1.0, 0.75, ]);
    
    
    
    
    
    device60.pushErrorScope("internal");
    
    
    const array20 = new Float32Array([1.0, 0.25, -1.0, 0.25, 1.0, 0.5, 0.5, -0.75, 0.25, -1.0, 0.0, 0.75, 0.5, 0.0, -0.5, 0.75, 0.75, -1.0, -0.75, -0.75, -0.5, 0.75, 0.75, 0.25, 0.5, -0.25, 0.5, 0.75, 1.0, -0.25, 0.5, 0.75, 0.0, -1.0, 0.0, 0.75, 1.0, -0.25, -0.75, 1.0, 0.5, 1.0, 0.0, 0.25, 0.0, 0.25, -0.25, 0.25, 0.0, 0.5, 0.0, -0.25, 0.25, 0.0, 1.0, 0.75, -1.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.75, -0.5, 1.0, -0.25, -0.75, 0.5, 1.0, -0.5, 0.25, 0.0, -0.5, 0.0, 0.75, 0.25, 0.5, 0.5, 0.75, 0.5, -0.25, 0.25, -0.75, 0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 0.25, -0.75, -1.0, 0.0, 0.75, -0.75, 0.0, 0.75, 1.0, 0.25, -1.0, ]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeBuffer(buffer802, 0, array5, 0, array5.length);
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    render_bundle_encoder801.setPipeline(render_pipeline800);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture100 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer801, 0, array8, 0, array8.length);
    
    
    
    device50.queue.writeBuffer(buffer501, 0, array14, 0, array14.length);
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device80.queue.writeBuffer(buffer801, 0, array11, 0, array11.length);
    
    const array21 = new Float32Array([-0.25, -0.5, -1.0, -0.5, -0.75, 0.5, -0.75, 0.5, 0.75, -1.0, 0.75, -0.75, -1.0, 0.5, -0.25, 1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 0.0, 0.75, 0.0, 0.5, -0.75, 0.25, -0.75, 0.75, 0.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.25, 0.25, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, 0.75, -0.25, -0.25, -1.0, 1.0, -1.0, -0.25, 0.0, 0.0, 0.75, 0.75, 0.75, -0.25, 0.75, 1.0, 0.75, 0.0, -1.0, 0.0, -0.25, 0.0, -1.0, 0.5, -0.75, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, -1.0, 0.25, -1.0, 0.5, -0.25, -0.75, 1.0, -0.25, -0.25, -0.25, ]);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer801, 0, array12, 0, array12.length);
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.destroy();
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer801.destroy()
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer600.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
}