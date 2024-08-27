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
    const array0 = new Float32Array([0.5, 0.25, 1.0, 0.5, 0.75, 0.0, 0.25, 1.0, -0.5, -1.0, 0.0, 0.0, 0.5, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 0.25, -0.5, 0.5, 0.5, -0.5, -0.5, 0.75, 0.0, 0.5, -0.25, 0.0, -0.5, -1.0, -0.25, 1.0, -0.25, -0.25, 1.0, -1.0, -0.75, 1.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.75, 0.25, 0.0, -0.25, -1.0, -0.5, -1.0, 0.0, 0.25, 1.0, 1.0, -0.75, -1.0, -0.25, -0.5, -0.5, -1.0, -0.25, 0.75, 0.75, 0.0, -0.5, 0.25, 0.0, -0.75, 0.25, -0.75, -0.25, -0.5, 0.5, -0.25, 0.25, -0.75, -0.5, 0.25, 0.5, -1.0, 0.75, 0.5, 0.0, 0.25, 0.0, -0.75, -1.0, 1.0, 0.25, 0.5, -0.5, -0.25, -1.0, -1.0, -0.5, -1.0, -0.5, -0.5, ]);
    const array1 = new Float32Array([-0.75, 0.75, 0.25, 0.25, 0.25, 0.25, -0.25, 0.25, 0.0, 0.5, 0.0, 0.25, 1.0, 1.0, -0.75, -0.25, -0.75, -0.5, 0.25, -0.25, 0.75, 0.75, 0.5, 0.0, 0.75, -0.75, 0.0, -1.0, 0.5, 0.75, 0.75, -0.75, -1.0, -1.0, 1.0, -0.25, 0.5, 0.0, -0.25, -0.5, 1.0, -0.75, -0.75, 0.75, -0.25, 1.0, -0.25, -0.75, -1.0, -0.25, -0.5, -1.0, -0.25, -0.75, 0.0, 1.0, 0.0, 1.0, -1.0, -0.5, -0.5, -0.5, 0.75, 0.25, -0.5, -0.25, -0.75, 0.5, -0.5, -0.25, 0.0, -1.0, -0.5, 0.5, -0.75, -1.0, -0.5, -0.5, 0.0, 0.0, -0.75, 0.5, 0.0, 0.5, -1.0, -0.25, -1.0, 0.0, 1.0, 0.5, 0.0, -0.25, -0.25, -1.0, 0.25, 0.5, -0.5, 0.75, -1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array2 = new Float32Array([1.0, 0.25, -1.0, 1.0, 0.5, -0.5, 0.0, 0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.25, 0.0, -0.5, -0.25, -0.5, 0.0, -0.75, 1.0, -0.75, -0.75, -0.5, -0.5, -0.25, 1.0, -0.75, 1.0, 0.0, -0.75, 0.25, 0.25, -0.75, -1.0, 0.5, 1.0, -0.25, 0.5, 0.75, -0.25, 1.0, -1.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.25, -0.25, -0.75, 1.0, 0.0, -0.5, -0.5, -1.0, -1.0, -0.5, 0.0, -0.75, 0.75, -0.75, 0.25, -0.75, -0.75, -1.0, 0.75, 0.25, 0.0, -0.5, 0.0, -0.75, -0.25, -0.5, 0.25, -1.0, 0.5, -0.5, -0.25, 0.75, 1.0, 0.25, -0.5, 0.5, 1.0, 0.25, 0.25, 0.0, 0.5, 0.0, 1.0, 0.25, -1.0, 0.5, -0.25, 0.5, 0.75, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("out-of-memory");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    device30.destroy();
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    texture101.destroy();
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture100.destroy();
    const array3 = new Float32Array([0.75, 0.5, 1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -1.0, -0.75, -0.5, 0.25, -1.0, -0.25, 1.0, -0.75, -1.0, -0.5, 0.25, -0.75, -0.25, -0.5, 0.5, -0.5, 0.0, -0.75, -0.25, -0.25, 0.25, 0.25, -0.25, 0.5, 0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -0.5, -0.25, 0.0, -0.5, 0.75, 0.75, 0.5, 0.75, 0.25, 1.0, 0.0, -0.25, 0.25, -0.25, 0.0, 0.5, 0.5, 0.25, 0.0, 1.0, -0.25, -0.25, -0.25, 0.5, 0.0, -1.0, -1.0, 0.25, -0.75, 0.0, -0.75, 0.0, -0.25, -1.0, 0.75, 0.0, 1.0, 0.25, -0.5, 0.25, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 0.25, 0.5, 0.25, 0.75, 0.75, -1.0, -0.5, 0.25, 0.75, 1.0, 0.0, ]);
    
    
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
    
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder101.popDebugGroup();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture102.destroy();
    const array4 = new Float32Array([0.25, -0.25, -0.25, -0.5, 0.0, -1.0, -0.5, -0.25, -0.5, 0.5, -0.75, 0.75, -0.5, 0.75, -0.5, 0.5, 0.75, -0.25, 0.0, 0.0, 0.0, -0.25, -0.75, -0.5, 0.5, 0.25, 0.0, 0.25, -0.75, 0.75, -0.5, 0.75, -0.5, 0.25, 0.75, -0.25, -1.0, -0.25, 0.0, 0.75, -0.25, -1.0, 0.75, 0.0, 1.0, -0.5, 0.5, 0.75, -0.5, -0.25, 0.0, 0.75, 1.0, -0.75, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.75, -0.75, 0.25, 0.25, 1.0, -1.0, 0.75, 0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.25, 0.75, 0.75, -1.0, 0.5, 0.25, -0.25, 0.75, -0.75, 0.0, -0.25, 1.0, 0.25, 0.0, 0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.25, -0.5, -0.75, 0.0, -0.25, 1.0, 0.5, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
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
    
    render_bundle_encoder102.popDebugGroup();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    
    
    render_bundle_encoder100.setPipeline(render_pipeline102);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    buffer101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    
    
    buffer100.destroy()
    
    buffer103.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    render_bundle_encoder100.popDebugGroup();
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device10.destroy();
    
    
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-0.75, 0.25, 0.0, 1.0, 0.0, -0.5, -0.75, 1.0, 1.0, -0.5, -0.5, 0.75, -1.0, -0.5, 1.0, 0.75, -1.0, 0.0, -0.25, 1.0, 0.25, 0.75, -0.75, -0.5, 0.25, 0.0, -0.25, -0.75, 0.0, -0.75, 0.25, -1.0, 0.0, -1.0, 1.0, 0.5, 0.75, -1.0, 0.25, -0.75, -0.25, 0.75, 0.0, 1.0, 0.75, -0.25, 0.75, 0.75, -0.75, 0.25, -1.0, -1.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.0, 1.0, 1.0, -0.25, 0.25, -0.5, 0.25, 1.0, -0.5, 0.75, 1.0, -0.75, -0.25, 0.0, 0.5, 1.0, -0.25, 0.75, 0.75, -0.75, -1.0, 1.0, 0.5, 0.5, -0.75, -0.5, -0.25, -0.25, 0.0, 0.25, 0.25, 0.25, -0.75, -0.25, 0.0, 1.0, 0.5, -0.75, 0.75, 0.0, 0.75, -0.75, 1.0, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    device60.pushErrorScope("validation");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.pushErrorScope("validation");
    
    
    texture601.destroy();
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const array6 = new Float32Array([-0.25, -0.5, 0.75, 0.75, -0.5, 0.0, -0.5, 1.0, 0.25, 0.5, 1.0, 0.0, 1.0, 0.75, 0.5, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.75, -0.25, 1.0, -0.5, 0.5, 1.0, 1.0, -0.5, -1.0, -0.25, 0.75, 0.5, 1.0, -1.0, 0.5, -0.25, -0.5, -0.25, -0.5, -0.25, -1.0, 0.25, 0.5, 0.5, 0.5, -1.0, 0.25, 0.75, -1.0, -0.75, 0.0, -0.5, -0.75, -0.75, -0.5, -0.25, 1.0, 0.0, -0.25, 0.75, -0.75, 0.25, -0.75, -0.5, 0.25, 0.0, -0.5, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, -0.5, 0.25, 0.75, 0.25, 1.0, 1.0, 0.25, 1.0, 0.75, -0.5, 1.0, 0.0, 0.5, 0.5, 0.75, -1.0, 0.75, 0.75, 0.75, 0.0, -0.75, 0.75, ]);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    
    const array7 = new Float32Array([-0.25, 0.5, 1.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.5, 1.0, 0.75, 0.0, -0.75, 1.0, -0.75, -0.5, 0.0, -0.5, -0.25, -1.0, 0.25, -0.5, 0.0, 0.5, -0.75, -0.25, -0.5, -0.5, 0.75, 0.75, -0.5, -1.0, -0.75, 0.25, -0.5, 0.5, -0.25, 0.75, -0.5, -0.25, 0.5, 0.5, -0.5, 1.0, -0.75, 1.0, -0.25, 1.0, 1.0, -1.0, -0.5, -0.5, 0.5, 0.0, 1.0, 0.5, -0.5, -0.75, -0.5, 0.25, -1.0, -0.5, 0.5, -0.25, 1.0, 0.75, 0.0, 1.0, 0.75, -0.75, 1.0, 1.0, -1.0, 0.75, 0.5, 0.5, 0.25, 0.25, 0.25, 0.5, 1.0, 1.0, 0.25, -0.5, -0.75, -0.5, -1.0, -0.25, 0.25, 0.25, -0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 0.75, 0.75, ]);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
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
    
    texture602.destroy();
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    
    
    const array8 = new Float32Array([0.0, 0.0, -0.75, 1.0, -0.25, 0.25, 0.25, 1.0, -0.5, -0.75, 0.0, -0.75, 0.75, -0.75, 0.25, -0.25, 0.5, 0.5, 0.25, 0.0, -0.75, -0.5, -0.25, 0.5, 1.0, 0.25, -0.5, -1.0, 0.0, 0.5, -0.25, 1.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.75, -0.25, 0.25, 0.5, -0.5, -0.75, 1.0, 0.0, 0.0, -0.75, 0.0, 0.25, 0.5, -0.75, 0.5, 0.75, 0.25, 0.0, 1.0, 1.0, 0.25, -0.5, -0.75, 0.0, 0.25, -0.25, -0.25, -1.0, -0.5, 0.25, -1.0, -0.5, 0.5, 0.75, -0.5, -0.5, 0.25, -0.75, -0.25, 0.75, 1.0, 0.0, 0.0, -0.75, 0.25, -0.25, 0.0, 0.25, -0.5, -0.25, 0.25, -0.5, 0.0, 0.75, 1.0, -1.0, 0.0, 1.0, 1.0, 0.75, -0.75, 0.25, 0.25, ]);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    device60.destroy();
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const array9 = new Float32Array([0.25, 0.5, 0.0, -0.25, 0.25, 0.75, 0.0, 0.5, -0.25, -0.5, 0.5, 0.75, 1.0, -0.25, 0.5, 1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 1.0, 0.0, -0.75, -0.25, 0.0, -0.5, 0.75, -0.25, -0.5, 0.75, 0.0, 1.0, -0.25, -0.25, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, -0.25, 0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.5, 0.25, -1.0, -0.5, -0.25, 0.0, 1.0, 1.0, -0.25, 0.75, -1.0, 0.0, 1.0, 0.5, -0.25, 0.75, 0.0, 0.75, 0.5, 0.25, -1.0, -0.75, -1.0, -0.25, -0.25, -0.75, 0.75, -0.75, 1.0, -0.75, -0.25, -0.75, 0.0, -0.25, -0.25, -0.75, 0.0, -0.5, 0.25, 1.0, 1.0, 0.5, -0.25, 0.25, -0.25, 1.0, -0.25, 1.0, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
    const array10 = new Float32Array([-1.0, -1.0, -1.0, -1.0, -0.25, 0.0, -0.25, 0.25, -1.0, 0.5, 0.25, 1.0, 0.5, -0.25, -0.5, -0.25, 0.5, 0.0, -0.75, -1.0, 1.0, 0.5, -0.5, -1.0, -0.5, 0.0, -1.0, -0.25, 0.25, -0.25, -0.25, -0.5, 0.75, 0.0, -0.75, 0.5, -0.5, 0.5, -0.5, 0.75, -0.5, 0.25, -1.0, -0.75, -0.25, -1.0, 0.75, 0.0, 0.0, -0.5, 0.25, 0.0, 0.75, 0.0, 0.0, -1.0, -0.5, -0.25, -0.25, 0.0, 0.25, 0.75, -0.5, -0.25, -0.75, 0.0, 0.5, 0.0, -0.5, -0.75, 1.0, -0.25, 0.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.75, -0.75, -0.75, 0.25, 0.5, 0.5, 0.75, -0.5, 0.75, -0.5, 0.75, -1.0, 0.75, 0.0, -0.5, -0.5, 0.25, -0.5, 0.75, 0.75, -0.25, -0.25, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
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
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture800.destroy();
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device90.pushErrorScope("out-of-memory");
    device70.pushErrorScope("out-of-memory");
    
    
    
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder802.pushDebugGroup("group_marker");
    
    device80.destroy();
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
    
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.destroy();
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([-1.0, -0.75, 1.0, -0.5, 0.0, -1.0, 0.5, 1.0, -0.5, -0.5, -1.0, 1.0, -0.25, 1.0, -0.25, 1.0, 0.25, 0.5, -0.25, 0.5, 0.0, 0.0, 0.75, -1.0, 0.75, 1.0, 1.0, 1.0, 1.0, 0.75, 0.25, 0.5, 0.75, -1.0, 0.0, 0.25, -0.75, -0.5, 0.75, -0.75, -0.75, 1.0, -1.0, 1.0, -0.25, 0.0, 0.25, -0.75, 0.25, 1.0, 0.75, 0.0, 0.0, 0.5, 0.75, 1.0, 0.0, -0.5, 0.5, -0.75, -0.25, 0.5, -0.25, 0.75, 0.75, 0.75, 0.5, -0.5, -1.0, -1.0, 0.5, 0.5, -0.75, 0.0, 0.25, 0.5, -0.25, -0.75, -0.5, -0.75, -0.75, -0.75, 0.25, -0.75, 0.0, -1.0, -1.0, -0.5, -1.0, 0.25, 0.5, -0.5, -0.5, 0.5, -0.5, 0.5, -0.75, -0.5, 0.25, 1.0, ]);
    device100.destroy();
    
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array12 = new Float32Array([0.25, -0.75, 0.5, 0.75, -0.5, -0.75, 0.0, 0.25, 0.75, 1.0, 0.25, 0.5, -0.25, 1.0, -1.0, 1.0, -0.25, 0.75, -1.0, 1.0, 0.5, -1.0, 0.0, 0.5, 1.0, -0.75, -0.25, -1.0, -0.25, -0.5, -1.0, 0.25, -0.5, -0.25, 0.5, 0.5, -1.0, -1.0, 0.75, -0.5, 0.25, -0.75, -0.5, -0.5, -0.5, 0.25, -0.75, 0.0, 0.0, -1.0, 0.25, -0.75, -0.5, 1.0, 1.0, -0.5, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, -0.25, -0.5, -0.75, 0.0, -0.25, -1.0, -1.0, -0.75, -0.25, -1.0, 1.0, -0.5, 0.75, -0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -0.5, 0.25, -0.75, 0.75, 0.5, 0.5, -0.75, -1.0, 0.75, -1.0, 0.75, 0.25, -0.5, 0.25, 0.0, -1.0, 0.25, -0.25, 0.0, ]);
    
    
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    device110.destroy();
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    device70.pushErrorScope("internal");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device120.pushErrorScope("validation");
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder701.popDebugGroup();
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    
    
    
    
    
    texture700.destroy();
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    
    
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
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
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
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
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    
    
    
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout703]
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
    
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const texture_view7012 = texture701.createView({ label: "texture_view7012" });
    
    
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    device130.pushErrorScope("internal");
    
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    
    device140.destroy();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout704]
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
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    render_bundle_encoder702.setPipeline(render_pipeline700);
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    device70.pushErrorScope("validation");
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    texture701.destroy();
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout704]
    });
    
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
    device130.destroy();
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
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
    
    
    device150.pushErrorScope("internal");
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer701 = device70.createBuffer({
        label: "buffer701",
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
                    buffer: buffer700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer701,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group700);
    render_bundle_encoder701.setPipeline(render_pipeline700);
    
    buffer700.destroy()
    var shader_module1206_code = "";
    try {
        shader_module1206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1206 = await device120.createShaderModule({ label: "shader_module1206", code: shader_module1206_code })
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}