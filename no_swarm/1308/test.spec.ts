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
    const array0 = new Float32Array([-0.25, -0.75, 0.75, -0.25, 0.0, 0.75, -0.75, 1.0, -0.5, 0.0, -0.5, -0.25, 0.5, -0.25, 0.0, -0.25, 0.5, 1.0, -0.5, 1.0, 0.25, 1.0, 0.0, -0.5, 0.75, 0.75, -0.5, 0.5, 0.0, -1.0, -0.5, -1.0, 1.0, 0.25, -0.25, -0.5, 0.25, 1.0, -0.5, 0.25, -1.0, -0.5, -0.25, -0.5, -0.5, 0.5, -0.75, -0.25, -1.0, 1.0, -0.5, 0.0, 0.25, 0.75, -1.0, -0.75, -0.75, -0.75, 0.5, 1.0, 0.75, -1.0, 0.5, 0.75, -0.5, -0.25, -1.0, 1.0, 1.0, 1.0, 0.25, -0.75, -0.75, 0.25, 0.75, 0.5, -0.75, 0.5, -0.75, -0.75, -1.0, -1.0, 1.0, 1.0, -0.75, -0.75, 0.25, 1.0, 0.5, 1.0, 0.75, 0.25, -0.75, -0.75, 0.0, -0.75, -0.25, 1.0, -0.5, -0.75, ]);
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array1 = new Float32Array([0.75, -1.0, 0.75, 0.0, 0.0, 0.5, -0.5, 1.0, 0.25, -0.75, -0.75, 0.25, -0.5, 0.25, 0.0, -0.5, -0.75, -0.5, 0.25, 0.25, -1.0, 1.0, -0.25, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.75, 0.75, -1.0, 0.25, 0.5, 0.0, -0.5, -0.5, -1.0, 0.75, 0.75, 0.0, 0.25, -0.25, 0.75, -0.5, -0.5, 0.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, 1.0, -0.25, 1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 0.0, 1.0, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.0, -0.5, -0.5, -0.5, -0.25, 0.25, -1.0, -0.25, -0.25, -0.5, 0.75, 0.5, 0.75, -1.0, -0.75, -0.5, 0.5, -1.0, 0.75, 0.25, -0.25, -0.25, -0.25, 0.75, 0.0, 0.25, 0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([-0.75, -0.75, 0.25, -0.25, -0.25, 1.0, -0.5, 0.25, -0.5, 0.0, -0.75, 0.25, -0.75, 0.5, 1.0, -0.75, 0.25, -0.75, 0.75, -0.25, -0.25, 0.25, 1.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.5, 0.25, 1.0, -1.0, 1.0, 0.25, 1.0, -0.75, -0.75, -1.0, -0.75, -0.25, 0.0, 0.0, -0.5, -0.25, -0.5, -0.75, -0.5, 1.0, 1.0, -1.0, 0.25, 1.0, -0.75, 1.0, -1.0, -0.5, 0.0, -1.0, 1.0, -0.75, -0.25, -0.5, 0.25, -0.75, 0.0, 1.0, -0.75, 0.0, 0.25, 0.0, -0.5, -0.5, 0.25, -0.25, -1.0, 0.75, -0.25, -0.5, 0.5, 0.0, 0.5, 1.0, -0.75, 0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.25, 0.75, -1.0, -1.0, 0.0, 1.0, 0.75, 0.75, 1.0, 1.0, 0.5, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer200.destroy()
    device20.queue.submit([]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.popDebugGroup();
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    
    device20.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    device20.queue.submit([]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
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
    render_bundle_encoder100.popDebugGroup();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.queue.submit([]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    texture201.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1001.insertDebugMarker("marker")
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder102.popDebugGroup();
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array3 = new Float32Array([-0.75, -0.5, -0.5, 1.0, -0.5, -0.25, 1.0, 0.25, -0.75, -0.25, -0.5, 0.5, -0.25, -0.75, 0.25, 0.0, -1.0, -0.25, 0.25, -0.75, 1.0, 0.5, 1.0, 0.5, -1.0, 0.0, 1.0, 0.5, -0.75, 0.25, 0.75, 0.0, -0.75, -0.5, 0.5, 0.0, -0.5, 0.0, 0.5, -0.75, 0.25, 0.75, -1.0, 1.0, 0.5, 0.0, 0.25, 0.25, 1.0, -0.5, 0.0, -0.5, -0.25, -1.0, 0.5, -0.25, 0.75, -0.5, 0.25, -0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 1.0, 1.0, -0.5, 1.0, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.25, -1.0, -0.75, 0.25, 0.0, -1.0, 1.0, 0.5, -0.25, 0.25, 0.0, -0.25, -0.5, 0.75, -1.0, 0.75, 0.75, 1.0, -0.25, -1.0, ]);
    query201.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.popDebugGroup();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture203.destroy();
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    
    
    
    render_pass_encoder2010.endOcclusionQuery()
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder2011.pushDebugGroup("group_marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1001.insertDebugMarker("marker")
    compute_pass_encoder1001.popDebugGroup()
    
    command_encoder100.clearBuffer(buffer101);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    command_encoder101.clearBuffer(buffer101);
    command_encoder201.pushDebugGroup("mygroupmarker")
    texture200.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture202.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query203.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    command_encoder101.clearBuffer(buffer101);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    device30.pushErrorScope("internal");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    render_bundle_encoder200.popDebugGroup();
    device10.destroy();
    render_pass_encoder2011.executeBundles([])
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.executeBundles([render_bundle_encoder200, ])
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
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
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

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    query203.destroy()
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query200
    });
    buffer201.destroy()
    const array4 = new Float32Array([-0.75, 1.0, 0.75, -0.25, 0.5, 0.25, 0.0, 0.5, -0.75, 0.5, -0.75, 1.0, 0.5, 0.25, -0.75, -0.25, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, 0.5, -0.5, -1.0, -0.5, -0.25, -1.0, -1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, -0.25, 0.75, -0.5, 0.5, 1.0, -0.25, 0.75, -0.5, 0.75, -0.75, 0.75, 0.75, -0.25, -0.5, -0.5, -0.75, 1.0, 0.75, -0.75, 0.5, -0.75, -0.5, -1.0, -1.0, 1.0, 0.25, 0.5, 0.0, 0.5, -0.5, 0.25, 0.75, -0.25, 0.25, -0.5, 1.0, 0.25, 0.0, -0.75, -0.75, -0.75, -0.5, -0.5, 0.0, 0.0, 0.75, 1.0, -0.75, 0.25, -1.0, 1.0, -0.75, -1.0, -0.5, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 0.0, -0.25, 0.0, -0.75, -0.5, ]);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    render_pass_encoder2011.beginOcclusionQuery(0)
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
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
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer202.destroy()
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    compute_pass_encoder1001.insertDebugMarker("marker")
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2020.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture201.destroy();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    query200.destroy()
    render_pass_encoder2020.executeBundles([])
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    render_pass_encoder2011.executeBundles([])
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2031.insertDebugMarker("marker");
    
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group201);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer205.destroy()
    texture203.destroy();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    render_pass_encoder2031.setPipeline(render_pipeline201);
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.setStencilReference(1);
    
    render_pass_encoder2021.setPipeline(render_pipeline200);
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder200.setPipeline(render_pipeline201);
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer203.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2031.pushDebugGroup("group_marker");
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder203.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder2021.setStencilReference(1);
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([0.75, -1.0, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, -1.0, -0.5, 0.5, -0.75, 1.0, 0.5, -1.0, 1.0, 0.5, 0.0, 0.25, -0.5, -0.75, 0.5, 0.0, 0.75, 0.5, 0.75, -1.0, -0.5, 0.75, 0.0, 1.0, -0.75, 0.75, 0.25, 0.75, 1.0, 0.5, 0.75, -1.0, 0.25, 1.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.0, -1.0, 0.25, 0.0, -0.25, 0.75, 1.0, -0.5, -0.25, 1.0, 1.0, 0.25, 0.75, -1.0, -0.75, -1.0, 1.0, 0.25, -0.5, -1.0, 1.0, -0.5, 1.0, -0.25, 0.25, 0.0, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -0.25, 0.25, -0.25, 0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 0.0, -0.5, -0.5, -0.25, -0.75, 0.75, 0.75, ]);
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2031.pushDebugGroup("group_marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.popDebugGroup();
    device30.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2021.beginOcclusionQuery(0)
    render_pass_encoder2011.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder2010.setVertexBuffer(0, buffer204);
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
    render_pass_encoder2030.setStencilReference(1);
    
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2031.setStencilReference(1);
    render_pass_encoder2011.endOcclusionQuery()
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    
    render_pass_encoder2010.end();
    
    query201.destroy()
    render_pass_encoder2020.setPipeline(render_pipeline201);
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder2030.setPipeline(compute_pipeline201);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline202);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    command_encoder203.copyTextureToTexture(
        {
            texture: texture200
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
    
    render_pass_encoder2011.setPipeline(render_pipeline203);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder2020.popDebugGroup();
    query204.destroy()
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2040.setPipeline(compute_pipeline203);
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2021.pushDebugGroup("group_marker");
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group202);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    
    
    
    query201.destroy()
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setStencilReference(1);
    
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device40.pushErrorScope("validation");
    query204.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    query203.destroy()
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group204);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer206.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2031.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer209.destroy()
    render_pass_encoder2010.draw(3);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer2011.destroy()
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query204
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2040.setPipeline(render_pipeline201);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
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
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2041.setPipeline(render_pipeline203);
    render_pass_encoder2021.setStencilReference(1);
    
    render_pass_encoder2021.insertDebugMarker("marker");
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group205);
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2040.insertDebugMarker("marker")
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2021.popDebugGroup();
    
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    command_encoder204.copyBufferToBuffer(
        buffer2011,
        0,
        buffer2011,
        0,
        400
    );
    const render_pass_encoder2042 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    buffer2012.destroy()
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
    
    
    render_pass_encoder2042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture501.destroy();
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
    render_pass_encoder2011.insertDebugMarker("marker");
    
    texture500.destroy();
    render_pass_encoder2041.beginOcclusionQuery(0)
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2031.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder2021.setStencilReference(1);
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder2041.insertDebugMarker("marker");
    render_pass_encoder2030.popDebugGroup();
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder2011.setVertexBuffer(0, buffer2010);
    
    command_encoder204.copyBufferToTexture(
        {
            buffer: buffer204
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
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2042.setPipeline(render_pipeline200);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    render_pass_encoder2020.popDebugGroup();
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

    render_pass_encoder2042.setBindGroup(0, bind_group206);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group207);
    render_pass_encoder2010.popDebugGroup();
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2041.setBindGroup(0, bind_group208);
    render_pass_encoder2041.setVertexBuffer(0, buffer2012);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.endOcclusionQuery()
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2041.endOcclusionQuery()
    render_pass_encoder2041.drawIndirect(buffer201, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.draw(3);
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

    compute_pass_encoder2030.setBindGroup(0, bind_group209);
    device50.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.setVertexBuffer(0, buffer2013);
    command_encoder201.popDebugGroup()
    render_pass_encoder2042.setVertexBuffer(0, buffer203);
    render_pass_encoder2042.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2021.popDebugGroup();
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2010);
    render_pass_encoder2042.drawIndexed(3);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_pass_encoder2021.setVertexBuffer(0, buffer201);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder2011.popDebugGroup();
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2011);
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder2042.drawIndirect(buffer2020, 0);
    render_pass_encoder2042.end();
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
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group2012);
    render_pass_encoder2011.end();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2040.end();
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
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2013);
    render_pass_encoder2030.end();
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndirect(buffer206, 0);
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
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group2014);
    render_pass_encoder2020.setVertexBuffer(0, buffer2022);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2031.setVertexBuffer(0, buffer2012);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2015);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    device70.queue.submit([]);
    compute_pass_encoder1001.setPipeline(compute_pipeline100);
    render_pass_encoder2011.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2042.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2041.drawIndirect(buffer205, 0);
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2042.drawIndexed(3);
    compute_pass_encoder2030.end();
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2031.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2021.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2032, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2021, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2040.end();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    compute_pass_encoder2040.popDebugGroup()
    device40.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2040.end();
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2042.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2042.drawIndirect(buffer200, 0);
    render_pass_encoder2042.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2042.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2040.end();
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2042.drawIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2031, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer104, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2041.drawIndirect(buffer201, 0);
    render_pass_encoder2042.end();
    render_pass_encoder2030.end();
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_pass_encoder2042.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2011.drawIndirect(buffer2027, 0);
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2042.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer200, ]);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group101);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2042.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2034, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2029, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2012, 0);
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
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2016);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2039, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2030.draw(3);
    device50.queue.submit([]);
    device70.queue.submit([]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2030, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2042.endOcclusionQuery()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndirect(buffer2039, 0);
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer107, 0);
    render_pass_encoder2041.drawIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer203, 0);
    device50.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2030.drawIndirect(buffer2029, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
}