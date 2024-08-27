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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const array0 = new Float32Array([1.0, -0.25, 1.0, 0.0, 1.0, -0.5, -0.75, 0.25, -1.0, -1.0, -1.0, 0.0, -1.0, -0.25, 0.0, 0.5, 1.0, -0.5, 1.0, 0.5, 0.75, -0.75, 0.75, 0.75, 1.0, 0.75, 0.5, -0.5, 0.5, -1.0, 0.5, -0.75, 0.0, -0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, -0.75, -0.75, 0.0, 0.5, 0.25, -0.5, -1.0, 0.5, -0.25, 0.0, 0.5, 0.75, 0.75, -0.5, 0.5, 0.25, -0.25, 0.0, -0.5, -0.25, 0.75, -1.0, -0.75, -0.25, 0.75, -1.0, 0.0, 0.0, 0.0, 0.25, -0.75, -0.25, 0.75, -0.5, 0.0, -1.0, 0.5, -0.75, 0.0, 0.0, 1.0, 0.75, 0.25, 0.0, -0.25, 0.0, -0.75, -0.75, -0.25, 0.25, 0.0, 0.75, -0.75, 1.0, 0.25, -0.25, 0.0, 1.0, 0.0, -0.25, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([]);
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer001.destroy()
    
    device00.destroy();
    
    const array1 = new Float32Array([-0.25, -0.5, -0.25, -0.25, 1.0, -0.75, -0.75, -0.25, -0.5, 0.75, 0.5, 0.25, 0.75, 0.75, 1.0, 0.75, 0.75, 0.0, 0.25, -0.5, -0.25, 0.5, 0.25, 0.75, 1.0, 0.75, 1.0, 0.75, -0.75, -0.25, 0.75, -0.75, -0.75, 1.0, 0.75, -1.0, 0.5, 0.75, -0.25, 0.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.0, -0.75, 0.75, 0.25, -1.0, -1.0, 0.0, 1.0, 0.0, -0.25, -0.75, -0.25, -0.5, 0.5, -0.75, -0.75, 0.0, -1.0, -0.75, 0.5, -0.75, -0.75, -1.0, 0.0, 0.0, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, -0.25, 1.0, -0.5, -0.5, 1.0, -0.25, 0.25, -0.75, 0.75, 0.0, 1.0, -0.25, -0.75, -0.75, -0.25, 0.5, 0.25, 1.0, 1.0, 0.5, -0.5, -0.75, -0.25, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    texture100.destroy();
    
    
    command_encoder200.insertDebugMarker("mymarker");
    texture102.destroy();
    device20.queue.submit([]);
    device10.pushErrorScope("out-of-memory");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-0.75, -0.25, -1.0, 0.0, 0.5, 0.0, 0.75, -1.0, -0.5, -0.75, 0.5, 1.0, 0.5, 1.0, 0.5, -0.5, -0.5, -0.5, -0.5, -0.75, 0.0, -0.25, 0.0, -0.5, 1.0, -0.5, -0.75, -0.5, 1.0, 0.25, 0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 1.0, 0.5, -0.5, 0.75, 0.75, -0.75, -0.5, -1.0, 0.25, 0.5, 0.5, -0.5, 1.0, 0.75, -1.0, 1.0, 0.0, 0.25, 1.0, -0.75, -0.25, 0.75, -0.25, -0.25, -1.0, 0.75, -1.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.0, -1.0, -0.75, 0.75, 1.0, 0.25, 0.25, -0.25, 0.25, -0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.5, 0.5, 0.5, 0.5, 0.0, 0.5, 1.0, 0.75, 1.0, 0.75, -0.5, -1.0, 0.75, -1.0, 0.0, 0.0, ]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    device40.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.clearBuffer(buffer101);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    buffer101.destroy()
    
    texture101.destroy();
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder400.insertDebugMarker("mymarker");
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    texture400.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query400.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.clearBuffer(buffer102);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.insertDebugMarker("marker")
    texture103.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    query400.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_buffer101 = command_encoder101.finish();
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
    render_pass_encoder2000.pushDebugGroup("group_marker");
    buffer103.destroy()
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer400.destroy()
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2000.popDebugGroup();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query400.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture200.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer202.destroy()
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder1001.setStencilReference(1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    command_encoder201.insertDebugMarker("mymarker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    buffer102.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer104.destroy()
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
    render_pass_encoder1000.executeBundles([])
    
    
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    texture500.destroy();
    buffer401.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture103.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device20.pushErrorScope("validation");
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device50.pushErrorScope("internal");
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer205.destroy()
    texture400.destroy();
    
    const array3 = new Float32Array([1.0, -0.25, 0.0, -1.0, -0.5, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, 1.0, 0.0, -0.25, 1.0, 0.75, 0.5, 0.25, 0.0, 1.0, -0.75, -0.75, 0.25, 0.25, 0.25, -0.5, -0.5, 0.0, -0.5, 0.0, 1.0, 0.5, -0.25, -0.5, 0.5, -0.5, -0.5, -1.0, 0.5, -1.0, 0.25, 0.75, 0.75, -0.5, 0.5, -0.5, -0.25, -0.5, 0.75, 0.75, -0.25, 0.75, 0.25, 0.25, 0.5, 1.0, 0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 0.25, 1.0, -0.25, 0.5, 0.0, 1.0, 1.0, -0.75, 0.5, -0.75, -0.75, 0.0, -1.0, 0.0, 0.5, -1.0, 0.5, -0.5, 0.0, -1.0, -1.0, -0.5, 0.5, -0.5, -0.75, 0.0, 1.0, -0.25, -0.25, -0.5, -0.25, 0.25, 0.5, -1.0, 1.0, -1.0, -0.5, -0.75, ]);
    
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1001.executeBundles([])
    device10.pushErrorScope("internal");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query501.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
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
    command_encoder500.clearBuffer(buffer500);
    command_encoder500.pushDebugGroup("mygroupmarker")
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    command_encoder500.insertDebugMarker("mymarker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    device10.queue.submit([command_buffer101, ]);
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
    command_encoder203.insertDebugMarker("mymarker");
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1001.popDebugGroup();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query101.destroy()
    
    device10.queue.submit([]);
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_pass_encoder4000.setPipeline(render_pipeline401);
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    query401.destroy()
    
    const array4 = new Float32Array([0.75, -1.0, -0.5, 0.25, -0.25, -1.0, 0.25, 0.75, -0.25, -0.25, 0.25, -0.75, 0.25, 0.75, 0.25, -1.0, 1.0, -0.25, 0.25, 0.75, 1.0, 0.5, 0.0, 0.75, 0.0, -1.0, 0.5, -1.0, -0.75, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, -0.25, 0.25, -0.25, -0.75, 0.5, -0.75, 0.25, -0.5, 1.0, 0.25, -1.0, -0.5, 1.0, 0.75, 0.5, 0.25, -0.25, -1.0, -0.25, 0.75, 0.0, -0.25, 1.0, 1.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.25, 0.5, -1.0, 0.5, -0.75, 0.25, -0.25, 0.5, 1.0, 1.0, -1.0, -1.0, -0.75, 1.0, -0.25, -0.75, -0.25, 1.0, 1.0, -0.25, -1.0, -0.5, -1.0, 0.0, -1.0, 0.0, -1.0, -0.25, -0.5, 1.0, 0.25, -0.25, -0.25, 0.5, -0.75, 0.25, ]);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder200.popDebugGroup();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    texture202.destroy();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1020.popDebugGroup();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder4000.setStencilReference(1);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    
    const texture_view4023 = texture402.createView({ label: "texture_view4023" });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    texture201.destroy();
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder203.clearBuffer(buffer205);
    
    render_pass_encoder1021.setStencilReference(1);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
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
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_bundle_encoder102.insertDebugMarker("marker");
    texture402.destroy();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    texture403.destroy();
    
    render_pass_encoder1001.executeBundles([])
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4023,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4001.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    texture401.destroy();
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    texture104.destroy();
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder202.setPipeline(render_pipeline202);
    
    device60.pushErrorScope("out-of-memory");
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4021,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4001.setPipeline(render_pipeline401);
    render_pass_encoder4000.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    
    render_bundle_encoder200.popDebugGroup();
    texture102.destroy();
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_pass_encoder1001.setStencilReference(1);
    
    render_pass_encoder1021.setPipeline(render_pipeline100);
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4010.setPipeline(render_pipeline400);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
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
    render_pass_encoder2000.setStencilReference(1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    
    query401.destroy()
    render_pass_encoder4000.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1001.popDebugGroup();
    
    render_bundle_encoder101.setPipeline(render_pipeline102);
    render_pass_encoder1001.executeBundles([])
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4001.setBindGroup(0, bind_group400);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1000.executeBundles([render_bundle_encoder101, ])
    
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder4001.setStencilReference(1);
    render_pass_encoder4000.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.setPipeline(render_pipeline100);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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

    render_pass_encoder1001.setBindGroup(0, bind_group101);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    query100.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    buffer403.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture204 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder2000.setStencilReference(1);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer109.destroy()
    render_pass_encoder4001.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder1001.setStencilReference(1);
    query400.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer200.destroy()
    query101.destroy()
    query400.destroy()
    
    buffer501.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query101.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query502.destroy()
    
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder102.setPipeline(render_pipeline102);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
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
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setPipeline(render_pipeline102);
    buffer502.destroy()
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    query402.destroy()
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    texture203.destroy();
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder401.copyTextureToTexture(
        {
            texture: texture404
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeTexture({ texture: texture404 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4022,
            },
        ],
        occlusionQuerySet: query402
    });
    render_pass_encoder2020.setPipeline(render_pipeline203);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    buffer202.destroy()
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2030.setPipeline(render_pipeline202);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder4001.setStencilReference(1);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    render_pass_encoder4011.setPipeline(render_pipeline403);
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline403.getBindGroupLayout(0),
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

    render_pass_encoder4011.setBindGroup(0, bind_group401);
    render_pass_encoder4000.popDebugGroup();
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group201);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    render_pass_encoder2030.setVertexBuffer(0, buffer201);
    render_pass_encoder1030.setVertexBuffer(0, buffer105);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder1000.setVertexBuffer(0, buffer108);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    compute_pass_encoder2030.dispatchWorkgroups(100);
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group402);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1001.setVertexBuffer(0, buffer103);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    render_pass_encoder1001.draw(3);
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

    render_pass_encoder1021.setBindGroup(0, bind_group104);
    render_pass_encoder2000.setVertexBuffer(0, buffer2012);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    render_pass_encoder4000.setVertexBuffer(0, buffer404);
    render_pass_encoder1021.setVertexBuffer(0, buffer104);
    render_pass_encoder2030.draw(3);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2017, 0);
    render_pass_encoder4001.setVertexBuffer(0, buffer406);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder4010.setVertexBuffer(0, buffer408);
    compute_pass_encoder2000.end();
    render_pass_encoder4001.popDebugGroup();
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group206);
    device40.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4010.draw(3);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder4001.draw(3);
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4011.setVertexBuffer(0, buffer401);
    compute_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    compute_pass_encoder2010.end();
    compute_pass_encoder2030.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2020.setVertexBuffer(0, buffer2014);
    render_pass_encoder4011.drawIndirect(buffer406, 0);
    const command_buffer400 = command_encoder400.finish();
    device30.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder2010.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    render_pass_encoder4001.draw(3);
    render_pass_encoder4001.drawIndirect(buffer409, 0);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    device40.queue.submit([command_buffer400, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2020, 0);
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group207);
    device20.queue.submit([]);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder4010.drawIndirect(buffer408, 0);
    render_pass_encoder4010.draw(3);
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
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2030.dispatchWorkgroups(100);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group209);
    compute_pass_encoder2020.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer403, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2010);
    render_pass_encoder2030.drawIndirect(buffer2021, 0);
    device50.queue.submit([command_buffer501, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2030, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder1021.popDebugGroup();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2032, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2033, 0);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder4010.drawIndirect(buffer405, 0);
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer102, ]);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    device40.queue.submit([command_buffer401, ]);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
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
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2012);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    render_pass_encoder4001.drawIndirect(buffer408, 0);
    render_pass_encoder2000.drawIndirect(buffer2013, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2038, 0);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device40.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    device60.queue.submit([]);
    render_pass_encoder4001.drawIndirect(buffer403, 0);
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
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2013);
    render_pass_encoder4001.drawIndirect(buffer403, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    device10.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder2030.drawIndirect(buffer2034, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2020.popDebugGroup()
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
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2014);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder4011.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4000.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2025, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2043, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2030.end();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder4011.draw(3);
    compute_pass_encoder2030.end();
    compute_pass_encoder2010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder4010.popDebugGroup();
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
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
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    render_pass_encoder1001.draw(3);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2041, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2046, 0);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2000.end();
    device30.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4001.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
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
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
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
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2017);
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
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder1020.draw(3);
    render_pass_encoder4001.drawIndirect(buffer401, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder4001.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder2020.end();
    device50.queue.submit([]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1020.draw(3);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1020.draw(3);
    device40.queue.submit([]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2020.drawIndirect(buffer2047, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device60.queue.submit([]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndirect(buffer2018, 0);
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
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
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2019);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder2030.end();
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
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
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2020);
    render_pass_encoder4000.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    device00.queue.submit([]);
    render_pass_encoder4011.drawIndirect(buffer404, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder4011.drawIndirect(buffer407, 0);
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
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer408, 0);
    render_pass_encoder4000.draw(3);
    device60.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2047, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    device10.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    compute_pass_encoder2020.end();
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder4001.drawIndirect(buffer403, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder2010.end();
    device10.queue.submit([]);
    compute_pass_encoder2020.end();
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
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
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2022);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2063, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    render_pass_encoder2000.drawIndirect(buffer2059, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.drawIndirect(buffer2055, 0);
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    device30.queue.submit([]);
    render_pass_encoder4000.draw(3);
    device20.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder4000.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2064, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2064, 0);
    compute_pass_encoder2020.end();
    device40.queue.submit([]);
    compute_pass_encoder2000.end();
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
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
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2067, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2067, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    compute_pass_encoder2030.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2068, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2068, 0);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2030.draw(3);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder2030.draw(3);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    device40.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4011.drawIndirect(buffer402, 0);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4010.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    device60.queue.submit([]);
    compute_pass_encoder2030.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder4010.drawIndirect(buffer405, 0);
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4011.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2069, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2069, 0);
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2024);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1020.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    compute_pass_encoder2010.popDebugGroup()
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2072, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2072, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer101, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2073, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2073, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder2030.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2074, 0);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    device60.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder2030.drawIndirect(buffer2060, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2045, 0);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder2020.drawIndirect(buffer2069, 0);
    render_pass_encoder4010.drawIndirect(buffer401, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2072, 0);
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2076,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    compute_pass_encoder2000.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4000.draw(3);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    device30.queue.submit([]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2077, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2077, 0);
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder4011.popDebugGroup();
    device50.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2078, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2078, 0);
    render_pass_encoder4001.drawIndirect(buffer405, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.drawIndirect(buffer2068, 0);
    compute_pass_encoder5010.popDebugGroup()
    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2080,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder1021.draw(3);
    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2082,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2027);
    device20.queue.submit([command_buffer203, ]);
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2028);
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder4011.draw(3);
    device30.queue.submit([]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2073, 0);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4000.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    render_pass_encoder2030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2030.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2072, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2029);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    device50.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    device20.queue.submit([]);
    compute_pass_encoder2030.end();
    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2088,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2030);
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    compute_pass_encoder2030.end();
    device30.queue.submit([]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2078, 0);
    render_pass_encoder2030.drawIndirect(buffer2064, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer2069, 0);
    render_pass_encoder2000.drawIndirect(buffer2057, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder4011.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder4001.drawIndirect(buffer402, 0);
    render_pass_encoder2000.drawIndirect(buffer2044, 0);
    render_pass_encoder4011.draw(3);
    device30.queue.submit([]);
    device60.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder4011.draw(3);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder4010.drawIndirect(buffer404, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2030.drawIndirect(buffer2064, 0);
    render_pass_encoder2000.drawIndirect(buffer2068, 0);
    render_pass_encoder2030.drawIndirect(buffer2085, 0);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder4010.drawIndirect(buffer407, 0);
    render_pass_encoder4010.draw(3);
    render_pass_encoder1000.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2089, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2089, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4000.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder1020.draw(3);
    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2091,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2031);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer2073, 0);
    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2093,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2032);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndirect(buffer2077, 0);
    render_pass_encoder2020.drawIndirect(buffer2051, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2010.end();
    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2095,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2033);
    compute_pass_encoder4000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4011.drawIndirect(buffer409, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1001.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    device50.queue.submit([]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2096, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2096, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer403, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2078, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2097, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2097, 0);
    render_pass_encoder2030.drawIndirect(buffer2096, 0);
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    render_pass_encoder2030.drawIndirect(buffer2089, 0);
    render_pass_encoder2020.drawIndirect(buffer2073, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder4010.drawIndirect(buffer406, 0);
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2097, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2099,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2034);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1001.draw(3);
    render_pass_encoder4011.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder4001.drawIndirect(buffer403, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20101,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2035);
    render_pass_encoder4000.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2000.drawIndirect(buffer2093, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2038, 0);
    device50.queue.submit([]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder4011.draw(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    render_pass_encoder2000.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder2030.drawIndirect(buffer2089, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2074, 0);
    device50.queue.submit([command_buffer501, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2089, 0);
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4001.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2020.drawIndirect(buffer2069, 0);
    render_pass_encoder4010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4011.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20102, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20102, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder4010.draw(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2098, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder4000.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder4010.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2088, 0);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder2030.drawIndirect(buffer2096, 0);
    render_pass_encoder4001.draw(3);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder4010.popDebugGroup()
    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20104,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2036);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder4001.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2096, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1001.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20105, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20105, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1021.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer102, ]);
    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20107,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2037);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20109,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2038);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1021.draw(3);
    device60.queue.submit([]);
    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20111,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2039);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2099, 0);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2096, 0);
    render_pass_encoder1000.draw(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20112, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20112, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20113, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20113, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20114, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20114, 0);
    render_pass_encoder2000.drawIndirect(buffer2085, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4011.draw(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20115, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20115, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder4010.drawIndirect(buffer401, 0);
    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20117,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2040);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2030.end();
    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20119,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder4000.draw(3);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.end();
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1030.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20121,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2042);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    compute_pass_encoder2010.end();
    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20123,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2043);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device60.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2078, 0);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4011.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2091, 0);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20124, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20124, 0);
    device10.queue.submit([]);
    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20126,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2044);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2020.drawIndirect(buffer20124, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndirect(buffer2059, 0);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder4001.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2066, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.draw(3);
    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20128,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2045);
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([]);
    device30.queue.submit([]);
    compute_pass_encoder2010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4000.drawIndirect(buffer409, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder2020.drawIndirect(buffer20105, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder1021.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20129, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20129, 0);
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    render_pass_encoder2000.drawIndirect(buffer20113, 0);
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20131,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2046);
    render_pass_encoder2030.drawIndirect(buffer2072, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20133,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2047);
    render_pass_encoder2000.drawIndirect(buffer2069, 0);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20134, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20134, 0);
    render_pass_encoder2030.drawIndirect(buffer20104, 0);
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    render_pass_encoder2000.drawIndirect(buffer20126, 0);
    render_pass_encoder2030.popDebugGroup();
    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20136 = device20.createBuffer({
        label: "buffer20136",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20135,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20136,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2048);
    render_pass_encoder1030.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2089, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder2030.drawIndirect(buffer20115, 0);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    device20.queue.submit([]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2081, 0);
    const buffer20137 = device20.createBuffer({
        label: "buffer20137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20138,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2049);
    device10.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer20114, 0);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder4000.popDebugGroup();
    device30.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2077, 0);
    render_pass_encoder2000.drawIndirect(buffer20101, 0);
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2077, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.popDebugGroup();
    const buffer20139 = device20.createBuffer({
        label: "buffer20139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20140 = device20.createBuffer({
        label: "buffer20140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2050 = device20.createBindGroup({
        label: "bind_group2050",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20140,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2050);
    render_pass_encoder2000.drawIndirect(buffer2073, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2000.drawIndirect(buffer2055, 0);
    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2051 = device20.createBindGroup({
        label: "bind_group2051",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20142,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2051);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer20113, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4001.draw(3);
    render_pass_encoder4001.drawIndirect(buffer400, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder4010.draw(3);
    render_pass_encoder2030.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer20102, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer20134, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder4001.draw(3);
    render_pass_encoder4011.drawIndirect(buffer403, 0);
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder2000.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2063, 0);
    render_pass_encoder2000.drawIndirect(buffer20114, 0);
    render_pass_encoder4011.draw(3);
    render_pass_encoder2000.popDebugGroup();
    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2052 = device20.createBindGroup({
        label: "bind_group2052",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20144,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2052);
    render_pass_encoder2020.drawIndirect(buffer2068, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1020.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer401, 0);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer101, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20145, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20145, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.draw(3);
    render_pass_encoder4010.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20146, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20146, 0);
    device10.queue.submit([]);
    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2053 = device20.createBindGroup({
        label: "bind_group2053",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20148,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2053);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder4001.drawIndirect(buffer407, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4010.draw(3);
    compute_pass_encoder2020.end();
    device60.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer20132, 0);
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    render_pass_encoder4011.drawIndirect(buffer409, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20102, 0);
    device60.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20149, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20149, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    render_pass_encoder2000.drawIndirect(buffer2092, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer20119, 0);
    render_pass_encoder2020.drawIndirect(buffer2078, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    const buffer20150 = device20.createBuffer({
        label: "buffer20150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20151 = device20.createBuffer({
        label: "buffer20151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20151,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2054);
    compute_pass_encoder2000.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.draw(3);
    const buffer20152 = device20.createBuffer({
        label: "buffer20152",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20153 = device20.createBuffer({
        label: "buffer20153",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20152,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20153,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2055);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndirect(buffer2097, 0);
    device40.queue.submit([]);
    compute_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer20124, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4000.draw(3);
    const buffer20154 = device20.createBuffer({
        label: "buffer20154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20155 = device20.createBuffer({
        label: "buffer20155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2056 = device20.createBindGroup({
        label: "bind_group2056",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20155,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2056);
    render_pass_encoder2030.drawIndirect(buffer2067, 0);
    render_pass_encoder2000.drawIndirect(buffer20112, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2064, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4010.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2089, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer20156 = device20.createBuffer({
        label: "buffer20156",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20157 = device20.createBuffer({
        label: "buffer20157",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2057 = device20.createBindGroup({
        label: "bind_group2057",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20156,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20157,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2057);
    device60.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1000.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    const buffer20158 = device20.createBuffer({
        label: "buffer20158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20159 = device20.createBuffer({
        label: "buffer20159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2058 = device20.createBindGroup({
        label: "bind_group2058",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20159,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2058);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder2000.drawIndirect(buffer2072, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer20160 = device20.createBuffer({
        label: "buffer20160",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20161 = device20.createBuffer({
        label: "buffer20161",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2059 = device20.createBindGroup({
        label: "bind_group2059",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20160,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20161,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2059);
    render_pass_encoder2020.drawIndirect(buffer20113, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer20124, 0);
    render_pass_encoder2030.drawIndirect(buffer20146, 0);
    render_pass_encoder2030.drawIndirect(buffer2070, 0);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder4011.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20162 = device20.createBuffer({
        label: "buffer20162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20162, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20162, 0);
    render_pass_encoder2020.drawIndirect(buffer20136, 0);
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4011.draw(3);
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder4000.draw(3);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder2030.drawIndirect(buffer20115, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    const buffer20163 = device20.createBuffer({
        label: "buffer20163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20164 = device20.createBuffer({
        label: "buffer20164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2060 = device20.createBindGroup({
        label: "bind_group2060",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20164,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2060);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2000.drawIndirect(buffer2074, 0);
    const buffer20165 = device20.createBuffer({
        label: "buffer20165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20166 = device20.createBuffer({
        label: "buffer20166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2061 = device20.createBindGroup({
        label: "bind_group2061",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20166,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2061);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    compute_pass_encoder2030.end();
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer20150, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2097, 0);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder2020.drawIndirect(buffer2078, 0);
    render_pass_encoder2020.drawIndirect(buffer20134, 0);
    render_pass_encoder2030.drawIndirect(buffer2068, 0);
    render_pass_encoder2020.drawIndirect(buffer20146, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer20137, 0);
    compute_pass_encoder5010.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder4000.drawIndirect(buffer407, 0);
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndirect(buffer2073, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer20107, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer20134, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder2000.end();
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2010.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    device10.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2073, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder1030.draw(3);
    render_pass_encoder4011.draw(3);
    const buffer20167 = device20.createBuffer({
        label: "buffer20167",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20168 = device20.createBuffer({
        label: "buffer20168",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2062 = device20.createBindGroup({
        label: "bind_group2062",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20167,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20168,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2062);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    device50.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer405, 0);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4010.draw(3);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndirect(buffer20113, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer20124, 0);
    render_pass_encoder2020.drawIndirect(buffer20114, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2000.end();
    device60.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4000.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20169 = device20.createBuffer({
        label: "buffer20169",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20169, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20169, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20170 = device20.createBuffer({
        label: "buffer20170",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20170, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20170, 0);
    render_pass_encoder1021.draw(3);
    const buffer20171 = device20.createBuffer({
        label: "buffer20171",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20172 = device20.createBuffer({
        label: "buffer20172",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2063 = device20.createBindGroup({
        label: "bind_group2063",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20171,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20172,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2063);
    const buffer20173 = device20.createBuffer({
        label: "buffer20173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20174 = device20.createBuffer({
        label: "buffer20174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2064 = device20.createBindGroup({
        label: "bind_group2064",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20174,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2064);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder2000.drawIndirect(buffer20114, 0);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer20146, 0);
    render_pass_encoder2030.drawIndirect(buffer2072, 0);
    const buffer20175 = device20.createBuffer({
        label: "buffer20175",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20176 = device20.createBuffer({
        label: "buffer20176",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2065 = device20.createBindGroup({
        label: "bind_group2065",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20175,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20176,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2065);
    render_pass_encoder4001.drawIndirect(buffer409, 0);
    render_pass_encoder1021.popDebugGroup();
    const buffer20177 = device20.createBuffer({
        label: "buffer20177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20178 = device20.createBuffer({
        label: "buffer20178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2066 = device20.createBindGroup({
        label: "bind_group2066",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20178,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2066);
    const buffer20179 = device20.createBuffer({
        label: "buffer20179",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20180 = device20.createBuffer({
        label: "buffer20180",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2067 = device20.createBindGroup({
        label: "bind_group2067",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20179,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20180,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2067);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder4000.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1020.draw(3);
    device20.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    const buffer20181 = device20.createBuffer({
        label: "buffer20181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20182 = device20.createBuffer({
        label: "buffer20182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2068 = device20.createBindGroup({
        label: "bind_group2068",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20182,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2068);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    device10.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer20112, 0);
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    compute_pass_encoder5000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    const buffer20183 = device20.createBuffer({
        label: "buffer20183",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20184 = device20.createBuffer({
        label: "buffer20184",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2069 = device20.createBindGroup({
        label: "bind_group2069",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20183,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20184,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2069);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20124, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder4000.draw(3);
    compute_pass_encoder2010.end();
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    render_pass_encoder2030.drawIndirect(buffer20135, 0);
    render_pass_encoder1020.popDebugGroup();
    const buffer20185 = device20.createBuffer({
        label: "buffer20185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20186 = device20.createBuffer({
        label: "buffer20186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2070 = device20.createBindGroup({
        label: "bind_group2070",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20186,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2070);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder2020.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1001.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer2096, 0);
    const buffer20187 = device20.createBuffer({
        label: "buffer20187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20188 = device20.createBuffer({
        label: "buffer20188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2071 = device20.createBindGroup({
        label: "bind_group2071",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20188,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2071);
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20124, 0);
    render_pass_encoder4010.drawIndirect(buffer406, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2078, 0);
    render_pass_encoder2020.drawIndirect(buffer20114, 0);
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    render_pass_encoder4011.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.drawIndirect(buffer20169, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2064, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder2030.end();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4000.draw(3);
    render_pass_encoder4000.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder2030.drawIndirect(buffer20149, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20189 = device20.createBuffer({
        label: "buffer20189",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20189, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20189, 0);
    const buffer20190 = device20.createBuffer({
        label: "buffer20190",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20191 = device20.createBuffer({
        label: "buffer20191",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2072 = device20.createBindGroup({
        label: "bind_group2072",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20190,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20191,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2072);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    render_pass_encoder1030.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder5010.popDebugGroup()
    const buffer20192 = device20.createBuffer({
        label: "buffer20192",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20193 = device20.createBuffer({
        label: "buffer20193",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2073 = device20.createBindGroup({
        label: "bind_group2073",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20192,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20193,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2073);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder2000.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2030.drawIndirect(buffer20146, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2020.popDebugGroup()
    const buffer20194 = device20.createBuffer({
        label: "buffer20194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20195 = device20.createBuffer({
        label: "buffer20195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2074 = device20.createBindGroup({
        label: "bind_group2074",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20195,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2074);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer20149, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4011.drawIndirect(buffer402, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20124, 0);
    render_pass_encoder4011.drawIndirect(buffer400, 0);
    device30.queue.submit([]);
    device30.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1001.draw(3);
    device30.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4001.draw(3);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.drawIndirect(buffer20138, 0);
    render_pass_encoder2000.drawIndirect(buffer20146, 0);
    device60.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    render_pass_encoder2000.drawIndirect(buffer20145, 0);
    render_pass_encoder2030.drawIndirect(buffer20184, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder2020.drawIndirect(buffer20170, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4010.draw(3);
    render_pass_encoder4010.draw(3);
    device40.queue.submit([]);
    device60.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2097, 0);
    render_pass_encoder2000.drawIndirect(buffer20146, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    const buffer20196 = device20.createBuffer({
        label: "buffer20196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20197 = device20.createBuffer({
        label: "buffer20197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2075 = device20.createBindGroup({
        label: "bind_group2075",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20197,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2075);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder2020.drawIndirect(buffer2069, 0);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder4010.popDebugGroup()
    const buffer20198 = device20.createBuffer({
        label: "buffer20198",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20199 = device20.createBuffer({
        label: "buffer20199",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2076 = device20.createBindGroup({
        label: "bind_group2076",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20198,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20199,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2076);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder4010.drawIndirect(buffer405, 0);
    render_pass_encoder4001.draw(3);
    render_pass_encoder2030.drawIndirect(buffer20189, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer20169, 0);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer100, ]);
    const buffer20200 = device20.createBuffer({
        label: "buffer20200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20201 = device20.createBuffer({
        label: "buffer20201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2077 = device20.createBindGroup({
        label: "bind_group2077",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20201,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2077);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder1021.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder4010.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20202 = device20.createBuffer({
        label: "buffer20202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20202, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20202, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.drawIndirect(buffer2089, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2000.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder4011.draw(3);
    render_pass_encoder4010.drawIndirect(buffer402, 0);
    compute_pass_encoder2000.end();
    device50.queue.submit([]);
    render_pass_encoder4010.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2000.drawIndirect(buffer20113, 0);
    render_pass_encoder2000.drawIndirect(buffer2094, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer20121, 0);
    compute_pass_encoder2000.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20203 = device20.createBuffer({
        label: "buffer20203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20203, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20203, 0);
    device20.queue.submit([command_buffer201, ]);
    const buffer20204 = device20.createBuffer({
        label: "buffer20204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20205 = device20.createBuffer({
        label: "buffer20205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2078 = device20.createBindGroup({
        label: "bind_group2078",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20205,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2078);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder2030.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1020.draw(3);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer20104, 0);
    render_pass_encoder2000.drawIndirect(buffer20202, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.drawIndirect(buffer20203, 0);
    render_pass_encoder2020.drawIndirect(buffer2065, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1011, 0);
    render_pass_encoder4011.popDebugGroup();
    device10.queue.submit([]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20206 = device20.createBuffer({
        label: "buffer20206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20206, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20206, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.drawIndirect(buffer207, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer20118, 0);
    render_pass_encoder2000.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder2020.drawIndirect(buffer20134, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer2072, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2074, 0);
    render_pass_encoder2000.drawIndirect(buffer2081, 0);
    compute_pass_encoder2030.end();
    compute_pass_encoder2030.end();
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    render_pass_encoder2030.drawIndirect(buffer20169, 0);
    compute_pass_encoder2010.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20207 = device20.createBuffer({
        label: "buffer20207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20207, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20207, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2000.drawIndirect(buffer2089, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4001.drawIndirect(buffer403, 0);
    device10.queue.submit([]);
    device10.queue.submit([]);
    const buffer20208 = device20.createBuffer({
        label: "buffer20208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20209 = device20.createBuffer({
        label: "buffer20209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2079 = device20.createBindGroup({
        label: "bind_group2079",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20209,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2079);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder4011.drawIndirect(buffer406, 0);
    render_pass_encoder4011.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer20207, 0);
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer20209, 0);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    render_pass_encoder2030.drawIndirect(buffer20129, 0);
    render_pass_encoder2030.popDebugGroup();
    const buffer20210 = device20.createBuffer({
        label: "buffer20210",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20211 = device20.createBuffer({
        label: "buffer20211",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2080 = device20.createBindGroup({
        label: "bind_group2080",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20210,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20211,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2080);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndirect(buffer20202, 0);
    device60.queue.submit([]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    render_pass_encoder2000.drawIndirect(buffer20207, 0);
    render_pass_encoder4011.drawIndirect(buffer409, 0);
    render_pass_encoder2000.drawIndirect(buffer20141, 0);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer20129, 0);
    render_pass_encoder2000.drawIndirect(buffer20139, 0);
    render_pass_encoder2000.popDebugGroup();
    device60.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4000.drawIndirect(buffer401, 0);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder2020.drawIndirect(buffer20170, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4011.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder4010.drawIndirect(buffer404, 0);
    render_pass_encoder2000.drawIndirect(buffer20202, 0);
    render_pass_encoder2000.drawIndirect(buffer20114, 0);
    compute_pass_encoder5000.popDebugGroup()
    const buffer20212 = device20.createBuffer({
        label: "buffer20212",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20213 = device20.createBuffer({
        label: "buffer20213",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2081 = device20.createBindGroup({
        label: "bind_group2081",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20212,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20213,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2081);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder4000.draw(3);
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder4011.drawIndirect(buffer406, 0);
    render_pass_encoder2020.drawIndirect(buffer20154, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20214 = device20.createBuffer({
        label: "buffer20214",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20214, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20214, 0);
    render_pass_encoder4000.popDebugGroup();
    const buffer20215 = device20.createBuffer({
        label: "buffer20215",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20216 = device20.createBuffer({
        label: "buffer20216",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2082 = device20.createBindGroup({
        label: "bind_group2082",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20215,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20216,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2082);
    const buffer20217 = device20.createBuffer({
        label: "buffer20217",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20218 = device20.createBuffer({
        label: "buffer20218",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2083 = device20.createBindGroup({
        label: "bind_group2083",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20217,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20218,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2083);
    const buffer20219 = device20.createBuffer({
        label: "buffer20219",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20220 = device20.createBuffer({
        label: "buffer20220",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2084 = device20.createBindGroup({
        label: "bind_group2084",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20219,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20220,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2084);
    render_pass_encoder1021.draw(3);
    device10.queue.submit([]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    device60.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer20207, 0);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder2020.drawIndirect(buffer2046, 0);
    render_pass_encoder2000.drawIndirect(buffer2069, 0);
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20197, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20221 = device20.createBuffer({
        label: "buffer20221",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20221, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20221, 0);
    render_pass_encoder2020.drawIndirect(buffer2041, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndirect(buffer20169, 0);
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    const buffer20222 = device20.createBuffer({
        label: "buffer20222",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20223 = device20.createBuffer({
        label: "buffer20223",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2085 = device20.createBindGroup({
        label: "bind_group2085",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20222,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20223,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2085);
    device40.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer20134, 0);
    render_pass_encoder1030.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20224 = device20.createBuffer({
        label: "buffer20224",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20224, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20224, 0);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer20129, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder2030.popDebugGroup();
    const buffer20225 = device20.createBuffer({
        label: "buffer20225",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20226 = device20.createBuffer({
        label: "buffer20226",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2086 = device20.createBindGroup({
        label: "bind_group2086",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20225,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20226,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2086);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    render_pass_encoder2000.drawIndirect(buffer20149, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer20134, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2041, 0);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder2020.drawIndirect(buffer20134, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    const buffer20227 = device20.createBuffer({
        label: "buffer20227",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20228 = device20.createBuffer({
        label: "buffer20228",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2087 = device20.createBindGroup({
        label: "bind_group2087",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20227,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20228,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2087);
    render_pass_encoder4001.draw(3);
    render_pass_encoder1030.draw(3);
    device20.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer404, 0);
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4001.drawIndirect(buffer401, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2095, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.draw(3);
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2023, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer20205, 0);
    const buffer20229 = device20.createBuffer({
        label: "buffer20229",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20230 = device20.createBuffer({
        label: "buffer20230",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2088 = device20.createBindGroup({
        label: "bind_group2088",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20229,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20230,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2088);
    render_pass_encoder4001.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    device20.queue.submit([]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20231 = device20.createBuffer({
        label: "buffer20231",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20231, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20231, 0);
    render_pass_encoder1020.popDebugGroup();
    device60.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2030.drawIndirect(buffer20102, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const buffer20232 = device20.createBuffer({
        label: "buffer20232",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20233 = device20.createBuffer({
        label: "buffer20233",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2089 = device20.createBindGroup({
        label: "bind_group2089",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20232,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20233,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2089);
    render_pass_encoder4000.draw(3);
    render_pass_encoder2030.drawIndirect(buffer20221, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer402, 0);
    device30.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    const buffer20234 = device20.createBuffer({
        label: "buffer20234",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20235 = device20.createBuffer({
        label: "buffer20235",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2090 = device20.createBindGroup({
        label: "bind_group2090",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20234,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20235,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2090);
    compute_pass_encoder5000.popDebugGroup()
    const buffer20236 = device20.createBuffer({
        label: "buffer20236",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20237 = device20.createBuffer({
        label: "buffer20237",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2091 = device20.createBindGroup({
        label: "bind_group2091",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20236,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20237,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2091);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder2020.end();
    render_pass_encoder4001.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2030.drawIndirect(buffer20197, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20238 = device20.createBuffer({
        label: "buffer20238",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20238, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20238, 0);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1030.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20239 = device20.createBuffer({
        label: "buffer20239",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20239, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20239, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    compute_pass_encoder2020.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    const buffer20240 = device20.createBuffer({
        label: "buffer20240",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20241 = device20.createBuffer({
        label: "buffer20241",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2092 = device20.createBindGroup({
        label: "bind_group2092",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20240,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20241,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2092);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder2000.drawIndirect(buffer2059, 0);
    device50.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1030.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder4010.drawIndirect(buffer401, 0);
    render_pass_encoder1001.draw(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20242 = device20.createBuffer({
        label: "buffer20242",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20242, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20242, 0);
    render_pass_encoder2000.drawIndirect(buffer20112, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder2020.drawIndirect(buffer20203, 0);
    device60.queue.submit([]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer20114, 0);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4001.drawIndirect(buffer407, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder2020.end();
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20243 = device20.createBuffer({
        label: "buffer20243",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20243, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20243, 0);
    device40.queue.submit([command_buffer401, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20244 = device20.createBuffer({
        label: "buffer20244",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20244, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20244, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2074, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20129, 0);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2020.drawIndirect(buffer20220, 0);
    render_pass_encoder1021.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2030.drawIndirect(buffer20218, 0);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    const buffer20245 = device20.createBuffer({
        label: "buffer20245",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20246 = device20.createBuffer({
        label: "buffer20246",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2093 = device20.createBindGroup({
        label: "bind_group2093",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20245,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20246,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2093);
    device10.queue.submit([command_buffer101, ]);
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer20129, 0);
    render_pass_encoder2020.drawIndirect(buffer2078, 0);
    device50.queue.submit([]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2065, 0);
    render_pass_encoder1021.draw(3);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer20102, 0);
    render_pass_encoder4001.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1021.draw(3);
    render_pass_encoder4011.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1001.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder2030.drawIndirect(buffer2043, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer20155, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2030.drawIndirect(buffer2062, 0);
    render_pass_encoder2000.drawIndirect(buffer2077, 0);
    render_pass_encoder2020.drawIndirect(buffer20110, 0);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4011.drawIndirect(buffer406, 0);
    render_pass_encoder2000.drawIndirect(buffer20190, 0);
    render_pass_encoder4001.drawIndirect(buffer400, 0);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder2000.drawIndirect(buffer20240, 0);
    render_pass_encoder2020.drawIndirect(buffer2089, 0);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    render_pass_encoder2020.drawIndirect(buffer20124, 0);
    device20.queue.submit([]);
    const buffer20247 = device20.createBuffer({
        label: "buffer20247",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20248 = device20.createBuffer({
        label: "buffer20248",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2094 = device20.createBindGroup({
        label: "bind_group2094",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20247,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20248,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2094);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4001.draw(3);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2020.drawIndirect(buffer2077, 0);
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    render_pass_encoder2000.drawIndirect(buffer20132, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer2071, 0);
    render_pass_encoder2030.drawIndirect(buffer20238, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4001.drawIndirect(buffer409, 0);
    render_pass_encoder2030.drawIndirect(buffer2068, 0);
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    device10.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder4001.drawIndirect(buffer406, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    device10.queue.submit([command_buffer101, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20249 = device20.createBuffer({
        label: "buffer20249",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20249, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20249, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer20242, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer20231, 0);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndirect(buffer2074, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20250 = device20.createBuffer({
        label: "buffer20250",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20250, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20250, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20251 = device20.createBuffer({
        label: "buffer20251",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20251, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20251, 0);
    render_pass_encoder2020.drawIndirect(buffer2073, 0);
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndirect(buffer20139, 0);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1000.draw(3);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20252 = device20.createBuffer({
        label: "buffer20252",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20252, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20252, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20253 = device20.createBuffer({
        label: "buffer20253",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20253, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20253, 0);
    render_pass_encoder2000.drawIndirect(buffer20146, 0);
    render_pass_encoder2020.drawIndirect(buffer20124, 0);
    render_pass_encoder2020.drawIndirect(buffer20182, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer20116, 0);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder2020.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    const buffer20254 = device20.createBuffer({
        label: "buffer20254",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20255 = device20.createBuffer({
        label: "buffer20255",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2095 = device20.createBindGroup({
        label: "bind_group2095",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20254,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20255,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2095);
    device40.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2069, 0);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder2020.drawIndirect(buffer20192, 0);
    render_pass_encoder1030.draw(3);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer20253, 0);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    compute_pass_encoder2020.popDebugGroup()
    const buffer20256 = device20.createBuffer({
        label: "buffer20256",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20257 = device20.createBuffer({
        label: "buffer20257",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2096 = device20.createBindGroup({
        label: "bind_group2096",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20256,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20257,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2096);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder2030.drawIndirect(buffer20232, 0);
    render_pass_encoder2000.drawIndirect(buffer20100, 0);
    const buffer20258 = device20.createBuffer({
        label: "buffer20258",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20259 = device20.createBuffer({
        label: "buffer20259",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2097 = device20.createBindGroup({
        label: "bind_group2097",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20258,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20259,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2097);
    render_pass_encoder4010.popDebugGroup();
    const buffer20260 = device20.createBuffer({
        label: "buffer20260",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20261 = device20.createBuffer({
        label: "buffer20261",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2098 = device20.createBindGroup({
        label: "bind_group2098",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20260,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20261,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2098);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2072, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder4011.drawIndirect(buffer406, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    device40.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer20124, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    const buffer20262 = device20.createBuffer({
        label: "buffer20262",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20263 = device20.createBuffer({
        label: "buffer20263",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2099 = device20.createBindGroup({
        label: "bind_group2099",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20262,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20263,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2099);
    device40.queue.submit([command_buffer400, ]);
    const buffer20264 = device20.createBuffer({
        label: "buffer20264",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20265 = device20.createBuffer({
        label: "buffer20265",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group20100 = device20.createBindGroup({
        label: "bind_group20100",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20264,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20265,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group20100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1020.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.drawIndirect(buffer20203, 0);
    device60.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20146, 0);
    render_pass_encoder4010.drawIndirect(buffer406, 0);
    const buffer20266 = device20.createBuffer({
        label: "buffer20266",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20267 = device20.createBuffer({
        label: "buffer20267",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group20101 = device20.createBindGroup({
        label: "bind_group20101",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20266,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20267,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group20101);
    const buffer20268 = device20.createBuffer({
        label: "buffer20268",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20269 = device20.createBuffer({
        label: "buffer20269",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group20102 = device20.createBindGroup({
        label: "bind_group20102",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20268,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20269,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group20102);
    const buffer20270 = device20.createBuffer({
        label: "buffer20270",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20271 = device20.createBuffer({
        label: "buffer20271",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group20103 = device20.createBindGroup({
        label: "bind_group20103",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20270,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20271,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group20103);
    render_pass_encoder2000.drawIndirect(buffer20267, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder4011.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const buffer20272 = device20.createBuffer({
        label: "buffer20272",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20273 = device20.createBuffer({
        label: "buffer20273",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group20104 = device20.createBindGroup({
        label: "bind_group20104",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20272,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20273,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group20104);
    render_pass_encoder2030.drawIndirect(buffer20106, 0);
    render_pass_encoder2000.drawIndirect(buffer20220, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20274 = device20.createBuffer({
        label: "buffer20274",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20274, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20274, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20275 = device20.createBuffer({
        label: "buffer20275",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20275, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20275, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer20134, 0);
    render_pass_encoder2000.drawIndirect(buffer20202, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer20244, 0);
    compute_pass_encoder2030.popDebugGroup()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20276 = device20.createBuffer({
        label: "buffer20276",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20276, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20276, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2000.end();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2020.drawIndirect(buffer20238, 0);
    device60.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder2000.drawIndirect(buffer20231, 0);
    const buffer20277 = device20.createBuffer({
        label: "buffer20277",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20278 = device20.createBuffer({
        label: "buffer20278",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group20105 = device20.createBindGroup({
        label: "bind_group20105",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20277,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20278,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group20105);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2089, 0);
    render_pass_encoder2030.drawIndirect(buffer2069, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
    render_pass_encoder2000.drawIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndirect(buffer20221, 0);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer20202, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder4000.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder2030.drawIndirect(buffer20275, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
}