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
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.popDebugGroup()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.popDebugGroup();
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0010.popDebugGroup()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture000.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.executeBundles([])
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.beginOcclusionQuery(0)
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    texture001.destroy();
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder004.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture002.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.executeBundles([])
    
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
        occlusionQuerySet: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture005.destroy();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder0040.setStencilReference(1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture004.destroy();
    render_pass_encoder0020.executeBundles([])
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0040.setStencilReference(1);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setStencilReference(1);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.pushErrorScope("internal");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    query001.destroy()
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0010.popDebugGroup()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder0000.popDebugGroup()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0040.setStencilReference(1);
    query100.destroy()
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device30.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder001.popDebugGroup();
    query001.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0060.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture003.destroy();
    render_pass_encoder0060.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_pass_encoder0050.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device20.destroy();
    render_pass_encoder0050.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.setStencilReference(1);
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0040.setStencilReference(1);
    query102.destroy()
    
    
    query100.destroy()
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.insertDebugMarker("mymarker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0070.pushDebugGroup("group_marker");
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0040.setStencilReference(1);
    device10.pushErrorScope("validation");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query103.destroy()
    command_encoder101.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0060.executeBundles([])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query103.destroy()
    
    
    render_pass_encoder0040.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.popDebugGroup();
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0070.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder0020.setStencilReference(1);
    
    command_encoder100.popDebugGroup()
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder0070.setStencilReference(1);
    
    
    command_encoder102.insertDebugMarker("mymarker");
    query102.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query103.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_bundle_encoder000.popDebugGroup();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0050.popDebugGroup();
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    render_pass_encoder0040.executeBundles([])
    device40.destroy();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query103.destroy()
    render_pass_encoder0030.executeBundles([])
    
    query003.destroy()
    texture006.destroy();
    
    query102.destroy()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0060.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    device50.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query101.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setStencilReference(1);
    
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder0060.setStencilReference(1);
    
    
    render_pass_encoder0040.setStencilReference(1);
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    query100.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0060.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0050.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.popDebugGroup();
    query500.destroy()
    render_pass_encoder0070.executeBundles([])
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1030.popDebugGroup()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0080.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query104.destroy()
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0080.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0080.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.setStencilReference(1);
    
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder0060.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    texture007.destroy();
    render_pass_encoder0050.setStencilReference(1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    query105.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    compute_pass_encoder0000.popDebugGroup()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0080.beginOcclusionQuery(0)
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query105.destroy()
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    texture500.destroy();
    command_encoder600.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.executeBundles([])
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0080.setStencilReference(1);
    
    compute_pass_encoder1020.popDebugGroup()
    query000.destroy()
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder0080.endOcclusionQuery()
    render_pass_encoder0060.executeBundles([])
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0060.setStencilReference(1);
    query001.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture600.destroy();
    device60.pushErrorScope("internal");
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0050.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query104.destroy()
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0080.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query002
    });
    
    query105.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0050.popDebugGroup();
    
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device70.pushErrorScope("validation");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture100.destroy();
    render_pass_encoder0090.setStencilReference(1);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder0090.setStencilReference(1);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    command_encoder600.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0080.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}