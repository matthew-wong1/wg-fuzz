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
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    const array0 = new Float32Array([0.25, -0.75, -0.5, 1.0, 0.5, 1.0, -0.5, -0.5, -0.25, 0.5, -0.5, 0.75, 0.25, -0.25, 0.25, 1.0, 0.75, -0.25, 0.5, 0.0, 1.0, 0.75, -0.75, 0.75, -0.25, 0.0, 0.25, 0.25, -0.5, 0.75, 1.0, 0.75, -0.25, 1.0, 0.0, -0.5, 0.75, 0.5, -0.5, 0.0, 0.5, 1.0, -0.25, -1.0, 0.0, -0.75, -1.0, -0.25, 0.0, -0.25, 0.5, 1.0, 0.5, 0.0, 0.75, -0.5, 0.5, 1.0, -0.75, 0.25, -0.5, -1.0, 0.0, 0.75, 1.0, -1.0, -1.0, 0.25, 0.25, 0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 0.0, 0.0, 0.25, 0.75, -1.0, 0.25, 0.5, 1.0, 0.5, 0.0, 0.25, 0.5, 1.0, -0.25, 0.75, 0.75, 0.0, -0.5, 0.75, 0.75, 0.5, 1.0, 0.25, 0.5, -0.5, ]);
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.pushErrorScope("out-of-memory");
    
    texture100.destroy();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder100.insertDebugMarker("marker");
    texture200.destroy();
    const array1 = new Float32Array([-0.5, -1.0, 1.0, 1.0, 1.0, -1.0, 0.75, 1.0, 0.5, -0.5, 0.0, -0.5, -0.25, -0.5, 1.0, -0.5, -0.75, -0.75, 0.75, 1.0, -0.75, -1.0, -0.75, -1.0, -1.0, 0.5, 0.75, 0.75, 0.0, 1.0, 0.75, 0.0, 0.75, 0.0, -1.0, 0.25, 1.0, -0.75, -0.5, 1.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.25, 1.0, 0.25, -0.75, -0.5, 1.0, -0.5, 1.0, 1.0, -1.0, 1.0, 0.75, 0.0, 0.75, 0.0, -0.75, -0.75, -0.75, 0.0, 0.75, -0.75, 0.0, 0.25, -1.0, 0.75, 0.25, -0.75, 1.0, 0.75, -1.0, -0.5, 0.75, -0.75, 0.5, 0.0, -0.75, -0.75, 0.75, -0.75, -1.0, -1.0, 1.0, 0.25, 0.0, -0.75, 0.5, -0.5, -0.5, 0.75, -0.75, -0.75, 0.5, -0.75, -1.0, 1.0, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    device40.destroy();
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1000.setStencilReference(1);
    device10.queue.submit([command_buffer101, ]);
    
    
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture201.destroy();
    render_pass_encoder1000.setStencilReference(1);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1000.executeBundles([])
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1000.executeBundles([])
    const array2 = new Float32Array([0.25, -1.0, -0.25, 0.0, -0.5, 1.0, 1.0, 0.75, 0.0, 0.25, 1.0, -0.5, 0.5, 0.0, -0.75, 0.25, -0.75, 1.0, 1.0, 1.0, 0.5, -0.5, -1.0, 1.0, -0.5, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.5, 0.25, 0.75, 0.5, -0.5, 0.5, -0.5, -0.25, -0.5, 0.5, -0.5, 0.25, -0.5, 0.0, 0.0, -1.0, 1.0, 0.75, -1.0, -0.25, -1.0, 0.0, 0.75, 0.5, -0.25, -0.25, -1.0, 0.75, -0.5, 0.5, 0.5, -0.75, -0.75, 1.0, -0.25, 0.5, 0.75, -0.5, 0.5, 0.25, -0.75, 0.25, -1.0, 0.0, -0.75, 0.25, -0.25, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, 1.0, 0.0, -0.25, 0.0, -0.5, 0.5, -0.25, -0.25, -0.25, -1.0, 0.5, -0.25, -0.25, -0.25, 0.25, 0.75, ]);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.executeBundles([])
    device50.destroy();
    
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.setStencilReference(1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder2010.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.75, -0.75, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, -1.0, 0.0, 1.0, 0.0, 0.25, -1.0, 0.0, 1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -0.25, 0.5, -0.5, -0.25, -0.25, 0.75, -0.5, -0.5, -0.75, -0.5, -0.75, 1.0, 1.0, 0.0, -0.75, -0.5, 1.0, 0.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.5, -0.25, 1.0, 0.25, 0.25, -0.75, -0.5, 0.0, 0.75, -0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -0.75, 0.25, 0.75, 0.75, -0.75, -0.75, -1.0, 0.75, 0.25, -0.5, 0.5, -0.5, -0.75, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, -0.75, 0.0, 0.0, -0.25, -0.25, 0.25, 1.0, -1.0, -1.0, 0.0, -0.75, 0.0, -0.75, 0.0, 0.5, -0.75, -0.75, 0.0, 0.5, 0.75, -0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.destroy();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    texture300.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_pass_encoder1000.executeBundles([])
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder200.popDebugGroup();
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
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
    
    render_pass_encoder2030.executeBundles([])
    device60.pushErrorScope("validation");
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder1020.setStencilReference(1);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.submit([command_buffer202, ]);
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture301.destroy();
    render_pass_encoder2030.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.setStencilReference(1);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder206.insertDebugMarker("mymarker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder206.insertDebugMarker("mymarker");
    render_pass_encoder6000.executeBundles([])
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.executeBundles([])
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder206.insertDebugMarker("mymarker");
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    texture202.destroy();
    render_pass_encoder6000.pushDebugGroup("group_marker");
    
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    texture101.destroy();
    
    render_pass_encoder6000.popDebugGroup();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder101.popDebugGroup();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view6030 = texture603.createView({ label: "texture_view6030" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    texture203.destroy();
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
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
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder2010.setStencilReference(1);
    texture603.destroy();
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture304.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder102.popDebugGroup();
    
    render_pass_encoder1000.executeBundles([])
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2030.setStencilReference(1);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view6003 = texture600.createView({ label: "texture_view6003" });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder2060.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_buffer104 = command_encoder104.finish();
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder2030.insertDebugMarker("marker");
    texture602.destroy();
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder103.insertDebugMarker("mymarker");
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2050.executeBundles([])
    const texture_view6004 = texture600.createView({ label: "texture_view6004" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder2010.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.popDebugGroup();
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2050.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture303.destroy();
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2050.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    device80.pushErrorScope("internal");
    texture302.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_pass_encoder2060.executeBundles([])
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder6010.insertDebugMarker("marker");
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6010.insertDebugMarker("marker");
    
    render_pass_encoder2040.executeBundles([])
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder700.popDebugGroup();
    
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    texture600.destroy();
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_buffer603 = command_encoder603.finish();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    texture700.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const array4 = new Float32Array([0.0, -0.25, 0.0, 0.75, 0.0, 0.25, 0.0, 1.0, -1.0, -0.5, 0.5, 0.25, -0.25, -0.25, -0.75, 0.5, -0.75, -0.25, 0.25, -0.25, 0.75, -0.75, -1.0, 0.25, 1.0, -0.5, -0.75, 0.0, -0.75, 0.75, 0.5, 0.75, 0.75, 0.5, -1.0, -0.75, -0.5, -1.0, 0.25, 0.75, -0.5, -0.25, 0.25, 1.0, 0.0, 0.5, -0.75, -1.0, 0.5, 0.0, -1.0, 0.25, 0.75, 0.75, 1.0, 0.75, -0.75, 1.0, -0.75, -0.25, -0.75, -0.5, -1.0, -1.0, 0.0, 0.25, -1.0, -0.5, 0.5, 1.0, 0.5, 0.5, 0.25, -0.25, 0.75, -0.25, 0.75, -1.0, 0.25, 1.0, 1.0, -0.75, -0.75, 0.0, -1.0, -0.25, -0.25, 1.0, 0.5, 1.0, 0.75, 0.5, -0.75, 0.25, 1.0, -0.25, -0.75, 0.0, 0.25, 0.0, ]);
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2050.setStencilReference(1);
    command_encoder103.pushDebugGroup("mygroupmarker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2050.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder2060.pushDebugGroup("group_marker");
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3000.setStencilReference(1);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.executeBundles([])
    const command_buffer301 = command_encoder301.finish();
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3032,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder2050.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder2050.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder200.popDebugGroup();
    command_encoder103.popDebugGroup()
    render_pass_encoder2040.executeBundles([])
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder6010.pushDebugGroup("group_marker");
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder6000.pushDebugGroup("group_marker");
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder2060.insertDebugMarker("marker");
    render_bundle_encoder700.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder3020.insertDebugMarker("marker");
    command_encoder700.insertDebugMarker("mymarker");
    const command_buffer106 = command_encoder106.finish();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder2040.popDebugGroup();
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    render_pass_encoder2050.insertDebugMarker("marker");
    command_encoder700.insertDebugMarker("mymarker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.queue.submit([command_buffer207, ]);
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder6020.setStencilReference(1);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder6000.executeBundles([])
    render_pass_encoder2030.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6010.popDebugGroup();
    command_encoder700.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2040.popDebugGroup();
    const command_buffer700 = command_encoder700.finish();
    const command_buffer701 = command_encoder701.finish();
    device10.queue.submit([command_buffer104, ]);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder1000.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer701, ]);
}