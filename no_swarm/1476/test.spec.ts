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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([-1.0, 0.75, -1.0, 0.25, 0.75, -0.5, 1.0, -0.5, 0.0, 0.25, 0.0, 0.5, 0.75, -1.0, -0.25, -0.5, 0.75, -0.25, 1.0, 0.25, -1.0, -0.25, 0.0, -0.25, 0.75, 0.5, -0.5, -0.5, -0.75, -0.75, -1.0, -1.0, -0.75, -1.0, -1.0, -1.0, 0.0, 0.5, -1.0, -1.0, -0.25, -0.75, 0.5, -1.0, -0.25, -0.75, 0.75, 1.0, -0.25, 0.25, 0.75, 0.25, -0.5, 0.25, -0.75, 0.25, -0.75, 0.75, 1.0, -0.25, -0.25, 0.75, 1.0, -1.0, 0.5, 1.0, 0.25, 1.0, -1.0, -0.5, 1.0, -0.5, 0.25, 0.0, 0.75, -0.5, 1.0, 0.0, 0.75, 0.0, 0.0, -0.75, -0.75, 0.25, 0.25, 0.75, 0.5, 0.0, 0.5, -0.5, 0.5, 0.25, 0.0, -0.25, 0.5, 0.75, 0.0, 0.0, 0.0, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const array1 = new Float32Array([-0.25, 0.25, -0.5, 0.0, -0.25, -0.25, -0.25, -0.75, -0.25, -0.75, 0.0, -0.5, -0.5, 1.0, -0.5, 0.25, 0.5, 0.25, -0.25, 0.0, -0.5, 1.0, -0.25, -0.25, -1.0, -0.25, -0.5, 0.5, 0.25, 0.0, 0.0, -0.5, -1.0, -0.25, -1.0, -0.25, -0.5, -0.75, 0.5, -1.0, 0.75, -0.75, 0.75, 0.25, 0.5, 0.25, 0.5, -1.0, 0.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.5, -1.0, -0.75, -0.5, -0.75, 0.75, 1.0, -0.5, -1.0, 0.75, -0.5, 0.25, 0.0, 0.25, 0.0, 0.0, -0.5, -0.25, 0.0, -0.25, 0.5, -0.25, -0.5, 0.25, -0.25, 0.75, -0.5, 0.0, 1.0, -0.75, 0.0, -0.5, -0.25, 1.0, -1.0, -1.0, 0.25, -1.0, -1.0, -0.25, -0.75, 0.75, -0.75, 0.5, 0.75, -1.0, ]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query200.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    command_encoder200.popDebugGroup()
    device10.pushErrorScope("validation");
    const query202 = device20.createQuerySet({
        label: "query202",
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
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    texture100.destroy();
    const array2 = new Float32Array([0.25, -1.0, 0.0, -0.75, 1.0, -0.25, -0.5, -0.5, 0.0, 0.0, 0.0, 0.5, -0.75, 0.0, 0.75, -0.5, -0.25, 1.0, 0.75, 0.5, 1.0, 0.75, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, -0.75, -0.25, -0.75, 1.0, -0.25, 0.0, 1.0, 1.0, -0.25, 0.25, 0.0, -0.5, 0.75, 0.25, 1.0, -0.75, -1.0, 1.0, 0.0, -0.25, 0.75, 0.5, -1.0, 0.75, 1.0, -0.75, 1.0, 0.75, 0.0, 0.75, -0.25, -0.25, 0.25, -0.75, 0.5, 0.75, 1.0, 0.25, -0.25, 0.75, -0.25, 1.0, 0.0, -1.0, -0.25, -0.5, -0.25, 0.0, 0.0, 0.5, 0.25, -0.25, 1.0, -1.0, 0.0, -0.5, 1.0, -0.75, 1.0, -0.75, -0.75, -1.0, 0.25, -1.0, -1.0, -0.25, -0.5, -0.75, -0.75, 0.5, 1.0, 0.5, ]);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    query203.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    query201.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const array3 = new Float32Array([-1.0, -0.75, -1.0, -0.75, -0.25, -0.5, 1.0, 0.0, 1.0, -0.75, 0.75, -0.75, -0.25, 1.0, 0.5, -1.0, 0.5, 0.0, 0.75, 1.0, -1.0, 0.5, 0.0, -0.75, -0.75, 0.75, 1.0, 0.25, -1.0, 0.5, 0.75, 0.5, 1.0, 1.0, 1.0, 0.25, -0.5, 0.25, 0.0, 0.5, -0.5, 0.75, 1.0, -0.75, -1.0, 0.5, -1.0, 0.25, -0.5, 0.25, 0.25, -0.5, -0.5, -0.5, 0.75, 0.0, -0.25, -0.5, -0.5, -0.5, -0.75, 1.0, 0.0, 1.0, -1.0, 1.0, -1.0, 0.25, -0.25, 1.0, 0.0, -0.25, 0.75, -0.75, 0.25, 0.25, 0.25, -1.0, -0.25, 0.25, -1.0, -0.75, -0.75, 0.5, 1.0, 0.25, 1.0, -1.0, -1.0, -0.5, 0.75, 0.0, 0.5, 0.5, -0.5, 1.0, 0.75, -0.25, 0.5, -0.25, ]);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device10.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder201.clearBuffer(buffer200);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    buffer100.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    query203.destroy()
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    texture102.destroy();
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query100.destroy()
    query201.destroy()
    render_pass_encoder1000.executeBundles([])
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.clearBuffer(buffer200);
    
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
    device40.pushErrorScope("out-of-memory");
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder2000.popDebugGroup()
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.executeBundles([])
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    buffer101.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query101
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([1.0, -0.25, 0.5, 1.0, -0.75, 1.0, 0.75, 0.75, 0.75, -0.5, 1.0, -1.0, -0.5, 0.5, 1.0, -1.0, -0.75, 0.25, 1.0, 0.5, -0.75, 0.25, 0.75, -0.75, 1.0, 0.75, -0.25, -0.5, 1.0, -0.75, -0.75, -1.0, -1.0, -1.0, 0.25, 0.75, 0.25, -0.75, 0.25, 0.5, -1.0, 0.25, -1.0, 0.5, -0.25, -0.5, -0.5, 0.25, -0.25, 0.75, 0.75, 0.0, -1.0, -1.0, -0.5, 0.5, 0.5, -1.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.5, -0.75, 0.75, -1.0, -0.5, 0.5, -0.5, 0.25, 0.0, 0.0, 0.25, 0.25, 0.25, 0.75, 0.75, 1.0, 0.5, -0.5, -0.5, 0.25, -1.0, 0.75, -0.75, -0.25, 0.25, 0.75, 1.0, 0.0, -0.75, 0.5, -0.75, 0.5, 0.75, 1.0, -0.5, 0.75, 0.0, ]);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1001.setStencilReference(1);
    
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
    render_pass_encoder1010.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    query100.destroy()
    
    query200.destroy()
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.executeBundles([render_bundle_encoder103, ])
    query200.destroy()
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    
    
    compute_pass_encoder4000.popDebugGroup()
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device20.pushErrorScope("out-of-memory");
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    query203.destroy()
    device00.queue.submit([]);
    
    query204.destroy()
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1010.beginOcclusionQuery(0)
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    buffer102.destroy()
    const command_buffer401 = command_encoder401.finish();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    query401.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder202.popDebugGroup();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    query101.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder101.popDebugGroup();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query101.destroy()
    compute_pass_encoder2000.popDebugGroup()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1001.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query204.destroy()
    buffer100.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer103.destroy()
    compute_pass_encoder2000.popDebugGroup()
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    query100.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder1001.insertDebugMarker("marker");
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1011.executeBundles([])
    command_encoder402.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query401.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    command_encoder203.clearBuffer(buffer200);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device00.destroy();
    render_pass_encoder1011.insertDebugMarker("marker");
    texture300.destroy();
    render_pass_encoder1000.executeBundles([render_bundle_encoder101, ])
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer402,
        0
    )
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder1011.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder1010.endOcclusionQuery()
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
    query102.destroy()
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder205.insertDebugMarker("mymarker");
    render_pass_encoder1010.executeBundles([render_bundle_encoder101, ])
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    render_pass_encoder1011.executeBundles([render_bundle_encoder101, ])
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query101.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    buffer105.destroy()
    buffer104.destroy()
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1001.insertDebugMarker("marker");
    
    
    render_pass_encoder1011.setPipeline(render_pipeline100);
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query101
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer403 = command_encoder403.finish();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    buffer400.destroy()
    render_pass_encoder1001.beginOcclusionQuery(0)
    render_bundle_encoder103.pushDebugGroup("group_marker");
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query202.destroy()
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    command_encoder203.clearBuffer(buffer200);
    const compute_pass_encoder2021 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2021" });
    
    render_bundle_encoder102.insertDebugMarker("marker");
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder2021.pushDebugGroup("group_marker")
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
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
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group101);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    buffer109.destroy()
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
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder1013 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1013",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder204.clearBuffer(buffer200);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
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
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    
    render_pass_encoder1011.setVertexBuffer(0, buffer1010);
    device40.pushErrorScope("internal");
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    buffer108.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder1002.setStencilReference(1);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    {
        await buffer1010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1010.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder404.insertDebugMarker("mymarker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder1001.popDebugGroup();
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    
    query100.destroy()
    render_pass_encoder1002.setPipeline(render_pipeline101);
    render_pass_encoder1013.setStencilReference(1);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1002.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2050.setPipeline(compute_pipeline201);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    buffer106.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline101);
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer201 = command_encoder201.finish();
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder204.pushDebugGroup("mygroupmarker")
    render_pass_encoder4040.setPipeline(render_pipeline401);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1012.setPipeline(render_pipeline102);
    render_pass_encoder1000.popDebugGroup();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    texture400.destroy();
    const command_buffer204 = command_encoder204.finish();
    
    render_pass_encoder1011.draw(3);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    query402.destroy()
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer103
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query200.destroy()
    buffer401.destroy()
    texture103.destroy();
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    render_pass_encoder1013.setStencilReference(1);
    render_pass_encoder1013.insertDebugMarker("marker");
    
    
    render_pass_encoder1002.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture401.destroy();
    compute_pass_encoder2021.setPipeline(compute_pipeline200);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer102, ]);
    command_encoder100.copyBufferToBuffer(
        buffer108,
        0,
        buffer1011,
        0,
        400
    );
    render_pass_encoder1001.endOcclusionQuery()
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
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
    render_pass_encoder1001.pushDebugGroup("group_marker");
    query205.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1013.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer200.destroy()
    const array5 = new Float32Array([-0.25, 0.25, -0.75, 0.0, 0.5, 0.0, 0.5, 0.5, 0.25, -1.0, -1.0, -0.25, 0.5, -1.0, -0.25, -1.0, -0.25, 0.25, -0.25, -0.75, 1.0, 0.0, -0.25, 0.0, 0.5, 0.5, -1.0, 0.0, -1.0, 0.25, 0.0, 0.75, 0.75, 0.25, -0.75, 0.0, -1.0, 0.0, -0.75, -0.75, -0.25, -0.75, 0.75, 1.0, -0.5, 0.5, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, 0.5, -1.0, -0.25, 0.75, -1.0, 0.0, 0.5, -0.5, 0.75, -0.25, -0.25, 0.25, -0.25, -0.5, -0.25, -0.5, 0.25, 0.5, 0.25, -0.5, -0.75, 0.25, 0.5, -1.0, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, 0.75, -0.5, -0.75, 0.0, 0.0, -0.25, -1.0, 0.0, -0.25, 0.25, 0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 1.0, 0.25, ]);
    query102.destroy()
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1002.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    texture104.destroy();
    
    buffer103.destroy()
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1013.setPipeline(render_pipeline101);
    render_pass_encoder1013.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1011, 0, array1, 0, array1.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2050.setBindGroup(0, bind_group200);
    buffer402.destroy()
    
    render_bundle_encoder400.popDebugGroup();
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    device50.destroy();
    render_bundle_encoder402.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1010.setPipeline(render_pipeline102);
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2021.setBindGroup(0, bind_group201);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1012.setBindGroup(0, bind_group103);
    render_pass_encoder1012.setVertexBuffer(0, buffer103);
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    render_pass_encoder1000.setVertexBuffer(0, buffer1011);
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group203);
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1013.setBindGroup(0, bind_group104);
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    render_pass_encoder1012.drawIndirect(buffer107, 0);
    render_pass_encoder1012.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer209, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1001.setPipeline(render_pipeline102);
    compute_pass_encoder2020.end();
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2012, 0);
    render_pass_encoder1013.setVertexBuffer(0, buffer101);
    render_pass_encoder1013.drawIndirect(buffer1011, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1012.draw(3);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group401);
    compute_pass_encoder2030.end();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    render_pass_encoder1012.end();
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    render_pass_encoder1010.setBindGroup(0, bind_group105);
    render_pass_encoder1013.end();
    const command_buffer101 = command_encoder101.finish();
    const command_buffer203 = command_encoder203.finish();
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group106);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder1002.setVertexBuffer(0, buffer103);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1010.setVertexBuffer(0, buffer1018);
    render_pass_encoder1013.draw(3);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group107);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1002.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.setVertexBuffer(0, buffer102);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder4040.setVertexBuffer(0, buffer404);
    render_pass_encoder1002.drawIndexedIndirect(buffer1018, 0);
    device40.queue.submit([command_buffer404, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder4040.draw(3);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2021.end();
    render_pass_encoder4040.draw(3);
    compute_pass_encoder2021.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2015, 0);
    compute_pass_encoder2050.end();
    render_pass_encoder1000.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder4040.draw(3);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    compute_pass_encoder2010.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1012.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder2030.end();
    render_pass_encoder1012.drawIndirect(buffer101, 0);
    command_encoder100.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder1013.drawIndirect(buffer104, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1001.draw(3);
    const command_buffer402 = command_encoder402.finish();
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder4040.end();
    device10.queue.submit([]);
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder2030.end();
    render_pass_encoder1000.end();
    render_pass_encoder1013.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.end();
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

    compute_pass_encoder2021.setBindGroup(0, bind_group207);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2020, 0);
    compute_pass_encoder2021.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1013.drawIndirect(buffer108, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1012.end();
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1002.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1012.drawIndirect(buffer105, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1002.end();
    render_pass_encoder4040.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder1013.setIndexBuffer(buffer103, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2021, 0);
    const command_buffer000 = command_encoder000.finish();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.draw(3);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder2030.end();
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
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

    compute_pass_encoder2050.setBindGroup(0, bind_group208);
    render_pass_encoder1013.drawIndexed(3);
    render_pass_encoder1013.draw(3);
    render_pass_encoder1012.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1013.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder4040.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.endOcclusionQuery()
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2050.setBindGroup(0, bind_group209);
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2010);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer2028, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    compute_pass_encoder2000.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2029, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2029, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1012.drawIndexedIndirect(buffer106, 0);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    compute_pass_encoder4000.popDebugGroup()
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer2030, 0);
    render_pass_encoder1013.drawIndexed(3);
    render_pass_encoder1013.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1012.end();
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    render_pass_encoder1013.drawIndexed(3);
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1013.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder2021.end();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1013.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
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
                    buffer: buffer2035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2036,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2013);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer2037, 0);
    command_encoder400.popDebugGroup()
    compute_pass_encoder2010.end();
    render_pass_encoder1013.drawIndexedIndirect(buffer105, 0);
    const command_buffer400 = command_encoder400.finish();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder2020.popDebugGroup()
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
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
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2014);
    compute_pass_encoder2010.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1012.drawIndirect(buffer1012, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
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
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2015);
    render_pass_encoder1012.drawIndexedIndirect(buffer1017, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2021.dispatchWorkgroups(100);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, command_buffer404, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2050.end();
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    compute_pass_encoder2030.end();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1002.drawIndirect(buffer107, 0);
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder1012.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1013.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1013.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer100, ]);
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
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder1002.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
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
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2016);
    compute_pass_encoder2020.end();
    compute_pass_encoder2050.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1013.drawIndirect(buffer103, 0);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1002.setIndexBuffer(buffer105, "uint16");
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
    render_pass_encoder1013.setIndexBuffer(buffer103, "uint16");
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
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2017);
    render_pass_encoder1011.end();
    render_pass_encoder1012.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([]);
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
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2018);
    render_pass_encoder1002.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1013.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1012.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1012.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder4040.popDebugGroup();
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
    render_pass_encoder1013.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder2020.popDebugGroup()
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
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2019);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder4040.end();
    compute_pass_encoder2021.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1002.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder4040.end();
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
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    render_pass_encoder1001.end();
    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
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
                    buffer: buffer2056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2057,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2021);
    render_pass_encoder1012.drawIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
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
                    buffer: buffer2058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2059,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2022);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4040.end();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1012.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1012.end();
    device20.queue.submit([command_buffer204, ]);
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2010.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1012.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1013.end();
    render_pass_encoder1012.drawIndexed(3);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2061, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2061, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4040.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    render_pass_encoder4040.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
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
                    buffer: buffer2062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2063,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2023);
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1012.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1014, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
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
                    buffer: buffer2064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2065,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2024);
    device40.queue.submit([]);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.end();
    compute_pass_encoder2010.end();
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2025);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1012.drawIndirect(buffer1012, 0);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2026);
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1002.drawIndirect(buffer1023, 0);
    render_pass_encoder1002.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1013.end();
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1013.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1013.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1012.draw(3);
    device40.queue.submit([]);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2020.end();
    render_pass_encoder4040.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2010.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2030.end();
    device10.queue.submit([]);
    render_pass_encoder1002.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2070, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2070, 0);
    render_pass_encoder1002.drawIndirect(buffer1016, 0);
    render_pass_encoder1012.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1013.setIndexBuffer(buffer108, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1012.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder1013.draw(3);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder1013.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder4040.draw(3);
    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
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
                    buffer: buffer2071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2072,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2027);
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1012.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder4040.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder1012.drawIndexedIndirect(buffer1014, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder1012.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder4040.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1002.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2073, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2073, 0);
    render_pass_encoder1013.drawIndirect(buffer101, 0);
    compute_pass_encoder2021.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1011.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
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
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2028);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1010.end();
    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
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
                    buffer: buffer2076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2077,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2029);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2078, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2078, 0);
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
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2030);
    render_pass_encoder4040.draw(3);
    render_pass_encoder1002.end();
    render_pass_encoder1013.drawIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1012.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1012.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder2030.end();
    device40.queue.submit([]);
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
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2031);
    compute_pass_encoder2050.end();
    compute_pass_encoder2010.end();
    render_pass_encoder1013.setIndexBuffer(buffer100, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2083, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2083, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder1001.draw(3);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1012.end();
    render_pass_encoder4040.drawIndirect(buffer400, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1012.draw(3);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2084, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2084, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1012.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1013.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4040.end();
    render_pass_encoder1012.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
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
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2032);
    render_pass_encoder1013.setIndexBuffer(buffer1020, "uint16");
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
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2033);
    device40.queue.submit([]);
    compute_pass_encoder2021.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2089, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2089, 0);
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder4040.draw(3);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1010.end();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder1013.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2090, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2090, 0);
    render_pass_encoder1012.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1002.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2091, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2091, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.end();
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder4040.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer102, 0);
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
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2034);
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
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
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2050.setBindGroup(0, bind_group2035);
    render_pass_encoder4040.end();
    compute_pass_encoder2021.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder1001.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer404, ]);
    device20.queue.submit([command_buffer205, ]);
    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
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
                    buffer: buffer2096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2097,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2036);
    device20.queue.submit([]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1012.setIndexBuffer(buffer104, "uint16");
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
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
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2037);
    render_pass_encoder1001.drawIndexed(3);
    device40.queue.submit([command_buffer402, command_buffer404, ]);
    render_pass_encoder1013.drawIndirect(buffer108, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20100, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20100, 0);
    compute_pass_encoder2021.end();
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder1002.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer100, 0);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1012.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder4040.drawIndexed(3);
    compute_pass_encoder2050.popDebugGroup()
    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20102,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2038);
    render_pass_encoder1002.drawIndirect(buffer109, 0);
    render_pass_encoder1013.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20103, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer20103, 0);
    render_pass_encoder1013.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1002.drawIndirect(buffer104, 0);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder1012.draw(3);
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder2021.end();
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    compute_pass_encoder2021.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder1013.draw(3);
    render_pass_encoder1013.drawIndexed(3);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder4040.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1012.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder4040.end();
    render_pass_encoder1013.setIndexBuffer(buffer1017, "uint16");
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20104, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer20104, 0);
    render_pass_encoder1011.end();
    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
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
                    buffer: buffer20105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20106,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2039);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder1002.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20107, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20107, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder1011.end();
    device10.queue.submit([]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
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
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
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

    compute_pass_encoder2021.setBindGroup(0, bind_group2040);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1002.draw(3);
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
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder2020.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20112, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20112, 0);
    device40.queue.submit([]);
    render_pass_encoder1012.drawIndirect(buffer1011, 0);
    compute_pass_encoder2050.end();
    render_pass_encoder1012.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1002.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder1012.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder4040.popDebugGroup();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2021.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1012.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder1013.end();
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20113, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20113, 0);
    render_pass_encoder1013.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
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
                    buffer: buffer20114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20115,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2042);
    render_pass_encoder1002.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1002.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20116, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20116, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    device40.queue.submit([command_buffer400, command_buffer403, command_buffer404, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20118,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2043);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder2050.end();
    render_pass_encoder1013.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1012.draw(3);
    device40.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer109, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1013, 0);
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2050.end();
    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20120,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2044);
    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
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
                    buffer: buffer20121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20122,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2045);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndexed(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20123, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20123, 0);
    device20.queue.submit([]);
    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
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
                    buffer: buffer20124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20125,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2046);
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1012.end();
    compute_pass_encoder4000.popDebugGroup()
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    render_pass_encoder1013.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
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
                    buffer: buffer20126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20127,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2047);
    render_pass_encoder1002.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1010.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1013.drawIndexed(3);
    render_pass_encoder1013.end();
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1012.end();
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20128, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20128, 0);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexed(3);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20129, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20129, 0);
    render_pass_encoder1001.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1013.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20130, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20130, 0);
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1012.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20131, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20131, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.end();
    const uint32_2021 = new Uint32Array(3);

    uint32_2021[0] = 100;
    uint32_2021[1] = 1;
    uint32_2021[2] = 1;

    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20132, 0, uint32_2021, 0, uint32_2021.length);

    compute_pass_encoder2021.dispatchWorkgroupsIndirect(buffer20132, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1002.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.draw(3);
    compute_pass_encoder2021.end();
    render_pass_encoder1011.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4040.end();
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20133, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20133, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1013.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder2021.end();
    render_pass_encoder1012.drawIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder4040.draw(3);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1001.draw(3);
    render_pass_encoder1013.drawIndirect(buffer1020, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.end();
    device10.queue.submit([]);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    device20.queue.submit([command_buffer204, ]);
    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20135,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2048);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1012.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2021.end();
    compute_pass_encoder2030.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1013.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder4040.setIndexBuffer(buffer401, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1012.drawIndirect(buffer107, 0);
    render_pass_encoder1013.end();
    compute_pass_encoder2021.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndexed(3);
    const buffer20136 = device20.createBuffer({
        label: "buffer20136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20137 = device20.createBuffer({
        label: "buffer20137",
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
                    buffer: buffer20136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20137,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2049);
    render_pass_encoder1013.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1012.end();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1013.drawIndexedIndirect(buffer1021, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20138, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20138, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder2000.end();
    compute_pass_encoder2021.end();
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2050);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2010.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20141, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20141, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer103, 0);
    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
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
                    buffer: buffer20142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20143,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2051);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder1000.end();
    device20.queue.submit([command_buffer203, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1012.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    device10.queue.submit([]);
    render_pass_encoder1012.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1012.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder1002.end();
    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
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
                    buffer: buffer20144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20145,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2052);
    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
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
                    buffer: buffer20146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20147,
                },
            },
        ],
    });

    compute_pass_encoder2021.setBindGroup(0, bind_group2053);
    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20149,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2054);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1012.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1013.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder4040.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder4040.draw(3);
    render_pass_encoder4040.drawIndexed(3);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder1013.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1013.end();
    compute_pass_encoder2050.popDebugGroup()
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
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2055);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder1013.drawIndirect(buffer1013, 0);
    render_pass_encoder1002.setIndexBuffer(buffer109, "uint16");
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20152 = device20.createBuffer({
        label: "buffer20152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20152, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20152, 0);
    render_pass_encoder1012.end();
    render_pass_encoder4040.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1013.drawIndexed(3);
    render_pass_encoder1013.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.end();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1012.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1013.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1013.drawIndexed(3);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1013, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20153 = device20.createBuffer({
        label: "buffer20153",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20153, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20153, 0);
    render_pass_encoder1011.popDebugGroup();
}