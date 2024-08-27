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
    const array0 = new Float32Array([0.75, -0.75, 1.0, -0.75, 0.75, -1.0, -1.0, -0.25, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, -0.75, -0.25, -0.5, 0.25, -0.5, 0.25, 1.0, 0.0, -0.5, 0.75, -0.25, -0.75, 0.75, -0.75, 0.5, -0.75, -0.25, 1.0, -0.5, 0.5, 0.0, 0.25, -1.0, 0.5, -0.25, 1.0, 1.0, 0.25, -0.25, -0.75, 0.25, -0.5, 1.0, 0.25, 1.0, -0.75, -0.75, -1.0, -0.5, -1.0, 0.5, -0.5, -0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 0.5, 0.0, -1.0, -0.25, -1.0, 0.0, 0.5, -0.5, -0.5, -0.5, 0.25, -0.75, 0.75, 0.75, -1.0, -0.5, 0.75, 1.0, 1.0, 1.0, -0.75, 1.0, -1.0, 0.0, -0.75, 0.5, 0.75, -0.25, -0.75, 0.0, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, -0.5, 0.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.pushErrorScope("validation");
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0000.popDebugGroup()
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const array1 = new Float32Array([-1.0, -0.25, 0.25, 0.75, -0.5, 1.0, 0.0, -0.5, -0.25, -0.75, -0.75, -0.25, 1.0, 0.25, 0.5, 0.75, -0.5, 0.25, 0.0, 0.25, 0.5, 0.25, -1.0, 0.5, 0.0, 1.0, -1.0, 0.0, 1.0, 0.25, 0.75, 1.0, 0.5, 0.5, -0.75, -1.0, 1.0, 0.0, -0.25, 0.0, 1.0, 1.0, -0.5, -0.25, 0.25, 0.5, 0.5, 0.75, 0.25, -0.75, 0.75, -0.5, -0.25, -0.25, 0.5, 0.0, -0.5, 0.5, -0.75, 1.0, 0.25, -1.0, -0.25, 1.0, 0.25, 0.0, 0.25, 1.0, -0.75, 0.25, -0.25, -0.25, -1.0, 1.0, 0.75, 0.25, -0.25, 0.5, -1.0, 0.0, 1.0, -0.75, 0.0, -0.75, 1.0, 0.25, -0.25, -1.0, -1.0, -0.5, -1.0, 0.75, 1.0, -1.0, 0.25, -1.0, -0.25, 0.25, 1.0, -1.0, ]);
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    render_pass_encoder0000.setStencilReference(1);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0000.beginOcclusionQuery(0)
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setStencilReference(1);
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0011.executeBundles([])
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder0000.executeBundles([])
    query300.destroy()
    query001.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0000.setStencilReference(1);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query300.destroy()
    query300.destroy()
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.destroy();
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0010.popDebugGroup();
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query001.destroy()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0011.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.setStencilReference(1);
    compute_pass_encoder0000.popDebugGroup()
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    device00.pushErrorScope("out-of-memory");
    
    render_pass_encoder0000.setStencilReference(1);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const array2 = new Float32Array([-1.0, -1.0, -0.5, -0.5, 0.75, 0.75, -1.0, -1.0, 0.25, 0.5, -1.0, 0.75, -0.5, -0.5, -1.0, 0.5, -1.0, 1.0, -1.0, -0.25, -0.5, 1.0, 1.0, 0.5, 0.25, -1.0, -0.25, 0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 0.25, 0.5, 1.0, -1.0, -1.0, -1.0, -0.75, -1.0, -0.25, -1.0, 1.0, -0.25, 0.0, 1.0, -0.5, -0.75, -1.0, 1.0, 0.5, -1.0, -0.25, 0.0, 0.0, -0.5, 0.5, 1.0, -0.25, 1.0, 1.0, -1.0, -0.25, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, 0.25, -1.0, -0.75, 1.0, 0.25, 0.0, -0.5, -0.75, -1.0, 0.5, 0.0, -1.0, 0.0, -1.0, -0.5, 1.0, 0.25, -0.75, 0.25, 0.25, -0.5, 0.0, 0.0, -0.5, -0.25, -0.5, 0.5, -1.0, 0.5, 0.75, ]);
    render_pass_encoder0001.popDebugGroup();
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array3 = new Float32Array([-0.75, -0.75, -0.25, -0.75, 0.25, 0.75, -1.0, 0.75, -0.5, 0.0, -0.5, 0.0, 0.0, 0.75, 1.0, 0.25, 0.0, -0.25, 0.25, -1.0, 0.5, 1.0, 0.5, 0.5, 0.75, -0.75, 0.5, 0.25, -1.0, 0.25, 0.5, 0.25, 0.25, -0.25, 0.75, 0.5, -0.25, 0.75, 1.0, 0.0, -1.0, 0.25, 1.0, 0.75, -0.25, 0.5, -0.5, 0.5, 0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -1.0, -1.0, 0.75, 0.5, 0.25, -0.5, -0.25, -1.0, 1.0, 0.25, -0.25, 0.75, -1.0, -0.25, 1.0, 0.0, 0.5, 0.75, -0.75, -0.75, 1.0, 0.5, -0.75, 0.25, 0.75, -0.5, 0.5, 0.0, 1.0, 0.75, 0.0, 1.0, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, 0.75, 0.0, 0.5, 1.0, 0.5, 0.0, 0.5, 0.25, ]);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0000.setStencilReference(1);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.popDebugGroup();
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    device10.pushErrorScope("validation");
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.beginOcclusionQuery(1)
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.popDebugGroup();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0021.setStencilReference(1);
    query002.destroy()
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device20.pushErrorScope("validation");
    
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.pushErrorScope("validation");
    device40.queue.submit([]);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.popDebugGroup();
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const array4 = new Float32Array([0.25, -0.75, -1.0, 0.5, 0.25, 0.5, 0.25, 0.75, 1.0, -0.5, -0.25, -0.75, -0.5, -0.25, 0.0, 1.0, 0.5, -0.5, 1.0, 0.75, -0.75, 0.75, -1.0, -0.5, 0.5, 0.75, 1.0, -0.75, 0.75, -0.25, 0.5, -0.25, 0.75, 1.0, -0.75, 0.0, -0.5, 0.5, 1.0, 0.0, -0.5, 0.75, 1.0, 0.25, 1.0, 0.5, -0.75, 0.25, 0.0, 1.0, 0.25, -1.0, -1.0, -0.5, 1.0, -0.25, -0.75, -0.75, 0.0, -0.25, -1.0, 0.25, 0.75, 1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.5, 0.25, 0.25, 0.5, 0.25, -0.5, 0.75, 0.25, 1.0, 0.5, 0.5, -0.75, 0.75, -0.25, 0.0, -0.25, -0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -0.75, -1.0, 0.75, ]);
    command_encoder001.insertDebugMarker("mymarker");
    
    query001.destroy()
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setStencilReference(1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0011.executeBundles([])
    
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.beginOcclusionQuery(1)
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder0020.setStencilReference(1);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0021.executeBundles([])
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0011.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device40.destroy();
    
    const array5 = new Float32Array([-1.0, -0.25, -0.5, -0.75, 1.0, 1.0, 1.0, -0.75, -0.25, -0.5, 1.0, 1.0, -0.25, -0.5, -0.5, -1.0, 0.75, 0.5, 0.25, 0.5, 0.25, 0.75, 1.0, -0.75, -0.5, 1.0, 1.0, -0.25, 0.0, -0.25, 0.75, -0.5, -1.0, 1.0, 0.25, -0.5, 0.25, -0.25, -1.0, 1.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, -0.75, -0.25, 1.0, 0.0, 0.25, 0.75, -0.75, -0.25, -0.25, 0.0, -0.5, 1.0, 0.25, 1.0, -1.0, 1.0, 0.0, -1.0, -0.25, 0.25, 1.0, 0.75, 0.0, 1.0, -0.5, -0.25, 1.0, 0.5, -0.75, -0.75, -1.0, 0.0, -0.25, -1.0, 0.25, 1.0, 0.5, -0.25, 0.5, 0.75, 0.5, 0.5, -0.75, -0.5, 0.75, 0.0, -1.0, -0.5, 0.0, -0.25, 1.0, ]);
    
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0001.executeBundles([])
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.setStencilReference(1);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0022.pushDebugGroup("group_marker");
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0001.executeBundles([])
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    query001.destroy()
    render_pass_encoder0011.executeBundles([])
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0022.pushDebugGroup("group_marker");
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0021.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.insertDebugMarker("marker");
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder0021.endOcclusionQuery()
    query001.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder001.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0001.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0022.insertDebugMarker("marker");
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query005.destroy()
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0010.executeBundles([])
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.executeBundles([])
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    
    render_pass_encoder0011.setStencilReference(1);
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query004.destroy()
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
        occlusionQuerySet: query002
    });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder0021.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0012.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0012.setStencilReference(1);
    render_pass_encoder0021.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    
    render_pass_encoder0011.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0012.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0012.pushDebugGroup("group_marker");
    const compute_pass_encoder5011 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5011" });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0011.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0011.insertDebugMarker("marker");
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0022.setStencilReference(1);
    render_pass_encoder0022.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query004
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0012.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    device50.queue.submit([]);
}