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
    
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_buffer000 = command_encoder000.finish();
    
    device00.queue.submit([command_buffer000, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.insertDebugMarker("mymarker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.popDebugGroup()
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture001.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder001.popDebugGroup()
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer000.destroy()
    texture002.destroy();
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    
    texture000.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    query100.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_buffer003 = command_encoder003.finish();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer002.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    texture100.destroy();
    
    
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0020.popDebugGroup()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder100.popDebugGroup();
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
    buffer004.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer001.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture003.destroy();
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    
    
    const array0 = new Float32Array([-0.75, -0.75, 0.25, -0.75, 0.75, 0.5, 0.0, -0.5, 0.0, 1.0, 0.25, -0.25, 0.5, -0.75, 0.25, -1.0, 1.0, -0.75, -0.75, -0.75, 0.25, 0.75, 1.0, 1.0, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, -1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.25, 0.25, 0.5, -1.0, 1.0, 1.0, -0.25, 0.0, -0.5, -0.75, 0.25, 1.0, -0.5, -0.75, 1.0, -0.5, 0.0, 1.0, -0.75, 0.0, 0.75, -0.25, 0.25, 1.0, 0.5, -0.25, 0.25, 0.5, 0.75, -0.5, -0.5, 0.25, -0.75, -0.75, 0.25, 0.5, -0.75, -0.75, 0.0, 0.5, 0.75, -0.75, -0.75, -0.25, 0.5, -1.0, 0.25, 0.25, -0.5, 1.0, 0.0, -0.25, 1.0, 0.25, 0.75, -0.75, 0.5, 0.75, 0.5, -0.25, -0.75, -0.25, 0.5, 0.5, ]);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture005.destroy();
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_bundle_encoder000.draw(3);
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer101.destroy()
    
    query001.destroy()
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    texture004.destroy();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    
    
    
    
    compute_pass_encoder0010.dispatchWorkgroups(100);
    
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder101.popDebugGroup();
    buffer006.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline001);
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    buffer101.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.finish();
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder103.setPipeline(render_pipeline100);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    query001.destroy()
    render_pass_encoder1000.setVertexBuffer(0, buffer102);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    const array1 = new Float32Array([1.0, -0.25, -0.25, 0.25, 0.0, 0.5, -1.0, 1.0, 0.75, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, -0.5, 0.25, 0.25, 0.5, 0.25, 0.0, -0.75, -1.0, 0.0, 0.0, -1.0, -1.0, -0.25, 0.25, -0.25, -0.25, -0.75, 0.5, 0.5, -0.5, -0.25, 0.25, -0.5, -1.0, -0.5, 0.5, 0.25, 0.25, 0.25, -0.75, 0.75, -0.25, 0.0, -0.5, 0.25, 0.0, -0.75, -1.0, 0.25, -0.25, -0.25, -1.0, 0.75, -0.75, 0.5, -0.5, -1.0, 0.75, -1.0, -0.75, 0.0, 0.5, 1.0, 0.5, 0.25, 0.25, -0.75, -1.0, -1.0, -0.75, -0.75, -0.25, 0.75, -0.75, 0.75, 0.25, 1.0, 0.25, -0.5, -0.25, -0.5, 1.0, 1.0, 0.5, -1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 0.25, 0.25, -1.0, 1.0, 1.0, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    
    query000.destroy()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1010.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder103.pushDebugGroup("group_marker");
    buffer007.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.end();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    query003.destroy()
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder1010.setStencilReference(1);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture006.destroy();
    render_pass_encoder1020.executeBundles([])
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
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: query001
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0010.setPipeline(render_pipeline001);
    render_bundle_encoder100.setPipeline(render_pipeline102);
    const array2 = new Float32Array([0.75, -0.75, -0.25, -0.75, 1.0, 1.0, 0.0, -0.5, 0.5, -0.5, 0.75, -0.5, -1.0, 0.75, -1.0, 1.0, 0.0, 0.75, 0.0, 0.0, 0.75, -0.75, -1.0, 0.75, 0.75, 0.25, -1.0, -0.75, 0.0, 0.0, 1.0, -0.25, 1.0, -1.0, -0.25, -0.25, -1.0, 0.75, 0.5, -0.5, -1.0, 0.0, 0.75, 1.0, -1.0, -0.25, 0.0, 1.0, 0.25, -0.25, -0.5, 0.25, 0.75, 0.5, -1.0, 0.5, 1.0, -0.75, -0.75, 0.0, -0.25, -0.5, 0.5, -0.5, 0.75, 1.0, 0.5, 0.25, 0.75, 0.75, -0.25, -0.75, -0.75, 0.75, 0.75, -0.75, -0.5, 0.0, -0.75, 0.5, 1.0, 0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 1.0, -0.75, 0.75, -0.75, 1.0, -0.25, -0.25, 1.0, 0.5, 0.5, 0.75, 0.25, 0.0, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder1001.beginOcclusionQuery(0)
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1001.insertDebugMarker("marker");
    
    buffer009.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    buffer002.destroy()
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer100.destroy()
    buffer0011.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    query001.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer009
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1001.executeBundles([render_bundle_encoder101, render_bundle_encoder103, ])
    query100.destroy()
    
    render_bundle_encoder103.popDebugGroup();
    render_pass_encoder0040.setStencilReference(1);
    
    render_pass_encoder1000.popDebugGroup();
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder101.popDebugGroup();
    {
        await buffer0010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0010.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setPipeline(render_pipeline102);
    
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    render_pass_encoder1000.popDebugGroup();
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([render_bundle_encoder100, ])
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    query101.destroy()
    render_bundle_encoder002.setVertexBuffer(0, buffer009);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.executeBundles([render_bundle_encoder000, ])
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
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
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group103);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder103.setBindGroup(0, bind_group104);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0050.setPipeline(render_pipeline002);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group105);
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

    render_bundle_encoder102.setBindGroup(0, bind_group106);
    
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    
    render_pass_encoder1001.setVertexBuffer(0, buffer107);
    
    render_bundle_encoder103.insertDebugMarker("marker");
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.setPipeline(render_pipeline001);
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture005.width / 2, texture005.height / 2);
    buffer104.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setPipeline(render_pipeline102);
    render_pass_encoder0051.setPipeline(render_pipeline001);
    render_pass_encoder1030.setPipeline(render_pipeline103);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group005);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group107);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group108);
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

    render_pass_encoder1030.setBindGroup(0, bind_group109);
    device00.queue.submit([]);
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    render_pass_encoder1021.setVertexBuffer(0, buffer1019);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    render_pass_encoder1030.setVertexBuffer(0, buffer1020);
    render_pass_encoder1000.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder0010.setVertexBuffer(0, buffer0017);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.end();
    render_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder0051.setVertexBuffer(0, buffer006);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group008);
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0040.setVertexBuffer(0, buffer000);
    render_pass_encoder0010.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0040.draw(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.setVertexBuffer(0, buffer009);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.end();
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer1022);
    render_pass_encoder0051.draw(3);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0050.setVertexBuffer(0, buffer005);
    render_pass_encoder0010.end();
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group1010);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1011.setVertexBuffer(0, buffer102);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder0051.drawIndexedIndirect(buffer0019, 0);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer004, ]);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group009);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1028, 0);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder0020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.end();
    compute_pass_encoder1000.end();
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder0051.end();
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder1000.end();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.end();
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    command_encoder002.popDebugGroup()
    render_pass_encoder1020.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder1011.end();
    render_pass_encoder1001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1000.draw(3);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0041.drawIndirect(buffer000, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder1010.end();
    render_pass_encoder0051.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer008, "uint16");
    command_encoder001.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0016, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndirect(buffer0018, 0);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder0040.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexed(3);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0025, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1001.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0026, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder0050.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0051.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.popDebugGroup();
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1001.draw(3);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0051.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0051.drawIndirect(buffer0023, 0);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder0041.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer005, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0027, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.end();
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder1021.end();
    render_pass_encoder0040.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer000, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0028, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0028, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0010.end();
    render_pass_encoder0050.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0040.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0050.end();
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder0010.drawIndirect(buffer002, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0051.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1036, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1001.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0030, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    device20.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0031, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0028, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1011.popDebugGroup();
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1030, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    device10.queue.submit([]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.popDebugGroup();
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0050.end();
    compute_pass_encoder0010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0024, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1000.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0027, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1045, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder0010.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0041.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0033, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer0033, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0041.end();
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1042, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0040.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0033, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
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
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0010);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder0020.end();
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer005, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0051.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder0051.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0050.drawIndirect(buffer0021, 0);
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.draw(3);
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0011);
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0040.drawIndirect(buffer0033, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0011, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1000.end();
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0041.drawIndirect(buffer0029, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder0040.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0051.drawIndexed(3);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0043, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0043, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0024, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    device00.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0051.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0051.end();
    render_pass_encoder0050.draw(3);
    compute_pass_encoder0020.end();
    render_pass_encoder1010.setIndexBuffer(buffer1046, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer0037, 0);
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    device10.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder1001.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0010.drawIndirect(buffer0032, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    render_pass_encoder0051.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder1001.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndirect(buffer0033, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0014);
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.end();
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1020.draw(3);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    device00.queue.submit([]);
    compute_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer0043, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndirect(buffer0018, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder0051.drawIndexed(3);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0051.drawIndirect(buffer0027, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    render_pass_encoder0051.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1020.end();
    render_pass_encoder0041.drawIndirect(buffer0010, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder0041.drawIndirect(buffer0040, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0034, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0051.drawIndirect(buffer0032, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0051.drawIndirect(buffer0012, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder0010.end();
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
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
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0050.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0051.end();
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer005, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0041.drawIndirect(buffer0046, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1001.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0054, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0051.drawIndirect(buffer0043, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1050, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer000, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndirect(buffer0029, 0);
    render_pass_encoder0051.drawIndirect(buffer0022, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndirect(buffer1049, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0037, 0);
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0033, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder0050.drawIndirect(buffer0037, 0);
    render_pass_encoder1030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([]);
    render_pass_encoder0040.end();
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder0041.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.end();
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    device20.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0045, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
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
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0029, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0041.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0051.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1030.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder0020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0050.drawIndirect(buffer0022, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder0041.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder0051.drawIndirect(buffer0013, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0050.drawIndirect(buffer0028, 0);
    device20.queue.submit([]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.drawIndirect(buffer0051, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder1021.drawIndirect(buffer1052, 0);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder1011.drawIndirect(buffer1040, 0);
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder0051.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0010.end();
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0029, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder0051.drawIndirect(buffer0057, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder0040.drawIndirect(buffer0043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder0051.drawIndirect(buffer0024, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1050, 0);
    device20.queue.submit([]);
    compute_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder1021.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0050.drawIndirect(buffer0026, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder0051.drawIndirect(buffer0030, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0018, 0);
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder0041.end();
    device20.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0043, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0041.drawIndirect(buffer0032, 0);
    device00.queue.submit([]);
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
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1011.end();
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder1011.draw(3);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder0040.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    compute_pass_encoder0010.end();
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0051.drawIndirect(buffer0028, 0);
    render_pass_encoder1030.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0041.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndirect(buffer0058, 0);
    render_pass_encoder0051.drawIndirect(buffer0037, 0);
    render_pass_encoder0051.drawIndirect(buffer0047, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0040.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder1021.setIndexBuffer(buffer1048, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder0041.drawIndirect(buffer0030, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.drawIndirect(buffer0043, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0046, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer001, 0);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1030.end();
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder0051.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0051.drawIndirect(buffer0035, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder0010.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1050, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1058, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer0021, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer000, 0);
    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0061,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0018);
    render_pass_encoder0040.setIndexBuffer(buffer0054, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0037, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1059, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0062, 0);
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
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1024);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0059, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0062, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0063, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1011.drawIndirect(buffer1059, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0040.drawIndirect(buffer0046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0064, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0051.drawIndirect(buffer0025, 0);
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    render_pass_encoder0051.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder0040.drawIndirect(buffer0042, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0062, 0);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.end();
    render_pass_encoder0050.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0051.end();
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0021);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer0064, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0010.drawIndirect(buffer0046, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer0058, 0);
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder1030.drawIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndirect(buffer0064, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0020.end();
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.end();
}