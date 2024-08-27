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
    
    
    
    
    
    
    const array0 = new Float32Array([0.25, 0.75, -0.75, 0.0, 1.0, 0.25, 0.75, 0.5, -0.5, 0.5, 0.75, -0.25, 0.5, -0.75, -0.75, 1.0, 0.5, 0.25, -1.0, 0.5, 0.75, -0.75, 0.0, -0.25, 0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 0.75, 0.5, 0.25, 0.25, -0.25, -0.75, 0.25, 0.75, -0.25, 0.0, 1.0, -0.75, -0.75, 0.75, 0.25, -0.5, 0.25, -0.5, 0.75, -0.25, 1.0, -0.5, -0.75, 0.0, -0.5, 0.5, -0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 0.75, 1.0, -0.5, 1.0, 0.75, -0.5, -1.0, -0.5, -0.75, 0.0, 0.75, -1.0, 0.5, 0.0, -0.5, 1.0, 0.75, -0.5, 0.5, -0.25, 0.0, -0.75, 0.0, -0.25, -0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 0.0, 0.5, 1.0, 0.5, 1.0, -0.75, 0.5, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_buffer001 = command_encoder001.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    buffer000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer100.destroy()
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("validation");
    device10.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.popDebugGroup()
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer001.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.pushErrorScope("out-of-memory");
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array1 = new Float32Array([1.0, 0.25, 0.5, -0.25, 0.0, -0.25, 0.25, 0.75, -0.75, 0.5, -0.25, 0.25, 0.5, -0.5, 0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 0.75, 0.0, 0.25, 0.75, 0.5, 0.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.25, 0.75, 0.25, 0.75, -0.5, 1.0, 0.0, -1.0, -0.75, -0.75, 0.0, -0.75, 0.25, 1.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.0, -0.5, -1.0, 0.75, 0.0, 0.25, -0.5, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 0.75, 0.75, 0.25, -0.75, 0.25, 0.5, -0.75, 1.0, -0.25, 0.75, -0.75, 0.5, 1.0, 1.0, 0.5, -0.75, -0.5, 0.25, 1.0, 0.5, 0.25, 1.0, -0.75, 0.5, 0.25, 0.25, -0.75, -0.75, -0.5, 0.25, 0.25, -0.5, 1.0, -1.0, ]);
    const array2 = new Float32Array([0.75, 0.0, 0.0, -1.0, -0.5, -0.25, -0.5, 0.5, 0.25, -0.25, 0.0, -0.5, 0.5, -1.0, -0.75, -1.0, -0.25, 0.5, 1.0, 1.0, 1.0, -0.75, 1.0, -0.75, 1.0, 0.25, -0.5, -1.0, -0.5, 0.75, -0.75, 0.25, -0.5, 0.75, -0.25, 0.0, 0.75, 0.25, 0.25, 0.0, 0.25, 1.0, 1.0, 0.75, 0.75, 0.25, 0.75, 0.75, 0.25, 0.25, -1.0, -0.25, -1.0, 0.75, -0.75, 0.5, -1.0, 0.75, -0.5, 0.0, 0.25, -0.5, -0.5, -0.5, -0.5, 1.0, 0.5, 0.5, -1.0, 0.5, -0.5, -0.75, 0.5, -0.5, -0.75, 0.5, 0.75, 0.25, -1.0, 0.5, -0.75, -0.5, -0.75, -0.25, 1.0, -1.0, 0.5, 0.25, 1.0, 0.5, 0.75, -1.0, 0.5, 0.25, 0.25, -1.0, -0.75, 1.0, 0.5, 0.75, ]);
    
    
    
    buffer002.destroy()
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture002.destroy();
    
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
    command_encoder002.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    query000.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    query001.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
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
    
    const array3 = new Float32Array([-1.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.25, 0.5, 0.75, 0.75, -0.5, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 1.0, 0.75, 0.25, 0.25, -0.25, -0.25, 0.0, 0.5, -0.5, 0.0, 0.25, 0.0, -1.0, -0.5, -1.0, 0.25, -0.75, 0.75, 1.0, -1.0, -0.5, 1.0, 0.75, 0.5, -0.5, 0.0, -0.25, 0.75, -0.75, 0.75, 0.5, -0.75, -0.75, -1.0, 1.0, 0.5, 0.0, 0.25, -0.75, 0.5, 0.5, -0.25, 0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 1.0, 0.5, -0.25, -0.75, 0.25, -1.0, 0.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.75, -0.25, 0.5, -0.75, 0.75, -0.5, 0.25, -1.0, -1.0, -0.75, 0.5, -1.0, 0.25, 0.75, 0.0, -1.0, -0.5, 0.5, -0.25, 0.0, -0.25, ]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query002.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0020.popDebugGroup()
    texture000.destroy();
    
    const array4 = new Float32Array([0.25, 0.0, 0.75, 0.0, 0.5, 0.75, 1.0, -0.5, -0.25, -0.5, 0.75, 0.75, 0.75, 0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 0.5, 0.25, 0.5, 0.5, 1.0, -0.75, 0.5, -1.0, 0.5, -0.25, -0.5, 0.25, 0.25, -0.75, -0.25, 0.25, 0.0, 0.75, 0.75, 0.25, -0.5, -0.25, 0.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.25, 0.5, -1.0, 0.75, -0.75, 0.75, -0.75, -0.75, -0.5, 0.75, -1.0, 0.25, 0.5, -0.75, 0.5, 0.0, 0.25, -0.5, 1.0, -0.75, -0.5, -1.0, 0.0, -1.0, -0.75, -1.0, 1.0, 1.0, -0.25, 0.25, 1.0, 0.5, 0.0, 0.5, 0.75, 0.75, 0.75, -0.5, -0.5, 1.0, 0.0, -0.25, 0.0, -1.0, -0.5, -0.25, 1.0, -0.5, 0.75, 0.0, -0.25, 0.75, 0.25, ]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    buffer004.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.popDebugGroup()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    compute_pass_encoder0020.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.pushErrorScope("out-of-memory");
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
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder002.popDebugGroup();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0040.setPipeline(render_pipeline000);
    
    buffer003.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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

    render_pass_encoder0040.setBindGroup(0, bind_group001);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query002.destroy()
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer0010
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture001.destroy();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    
    buffer009.destroy()
    device00.queue.writeBuffer(buffer0010, 0, array4, 0, array4.length);
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer0010.destroy()
    texture004.destroy();
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setVertexBuffer(0, buffer002);
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const array5 = new Float32Array([1.0, 0.75, -1.0, -0.5, 0.0, -0.5, 0.75, -0.5, -0.75, -1.0, -0.75, 1.0, 1.0, 0.5, 0.75, 1.0, 0.5, -1.0, -0.25, -0.75, 0.75, 0.75, 0.75, 1.0, 0.5, 1.0, -0.5, 1.0, -1.0, -0.75, -0.25, 0.25, -0.5, -0.25, 0.5, -1.0, 0.5, -0.75, 0.25, -1.0, 0.0, 0.0, 0.25, 0.25, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.5, 0.25, 0.5, 0.75, 0.75, 1.0, 0.75, 0.25, 0.0, 0.25, 0.0, -0.5, 0.5, -0.5, 1.0, 0.75, 0.5, 0.0, 0.0, 0.25, 0.0, -0.75, -1.0, -0.75, 0.0, -0.5, -0.75, 1.0, -0.25, 0.75, 0.25, 1.0, 0.0, 1.0, 0.75, -0.5, -0.5, 0.75, -0.5, -0.5, 0.5, 0.0, -0.5, 0.5, 0.5, ]);
    texture005.destroy();
    compute_pass_encoder0050.setPipeline(compute_pipeline004);
    render_bundle_encoder001.drawIndirect(buffer001, 0);
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    texture006.destroy();
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.popDebugGroup();
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setPipeline(render_pipeline002);
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    buffer0013.destroy()
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    buffer007.destroy()
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    query001.destroy()
    
    buffer006.destroy()
    
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture007.destroy();
    
    
    query003.destroy()
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    render_bundle_encoder200.insertDebugMarker("marker");
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group004);
    buffer0014.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0040.drawIndirect(buffer001, 0);
    buffer005.destroy()
    
    query002.destroy()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    
    
    render_pass_encoder0060.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group005);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query001.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    compute_pass_encoder0050.popDebugGroup()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder0040.setStencilReference(1);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_pass_encoder0040.setStencilReference(1);
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    buffer0012.destroy()
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array6 = new Float32Array([0.5, -0.5, -1.0, 0.25, 0.0, -1.0, -0.25, -0.75, 0.0, 0.25, 0.25, -0.5, 0.25, 0.0, -0.75, 1.0, 0.0, -1.0, 0.5, -0.75, 0.0, 0.25, 0.75, 0.25, 0.0, -1.0, 0.0, -0.25, -0.75, -0.5, -1.0, 0.25, -0.5, 0.5, -0.75, -1.0, -0.75, 0.5, 0.75, -0.5, -0.75, 0.75, -1.0, 0.75, -1.0, -1.0, 0.75, -0.5, 0.75, -0.25, 0.25, -0.75, -1.0, -1.0, 0.0, -0.25, -0.25, -0.25, 0.25, -0.25, 0.5, -0.25, -0.75, -1.0, 0.75, 0.0, 1.0, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, 0.75, 0.0, 0.75, 0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 1.0, -1.0, -0.75, 0.75, 0.0, 0.25, 0.5, 1.0, -0.5, 0.0, 0.25, -0.75, -0.5, 0.5, -1.0, -0.75, 0.5, -0.75, ]);
    texture200.destroy();
    render_pass_encoder0060.insertDebugMarker("marker");
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    device30.pushErrorScope("validation");
    buffer0021.destroy()
    
    
    device00.queue.writeBuffer(buffer0022, 0, array6, 0, array6.length);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.drawIndirect(buffer0022, 0);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer200.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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

    render_bundle_encoder000.setBindGroup(0, bind_group007);
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer0022, 0, array6, 0, array6.length);
    const array7 = new Float32Array([-0.25, -0.75, 1.0, -0.75, -0.75, -0.25, -0.75, -0.5, 0.5, -0.75, -0.25, 0.25, 0.0, -1.0, -1.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.0, -0.5, -1.0, 1.0, -0.25, -0.5, -0.75, -0.25, 0.0, 0.25, -0.75, 1.0, -0.25, 0.0, -1.0, 0.25, -1.0, -1.0, 1.0, 1.0, -1.0, -1.0, -0.75, 0.0, -0.25, 0.25, -1.0, 0.0, 1.0, -1.0, 0.0, 0.25, 0.0, 0.5, -0.5, -0.5, 0.5, 1.0, -1.0, 0.0, -0.5, -0.5, 0.75, 1.0, 0.75, -0.5, 0.5, 0.25, -0.5, 0.5, -0.25, 0.25, 0.75, -0.5, 0.5, 1.0, 1.0, -0.75, -1.0, 0.5, -1.0, -0.75, 0.25, -0.5, 0.0, 0.5, 0.25, 0.75, -0.75, -0.25, -0.5, 0.75, 0.5, -0.25, -0.75, 1.0, -0.75, 0.75, -0.25, 0.5, ]);
    
    
    buffer0011.destroy()
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0022, 0, array0, 0, array0.length);
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    buffer0018.destroy()
    
    
    device00.queue.writeBuffer(buffer0022, 0, array7, 0, array7.length);
    device20.pushErrorScope("validation");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0050.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer008.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture003.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture203.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query000.destroy()
    render_bundle_encoder002.popDebugGroup();
    const array8 = new Float32Array([-0.25, -0.5, -0.5, -0.5, 0.5, 0.5, -0.25, 0.75, -1.0, -0.25, -0.25, 0.5, -1.0, -1.0, 0.0, 0.0, -0.75, 0.0, 0.25, -0.5, -1.0, 0.75, 1.0, 0.75, -0.25, -0.5, -1.0, -0.5, -0.75, 0.75, 0.5, -0.5, -0.25, -0.25, 0.5, 0.75, -0.25, -0.25, -0.25, 0.0, -1.0, -0.25, 0.75, 0.75, -0.25, -0.75, -0.25, 0.0, 1.0, -0.75, 0.5, -0.75, -1.0, 0.25, -0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 0.0, -1.0, 0.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -1.0, 0.75, 0.75, -0.75, 0.75, 0.5, -0.5, 0.0, 1.0, 0.5, 0.5, 0.25, -0.25, 0.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.5, 0.25, 0.75, 0.25, 0.5, -0.25, -0.75, -0.5, -0.75, -1.0, ]);
    texture300.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    compute_pass_encoder0050.insertDebugMarker("marker")
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    buffer0024.destroy()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    query002.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder002.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query003.destroy()
    device00.queue.writeBuffer(buffer0022, 0, array1, 0, array1.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    device00.queue.writeBuffer(buffer0022, 0, array3, 0, array3.length);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer0023.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.setVertexBuffer(0, buffer002);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    device00.queue.writeBuffer(buffer0022, 0, array3, 0, array3.length);
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0060.setStencilReference(1);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture204.destroy();
    render_pass_encoder0060.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder0070.setPipeline(render_pipeline003);
    compute_pass_encoder0000.popDebugGroup()
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group009);
    compute_pass_encoder0050.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.draw(3);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.setVertexBuffer(0, buffer000);
    render_pass_encoder0070.draw(3);
    compute_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0030.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0040.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder0070.end();
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer007 = command_encoder007.finish();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0060.end();
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer005, command_buffer006, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
}