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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.0, 0.75, 0.75, 0.0, 0.75, 0.75, 0.5, 0.25, -1.0, 0.75, 0.25, 0.75, 0.0, 1.0, -0.75, -0.75, -0.25, 1.0, -1.0, 1.0, -0.75, -0.25, 0.75, 1.0, 0.5, 1.0, 0.0, -1.0, -0.5, 1.0, 0.5, -1.0, -0.5, 0.5, 0.75, 0.25, 0.25, -0.75, 0.75, 0.0, 0.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.5, -0.25, 1.0, 0.0, 0.25, 0.0, 1.0, 0.5, -0.5, 0.5, 0.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.25, -0.75, 0.75, 0.0, -0.25, 0.0, 0.25, -0.25, 0.25, 0.75, -1.0, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, -0.5, -1.0, 0.0, 1.0, -0.5, -0.5, -0.75, -1.0, -0.5, 0.75, 0.25, 0.0, 0.5, 1.0, 0.0, 1.0, 0.0, -1.0, 0.5, -0.75, 0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("validation");
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("internal");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture100.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.popDebugGroup();
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
    query200.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture101.destroy();
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    render_bundle_encoder100.popDebugGroup();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    
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
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.destroy();
    
    const array1 = new Float32Array([0.5, 0.75, -0.5, -0.5, 0.75, -0.25, 1.0, 0.0, -0.25, 0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 0.0, -0.25, -0.5, 1.0, 0.75, 0.5, -0.75, -1.0, 1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.5, 1.0, -1.0, 0.5, -0.5, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, 0.0, 1.0, 0.75, 0.25, -0.25, -0.5, -0.25, 0.0, 0.0, -0.25, 1.0, 1.0, 0.0, 0.25, 0.0, -0.25, 1.0, -0.5, -1.0, -0.5, -0.5, 0.0, 1.0, 0.25, 0.25, 0.5, 0.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.5, 0.0, 0.0, 1.0, -0.75, -0.75, 0.75, -0.75, 1.0, 0.75, -1.0, 1.0, -0.25, -0.75, -0.75, 0.0, -0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 1.0, 1.0, 0.5, -0.5, 1.0, -0.25, ]);
    
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const array2 = new Float32Array([-0.75, 0.25, 1.0, 0.5, -0.75, 0.25, 0.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.25, -0.25, 0.5, -0.75, 0.5, -0.75, 0.25, -0.5, -0.5, 0.75, 0.5, -1.0, 0.0, -0.75, 0.5, 0.5, 0.75, -0.5, -1.0, -0.75, -0.75, -0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 0.75, 0.5, -0.25, -0.75, 0.25, 0.0, 0.25, 0.5, 0.75, 1.0, 0.75, -0.25, -0.75, -1.0, -1.0, -0.5, -0.75, -1.0, -0.5, -0.25, -1.0, 0.0, 0.5, -0.75, 0.0, -1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 0.0, 0.5, -0.25, -0.25, -0.5, 0.5, -0.25, 0.0, 0.5, 0.0, -1.0, 0.5, -0.25, 0.5, 0.5, 1.0, -1.0, 0.75, 1.0, 1.0, 1.0, -1.0, -1.0, 0.5, -0.5, 0.75, 0.5, -0.25, -0.5, 0.75, ]);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
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
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_pass_encoder0000.executeBundles([])
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder202.setPipeline(render_pipeline202);
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
    texture103.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    texture201.destroy();
    buffer100.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer103.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    command_encoder001.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const array3 = new Float32Array([-0.5, 0.75, 0.5, 0.75, -0.25, 1.0, -0.5, -0.5, -0.75, -1.0, 1.0, -1.0, -0.5, -1.0, 0.25, -0.25, -0.25, -0.25, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, -0.25, -0.25, -0.25, 0.5, 0.5, -0.5, 0.25, -0.25, -0.75, -0.5, 0.25, 0.5, 1.0, 0.0, 0.0, 1.0, -0.25, -0.75, 0.0, 0.0, 1.0, -0.5, -0.5, 0.5, 0.25, -0.25, -0.25, -0.25, -0.75, 0.25, -0.25, 1.0, 0.5, -1.0, 0.75, 0.75, 0.75, 0.75, 0.25, -1.0, -0.5, -0.25, 0.5, -0.5, 0.75, 0.5, 0.75, -1.0, 1.0, -0.75, -1.0, 1.0, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, 0.25, -0.25, -0.5, 0.5, -0.5, 0.75, 0.5, -0.5, 0.75, 0.75, -0.25, -0.5, 0.75, 0.75, -1.0, 0.75, -0.5, ]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.beginOcclusionQuery(0)
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder0010.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
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
    command_encoder102.copyTextureToTexture(
        {
            texture: texture103
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
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder1010.setPipeline(render_pipeline101);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1021.setPipeline(render_pipeline101);
    texture102.destroy();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1040.executeBundles([render_bundle_encoder100, ])
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_buffer104 = command_encoder104.finish();
    query200.destroy()
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    
    render_bundle_encoder201.popDebugGroup();
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
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder1030.setPipeline(render_pipeline100);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    
    texture200.destroy();
    render_pass_encoder0010.setStencilReference(1);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device00.pushErrorScope("internal");
    render_pass_encoder0000.popDebugGroup();
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    render_pass_encoder1020.executeBundles([])
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.copyBufferToBuffer(
        buffer100,
        0,
        buffer103,
        0,
        400
    );
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_pass_encoder1031.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    render_pass_encoder0000.executeBundles([])
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1020.insertDebugMarker("marker");
    query201.destroy()
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1031.beginOcclusionQuery(0)
    device50.pushErrorScope("internal");
    device00.pushErrorScope("validation");
    render_pass_encoder1031.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1011.setPipeline(compute_pipeline1010);
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    render_pass_encoder0000.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
        layout: compute_pipeline1010.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group101);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setPipeline(render_pipeline103);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
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
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer201.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    buffer104.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setVertexBuffer(0, buffer107);
    
    
    buffer200.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder1030.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1031.endOcclusionQuery()
    
    render_pass_encoder1011.setPipeline(render_pipeline102);
    const array4 = new Float32Array([1.0, 0.75, 0.0, -0.75, -0.75, 1.0, -1.0, -0.75, -0.5, -0.25, -0.5, 0.25, -1.0, 0.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.75, 0.0, -0.5, -0.5, -0.75, 0.0, 0.5, 0.0, 1.0, -0.75, 0.5, 0.5, -0.25, -0.5, -0.5, 0.75, -1.0, 0.0, -0.5, 0.5, -0.5, -0.25, -0.25, 1.0, -0.25, -0.25, 0.25, 1.0, 0.0, 0.75, 0.75, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, 0.25, 0.0, -0.5, 0.0, -1.0, -0.5, 0.75, -1.0, 1.0, 0.25, 0.5, 0.5, -0.5, 0.0, 0.75, -0.75, 0.0, -1.0, -0.25, -0.25, 0.0, 0.75, -0.25, -0.25, 0.5, 0.75, -1.0, -0.75, -1.0, -0.5, -0.25, -0.75, 0.75, 0.75, 0.5, 0.0, -1.0, 0.75, 0.75, -1.0, -0.5, 0.5, -0.5, -0.5, ]);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    compute_pass_encoder1010.popDebugGroup()
    command_encoder500.pushDebugGroup("mygroupmarker")
    query100.destroy()
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
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
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group103);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1031.insertDebugMarker("marker");
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder101.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device30.pushErrorScope("validation");
    
    buffer202.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    render_pass_encoder1011.popDebugGroup();
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group104);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    render_pass_encoder1031.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder1050.setPipeline(render_pipeline101);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    
    render_pass_encoder1050.beginOcclusionQuery(1)
    
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1013, 0);
    render_bundle_encoder101.setPipeline(render_pipeline103);
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1011.beginOcclusionQuery(1)
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture501.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder501.insertDebugMarker("mymarker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1030.end();
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.setVertexBuffer(0, buffer106);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.endOcclusionQuery()
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group105);
    render_pass_encoder1040.setVertexBuffer(0, buffer104);
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder1030.end();
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    device20.queue.submit([]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder0001.popDebugGroup();
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group108);
    render_pass_encoder1020.setVertexBuffer(0, buffer105);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.setVertexBuffer(0, buffer100);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder0010.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.endOcclusionQuery()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1030.draw(3);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder1050.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group109);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    render_pass_encoder1031.setVertexBuffer(0, buffer1018);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    render_pass_encoder1050.draw(3);
    compute_pass_encoder2000.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.setVertexBuffer(0, buffer1010);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1025, "uint16");
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder1010.end();
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1011);
    device10.queue.submit([]);
    compute_pass_encoder1020.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1021.setVertexBuffer(0, buffer1026);
    render_pass_encoder1021.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1021.end();
    command_encoder102.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    compute_pass_encoder1011.popDebugGroup()
    command_encoder101.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1050.end();
    device20.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    device50.queue.submit([command_buffer501, ]);
    device00.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1030.end();
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1030.drawIndexed(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer206, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer206, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer102, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    compute_pass_encoder1011.end();
    device20.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1029, 0);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1012);
    device50.queue.submit([command_buffer500, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1050.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder1030.end();
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2011, 0);
    render_pass_encoder1031.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1011.end();
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder0010.popDebugGroup();
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1015);
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2012, 0);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    compute_pass_encoder1011.popDebugGroup()
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    device50.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2013, 0);
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1011.end();
    render_pass_encoder1021.end();
    render_pass_encoder1050.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.end();
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1011.popDebugGroup();
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1042, 0);
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexed(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2016, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer107, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1020.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1050.drawIndirect(buffer103, 0);
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1018);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.end();
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer100, 0);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    compute_pass_encoder1011.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndexed(3);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1050.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1030.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer101, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2021, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1011.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1020.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    render_pass_encoder1050.end();
    render_pass_encoder1020.end();
    render_pass_encoder1031.setIndexBuffer(buffer1046, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1027, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1044, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1020.end();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1050.setIndexBuffer(buffer1043, "uint16");
    device00.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    render_pass_encoder1021.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1048, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1049, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1050, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    device50.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1011.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1038, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1030.drawIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    device20.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1020.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndirect(buffer1047, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    device30.queue.submit([]);
    device10.queue.submit([]);
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1051, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    device00.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    device20.queue.submit([command_buffer200, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    device10.queue.submit([command_buffer105, ]);
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1019);
    render_pass_encoder1040.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1049, 0);
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    render_pass_encoder1021.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.end();
    device50.queue.submit([command_buffer501, ]);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
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
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndirect(buffer1047, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1048, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1015, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
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
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndirect(buffer1050, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1021);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1057, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1050, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1026, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1022);
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    device00.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
}