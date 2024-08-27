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
    device00.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.pushErrorScope("internal");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    
    render_bundle_encoder000.popDebugGroup();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
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
    buffer003.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer002.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder000.popDebugGroup();
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder000.popDebugGroup();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    buffer000.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query001.destroy()
    device10.pushErrorScope("out-of-memory");
    
    buffer101.destroy()
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer100.destroy()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder100.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder000.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    render_bundle_encoder100.popDebugGroup();
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder002.popDebugGroup();
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    
    
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer001.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    query101.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    command_encoder000.insertDebugMarker("mymarker");
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
    render_bundle_encoder101.popDebugGroup();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    buffer103.destroy()
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    device00.pushErrorScope("internal");
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture100.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    
    query101.destroy()
    command_encoder000.popDebugGroup()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    
    
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
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
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    buffer102.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    device00.pushErrorScope("validation");
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    device20.pushErrorScope("validation");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    buffer104.destroy()
    const command_buffer000 = command_encoder000.finish();
    
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query103.destroy()
    buffer005.destroy()
    
    query100.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer102.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    
    
    
    texture200.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    command_encoder002.clearBuffer(buffer007);
    const command_buffer002 = command_encoder002.finish();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query102.destroy()
    buffer006.destroy()
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
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query106
    });
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.pushErrorScope("internal");
    buffer007.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    
    compute_pass_encoder1010.popDebugGroup()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    query200.destroy()
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
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer100.destroy()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.setVertexBuffer(0, buffer0010);
    
    
    
    
    
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    {
        await buffer008.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer008.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer008.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setIndexBuffer(buffer002, "uint16");
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    
    query106.destroy()
    render_pass_encoder1030.executeBundles([render_bundle_encoder102, ])
    command_encoder103.clearBuffer(buffer103);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer001,
        0
    )
    buffer0010.destroy()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setIndexBuffer(buffer000, "uint16");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query100.destroy()
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer000, ]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder001.drawIndexed(3);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    command_encoder100.clearBuffer(buffer104);
    
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder1001.popDebugGroup()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("internal");
    device00.pushErrorScope("internal");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder001.clearBuffer(buffer000);
    compute_pass_encoder1010.popDebugGroup()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    query105.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query007
    });
    command_encoder005.copyTextureToTexture(
        {
            texture: texture002
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
    
    render_pass_encoder1021.setStencilReference(1);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer0012,
        0
    )
    render_pass_encoder0030.setPipeline(render_pipeline002);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder005.clearBuffer(buffer009);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    {
        await buffer0012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0012.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
        occlusionQuerySet: query002
    });
    device20.pushErrorScope("validation");
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1010.setPipeline(render_pipeline100);
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer002,
        0
    )
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query007.destroy()
    render_bundle_encoder001.draw(3);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder200.popDebugGroup();
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer0012,
        0
    )
    render_pass_encoder0040.insertDebugMarker("marker");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.executeBundles([])
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const array0 = new Float32Array([-0.25, 1.0, 0.75, 0.25, -1.0, 0.75, 0.0, 0.5, 1.0, 0.25, -0.5, 0.0, 0.5, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, 0.0, -1.0, 0.5, 0.5, 1.0, 0.75, -0.5, -0.75, 0.25, 0.5, 1.0, -0.75, 0.25, -0.75, 0.0, 0.25, 0.0, -0.25, 1.0, 1.0, -1.0, 0.25, 0.5, -0.5, -0.25, 1.0, -0.25, 1.0, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, 0.75, -0.75, 0.0, 0.25, 0.0, -0.75, 1.0, 1.0, 0.0, 0.25, -0.75, 0.75, -0.75, 0.5, -0.75, -0.25, -0.75, -1.0, -0.75, 0.0, 1.0, -0.25, 0.25, 0.25, 0.25, 1.0, -0.75, -0.5, -0.25, 0.25, -1.0, -1.0, -0.5, -0.75, 0.5, -0.75, -0.5, -0.25, -0.25, 0.0, -0.5, -0.5, 0.75, 0.5, -0.5, -1.0, 1.0, ]);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query105
    });
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setIndexBuffer(buffer000, "uint16");
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer0011,
        0
    )
    
    buffer101.destroy()
    query102.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query300.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    render_pass_encoder1021.setPipeline(render_pipeline100);
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer0012,
        0
    )
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    device20.destroy();
    device10.pushErrorScope("validation");
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setPipeline(render_pipeline100);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group101);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0050.setPipeline(render_pipeline001);
    render_pass_encoder1021.setVertexBuffer(0, buffer108);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1040.setBindGroup(0, bind_group102);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder1040.setVertexBuffer(0, buffer103);
    render_pass_encoder1020.setVertexBuffer(0, buffer1010);
    render_pass_encoder1031.setPipeline(render_pipeline101);
    render_pass_encoder0030.setVertexBuffer(0, buffer008);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    render_pass_encoder1031.popDebugGroup();
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
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
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group004);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    render_pass_encoder0050.setVertexBuffer(0, buffer000);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    render_pass_encoder1031.setVertexBuffer(0, buffer102);
    render_pass_encoder0030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([]);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    command_encoder102.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    compute_pass_encoder1020.popDebugGroup()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder0010.end();
    render_pass_encoder1040.setIndexBuffer(buffer1017, "uint16");
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group107);
    render_pass_encoder1031.popDebugGroup();
    command_encoder001.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0040.setVertexBuffer(0, buffer000);
    device30.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.end();
    device00.queue.submit([]);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder1050.setVertexBuffer(0, buffer102);
    render_pass_encoder0040.end();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1021.drawIndexed(3);
    command_encoder100.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    render_pass_encoder0040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1050.end();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0020, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    const command_buffer001 = command_encoder001.finish();
    device30.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0013, 0);
    render_pass_encoder1021.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder1030.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    compute_pass_encoder1001.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    const command_buffer105 = command_encoder105.finish();
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder0040.end();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1020.setIndexBuffer(buffer109, "uint16");
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer001, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, ]);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1021.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0030.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0050.end();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder1040.drawIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.end();
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0011, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0050.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder1040.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer001, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0040.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder0050.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.end();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0021, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([]);
    render_pass_encoder0050.drawIndirect(buffer0023, 0);
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0050.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
}