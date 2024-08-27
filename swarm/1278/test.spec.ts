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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-1.0, 1.0, 1.0, 0.5, -0.5, -0.25, 0.0, -1.0, 0.75, -0.75, 0.75, 0.75, 0.0, 1.0, -0.5, 0.0, 0.25, 0.25, 0.5, 0.25, -0.75, -0.75, -0.25, 0.25, -0.75, 0.75, -0.75, -0.75, -0.5, -0.5, -0.5, 0.25, -0.5, 0.75, -0.75, 0.75, -0.75, 0.5, -0.75, 0.0, 0.0, 0.5, 1.0, 1.0, -0.5, 0.75, 1.0, 0.5, -0.25, -0.75, -0.25, 1.0, 0.75, 0.0, -0.25, -0.5, 0.25, 0.75, 0.75, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.0, -0.25, -0.75, -0.25, 1.0, 0.25, 0.25, 0.25, -1.0, -1.0, 0.5, -0.5, -0.5, 0.75, 0.5, -0.75, 0.0, 0.25, 0.5, -0.25, 0.5, 0.5, 0.25, 0.25, -0.25, -0.75, 0.0, -0.5, 0.5, -0.75, 0.75, -0.25, 0.25, 1.0, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.pushErrorScope("internal");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.destroy();
    
    device30.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    buffer200.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    device30.destroy();
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    device20.pushErrorScope("internal");
    query200.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const array1 = new Float32Array([1.0, -0.75, -0.25, 1.0, 0.5, 0.25, -0.5, -0.5, 0.0, 0.5, -0.5, -1.0, -0.5, -1.0, -1.0, -0.75, -1.0, -0.5, 0.5, 0.5, 0.75, -1.0, 0.75, 0.0, -1.0, -0.25, 0.0, -0.5, 0.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.25, -0.75, 0.75, 0.0, -1.0, 1.0, 0.0, 0.75, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, 0.5, -1.0, -1.0, 0.5, -0.75, 0.5, 1.0, 0.0, 1.0, 0.5, 0.0, 0.0, 0.75, -0.5, 0.0, -0.5, 0.5, 0.75, 0.75, -0.25, 0.0, -0.5, 0.75, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, -0.5, -0.25, -1.0, 0.0, -0.25, -0.5, 1.0, -0.5, -0.75, -0.75, 0.0, 1.0, -1.0, -1.0, 1.0, -0.25, -0.5, -0.5, 0.25, 0.25, -1.0, 0.25, -1.0, ]);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.insertDebugMarker("mymarker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    command_encoder200.insertDebugMarker("mymarker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer001 = command_encoder001.finish();
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_buffer200 = command_encoder200.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder2020.popDebugGroup()
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array2 = new Float32Array([-0.75, -0.75, 0.0, 0.25, -1.0, 0.0, -1.0, 0.75, 0.75, 0.0, 0.0, -1.0, -0.25, 0.0, -0.75, -0.75, 0.0, -0.25, 0.5, 0.25, -1.0, -0.5, 0.5, 0.0, 0.25, 0.75, 0.0, 0.75, 1.0, -0.75, -1.0, 0.0, -0.75, 0.25, -0.5, 0.0, 1.0, 0.75, 0.0, 0.25, -0.5, -0.75, -1.0, -0.5, 0.5, 1.0, 0.25, 0.75, -0.25, 0.75, -0.75, -0.25, -1.0, 1.0, 0.75, -0.25, 0.25, -0.25, 0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 0.25, -0.5, -0.25, -1.0, 0.75, 0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 0.25, -1.0, -1.0, 0.75, 0.0, 0.0, 0.5, -0.25, -0.25, -0.75, -0.5, 1.0, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, 0.25, 0.0, -0.5, 0.0, -0.25, 1.0, -0.25, ]);
    
    
    device30.queue.submit([]);
    
    query200.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer000.destroy()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    command_encoder203.insertDebugMarker("mymarker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query201.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0020.executeBundles([])
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query000.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    query201.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.popDebugGroup()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query201.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    
    render_pass_encoder0020.executeBundles([])
    device30.pushErrorScope("internal");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    texture000.destroy();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.submit([command_buffer001, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.pushErrorScope("out-of-memory");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder204.clearBuffer(buffer200);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture100.destroy();
    render_bundle_encoder000.popDebugGroup();
    
    query200.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture200.destroy();
    const command_buffer204 = command_encoder204.finish();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0040.executeBundles([])
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const array3 = new Float32Array([-0.25, -0.5, -0.75, 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, -0.25, 1.0, -0.25, -0.75, 0.75, -0.5, 1.0, 0.5, -0.25, -0.25, 0.0, 1.0, -0.5, -0.25, 0.5, -0.5, 0.25, 0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 0.5, -0.5, 0.25, -0.5, -0.5, -1.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.5, -0.75, -0.5, 0.0, -0.25, 0.0, -1.0, -1.0, -0.75, 0.25, 0.75, -0.5, 0.0, 0.5, -1.0, 1.0, 0.75, 1.0, 0.0, -1.0, 0.5, -0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.0, -1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.25, 0.5, -1.0, 1.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, 0.5, -0.75, 0.0, 0.5, 0.75, -1.0, -0.5, -0.25, 0.0, 1.0, 0.75, 0.5, 1.0, ]);
    device60.pushErrorScope("validation");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder200.popDebugGroup();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder0020.executeBundles([])
    
    device20.pushErrorScope("validation");
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    texture001.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder0000.popDebugGroup()
    query200.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([command_buffer003, ]);
    query200.destroy()
    render_pass_encoder0040.setStencilReference(1);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder205.insertDebugMarker("mymarker");
    buffer201.destroy()
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder002.insertDebugMarker("mymarker");
    render_pass_encoder0050.executeBundles([])
    command_encoder205.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0040.popDebugGroup()
    render_bundle_encoder201.popDebugGroup();
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query201.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer002 = command_encoder002.finish();
    
    query202.destroy()
    
    compute_pass_encoder2020.popDebugGroup()
    
    
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer002, ]);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    texture400.destroy();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder0050.executeBundles([])
    
    
    render_pass_encoder0050.endOcclusionQuery()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.pushErrorScope("validation");
    query001.destroy()
    
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
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
    query201.destroy()
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0051.pushDebugGroup("group_marker");
    render_pass_encoder0050.executeBundles([])
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2030.popDebugGroup()
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    render_pass_encoder0020.executeBundles([])
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder202.popDebugGroup();
    
    render_pass_encoder0051.pushDebugGroup("group_marker");
    const array4 = new Float32Array([1.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.25, -1.0, 0.5, -0.75, 0.75, 0.5, 0.0, -0.75, 0.75, 1.0, -0.25, -0.75, 0.5, -0.5, 1.0, 0.0, -1.0, 0.25, -0.75, 0.0, -0.5, 0.75, -0.25, -0.5, -1.0, -0.75, -0.75, -1.0, -0.5, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.5, 0.5, -0.25, 0.5, -1.0, -0.75, 0.25, 0.25, -0.5, -1.0, 1.0, 0.75, -0.75, 0.5, 0.25, -1.0, 0.5, 0.25, 0.25, 1.0, 0.25, 0.5, 0.0, -0.5, 0.5, 0.5, 0.5, -0.25, -1.0, 0.75, -1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 0.5, -1.0, 0.0, 0.0, 0.25, 0.5, 1.0, 0.0, 1.0, -0.5, -0.75, -0.25, -0.5, 0.0, -0.5, 0.25, 1.0, -0.5, -0.5, 0.0, -0.25, ]);
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0050.executeBundles([])
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0051.executeBundles([])
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder205.clearBuffer(buffer200);
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0040.setStencilReference(1);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_pass_encoder0001.pushDebugGroup("group_marker");
    compute_pass_encoder0040.insertDebugMarker("marker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const array5 = new Float32Array([0.0, 0.5, 0.25, 1.0, -0.25, 0.25, 1.0, 0.25, -1.0, 0.25, 0.25, -0.5, 0.25, -0.5, 0.0, 1.0, -0.5, 1.0, 0.25, 0.0, -0.75, -1.0, -0.75, -0.25, 0.25, -1.0, 1.0, 1.0, 0.25, 0.75, 0.25, -0.5, 1.0, -0.25, 0.0, 1.0, 0.25, 0.5, -1.0, 0.5, -0.5, -0.25, -0.5, -0.25, -1.0, 0.0, 0.0, 0.25, 0.5, -1.0, -0.5, -0.5, 1.0, 0.5, -1.0, 0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 0.25, -0.25, 0.5, 0.5, -0.75, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 0.75, 0.5, 1.0, 1.0, -0.25, 0.5, 0.5, -0.25, -1.0, -1.0, 1.0, -0.25, -0.25, 0.75, 0.0, -0.25, 0.75, -0.75, 1.0, -0.25, 0.75, 0.0, 0.25, 0.75, -0.75, -0.25, 0.75, 0.75, ]);
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    
    command_encoder602.insertDebugMarker("mymarker");
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const array6 = new Float32Array([-0.25, 0.5, -0.25, -0.25, 0.25, 1.0, -0.5, -0.75, 1.0, 0.0, -1.0, 0.0, 0.75, 1.0, -0.5, 0.5, -0.5, 0.75, -0.25, 0.75, -0.75, 0.75, -1.0, -1.0, -1.0, 0.75, 0.25, -0.75, 0.0, 1.0, -0.25, 0.75, 0.75, 1.0, -0.5, 0.0, 1.0, 1.0, 0.25, 0.0, -1.0, 0.25, 1.0, 0.0, 0.25, 1.0, 0.25, 0.5, -1.0, 0.25, -0.75, -1.0, -0.5, 0.0, -0.75, 1.0, 0.0, -1.0, 0.25, -0.5, 0.5, -0.5, 0.75, 1.0, 1.0, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, 0.75, 0.75, 0.75, 0.25, -0.75, 0.0, -0.25, 0.75, 0.25, 0.5, 0.0, -1.0, 0.0, 0.25, 1.0, 0.5, 0.75, 0.75, 0.0, 0.25, -0.75, -1.0, -0.75, 0.25, 1.0, 0.75, 0.25, 0.5, -0.5, ]);
    
    render_pass_encoder0040.setStencilReference(1);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder206.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.executeBundles([])
    
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder206.clearBuffer(buffer201);
    
    
    render_pass_encoder0050.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder0041.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.setStencilReference(1);
    buffer602.destroy()
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder206.insertDebugMarker("mymarker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder206.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0051.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const command_buffer602 = command_encoder602.finish();
    compute_pass_encoder6010.insertDebugMarker("marker")
    render_pass_encoder0050.beginOcclusionQuery(0)
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_buffer005 = command_encoder005.finish();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query202.destroy()
    
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    render_pass_encoder0051.executeBundles([])
    
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_bundle_encoder001.popDebugGroup();
    command_encoder206.pushDebugGroup("mygroupmarker")
    buffer600.destroy()
    render_pass_encoder0051.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const command_buffer603 = command_encoder603.finish();
    
    buffer203.destroy()
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    
    
    const array7 = new Float32Array([0.75, 0.75, -1.0, 1.0, -0.5, -0.25, 1.0, -1.0, -1.0, -0.5, 0.0, -0.5, -0.75, -0.75, -0.75, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, 0.0, 1.0, 0.5, -0.25, 0.0, -0.5, 0.75, 0.75, -0.75, -1.0, 0.75, 0.0, -1.0, -1.0, -1.0, -0.25, -0.75, 1.0, -0.75, -0.5, 1.0, -0.5, -0.75, -0.75, -0.5, -0.75, -0.5, -1.0, 0.75, -0.25, 0.5, 0.5, 0.75, 0.75, 1.0, 0.75, 0.75, 0.5, 0.0, -0.75, 0.75, 0.75, -0.25, 0.0, 1.0, -0.5, 0.0, 0.5, -0.25, 0.25, -0.25, 1.0, -1.0, -1.0, -0.5, -0.25, 0.5, 1.0, 1.0, -1.0, 1.0, -0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.0, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 1.0, 0.0, 0.75, 0.0, -0.75, ]);
    query200.destroy()
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_pass_encoder0050.executeBundles([])
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setStencilReference(1);
    command_encoder206.popDebugGroup()
    buffer601.destroy()
    render_pass_encoder0050.setStencilReference(1);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    buffer202.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("out-of-memory");
    
    
    device60.queue.submit([command_buffer602, ]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder604.pushDebugGroup("mygroupmarker")
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    command_encoder604.popDebugGroup()
    render_pass_encoder0041.executeBundles([])
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    device00.queue.submit([command_buffer005, ]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
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
    
    
    
    render_pass_encoder0050.endOcclusionQuery()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setStencilReference(1);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder0000.executeBundles([])
    
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder2050.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer206 = command_encoder206.finish();
    compute_pass_encoder2030.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0050.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    command_encoder203.popDebugGroup()
    const command_buffer604 = command_encoder604.finish();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder0040.endOcclusionQuery()
    device60.queue.submit([command_buffer604, ]);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2020.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder0000.endOcclusionQuery()
    device60.queue.submit([command_buffer603, ]);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer203 = command_encoder203.finish();
    device70.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder0051.endOcclusionQuery()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2030.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([]);
    render_pass_encoder0050.endOcclusionQuery()
    device20.queue.submit([]);
    device60.queue.submit([]);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder2010.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    render_pass_encoder0050.endOcclusionQuery()
}