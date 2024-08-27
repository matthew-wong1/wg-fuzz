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
    const array0 = new Float32Array([0.75, 0.75, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 0.25, -0.75, -0.25, -0.25, -0.25, 0.25, 0.0, 0.75, 0.5, -0.75, 1.0, -0.5, -0.75, -0.75, -1.0, 0.5, 0.5, 0.25, 0.25, -0.25, 0.25, -0.5, 0.0, 0.5, -0.75, 0.5, 0.75, 0.25, 1.0, -0.5, -1.0, -0.5, -1.0, -0.75, 0.5, 1.0, -0.75, 0.5, 1.0, 0.25, -0.75, -1.0, 0.25, -0.25, -0.5, 0.25, -0.5, 1.0, 0.75, -1.0, 1.0, -0.75, -1.0, -0.75, -0.5, -1.0, -1.0, 0.5, -0.5, 0.5, 0.5, -0.5, 0.75, -0.75, 1.0, -0.5, 0.25, -0.25, 0.5, 0.25, 1.0, 1.0, 0.75, -0.25, -0.75, -0.75, -0.25, 1.0, 0.5, 1.0, -0.75, -0.25, 0.0, -0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -0.25, -0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    device00.queue.submit([]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    command_encoder100.clearBuffer(buffer100);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, 1.0, 0.0, -0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.25, -0.25, -0.25, -0.75, 1.0, 0.25, 0.5, 0.25, 1.0, -1.0, -1.0, 0.25, 0.75, 0.0, 1.0, 0.75, -0.25, 0.75, 0.25, 1.0, -0.25, 0.5, -0.75, 0.0, -0.25, -0.25, 1.0, 0.0, 0.25, 0.5, -0.75, 0.0, -0.25, 1.0, 0.75, 0.5, 1.0, 1.0, 0.25, -0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 1.0, 0.5, 0.5, 1.0, -0.75, -1.0, -0.25, -0.75, 0.25, 0.75, 0.75, 0.0, -0.5, -0.25, 1.0, 0.5, -0.75, -0.5, 0.5, 0.75, -0.25, -0.75, -1.0, 0.5, 1.0, 0.5, 0.0, 0.5, -1.0, -1.0, -1.0, -0.5, -0.75, 1.0, 0.25, 0.5, 1.0, 0.25, 0.5, 0.5, 0.5, 0.0, -0.25, -0.75, 0.5, 1.0, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_buffer102 = command_encoder102.finish();
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([]);
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0011.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer002 = command_encoder002.finish();
    const array2 = new Float32Array([0.25, 1.0, 0.75, 0.75, 0.0, -0.75, -0.75, 0.75, -0.75, 1.0, 0.0, -0.25, -0.25, 0.25, 0.0, -0.25, 0.0, 1.0, 0.25, 0.25, -0.5, -1.0, -0.5, -0.5, 0.0, -0.75, -0.5, 0.0, 0.5, -0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 1.0, 1.0, -0.75, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.0, -0.5, -0.75, 0.25, -0.25, 0.75, -0.25, 0.0, 0.0, -0.75, -0.75, 1.0, 0.75, 1.0, -0.25, 0.0, -0.25, 0.75, 0.25, -0.5, 0.75, -1.0, -0.5, -1.0, 0.75, 0.25, -0.25, -0.25, 0.25, 0.5, 1.0, -0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 0.0, 0.5, -0.5, -0.75, 0.75, 1.0, 1.0, 0.5, 0.0, -0.5, -1.0, -0.25, 0.0, -0.75, -0.5, -1.0, 0.25, 0.75, -0.5, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.popDebugGroup()
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder004.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    command_encoder004.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer004 = command_encoder004.finish();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder1000.popDebugGroup()
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder402.setPipeline(render_pipeline400);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query000.destroy()
    query000.destroy()
    command_encoder000.clearBuffer(buffer000);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
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
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer400,
        0,
        400
    );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    device20.destroy();
    query000.destroy()
    query100.destroy()
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    query400.destroy()
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    command_encoder402.pushDebugGroup("mygroupmarker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    query100.destroy()
    query400.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query402.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_bundle_encoder001.setPipeline(render_pipeline002);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder401.popDebugGroup();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder002.setPipeline(render_pipeline002);
    command_encoder100.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder402.copyBufferToBuffer(
        buffer400,
        0,
        buffer402,
        0,
        400
    );
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    compute_pass_encoder0011.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    query403.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array3 = new Float32Array([-0.75, -0.75, 0.25, -0.75, -0.25, 0.25, 0.25, 0.5, 0.0, 0.0, -0.75, 0.25, 1.0, -0.5, 0.25, -0.5, 0.25, -1.0, -1.0, -0.25, -0.75, -0.25, -0.5, -0.5, 0.25, -0.5, -0.5, -0.5, 0.5, -0.25, -1.0, 0.0, 0.5, -0.5, 0.25, -1.0, -0.5, 0.5, -0.25, -0.75, -1.0, 0.25, -0.75, 0.75, 0.75, 0.5, 1.0, -0.75, 0.5, 0.5, 1.0, 0.5, 0.5, 1.0, 0.25, 0.25, 1.0, -0.75, -0.25, 0.0, 1.0, 0.0, -0.75, -0.25, 1.0, -0.25, 0.0, 0.75, -0.25, -0.75, 0.75, -1.0, 0.75, 1.0, 0.25, -0.25, 0.0, 0.25, 0.75, -1.0, -0.75, 1.0, 0.0, 0.75, 0.25, 0.75, -0.25, 1.0, -0.5, -1.0, 0.75, -0.75, 0.0, 0.0, 0.0, 0.25, -0.25, -0.75, -0.5, 0.75, ]);
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
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    command_encoder100.clearBuffer(buffer101);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query100.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    command_encoder103.clearBuffer(buffer100);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device40.queue.submit([command_buffer401, ]);
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder400.insertDebugMarker("marker");
    query400.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder000.popDebugGroup()
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    
    query402.destroy()
    
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    command_encoder103.clearBuffer(buffer100);
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_buffer403 = command_encoder403.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query103.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    query101.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    query001.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    const command_buffer005 = command_encoder005.finish();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder400.popDebugGroup();
    const array4 = new Float32Array([0.25, 0.75, 0.5, -0.5, -1.0, 0.5, 0.0, 0.25, 0.75, 0.25, 0.75, -0.25, -0.5, -0.25, 1.0, -0.75, -0.75, -0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 0.75, 0.5, -0.25, 0.0, 0.25, 0.25, -1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.75, 1.0, -0.5, -0.75, -0.75, -0.75, -0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 0.25, -1.0, -0.5, 0.25, -0.75, 0.5, 1.0, -1.0, -0.5, 0.25, -0.5, -0.5, -0.25, 0.5, 0.25, 0.25, 1.0, -0.25, 1.0, 0.0, -1.0, 0.75, 0.75, -0.25, -1.0, 1.0, -0.25, 0.25, -1.0, -0.25, -0.5, 0.5, 0.5, 0.5, -1.0, -0.5, 0.75, 1.0, -0.25, 0.25, -0.75, 0.25, 1.0, -0.5, ]);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    compute_pass_encoder1000.popDebugGroup()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_buffer103 = command_encoder103.finish();
    
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_bundle_encoder001.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_buffer600 = command_encoder600.finish();
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    query403.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query104.destroy()
    query300.destroy()
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    query104.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    compute_pass_encoder1001.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
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
    compute_pass_encoder1001.insertDebugMarker("marker")
    query300.destroy()
    
    command_encoder402.clearBuffer(buffer404);
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder301.popDebugGroup();
    compute_pass_encoder4040.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const array5 = new Float32Array([-1.0, 0.25, -0.75, 0.75, 0.5, -0.25, -1.0, 0.0, 0.0, 0.75, 0.5, 0.25, 0.0, -0.25, -1.0, -0.75, 1.0, 0.25, 0.0, 0.25, -0.5, -0.5, 0.25, 0.5, 0.5, 0.0, -1.0, -1.0, -0.75, 0.0, 0.5, 0.25, 0.0, -0.75, 0.0, 0.25, 0.75, 0.0, 0.0, 0.0, -1.0, 0.25, 0.0, -0.5, 0.25, 0.75, 0.5, 0.75, -0.75, -0.25, -0.5, 0.25, 0.75, 0.75, -1.0, -0.75, 0.75, 0.5, 0.5, 0.0, -0.25, -0.75, 1.0, -0.25, -0.75, -0.25, 0.5, 0.75, 0.0, 0.5, -1.0, 0.75, 0.5, 1.0, -0.75, -1.0, -0.25, 0.75, -0.25, -0.5, 0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.5, -0.25, 0.25, -0.5, -1.0, -0.75, 0.5, 1.0, 0.0, -0.25, -0.75, 0.0, 0.0, -1.0, ]);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    query103.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    
    query104.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4040.popDebugGroup()
    query401.destroy()
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const array6 = new Float32Array([-1.0, -0.5, -0.25, 1.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.5, 0.0, -0.25, -0.25, 0.0, 0.0, 0.0, 0.75, 0.0, -0.75, -0.25, -0.5, 0.75, 0.5, 0.5, 0.75, -0.75, 0.5, -0.75, -0.5, -1.0, 0.5, -1.0, 0.0, 0.75, 0.5, -0.5, 0.75, -0.75, 0.25, -0.75, -0.25, 0.75, -0.75, -0.25, -0.5, 0.5, 0.25, -1.0, 0.75, 0.5, -0.75, 0.5, 1.0, 0.25, -0.75, -0.25, 0.25, 0.25, 0.25, -0.5, 0.0, -0.5, 0.75, -0.25, 0.25, -0.5, 0.75, 0.0, -0.25, 0.25, -0.5, 1.0, -0.25, 0.0, 0.0, -1.0, -0.25, -1.0, -0.25, 0.75, 0.75, -0.75, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, 0.0, 0.25, -0.25, -0.25, -0.25, -0.75, -0.75, 0.75, -1.0, -1.0, 0.25, -1.0, ]);
    command_encoder400.copyBufferToBuffer(
        buffer400,
        0,
        buffer404,
        0,
        400
    );
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query600.destroy()
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
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
    compute_pass_encoder0011.popDebugGroup()
    
    
    query101.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder0011.insertDebugMarker("marker")
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.copyBufferToBuffer(
        buffer402,
        0,
        buffer404,
        0,
        400
    );
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    render_bundle_encoder302.popDebugGroup();
    query104.destroy()
    command_encoder400.resolveQuerySet(
        query403,
        0,
        32,
        buffer402,
        0
    )
    compute_pass_encoder0010.popDebugGroup()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query600.destroy()
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    command_encoder001.popDebugGroup()
    query100.destroy()
    
    
    
    
    
    
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
    compute_pass_encoder0011.insertDebugMarker("marker")
    query201.destroy()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    command_encoder001.clearBuffer(buffer001);
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    query002.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    command_encoder405.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    compute_pass_encoder1000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    
    
    device40.queue.submit([command_buffer401, ]);
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder0030.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    query300.destroy()
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    render_bundle_encoder301.setPipeline(render_pipeline301);
    render_bundle_encoder301.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer406 = command_encoder406.finish();
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder6010.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder6010.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder4040.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device10.queue.submit([]);
    const command_buffer001 = command_encoder001.finish();
    device40.queue.submit([command_buffer400, command_buffer403, command_buffer406, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder4020.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    device40.queue.submit([command_buffer404, ]);
    device00.queue.submit([command_buffer000, ]);
    device30.queue.submit([command_buffer300, ]);
    command_encoder402.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    compute_pass_encoder0001.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    compute_pass_encoder0010.popDebugGroup()
    command_encoder003.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    command_encoder100.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1000.popDebugGroup()
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    compute_pass_encoder4040.popDebugGroup()
    const command_buffer405 = command_encoder405.finish();
    device30.queue.submit([]);
    device40.queue.submit([command_buffer400, command_buffer405, ]);
    device40.queue.submit([]);
    compute_pass_encoder0011.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0011.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    device60.queue.submit([]);
    const command_buffer402 = command_encoder402.finish();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer601 = command_encoder601.finish();
    device40.queue.submit([command_buffer402, ]);
    command_encoder101.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([]);
    device40.queue.submit([command_buffer402, command_buffer403, command_buffer405, ]);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder4040.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    device00.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer300, ]);
    const command_buffer003 = command_encoder003.finish();
    device40.queue.submit([command_buffer400, command_buffer406, ]);
    device40.queue.submit([]);
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder4040.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
}