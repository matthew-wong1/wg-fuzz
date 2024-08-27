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
    const array0 = new Float32Array([1.0, -0.75, 1.0, -0.75, 0.5, -0.5, 0.25, 1.0, 0.75, -0.75, 0.75, 0.0, 1.0, 1.0, 0.75, 1.0, 1.0, -0.25, 1.0, 0.5, -0.75, 1.0, 1.0, 0.25, -0.5, -0.5, -1.0, -0.75, -0.5, 1.0, 0.75, -1.0, 0.25, -1.0, -0.5, -0.5, 1.0, -0.75, -0.25, 0.5, -1.0, 0.5, 0.25, -0.75, 0.25, 0.75, -0.75, -0.25, 1.0, 0.25, 0.5, 1.0, 1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.75, 0.25, 0.25, -0.25, -0.75, 0.25, 0.5, -0.75, 0.25, -0.5, -0.75, 0.25, 0.25, -0.5, 1.0, 0.25, -0.5, -1.0, 0.75, -0.25, -0.5, 0.5, 0.25, 0.25, -0.5, -1.0, 0.0, 1.0, -0.75, -0.25, 0.5, 0.0, -0.5, 0.0, -1.0, 0.0, -0.75, 0.25, -0.5, -1.0, -1.0, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    texture001.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    texture200.destroy();
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query000.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.insertDebugMarker("mymarker");
    texture002.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder001.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    texture000.destroy();
    device20.pushErrorScope("internal");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
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
    device20.pushErrorScope("validation");
    
    buffer000.destroy()
    
    
    buffer001.destroy()
    render_bundle_encoder000.popDebugGroup();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
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
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    buffer201.destroy()
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device40.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_bundle_encoder200.insertDebugMarker("marker");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    query003.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder002.clearBuffer(buffer002);
    device00.pushErrorScope("internal");
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query200.destroy()
    query002.destroy()
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    
    query000.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
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
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer003 = command_encoder003.finish();
    
    render_bundle_encoder001.popDebugGroup();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer003,
        0,
        400
    );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder002.popDebugGroup()
    const array1 = new Float32Array([-0.75, -0.25, 0.0, 0.25, -0.75, 0.0, -0.75, 1.0, 1.0, -0.25, -0.25, 0.0, -1.0, -0.25, -0.75, 0.25, -0.25, 1.0, -0.75, 1.0, -0.25, 0.5, -0.25, -0.25, -0.5, 0.25, 0.75, 0.5, -0.25, 1.0, -0.25, 0.75, -0.25, -0.75, -1.0, 0.0, -0.75, -0.25, 0.5, -0.5, -0.75, 1.0, 0.75, 1.0, -0.5, 0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 1.0, 0.5, 0.5, 1.0, -1.0, 0.0, -0.5, -0.25, 0.25, 0.5, 0.75, 0.75, 0.5, 0.5, 0.75, -1.0, 0.25, -1.0, -0.75, 1.0, -0.5, 0.0, 0.75, 0.25, -0.25, 1.0, -0.25, 0.25, 0.25, 0.0, 0.5, 0.5, 0.25, -0.25, -0.75, -0.25, -1.0, 0.75, -0.25, 1.0, 0.25, 0.75, 0.25, 0.25, -0.75, 0.5, -1.0, 0.0, -0.25, ]);
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const array2 = new Float32Array([1.0, 1.0, -0.5, 0.25, -1.0, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, -0.5, 0.25, -0.5, 0.75, 0.75, 1.0, -1.0, -0.5, 1.0, -0.75, -1.0, 0.5, -0.75, 0.5, -1.0, 0.25, 0.5, 0.25, -0.5, 0.0, 0.75, 1.0, -0.75, -0.75, -0.75, 0.25, 1.0, -0.25, 0.25, 0.25, -0.75, 0.0, -1.0, 0.5, -1.0, -0.5, 0.5, -0.5, 0.5, -1.0, -1.0, -0.25, -0.5, 0.25, 1.0, 0.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.5, 0.75, -0.75, 0.0, 0.5, 0.5, -0.25, -0.25, -0.75, 0.75, 0.0, -1.0, 0.5, -1.0, -0.75, -1.0, 0.25, -0.75, -0.75, 0.5, 0.0, -1.0, -0.25, -1.0, 1.0, 0.25, 0.75, 0.0, -0.75, 0.25, -0.25, 0.25, -0.5, 0.75, 1.0, 1.0, -0.5, 0.25, ]);
    texture200.destroy();
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
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    query200.destroy()
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0000.popDebugGroup()
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
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
    query004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query201.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer205.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    buffer203.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer203.destroy()
    
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer205,
        0
    )
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder002.setPipeline(render_pipeline000);
    texture201.destroy();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query201.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer203
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query201.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
    command_encoder202.clearBuffer(buffer202);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    buffer202.destroy()
    
    
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
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    device00.queue.submit([command_buffer003, ]);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    query002.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder2020.setPipeline(render_pipeline202);
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query200.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_bundle_encoder100.popDebugGroup();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.pushErrorScope("internal");
    device40.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    buffer004.destroy()
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture203
        },
        {
            buffer: buffer205
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    command_encoder001.popDebugGroup()
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder000.setVertexBuffer(0, buffer005);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder000.drawIndirect(buffer000, 0);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder203.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query201.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline202);
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    query001.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    render_pass_encoder2030.setPipeline(render_pipeline202);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.submit([]);
    command_encoder004.clearBuffer(buffer002);
    command_encoder002.clearBuffer(buffer002);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
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
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    command_encoder002.copyBufferToBuffer(
        buffer006,
        0,
        buffer003,
        0,
        400
    );
    
    buffer009.destroy()
    
    render_bundle_encoder000.finish();
    buffer103.destroy()
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    buffer006.destroy()
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query203
    });
    
    
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    
    render_bundle_encoder202.popDebugGroup();
    
    buffer204.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    query004.destroy()
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2021.insertDebugMarker("marker");
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer104,
        0,
        400
    );
    render_pass_encoder2021.popDebugGroup();
    
    render_pass_encoder2031.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    render_bundle_encoder002.insertDebugMarker("marker");
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer007.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    buffer102.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.setVertexBuffer(0, buffer0012);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    buffer0010.destroy()
    render_pass_encoder2031.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    command_encoder004.clearBuffer(buffer002);
    query102.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2021.setStencilReference(1);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    command_encoder001.clearBuffer(buffer009);
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    texture005.destroy();
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer0012,
        0
    )
    
    
    command_encoder203.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    command_encoder002.copyBufferToBuffer(
        buffer008,
        0,
        buffer003,
        0,
        400
    );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device30.destroy();
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer0011,
        0
    )
    render_pass_encoder2031.setStencilReference(1);
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.queue.writeBuffer(buffer0012, 0, array0, 0, array0.length);
    
    command_encoder202.clearBuffer(buffer208);
    
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    render_bundle_encoder200.popDebugGroup();
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture005
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    buffer208.destroy()
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2021.setPipeline(render_pipeline203);
    
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer2010,
        0
    )
    query007.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.insertDebugMarker("mymarker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer0011,
        0
    )
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query008,
        0,
        32,
        buffer0010,
        0
    )
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder200.drawIndirect(buffer2011, 0);
    buffer104.destroy()
    
    query006.destroy()
    query205.destroy()
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group204);
    command_encoder005.insertDebugMarker("mymarker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder005.copyBufferToBuffer(
        buffer0013,
        0,
        buffer002,
        0,
        400
    );
    render_pass_encoder2040.setPipeline(render_pipeline200);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0016, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0016, 0);
    render_pass_encoder2021.setVertexBuffer(0, buffer2010);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2031.setPipeline(render_pipeline205);
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group205);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2030.setVertexBuffer(0, buffer2011);
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndirect(buffer204, 0);
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group005);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.draw(3);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group206);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2031.setVertexBuffer(0, buffer209);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
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
    render_pass_encoder2040.setVertexBuffer(0, buffer202);
    device20.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2040.end();
    command_encoder000.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.end();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
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
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2021.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder0020.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2040.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder2000.end();
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0020.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2031.end();
    render_pass_encoder2031.setIndexBuffer(buffer2019, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer203, ]);
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
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    compute_pass_encoder2000.popDebugGroup()
    command_encoder200.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2030.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    device20.queue.submit([command_buffer202, ]);
    const command_buffer100 = command_encoder100.finish();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0023, 0);
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2040.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer208, 0);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer203, 0);
    device10.queue.submit([]);
    render_pass_encoder2030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0024, 0);
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder2040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
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
    render_pass_encoder2030.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2021.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2012, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    device50.queue.submit([]);
    device00.queue.submit([]);
    compute_pass_encoder0000.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2020.end();
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
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
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    device30.queue.submit([]);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2021.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
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
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.draw(3);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2040.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder2040.drawIndirect(buffer207, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2031.drawIndexed(3);
    device50.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder2031.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2021, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer005, ]);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer002, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2040.drawIndirect(buffer202, 0);
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2040.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer203, ]);
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    device50.queue.submit([]);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2031.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2020, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    compute_pass_encoder0000.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0012);
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2012, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2014, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndexed(3);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2011, 0);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2020.popDebugGroup();
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    device20.queue.submit([]);
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2022, 0);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2031.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2031.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2024, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2031.end();
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2030.draw(3);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
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
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0048, 0);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    compute_pass_encoder2000.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.draw(3);
    device00.queue.submit([command_buffer002, ]);
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder2020.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.drawIndirect(buffer2020, 0);
    render_pass_encoder2031.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
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
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    render_pass_encoder2040.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.end();
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder0010.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder0020.end();
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2031.end();
    render_pass_encoder2040.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
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
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer200, command_buffer203, command_buffer204, ]);
    device10.queue.submit([command_buffer101, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0055, 0);
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
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
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
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0018);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2024, 0);
    render_pass_encoder2021.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer209, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder2020.end();
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
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2040.popDebugGroup();
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
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2029, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2040.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2028, "uint16");
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0000.end();
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
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
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2031.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
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
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.popDebugGroup()
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
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2024, "uint16");
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0022);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.end();
}