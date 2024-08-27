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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.destroy();
    
    
    
    
    const array0 = new Float32Array([0.75, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, 0.5, 0.5, 0.75, 0.0, -0.5, 1.0, -0.25, -0.75, 0.5, 1.0, 1.0, 0.5, -0.75, -0.5, 1.0, -1.0, -0.25, -1.0, -0.5, 0.75, 0.75, 0.5, 1.0, 0.5, -0.5, -0.5, 0.5, 1.0, 0.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.0, 0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.0, -0.25, -0.25, -0.75, 0.5, 0.25, -1.0, 1.0, 0.25, -1.0, 0.5, -1.0, -1.0, 0.0, 0.5, -0.5, 0.25, -0.5, 0.25, -0.5, -0.75, -0.75, -0.5, -0.75, -0.75, -0.75, -0.5, 0.5, 1.0, 0.5, 1.0, 0.0, -0.5, -0.5, 0.25, -0.25, 0.25, 0.75, 0.5, 0.25, -0.25, 0.75, 0.25, -0.25, -0.5, 0.75, 1.0, 0.25, -0.5, 1.0, -0.5, 1.0, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder100.clearBuffer(buffer100);
    
    const array1 = new Float32Array([-0.75, 0.75, 0.5, 1.0, -0.75, -0.25, 0.5, 0.25, -0.5, 0.25, -0.75, -0.25, -0.5, -0.5, -0.75, -0.5, -0.75, 0.25, -0.75, 0.75, 0.0, 0.5, 0.75, 0.0, 0.25, -1.0, 0.5, -1.0, 0.25, 0.25, -0.75, -0.5, 0.75, -1.0, -1.0, 0.0, -0.75, -0.5, 0.0, -0.25, 0.0, 0.5, 0.5, -0.5, 0.0, -0.25, -0.5, -0.75, -0.75, -0.25, 0.5, 0.25, -1.0, 1.0, 0.25, 0.0, 0.75, -1.0, -0.5, -0.75, 0.25, -0.25, 1.0, -0.25, -0.5, 0.5, 0.75, -0.25, 0.0, 1.0, -0.5, -1.0, 1.0, 0.25, 0.0, -1.0, -1.0, 0.0, 0.5, -0.75, 0.0, -0.75, 0.75, 0.0, -0.25, 1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -1.0, -0.75, 0.75, 0.25, 0.0, -0.75, 0.25, -0.5, -1.0, ]);
    command_encoder100.insertDebugMarker("mymarker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device10.pushErrorScope("out-of-memory");
    device10.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder101.clearBuffer(buffer100);
    
    
    
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
    
    
    command_encoder202.clearBuffer(buffer200);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.0, 0.75, 0.0, -1.0, -0.75, -0.25, -0.5, 0.5, -0.75, 0.25, 0.0, 0.0, 0.75, -1.0, -0.5, -0.75, 0.0, -0.5, 0.5, 0.75, -0.5, 0.0, -0.75, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, -0.5, -0.5, 0.0, -1.0, 0.5, 0.25, 1.0, 0.25, 0.5, 0.75, -1.0, -1.0, 0.0, 1.0, 0.25, -0.5, -0.75, 1.0, 0.25, -0.5, 0.0, 1.0, 1.0, -1.0, -0.75, -0.25, -0.25, 0.0, -1.0, 0.5, 0.25, 1.0, 1.0, 0.25, 0.5, -1.0, -0.75, -0.5, -1.0, 1.0, -1.0, -1.0, 0.5, 0.0, -1.0, 0.75, -0.25, -0.75, 0.25, -0.25, 0.25, -0.5, 0.5, 0.5, -0.75, -0.5, 0.25, 0.5, 0.75, -0.25, -0.5, 0.75, -0.75, -0.25, 1.0, -1.0, 0.25, -0.75, 0.0, 0.75, 1.0, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    texture201.destroy();
    texture202.destroy();
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    texture200.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.submit([]);
    command_encoder201.clearBuffer(buffer200);
    render_pass_encoder2020.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const array3 = new Float32Array([0.0, 0.75, 0.5, 0.75, 0.0, 1.0, -0.25, -1.0, -0.75, 0.5, 0.0, -0.75, -1.0, 0.25, -0.25, 0.75, 0.5, 0.0, 0.75, 1.0, 0.25, 1.0, -0.5, 0.5, 0.5, -0.25, -0.25, 0.25, 0.0, -0.5, 0.0, 0.0, 0.25, 0.25, 0.25, 0.0, 1.0, -0.5, 0.25, 1.0, -0.5, -0.5, -0.5, -0.5, 0.0, -0.25, -0.25, -0.5, -0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 0.5, -1.0, -0.75, 0.75, -0.25, 0.75, 1.0, 1.0, 0.5, -0.5, -0.75, 0.5, 0.75, 0.5, 0.0, 1.0, 1.0, -1.0, 1.0, 0.0, 0.5, -0.75, -1.0, 0.25, -1.0, 0.75, 1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 0.5, -0.5, 0.0, 1.0, 0.0, 0.0, 0.5, 0.25, 1.0, 0.75, -0.25, -1.0, 0.25, -1.0, ]);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.executeBundles([])
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.setStencilReference(1);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.25, -0.25, 0.25, -0.75, 0.0, -1.0, 0.75, 0.75, 1.0, 0.5, -0.75, 0.0, -0.75, -0.25, 1.0, 1.0, -0.25, 0.0, 0.0, -0.25, -0.5, -1.0, 1.0, 0.75, -1.0, 0.0, -0.25, -0.25, 0.25, -0.75, -0.75, 0.75, -0.5, 0.0, -0.5, 0.25, 0.25, 0.5, -0.75, 1.0, -1.0, -0.25, 0.0, -0.25, 0.25, 0.0, -1.0, 0.75, 0.5, -0.25, 0.5, -1.0, -1.0, -0.5, 0.75, -0.75, -0.25, 0.25, -1.0, -0.25, 0.75, 1.0, 0.75, 0.75, -1.0, 0.5, -0.5, 0.0, 0.5, -0.75, -0.25, 0.0, -0.25, 0.0, 0.25, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, 0.25, 0.25, 0.0, -0.75, 0.5, -0.25, -0.25, -0.5, 1.0, 0.0, 0.75, -0.25, 0.25, 0.25, -0.75, -1.0, -1.0, -0.5, 0.0, ]);
    
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder2020.setStencilReference(1);
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_pass_encoder2000.executeBundles([])
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    
    render_pass_encoder2010.setStencilReference(1);
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setStencilReference(1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    buffer400.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture400.destroy();
    texture402.destroy();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.executeBundles([])
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder400.insertDebugMarker("mymarker");
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    
    
    command_encoder400.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2010.setStencilReference(1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder101.clearBuffer(buffer100);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.destroy();
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    render_pass_encoder2010.executeBundles([])
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_pass_encoder2000.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.executeBundles([render_bundle_encoder200, ])
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder2020.insertDebugMarker("marker");
    device50.pushErrorScope("validation");
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    
    render_pass_encoder2010.executeBundles([])
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture202.destroy();
    
    
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device50.destroy();
    render_pass_encoder2020.executeBundles([])
    texture203.destroy();
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2001.executeBundles([])
    
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device20.pushErrorScope("out-of-memory");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2000.executeBundles([render_bundle_encoder200, ])
    render_pass_encoder2010.executeBundles([])
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
        occlusionQuerySet: undefined
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_bundle_encoder202.setPipeline(render_pipeline202);
    render_pass_encoder2001.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    
    render_pass_encoder2001.executeBundles([])
    buffer201.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2001.setPipeline(render_pipeline202);
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    render_pass_encoder2000.setPipeline(render_pipeline201);
    buffer201.destroy()
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
    render_pass_encoder2030.setStencilReference(1);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2020.popDebugGroup();
    command_encoder204.insertDebugMarker("mymarker");
    render_pass_encoder2010.executeBundles([render_bundle_encoder202, ])
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
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
        occlusionQuerySet: undefined
    });
    device50.destroy();
    render_pass_encoder2021.setPipeline(render_pipeline201);
    render_pass_encoder2011.setPipeline(render_pipeline203);
    command_encoder204.clearBuffer(buffer201);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group200);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder2001.setStencilReference(1);
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_pass_encoder2030.popDebugGroup();
    
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    buffer202.destroy()
    render_pass_encoder2020.setStencilReference(1);
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.setStencilReference(1);
    command_encoder204.copyBufferToBuffer(
        buffer203,
        0,
        buffer201,
        0,
        400
    );
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    render_pass_encoder2040.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_pass_encoder2040.setStencilReference(1);
    texture204.destroy();
    
    render_pass_encoder2011.setVertexBuffer(0, buffer204);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.pushDebugGroup("group_marker");
    render_pass_encoder2040.setPipeline(render_pipeline200);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    render_pass_encoder2041.setPipeline(render_pipeline200);
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_pass_encoder2001.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2040.popDebugGroup();
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2041.setBindGroup(0, bind_group202);
    buffer204.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    render_pass_encoder2001.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2041.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    
    render_pass_encoder2001.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const array5 = new Float32Array([-1.0, 1.0, 0.0, -0.5, 0.25, -1.0, 0.5, -0.5, -0.75, -1.0, 0.75, -1.0, 0.5, 0.75, -0.75, -0.5, -0.75, -0.75, -1.0, 0.75, 1.0, 1.0, -0.25, -1.0, 0.25, 1.0, 0.75, 0.25, -0.25, -0.25, -0.5, -0.5, -0.75, 0.0, 0.5, 0.5, 0.25, 0.0, -0.5, -0.75, -0.75, 0.75, 0.25, 0.0, 0.75, 0.75, -0.5, -1.0, 1.0, -0.5, 0.75, -0.5, 0.25, 0.0, -0.5, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, -0.75, 0.25, 0.75, 0.0, -0.5, -0.5, -1.0, 0.0, -1.0, 0.75, -0.75, -1.0, -0.75, -0.75, 0.75, 0.5, 0.0, -0.75, 1.0, 0.25, -0.75, 1.0, 1.0, -0.5, 0.5, 1.0, -0.25, 0.5, 0.0, 0.75, 1.0, 0.25, -1.0, ]);
    buffer206.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2041.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2041.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    render_pass_encoder2030.setStencilReference(1);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.pushDebugGroup("group_marker");
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group203);
    render_pass_encoder2011.end();
    
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group204);
    
    render_pass_encoder2041.insertDebugMarker("marker");
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    render_bundle_encoder201.popDebugGroup();
    command_encoder201.copyBufferToBuffer(
        buffer2012,
        0,
        buffer202,
        0,
        400
    );
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2001.setStencilReference(1);
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2001.insertDebugMarker("marker");
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    buffer205.destroy()
    
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
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
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device50.pushErrorScope("internal");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer2014.destroy()
    
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module2010,
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
            module: shader_module2010,
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
    
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2012.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
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

    render_pass_encoder2001.setBindGroup(0, bind_group206);
    
    
    render_pass_encoder2012.setPipeline(render_pipeline207);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    render_pass_encoder2040.setVertexBuffer(0, buffer202);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2041.setVertexBuffer(0, buffer202);
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.draw(3);
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder2030.setVertexBuffer(0, buffer209);
    buffer2015.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    buffer2015.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2012.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    {
        await buffer2013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2013.unmap();
        console.log(new Float32Array(data));
    }
    device20.pushErrorScope("internal");
    
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture205
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2011.end();
    render_pass_encoder2021.setVertexBuffer(0, buffer2015);
    render_pass_encoder2041.drawIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2040.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group207);
    render_pass_encoder2000.setVertexBuffer(0, buffer205);
    render_pass_encoder2001.setVertexBuffer(0, buffer2015);
    render_pass_encoder2021.draw(3);
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group208);
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer204);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2041.end();
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
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline207.getBindGroupLayout(0),
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

    render_pass_encoder2012.setBindGroup(0, bind_group209);
    render_pass_encoder2030.end();
    render_pass_encoder2020.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2041.drawIndirect(buffer200, 0);
    render_pass_encoder2012.setVertexBuffer(0, buffer2015);
    render_pass_encoder2012.drawIndirect(buffer2022, 0);
    render_pass_encoder2012.end();
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2012.draw(3);
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
}