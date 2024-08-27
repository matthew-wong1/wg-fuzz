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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array0 = new Float32Array([0.75, 0.75, 1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.75, -0.5, 0.5, -0.75, -0.25, -0.75, 0.0, 1.0, 0.5, 0.5, -0.75, 0.25, 0.0, -0.25, 1.0, -1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, 0.0, -0.5, 0.0, -1.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 0.0, 0.0, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 0.0, -0.5, 0.0, -0.5, 0.25, -0.25, 0.25, -0.25, -0.75, -0.75, 1.0, -0.25, -0.75, -0.25, 1.0, 0.25, -0.25, -1.0, -1.0, 0.75, 0.75, 0.25, 1.0, -0.25, -0.25, -0.25, 0.5, 0.25, 0.25, -1.0, -0.25, 0.25, -0.25, 1.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.25, -0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    buffer001.destroy()
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder002.insertDebugMarker("mymarker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.destroy();
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    
    
    compute_pass_encoder0010.popDebugGroup()
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array1 = new Float32Array([-0.5, -0.25, 0.75, 0.0, -1.0, 0.0, 0.25, -1.0, -0.75, -0.25, -0.25, 0.75, 0.75, 0.0, 0.75, 0.5, 0.5, 0.0, -0.75, 0.0, -0.25, 0.75, -0.5, -0.25, 0.25, 1.0, -0.25, -0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 0.5, 1.0, 0.5, -0.5, -1.0, 1.0, 0.75, 0.0, 0.25, 0.0, -0.5, 0.75, -1.0, -1.0, -1.0, -1.0, -1.0, -0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.5, -0.5, 0.75, -0.75, 0.75, -0.25, -0.5, 1.0, 1.0, 0.75, 0.25, 0.0, -0.5, -0.25, 0.75, 1.0, -0.75, -1.0, 1.0, -0.75, 1.0, -0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.75, 0.0, 1.0, -0.75, 0.0, 0.5, -1.0, 0.25, -0.75, 0.5, 0.0, -0.25, -0.75, -1.0, -0.25, -0.75, -0.25, ]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder002.insertDebugMarker("mymarker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
        occlusionQuerySet: undefined
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.75, 0.25, 1.0, 0.25, -0.75, 1.0, 0.75, -1.0, 1.0, 0.75, -1.0, 1.0, 0.25, -0.5, -0.25, 0.5, 0.25, 0.25, 0.0, -0.75, -0.25, 0.5, 0.75, -0.5, -1.0, 0.75, 0.25, 1.0, -0.25, -1.0, -0.5, -0.25, 0.75, -1.0, 1.0, 0.0, -0.75, -1.0, -0.5, 0.75, 0.5, 1.0, -0.25, 0.25, 0.75, 1.0, 1.0, 0.25, 0.25, -0.25, -0.25, -0.5, 0.75, 0.75, 1.0, 0.5, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, 1.0, 0.0, -0.75, 1.0, 0.75, -0.25, 0.25, -0.5, 0.0, 1.0, -1.0, -0.25, -1.0, 1.0, 1.0, -0.5, 1.0, 0.25, 0.25, -0.75, 0.5, -0.75, 0.75, 0.5, 0.25, -0.25, 0.25, 1.0, 1.0, 0.75, 0.25, -0.5, 0.0, 0.0, -0.75, -1.0, 0.75, 1.0, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.insertDebugMarker("mymarker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
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
        occlusionQuerySet: query000
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.setStencilReference(1);
    buffer001.destroy()
    
    buffer002.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0030.setStencilReference(1);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer003.destroy()
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device30.destroy();
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const array3 = new Float32Array([0.0, -1.0, 0.25, 0.0, 0.0, 0.75, -1.0, 0.25, -1.0, 0.0, -0.75, 0.0, -1.0, -0.25, 0.0, 0.75, 0.25, 0.5, 0.75, -0.5, -0.5, 1.0, 1.0, 0.25, 0.75, 0.5, -0.5, -0.25, 0.5, 0.75, -1.0, 1.0, -1.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.75, 0.0, -0.5, -1.0, 0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.75, -0.25, 0.5, 0.5, -0.25, 0.0, 0.5, 1.0, -0.75, -0.5, 0.25, 0.25, 0.0, -0.75, -0.25, 0.5, -0.5, -1.0, 0.75, -0.25, -0.25, 0.0, -0.25, 0.5, -0.75, 1.0, -0.5, 1.0, -0.25, -0.25, -1.0, -1.0, 0.25, -0.5, 0.0, 0.0, 0.25, -0.25, -1.0, -0.5, -0.75, 0.5, 0.25, -1.0, 0.0, 0.25, 0.25, -0.25, 0.0, 1.0, -0.5, 0.0, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.0, -0.25, -0.75, -1.0, -0.75, -1.0, 0.75, -0.25, 0.0, 0.25, 0.0, -1.0, -0.75, -0.75, 0.25, 0.75, 0.25, -1.0, 1.0, -0.5, -0.5, 0.0, -0.75, 0.5, -0.25, 0.0, -0.25, -0.75, -0.75, -0.75, -0.5, 0.75, 1.0, 0.0, 0.0, 0.25, 0.75, 0.25, 0.25, 0.25, 0.0, 1.0, -1.0, -0.5, 0.25, 0.75, -0.5, 1.0, -0.75, 1.0, 0.0, -0.25, -0.75, -1.0, 1.0, -0.75, 0.25, -0.75, -0.5, 0.25, -0.5, -0.25, -0.25, -0.75, 1.0, -1.0, 0.5, 0.25, -0.75, 0.0, 0.75, 0.75, 1.0, -1.0, 0.5, -1.0, 1.0, 0.75, -0.25, 1.0, -0.75, 0.75, 0.75, 0.75, 0.0, 1.0, 0.0, -0.25, -0.75, 0.25, 0.25, -0.25, -1.0, -0.25, -0.5, 0.75, 0.25, 0.25, 0.5, -1.0, ]);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    device10.destroy();
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
        occlusionQuerySet: query000
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query002.destroy()
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_pass_encoder0050.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_pass_encoder0031.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer201 = command_encoder201.finish();
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_pass_encoder0051.popDebugGroup();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0051.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0052 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query000
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0052.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_pass_encoder0041.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0041.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    query400.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder0060.setStencilReference(1);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const render_pass_encoder0042 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    
    render_pass_encoder0041.setStencilReference(1);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer006.destroy()
    render_pass_encoder0042.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0041.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.setStencilReference(1);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0042.setStencilReference(1);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0061.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query400.destroy()
    
    buffer005.destroy()
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    compute_pass_encoder2000.popDebugGroup()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    render_pass_encoder0041.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder0052.beginOcclusionQuery(0)
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0052.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0051.setStencilReference(1);
    
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0070.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.copyBufferToBuffer(
        buffer006,
        0,
        buffer004,
        0,
        400
    );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder0020.popDebugGroup()
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    
    
    render_pass_encoder0052.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query002.destroy()
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0040.insertDebugMarker("marker");
    
    device00.queue.submit([]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query002
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder0060.insertDebugMarker("marker");
    buffer401.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0061.setStencilReference(1);
    const array5 = new Float32Array([-0.25, 0.0, 0.0, 1.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.5, 0.25, 0.75, -0.75, 0.5, -1.0, 0.75, -0.25, 1.0, 0.75, -0.25, 0.0, -0.25, -1.0, -0.75, 0.0, -0.5, 0.75, -0.5, -0.25, -0.25, -0.75, 0.0, 1.0, -1.0, 0.0, -0.75, 0.5, 0.75, -0.75, -1.0, -1.0, 0.5, 0.0, 0.0, 0.75, 0.0, -0.75, -1.0, 1.0, 1.0, -0.5, 1.0, 0.5, -0.5, 0.5, -1.0, 1.0, -0.75, -1.0, -0.25, 1.0, 0.75, -1.0, -1.0, 0.0, -0.25, -0.75, 0.75, 0.25, 0.25, 0.0, -0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 0.25, 0.0, 0.75, 1.0, 0.5, -0.5, -0.5, 0.75, 0.25, -0.25, -1.0, -1.0, -0.25, 0.0, 1.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.25, 0.5, 1.0, ]);
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    buffer200.destroy()
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pass_encoder0071 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0021.setStencilReference(1);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.beginOcclusionQuery(0)
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0011.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const array6 = new Float32Array([-0.25, -1.0, 0.0, 1.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.25, 0.25, 0.25, -1.0, -1.0, -0.5, 0.5, 1.0, 0.0, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, -0.25, 1.0, 0.5, 0.25, 0.0, 0.0, 1.0, 0.0, -0.25, 0.0, -0.75, -0.5, -0.25, -0.75, 0.5, -1.0, -0.25, 0.25, -1.0, 0.0, 0.75, 0.75, 0.75, 0.0, -1.0, -0.5, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, -0.75, 0.5, -0.75, -0.5, 0.5, -0.25, 0.5, -1.0, -1.0, 0.75, 0.0, -1.0, 0.5, 0.0, -1.0, -0.5, -0.5, 0.0, 0.25, -0.5, 1.0, -1.0, 0.75, -0.5, 0.0, -1.0, -1.0, -0.75, -0.5, -0.5, -0.5, 1.0, 1.0, 0.5, 0.25, -0.75, 0.5, 1.0, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder0060.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0052.insertDebugMarker("marker");
    
    render_pass_encoder0060.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setStencilReference(1);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pass_encoder0012 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0051.insertDebugMarker("marker");
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0012.insertDebugMarker("marker");
    query402.destroy()
    
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    render_pass_encoder0001.setStencilReference(1);
    command_encoder004.clearBuffer(buffer006);
    render_pass_encoder0031.insertDebugMarker("marker");
    render_pass_encoder0041.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0051.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const compute_pass_encoder0041 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0041" });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    
    compute_pass_encoder0041.pushDebugGroup("group_marker")
    query001.destroy()
    render_pass_encoder0012.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    render_pass_encoder0030.setStencilReference(1);
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0052.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0001.insertDebugMarker("marker");
    query003.destroy()
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    const command_buffer401 = command_encoder401.finish();
    
    buffer201.destroy()
    render_pass_encoder0001.setStencilReference(1);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder0001.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query402.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query001.destroy()
    render_pass_encoder0052.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    query005.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    command_encoder007.pushDebugGroup("mygroupmarker")
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0070.insertDebugMarker("marker");
    buffer005.destroy()
    render_pass_encoder0030.setStencilReference(1);
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    
    const render_pass_encoder0072 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0072",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    
    render_pass_encoder0052.setStencilReference(1);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0052.insertDebugMarker("marker");
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0050.setStencilReference(1);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0072.setStencilReference(1);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0040.insertDebugMarker("marker")
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
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
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    compute_pass_encoder0041.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0052.setStencilReference(1);
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder0050.setStencilReference(1);
    
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0061.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0041.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0061.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0050.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0032.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0071.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0072.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0072.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0041.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0042.popDebugGroup();
    render_pass_encoder0072.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0072.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device40.queue.submit([]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    const command_buffer004 = command_encoder004.finish();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0032.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0052.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0050.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0042.popDebugGroup();
    device40.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0072.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0072.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer004, ]);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    device20.queue.submit([]);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0061.popDebugGroup();
}