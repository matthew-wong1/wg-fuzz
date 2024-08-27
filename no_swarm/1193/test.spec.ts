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
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    device00.pushErrorScope("out-of-memory");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array0 = new Float32Array([0.0, -1.0, 0.0, 0.0, 1.0, 0.75, 0.0, 1.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.0, 1.0, 0.75, -1.0, -0.25, 1.0, 1.0, -0.25, -0.5, 0.75, -0.25, -0.5, 0.75, 0.25, 0.75, -0.5, 0.0, 0.75, 0.5, -1.0, -0.75, -0.5, -1.0, -1.0, 0.0, 0.25, -0.25, 0.25, -1.0, -0.75, 0.75, 0.0, -0.5, 0.0, 0.25, 0.75, 0.0, -1.0, 1.0, -0.75, 1.0, 1.0, -0.5, -0.25, 0.5, 0.0, 0.5, 0.75, 0.25, 0.75, 0.0, 0.25, 0.75, 0.75, 0.0, 0.25, 0.0, -0.75, -1.0, 0.0, -1.0, 0.25, -1.0, -0.25, 0.75, -0.75, 0.0, -0.5, 1.0, -0.5, 0.5, 0.25, -0.25, 0.25, 0.0, -0.25, -0.75, 0.0, -1.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.0, 1.0, -0.25, ]);
    command_encoder100.insertDebugMarker("mymarker");
    device00.destroy();
    device10.pushErrorScope("validation");
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const command_buffer101 = command_encoder101.finish();
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    buffer100.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.submit([command_buffer101, ]);
    texture102.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.destroy();
    
    
    
    
    const array1 = new Float32Array([0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 0.0, -1.0, -0.5, -0.5, 0.0, 1.0, 0.0, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 1.0, 0.0, 0.75, -0.75, 0.25, -0.5, -0.75, 0.25, 0.0, -0.75, 0.75, -0.75, 0.0, -1.0, 1.0, 1.0, -0.75, 0.25, 0.75, 0.25, -0.25, -0.25, -0.25, -1.0, 0.5, 1.0, 0.0, 0.5, 1.0, 0.25, -0.5, -0.5, -0.5, 1.0, 1.0, -0.5, -1.0, 0.25, 0.5, -0.25, -0.75, -1.0, -0.5, -0.25, 0.0, 0.75, -0.75, -0.25, 0.0, -0.75, 1.0, 0.0, 0.25, -0.75, 0.0, -0.25, 0.0, -0.25, -0.75, 0.5, -0.25, -0.25, -0.25, -0.25, -1.0, -0.75, 0.75, -0.75, 0.25, -0.25, 0.25, 0.0, 0.0, 0.25, -0.75, -0.5, -1.0, -0.5, ]);
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.pushErrorScope("internal");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const array2 = new Float32Array([1.0, -0.75, 0.5, 0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, -0.75, 0.75, 0.25, 0.0, 0.0, -0.75, -0.75, 0.25, 1.0, 0.0, -0.5, -0.75, -0.25, -1.0, -0.5, 0.0, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, 1.0, 0.5, -1.0, -0.75, 0.0, 0.75, -0.75, 0.5, -1.0, -0.75, 1.0, 0.25, -0.5, 0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -0.25, -0.25, -1.0, -0.5, -0.5, -1.0, 0.25, -0.75, -1.0, -1.0, 1.0, 1.0, -0.75, -1.0, 1.0, -0.25, 0.25, -1.0, 0.25, 0.75, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.75, -0.5, 1.0, 0.75, 0.5, 0.0, -0.5, -0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 0.5, 0.5, -1.0, 1.0, -0.25, -0.75, 0.5, ]);
    const array3 = new Float32Array([0.75, 0.5, -0.5, 0.0, -0.75, 0.0, -0.25, -0.5, -0.5, -0.25, -0.75, 0.0, 0.5, 1.0, -0.75, -0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 1.0, 1.0, 0.75, 0.75, -1.0, 0.75, 0.75, 0.0, -1.0, -0.5, 0.25, 1.0, -1.0, 0.0, 0.25, -0.25, 1.0, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -1.0, 0.75, 0.0, 0.75, -1.0, 0.5, 0.0, -0.25, 1.0, 0.0, -0.25, 1.0, -0.75, 1.0, 1.0, -1.0, 0.75, 1.0, -0.5, -0.75, 0.0, 1.0, 0.0, -0.25, -1.0, 0.0, 1.0, -0.25, 0.75, 0.25, 0.5, 0.75, 0.5, -1.0, 0.75, -0.5, -0.25, -0.75, -0.25, 0.25, -1.0, 0.25, -1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -0.5, -1.0, 0.75, 0.0, 0.0, 0.5, -0.25, -0.75, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    query200.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    
    const command_buffer200 = command_encoder200.finish();
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    compute_pass_encoder1000.popDebugGroup()
    query201.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder201.insertDebugMarker("mymarker");
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder201.clearBuffer(buffer201);
    
    
    
    command_encoder201.insertDebugMarker("mymarker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query200.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.pushErrorScope("out-of-memory");
    
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
    
    query200.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    command_encoder203.clearBuffer(buffer201);
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    command_encoder203.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder201.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    
    
    const array4 = new Float32Array([-0.5, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -1.0, -0.25, -0.25, -1.0, -0.75, 1.0, -0.25, 0.0, -0.75, 0.0, 0.0, 0.0, -0.5, -0.75, 0.5, -0.5, -0.5, -0.75, -0.75, -1.0, -0.75, 0.5, -0.75, -1.0, -1.0, -0.5, 0.0, 0.5, -1.0, -1.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.5, -0.5, 0.5, 1.0, -1.0, 0.25, 0.0, -0.5, -0.75, 0.25, 0.75, 0.25, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, 0.0, 0.5, 0.25, 0.0, 0.75, -0.75, -1.0, -1.0, 0.5, -0.5, -1.0, 0.25, 0.75, 0.0, -0.5, -0.25, 0.0, 0.75, 0.0, -1.0, -0.75, -1.0, 0.75, 0.75, 1.0, 0.5, -0.25, -0.5, -0.25, -0.75, 1.0, 0.0, -1.0, 0.5, -0.25, 0.75, -0.75, -0.25, 0.75, 0.5, ]);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder201.popDebugGroup();
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
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
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
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const command_buffer400 = command_encoder400.finish();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer201,
        0,
        400
    );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer201.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    command_encoder204.insertDebugMarker("mymarker");
    
    buffer000.destroy()
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer202,
        0,
        400
    );
    command_encoder203.popDebugGroup()
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query202.destroy()
    render_bundle_encoder201.popDebugGroup();
    const array5 = new Float32Array([-1.0, 1.0, -0.75, -0.75, 0.5, -0.5, 1.0, 1.0, -0.5, 0.5, 0.75, -1.0, 0.0, 0.25, -0.5, -0.25, 1.0, 0.25, 0.5, 0.0, 0.75, 0.5, -0.75, 0.0, -0.75, -0.5, 0.0, 0.0, 0.5, -1.0, -1.0, -1.0, -0.5, -0.5, -0.25, 0.0, 0.0, 0.5, -1.0, 1.0, -1.0, -1.0, 0.75, 0.75, 0.0, 0.5, 0.0, -0.25, -0.25, 0.0, 0.25, 0.5, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -0.25, -1.0, -1.0, -0.25, 0.25, -1.0, -0.25, 1.0, 0.0, -0.5, -0.75, -0.75, 1.0, 0.75, -1.0, 1.0, -0.5, 0.75, 0.75, -0.25, -1.0, -1.0, 0.75, 0.0, -0.25, -0.75, 0.0, -0.75, -1.0, -1.0, 0.25, 1.0, -0.25, -0.75, 0.5, 0.0, -0.25, -0.5, 0.5, -0.5, -0.75, -0.25, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    query204.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer200.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
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
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.popDebugGroup()
    
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device40.pushErrorScope("out-of-memory");
    
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
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    texture200.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    buffer203.destroy()
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    
    
    buffer206.destroy()
    
    device70.destroy();
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder201.popDebugGroup()
    
    render_bundle_encoder200.popDebugGroup();
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query202.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
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
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder205.clearBuffer(buffer203);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer205,
        0
    )
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    render_bundle_encoder200.setVertexBuffer(0, buffer208);
    render_bundle_encoder200.insertDebugMarker("marker");
    query200.destroy()
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    render_bundle_encoder200.draw(3);
    device50.destroy();
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    
    command_encoder203.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.submit([]);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query401.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query401.destroy()
    command_encoder205.copyBufferToBuffer(
        buffer207,
        0,
        buffer202,
        0,
        400
    );
    query200.destroy()
    
    command_encoder205.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    compute_pass_encoder2040.popDebugGroup()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder205.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    buffer204.destroy()
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
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
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    command_encoder201.copyBufferToBuffer(
        buffer205,
        0,
        buffer201,
        0,
        400
    );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    command_encoder205.popDebugGroup()
    
    render_bundle_encoder400.popDebugGroup();
    
    buffer208.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder206.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query401.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const command_buffer205 = command_encoder205.finish();
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    buffer205.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder206.insertDebugMarker("mymarker");
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_bundle_encoder100.popDebugGroup();
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture800.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query204
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder206.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_bundle_encoder200.finish();
    
    device80.queue.writeBuffer(buffer801, 0, array1, 0, array1.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    query202.destroy()
    
    
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer802.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    buffer207.destroy()
    device40.pushErrorScope("internal");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    command_encoder207.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4020.setPipeline(compute_pipeline407);
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2070.setPipeline(render_pipeline206);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query204
    });
    render_pass_encoder2040.setPipeline(render_pipeline201);
    query401.destroy()
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer102 = command_encoder102.finish();
    command_encoder206.pushDebugGroup("mygroupmarker")
    device90.destroy();
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline206.getBindGroupLayout(0),
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

    render_pass_encoder2070.setBindGroup(0, bind_group202);
    compute_pass_encoder2040.setPipeline(compute_pipeline200);
    render_pass_encoder2030.setPipeline(render_pipeline206);
    render_pass_encoder2060.setPipeline(render_pipeline202);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group203);
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_pass_encoder2040.setVertexBuffer(0, buffer2011);
    render_pass_encoder2041.setPipeline(render_pipeline206);
    render_pass_encoder2070.endOcclusionQuery()
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2060.setBindGroup(0, bind_group205);
    render_pass_encoder2030.setVertexBuffer(0, buffer2013);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2070.setVertexBuffer(0, buffer207);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2070.drawIndirect(buffer2013, 0);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder2060.setVertexBuffer(0, buffer2010);
    render_pass_encoder2030.end();
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group206);
    render_pass_encoder2070.end();
    render_pass_encoder2060.drawIndirect(buffer206, 0);
    render_pass_encoder2060.end();
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group208);
    command_encoder207.popDebugGroup()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2023, 0);
    render_pass_encoder2070.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder2040.dispatchWorkgroups(100);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group209);
    render_pass_encoder2060.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder2040.end();
    render_pass_encoder2060.setIndexBuffer(buffer2017, "uint16");
    compute_pass_encoder2010.end();
    command_encoder206.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2041.setVertexBuffer(0, buffer2010);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2040.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2023, 0);
    device80.queue.submit([]);
    compute_pass_encoder2030.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const command_buffer206 = command_encoder206.finish();
    render_pass_encoder2060.draw(3);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2010);
    render_pass_encoder2060.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2041.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group400);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2041.end();
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2070.draw(3);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2060.setIndexBuffer(buffer209, "uint16");
    compute_pass_encoder4020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2041.drawIndirect(buffer2024, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2040.end();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2011);
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2030.drawIndexedIndirect(buffer207, 0);
    device80.queue.submit([]);
    render_pass_encoder2041.drawIndirect(buffer2029, 0);
    device40.queue.submit([]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder2030.end();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2070.drawIndirect(buffer2029, 0);
    compute_pass_encoder2040.end();
    device20.queue.submit([command_buffer203, command_buffer207, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2041.drawIndirect(buffer2023, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2012);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2060.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2022, 0);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group401);
    render_pass_encoder2041.setIndexBuffer(buffer2022, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2020.end();
    compute_pass_encoder4020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, command_buffer207, ]);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2033, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2041.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2070.end();
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2033, 0);
    device20.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2060.drawIndirect(buffer2023, 0);
    compute_pass_encoder4020.end();
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2070.drawIndirect(buffer2013, 0);
    render_pass_encoder2070.drawIndirect(buffer2023, 0);
    device20.queue.submit([command_buffer201, command_buffer206, ]);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer402, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2060.setIndexBuffer(buffer2023, "uint16");
    compute_pass_encoder2020.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2034, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2034, 0);
    render_pass_encoder2070.end();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer204, ]);
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer205, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2070.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2041.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder2041.end();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2041.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2035, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer2035, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder4020.popDebugGroup()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2017, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2041.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer2036, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.end();
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2040.end();
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    render_pass_encoder2060.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2030.end();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2010.end();
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2013);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2041.drawIndexedIndirect(buffer2034, 0);
    compute_pass_encoder2010.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2035, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    compute_pass_encoder2010.end();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2033, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2036, 0);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2014);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
    render_pass_encoder2030.drawIndirect(buffer2035, 0);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer207, ]);
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2016);
    render_pass_encoder2070.popDebugGroup();
    device90.queue.submit([]);
    render_pass_encoder2070.drawIndirect(buffer2036, 0);
    render_pass_encoder2040.endOcclusionQuery()
    device20.queue.submit([command_buffer205, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2070.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndexedIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2060.drawIndirect(buffer2013, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2035, 0);
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2070.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2070.popDebugGroup();
    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2046,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2017);
    render_pass_encoder2040.drawIndirect(buffer2012, 0);
    render_pass_encoder2070.drawIndirect(buffer2035, 0);
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2019);
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2019, 0);
    device00.queue.submit([]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer408, 0);
    render_pass_encoder2060.drawIndirect(buffer2034, 0);
    device80.queue.submit([]);
    render_pass_encoder2070.drawIndirect(buffer200, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2060.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2060.endOcclusionQuery()
    render_pass_encoder2041.drawIndirect(buffer2024, 0);
    render_pass_encoder2070.drawIndirect(buffer2044, 0);
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2060.drawIndirect(buffer2010, 0);
    render_pass_encoder2030.drawIndirect(buffer2045, 0);
    render_pass_encoder2060.drawIndirect(buffer2034, 0);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2070.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    device80.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2070.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2051, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2033, 0);
    device40.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2040.end();
    render_pass_encoder2041.drawIndirect(buffer2024, 0);
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2020);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.end();
    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2055,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2021);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder2041.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2070.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2056, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2060.drawIndirect(buffer2032, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2022);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2030.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2060.draw(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2048, "uint16");
    compute_pass_encoder2020.end();
    device40.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder2060.setIndexBuffer(buffer2041, "uint16");
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2023);
    device20.queue.submit([command_buffer202, command_buffer207, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2041.end();
}