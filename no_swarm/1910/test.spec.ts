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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array0 = new Float32Array([-1.0, 1.0, 0.75, 0.0, 0.25, 0.25, -0.75, 0.25, -0.25, -1.0, -0.75, 0.25, -0.5, 0.25, 0.5, -1.0, -1.0, -0.5, 0.0, 0.0, 0.75, -0.75, -0.75, 0.25, -1.0, 0.5, 0.75, -0.5, 1.0, -0.25, -0.25, 0.75, -1.0, 0.75, 0.5, -1.0, 0.5, -0.75, 0.0, -0.25, 0.0, 0.5, 0.75, -0.75, -0.25, -1.0, 0.5, -0.75, -0.75, -1.0, 1.0, 1.0, 0.5, 0.25, -0.5, -1.0, -0.5, 0.5, 0.0, -0.5, -0.5, 0.75, -0.5, -0.75, 0.25, 0.25, -0.5, 0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 0.75, 0.25, 0.75, -0.75, 0.75, -0.75, 0.5, -0.75, 1.0, 0.25, 0.5, -0.25, 0.75, -1.0, -0.5, 0.5, 1.0, 0.75, -0.5, 1.0, -1.0, 0.75, 1.0, 0.25, 0.0, -0.75, 0.0, ]);
    device00.pushErrorScope("internal");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    query001.destroy()
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query001.destroy()
    texture000.destroy();
    query001.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    buffer002.destroy()
    
    buffer001.destroy()
    const array1 = new Float32Array([0.75, -0.75, 1.0, -0.5, 1.0, 1.0, -1.0, 0.75, 0.75, 0.75, -1.0, -1.0, -0.25, 0.5, -0.5, 1.0, 0.25, 0.25, -0.25, 0.5, 0.0, -0.5, -1.0, 0.25, 0.75, 0.5, -0.25, -0.5, -0.75, 0.75, -1.0, -0.25, 0.0, 0.5, 0.25, 0.25, 0.0, 0.25, 0.25, -0.75, 0.75, -1.0, -0.75, 0.25, 0.75, -0.25, -0.25, 0.0, 0.25, -1.0, -0.75, 0.75, -0.75, -0.5, 1.0, -0.5, -1.0, 1.0, 0.75, 0.5, 0.75, 0.25, 0.5, 0.25, -0.75, 0.0, 0.0, -0.75, 0.25, -0.25, -1.0, 0.25, -1.0, 0.75, 0.25, -0.25, 1.0, 0.25, 0.25, -0.25, -0.75, 0.0, -0.5, -0.25, -0.75, 0.5, 0.25, 1.0, 0.5, -0.25, -1.0, 0.25, -0.75, -0.5, 0.75, 0.0, -1.0, 0.25, 0.75, 0.25, ]);
    
    texture001.destroy();
    device00.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query001.destroy()
    
    device20.pushErrorScope("validation");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.popDebugGroup()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
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
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    command_encoder002.insertDebugMarker("mymarker");
    device20.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query001.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array2 = new Float32Array([-0.5, 0.25, 0.5, 1.0, -0.25, 0.75, -0.25, 0.25, 0.25, -0.25, 0.75, 0.0, -0.25, -0.25, -0.5, 1.0, -1.0, 0.25, 0.75, 0.75, -0.75, 1.0, -0.75, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 1.0, 1.0, -1.0, -0.5, 0.0, 1.0, 0.5, -0.5, -1.0, -0.5, 1.0, -0.25, -0.5, 1.0, -1.0, -1.0, -1.0, -0.5, -1.0, -1.0, 0.75, 0.25, 0.5, -1.0, -0.25, -0.25, 0.0, 0.75, 1.0, -0.75, -1.0, 0.75, 1.0, -1.0, 0.5, 0.0, -0.25, -1.0, -0.75, -1.0, -1.0, -0.5, -0.5, 0.5, -0.5, -0.5, -0.5, -0.25, 1.0, 0.25, -1.0, -0.5, 0.75, 0.25, -0.75, 0.5, -0.25, 0.25, 0.0, 0.0, 0.25, 0.5, 0.75, 0.5, 0.75, 0.75, 0.25, 0.75, 0.5, -0.25, 0.75, ]);
    texture000.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    query000.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer003.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline101);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    command_encoder002.clearBuffer(buffer002);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    compute_pass_encoder0011.setPipeline(compute_pipeline001);
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setStencilReference(1);
    
    const command_buffer003 = command_encoder003.finish();
    query001.destroy()
    buffer004.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query001.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture100.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device30.destroy();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    
    
    
    buffer101.destroy()
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    
    
    buffer008.destroy()
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group002);
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    command_encoder002.copyBufferToBuffer(
        buffer007,
        0,
        buffer006,
        0,
        400
    );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer006.destroy()
    
    
    const array3 = new Float32Array([-0.25, 1.0, -1.0, 0.25, 0.75, 1.0, 0.5, 0.25, 0.5, -0.5, 0.75, 0.0, 0.75, 0.25, -0.5, -0.25, 1.0, 0.75, 1.0, -0.75, 0.75, 0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 0.5, -0.25, 0.25, 0.25, -0.75, -0.75, 0.5, 1.0, -0.25, 0.0, -0.25, 1.0, -0.5, 0.75, -1.0, -1.0, 0.5, -0.25, 0.0, -0.75, 0.5, 0.5, -0.5, -1.0, 0.0, 0.75, 0.25, 0.0, -0.75, 0.25, 0.0, 1.0, 0.25, -1.0, -0.75, 0.75, 0.0, 0.25, -0.5, 0.5, -0.5, 1.0, -0.25, 1.0, -0.75, -0.25, 0.0, 0.0, -0.5, 1.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.0, -1.0, -0.25, 0.5, 1.0, 0.25, 0.5, -0.25, 0.0, -1.0, 0.25, -0.25, 1.0, 0.0, -1.0, -0.5, 0.75, -0.5, ]);
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0011, 0);
    buffer0010.destroy()
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_pass_encoder0010.setPipeline(render_pipeline000);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    query200.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
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
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group003);
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
    device10.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer003.destroy()
    device00.queue.writeBuffer(buffer0014, 0, array2, 0, array2.length);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0015, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.setPipeline(compute_pipeline003);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0010.popDebugGroup();
    device10.pushErrorScope("internal");
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture003.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    command_encoder004.clearBuffer(buffer0011);
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    render_pass_encoder0020.setPipeline(render_pipeline000);
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0011
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer0011,
        0
    )
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder005.clearBuffer(buffer0012);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder0000.dispatchWorkgroups(100);
    command_encoder005.clearBuffer(buffer000);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0017, 0);
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0011.executeBundles([])
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder005.clearBuffer(buffer0012);
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer0016,
        0
    )
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group005);
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder0040.popDebugGroup()
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer0017, 0, array2, 0, array2.length);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder001.popDebugGroup();
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    buffer0016.destroy()
    render_pass_encoder0010.setVertexBuffer(0, buffer005);
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer0011,
        0,
        400
    );
    
    render_pass_encoder0010.drawIndirect(buffer0020, 0);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    buffer009.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.setPipeline(render_pipeline000);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group006);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    buffer0017.destroy()
    
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0015, 0, array2, 0, array2.length);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    query003.destroy()
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0051.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    query000.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer700.destroy()
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    
    render_pass_encoder0050.setStencilReference(1);
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder0051.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder002.setVertexBuffer(0, buffer009);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer0018
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    buffer0013.destroy()
    
    
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    buffer0021.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0019, 0, array3, 0, array3.length);
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    
    compute_pass_encoder0020.end();
    buffer0011.destroy()
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.end();
    query003.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer0015, 0, array1, 0, array1.length);
    render_pass_encoder0050.popDebugGroup();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.insertDebugMarker("marker");
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0011.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0051.pushDebugGroup("group_marker");
    
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0051.pushDebugGroup("group_marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    texture002.destroy();
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_buffer700 = command_encoder700.finish();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    
    texture000.destroy();
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setPipeline(render_pipeline000);
    command_encoder004.clearBuffer(buffer006);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.drawIndirect(buffer000, 0);
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer0019,
        0
    )
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder0020.pushDebugGroup("group_marker");
    buffer0012.destroy()
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    query000.destroy()
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0051.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.pushErrorScope("internal");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
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

    render_pass_encoder0020.setBindGroup(0, bind_group007);
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    device40.pushErrorScope("validation");
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    compute_pass_encoder0011.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setVertexBuffer(0, buffer0020);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group008);
    compute_pass_encoder0010.end();
    render_pass_encoder0051.setPipeline(render_pipeline000);
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer003, ]);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
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
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group009);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const command_buffer005 = command_encoder005.finish();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.setVertexBuffer(0, buffer0011);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0012.setPipeline(render_pipeline000);
    render_pass_encoder0010.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0050.end();
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0010);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0011);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder0040.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0060.endOcclusionQuery()
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0012.setBindGroup(0, bind_group0012);
    render_pass_encoder0010.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.endOcclusionQuery()
    render_pass_encoder0060.setPipeline(render_pipeline000);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0012.setVertexBuffer(0, buffer0028);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0012.drawIndirect(buffer0017, 0);
    render_pass_encoder0012.end();
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group0013);
    render_pass_encoder0051.setVertexBuffer(0, buffer0035);
    render_pass_encoder0012.drawIndirect(buffer0017, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0051.drawIndirect(buffer003, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group0014);
    render_pass_encoder0011.setVertexBuffer(0, buffer0018);
    compute_pass_encoder0020.end();
    render_pass_encoder0011.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.popDebugGroup();
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0012.end();
    render_pass_encoder0011.end();
    render_pass_encoder0050.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder0012.drawIndirect(buffer0016, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group0015);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0041, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.setVertexBuffer(0, buffer0015);
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0011.drawIndirect(buffer0010, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.draw(3);
    device70.queue.submit([command_buffer700, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0012.drawIndirect(buffer0041, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    command_encoder001.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.drawIndirect(buffer0017, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0060.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0060.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0051.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0051.drawIndirect(buffer0041, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0042, 0);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0016);
    render_pass_encoder0011.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0011.drawIndirect(buffer0026, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0051.end();
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    device70.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0012.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer005, ]);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0051.popDebugGroup();
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0012.drawIndirect(buffer0040, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0051.end();
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer0049, 0);
    compute_pass_encoder0010.end();
    device50.queue.submit([]);
    render_pass_encoder0012.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    compute_pass_encoder0000.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0050, 0);
    device40.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0051, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0051.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0012.drawIndexedIndirect(buffer0050, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
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
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0019);
    render_pass_encoder0011.endOcclusionQuery()
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0021);
    render_pass_encoder0050.drawIndirect(buffer0052, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    device50.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0011.end();
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0000.popDebugGroup()
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
    render_pass_encoder0010.drawIndirect(buffer004, 0);
    render_pass_encoder0012.setIndexBuffer(buffer003, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0060, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0012.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0026, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0061, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0017, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
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
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0022);
    compute_pass_encoder0040.end();
    render_pass_encoder0060.drawIndexed(3);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0023);
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0060.drawIndirect(buffer0058, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.end();
    device70.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0051.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer0030, "uint16");
    device00.queue.submit([command_buffer002, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0066, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0012.drawIndexedIndirect(buffer0042, 0);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer005, ]);
    device40.queue.submit([]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer000, 0);
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0024);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0051.end();
    render_pass_encoder0010.drawIndirect(buffer0042, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0069, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0011.drawIndirect(buffer0069, 0);
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    render_pass_encoder0051.drawIndirect(buffer0064, 0);
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0025);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer004, 0);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0012.drawIndirect(buffer003, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0051.drawIndirect(buffer0011, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    compute_pass_encoder0011.end();
    render_pass_encoder0060.draw(3);
    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0075,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0027);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0065, 0);
    render_pass_encoder0060.drawIndexed(3);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0028);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0051.draw(3);
    render_pass_encoder0050.drawIndirect(buffer000, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0051.drawIndirect(buffer0059, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0037, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0051.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0024, "uint16");
    device70.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    device30.queue.submit([]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0011.drawIndexedIndirect(buffer0048, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0030);
    render_pass_encoder0050.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0060.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer004, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0082, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0012.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0082, 0);
    render_pass_encoder0010.draw(3);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer005, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0051.drawIndirect(buffer0054, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0012.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.endOcclusionQuery()
    device00.queue.submit([]);
    render_pass_encoder0051.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0071, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0011.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0011.drawIndirect(buffer004, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0051.drawIndirect(buffer0069, 0);
    render_pass_encoder0012.drawIndirect(buffer0041, 0);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    render_pass_encoder0010.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0032);
    render_pass_encoder0050.drawIndexedIndirect(buffer0041, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0089, 0);
    render_pass_encoder0020.end();
    device00.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0017, 0);
    render_pass_encoder0011.drawIndirect(buffer0050, 0);
    render_pass_encoder0050.drawIndirect(buffer0051, 0);
    compute_pass_encoder0011.popDebugGroup()
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0033);
    render_pass_encoder0011.drawIndirect(buffer0052, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0012.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0093,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    render_pass_encoder0010.drawIndirect(buffer0069, 0);
    render_pass_encoder0012.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer0061, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0012.drawIndirect(buffer0052, 0);
    render_pass_encoder0012.drawIndexedIndirect(buffer0077, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer0059, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0051.drawIndirect(buffer0042, 0);
    render_pass_encoder0020.drawIndirect(buffer0042, 0);
    render_pass_encoder0012.drawIndirect(buffer000, 0);
    render_pass_encoder0011.drawIndirect(buffer0041, 0);
    render_pass_encoder0011.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0060.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.drawIndirect(buffer0071, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0012.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0012.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0083, 0);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer004, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0094, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0094, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0075, 0);
}