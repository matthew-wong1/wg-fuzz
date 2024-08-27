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
    
    
    const array0 = new Float32Array([-0.5, 0.0, -1.0, -0.75, -0.25, 0.25, 1.0, -0.25, 0.25, -0.25, 0.25, -0.75, -1.0, -0.5, 0.5, 1.0, 1.0, 0.25, -0.75, 0.25, -1.0, 0.75, -0.25, 0.75, 0.5, -0.25, -0.75, -1.0, -0.75, 1.0, 0.75, 1.0, 0.25, 0.75, -0.25, -1.0, 0.75, -0.5, 0.0, 0.0, 0.0, -1.0, -0.75, -0.25, 0.5, -1.0, 0.25, 0.5, -0.5, -0.5, 0.75, -1.0, 1.0, -0.5, -0.75, 1.0, 1.0, 0.5, 0.5, 0.0, -0.5, 0.25, 0.75, 0.0, 0.5, 0.5, -1.0, 0.75, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, 1.0, 0.0, -1.0, 0.75, 1.0, 0.0, 0.75, 0.75, -0.75, 0.5, 0.25, 0.5, -1.0, 0.75, 0.25, 1.0, -0.75, 0.0, 0.0, -0.75, 0.5, 0.5, 1.0, 0.25, -0.5, 0.75, ]);
    
    
    const array1 = new Float32Array([-0.25, 0.5, 0.0, -0.25, 0.5, -0.25, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, -0.75, 0.0, 1.0, -0.75, 1.0, -0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, 0.0, 0.75, 0.5, -0.5, 1.0, 0.5, 0.75, -0.5, 0.0, 0.75, 0.5, 0.75, 0.75, 0.75, 0.75, 0.5, 0.25, -0.75, 0.25, -0.5, -1.0, -0.75, -1.0, 0.75, -0.25, 1.0, -0.5, 0.75, 0.0, 0.75, 0.25, 0.5, 0.25, -0.25, -0.5, 0.75, 0.75, 1.0, 0.5, 0.0, 0.25, -1.0, -0.75, -0.5, -0.5, 0.5, 0.75, -0.75, 0.5, -0.25, 0.5, -0.5, 0.75, 0.25, 0.25, 1.0, 0.75, -0.25, -0.5, 0.75, -1.0, -1.0, 0.0, 0.0, -0.5, -0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 0.75, 1.0, -0.5, 0.75, -1.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.pushErrorScope("out-of-memory");
    const array2 = new Float32Array([0.0, -1.0, -0.5, 0.75, 1.0, 0.75, -0.75, -0.25, 0.5, 0.0, -0.5, 0.0, -1.0, 0.25, 1.0, -0.75, 1.0, -1.0, 0.75, 0.0, 0.5, 0.5, -0.75, 0.5, 1.0, -0.25, 0.5, 0.5, -0.75, 0.75, 0.5, 0.5, -1.0, 1.0, 0.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 1.0, 0.75, 0.0, -0.75, 0.25, -0.5, -0.25, -1.0, 1.0, 0.75, 0.0, 1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 0.25, 0.75, 0.25, 0.75, -0.25, -0.75, 1.0, 0.0, 0.0, 0.5, 0.25, 0.5, -1.0, 1.0, 0.5, 0.75, 0.25, 0.75, 0.75, 0.0, -0.5, 0.5, -1.0, -0.5, -0.75, 1.0, -0.5, -1.0, -0.25, 0.5, -1.0, 0.5, 0.25, -0.75, 0.75, 0.5, -0.25, ]);
    command_encoder000.popDebugGroup()
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    device10.pushErrorScope("internal");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const array3 = new Float32Array([-1.0, 0.5, 1.0, 0.75, -0.5, 1.0, 0.25, -1.0, 0.75, -0.75, 0.5, 0.5, 0.0, -1.0, -0.5, -0.75, -1.0, -0.75, 0.5, -1.0, 0.0, -0.75, -0.25, -0.5, 0.5, 0.25, -0.25, 0.5, 0.25, 0.5, 1.0, 0.5, 0.0, -0.5, -0.5, 0.75, 0.5, -0.5, -0.25, 0.5, 0.0, 0.25, 0.0, 0.5, -0.25, -0.5, -0.25, 0.0, -0.25, 0.0, 0.75, 0.25, 0.25, 0.25, -0.25, 0.75, -1.0, 0.5, -0.25, 0.25, 0.5, 1.0, -0.25, -0.5, 0.25, 0.0, 1.0, -0.5, -0.25, 0.75, 0.75, 0.0, 0.75, -0.75, 0.0, 1.0, -0.25, 1.0, -1.0, 0.25, 0.5, -0.25, 0.75, 0.75, 0.5, 1.0, 0.75, -1.0, 0.5, 0.75, 0.75, -1.0, -0.25, -0.5, 0.5, -1.0, 0.25, 0.5, 0.75, 0.75, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer102.destroy()
    buffer101.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
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
    command_encoder001.clearBuffer(buffer002);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
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
    
    buffer000.destroy()
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    buffer100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    buffer000.destroy()
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer002.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer001.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query000.destroy()
    device10.destroy();
    
    command_encoder001.clearBuffer(buffer001);
    query003.destroy()
    render_bundle_encoder000.popDebugGroup();
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder0000.popDebugGroup()
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.pushErrorScope("internal");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    
    device00.pushErrorScope("internal");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    command_encoder001.insertDebugMarker("mymarker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    query000.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    compute_pass_encoder0010.dispatchWorkgroups(100);
    
    render_bundle_encoder000.popDebugGroup();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    texture000.destroy();
    buffer004.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    query004.destroy()
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer003.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.popDebugGroup()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    compute_pass_encoder0001.setPipeline(compute_pipeline002);
    query003.destroy()
    compute_pass_encoder0011.setPipeline(compute_pipeline002);
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device30.destroy();
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    compute_pass_encoder0011.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    compute_pass_encoder0011.insertDebugMarker("marker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    command_encoder003.insertDebugMarker("mymarker");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer009, 0);
    command_encoder002.clearBuffer(buffer007);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    command_encoder002.clearBuffer(buffer009);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    buffer007.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture002.destroy();
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
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer002 = command_encoder002.finish();
    
    texture001.destroy();
    compute_pass_encoder0011.insertDebugMarker("marker")
    compute_pass_encoder0001.insertDebugMarker("marker")
    render_bundle_encoder000.setVertexBuffer(0, buffer007);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    buffer006.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query002.destroy()
    buffer009.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group003);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    query001.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    query005.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0013, 0);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.drawIndirect(buffer0013, 0);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query003.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    compute_pass_encoder0000.end();
    device00.queue.writeBuffer(buffer0014, 0, array2, 0, array2.length);
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    
    buffer0010.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device20.destroy();
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    buffer0013.destroy()
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    query000.destroy()
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    query003.destroy()
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
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
    const array4 = new Float32Array([-1.0, 0.5, 0.5, -1.0, 0.5, 0.5, 1.0, 0.25, 0.25, -0.75, 1.0, 0.0, 1.0, 0.75, 0.0, 0.5, 0.25, -0.25, 0.5, 0.75, -0.25, 0.0, -0.5, -0.5, -0.5, 1.0, -0.5, 0.5, 0.25, -0.75, 0.25, 0.0, -1.0, 1.0, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, 0.5, -1.0, -0.75, 0.75, 0.75, -0.25, 0.25, 0.0, 0.75, 0.25, -0.25, 0.0, 0.25, 0.0, 1.0, -0.5, -0.5, -0.5, -0.25, -1.0, -0.25, 0.25, 0.0, -1.0, -1.0, -1.0, 0.75, 0.25, -0.75, 1.0, 0.75, -1.0, -0.5, -0.25, -0.25, 1.0, 0.75, -0.5, 0.0, 1.0, 0.25, 0.75, 0.0, -1.0, -0.75, 0.75, -0.25, -0.5, -0.25, 0.75, 0.25, -1.0, -0.5, 0.75, -0.75, -1.0, -1.0, 1.0, -0.25, 0.0, ]);
    
    buffer0015.destroy()
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    
    texture101.destroy();
    texture004.destroy();
    buffer0011.destroy()
    compute_pass_encoder0011.dispatchWorkgroups(100);
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_bundle_encoder000.popDebugGroup();
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: undefined
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline008);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    render_bundle_encoder001.setPipeline(render_pipeline007);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0000.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    texture500.destroy();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query003.destroy()
    buffer500.destroy()
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0014, 0, array0, 0, array0.length);
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group005);
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    buffer008.destroy()
    
    buffer0018.destroy()
    query001.destroy()
    device50.destroy();
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0021, 0);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    buffer0019.destroy()
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    buffer0020.destroy()
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
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    texture001.destroy();
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer0017
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query002.destroy()
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: query004
    });
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    render_pass_encoder0011.setPipeline(render_pipeline006);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    texture003.destroy();
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
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
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query002
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0001.popDebugGroup()
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0012, 0, array4, 0, array4.length);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.writeBuffer(buffer0012, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    command_encoder000.copyBufferToBuffer(
        buffer0020,
        0,
        buffer0019,
        0,
        400
    );
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0011.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0010.setPipeline(render_pipeline004);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setPipeline(render_pipeline008);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    render_bundle_encoder001.setVertexBuffer(0, buffer0023);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device00.queue.writeBuffer(buffer0016, 0, array0, 0, array0.length);
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0011.setBindGroup(0, bind_group007);
    render_pass_encoder0011.setVertexBuffer(0, buffer006);
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder0010.setVertexBuffer(0, buffer0017);
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder0010.end();
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group009);
    compute_pass_encoder0011.end();
    render_pass_encoder0000.drawIndirect(buffer009, 0);
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0033, 0);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0001.setBindGroup(0, bind_group0011);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer001);
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0001.setIndexBuffer(buffer0027, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.setIndexBuffer(buffer009, "uint16");
    compute_pass_encoder0001.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0010.drawIndirect(buffer005, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    command_encoder000.popDebugGroup()
    command_encoder001.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder0011.end();
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0001.end();
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndirect(buffer0033, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0011.end();
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
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
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
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0014);
    render_pass_encoder0010.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0024, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0033, 0);
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
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
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0001.setBindGroup(0, bind_group0015);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0011.end();
    render_pass_encoder0011.end();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0011.end();
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0011.popDebugGroup();
}